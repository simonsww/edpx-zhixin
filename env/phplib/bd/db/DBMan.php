<?php
/*
* class Bd_Db_DBMan
*
* DB连接管理器，其管理策略用于UI页面，不适用后台脚本，后台脚本直接用DB类自己连接
*
* Author: zhangdongjin@baidu.com
*
* */

class Bd_Db_DBMan
{
    // config, modify at the very begining
    public static $RETRY_INTERVAL = 15;
    public static $ENABLE_PROFILING = false;
    public static $CONN_TIMEOUT = 1;
    public static $CONN_FLAGS = 0;
    public static $MAX_TRY_COUNT = 10;

    private $userConf = array('uname' => NULL, 'passwd' => NULL); // user config for all hosts
    private $dbname = NULL;             // default db name

    private $allHosts = array();        // save all hosts
    private $validHosts = array();      // save valid hosts
    private $failedHosts = NULL;        // save failed hosts, which have been down
    private $justFailedHosts = NULL;    // save failed hosts, which was down just now
    private $currentHostIndex = NULL;   // index of the host that currently in use in the allHosts array

    private $hostSelector = NULL;       // Bd_Db_IHostSelector object to select host
    private $statusMan = NULL;          // Bd_Db_IStatusMan object to load and save hosts' status

    private $db = NULL;                 // DB object that currently in use

    public function __construct(
        $arrHosts,                   // array(array($host, $port), array(...), ...)
        $userConf,                   // array('uname' => 'foo', 'passwd' => 'bar')
        $dbname,                     // 'mydb'
        Bd_Db_IHostSelector $hostSelector, // new RandSelector()
        Bd_Db_IStatusMan $statusMan = NULL // new StatusManFile('tmp')
    )
    {
        $this->allHosts = $arrHosts;
        $this->validHosts = $arrHosts;
        $this->userConf = $userConf;
        $this->dbname = $dbname;
        $this->hostSelector = $hostSelector;

        $now = time();

        // load status
        if($statusMan !== NULL)
        {
            $this->statusMan = $statusMan;
            foreach($this->allHosts as $key => &$host)
            {
                $status = $statusMan->load($host[0], $host[1]);
                if(!empty($status))
                {
                    // filter failed host
                    if(($status['last_failed_time'] + Bd_Db_DBMan::$RETRY_INTERVAL) > $now)
                    {
//                        echo "filter: {$host[0]}:{$host[1]}\n";
                        $this->failedHosts[$key] = $host;
                        unset($this->validHosts[$key]);
                    }
                    /*
                    else
                    {
                        $statusMan->clean($host[0], $host[1]);
                    }
                    */
                    $host[2] = $status;
                }
            }
        }
    }

	/**
	* @brief 获取一个db连接
	*
	* @param $key 选择的key
	* @param $getNew 是否生成新连接
	* @param $replace 指出是否用新生成连接覆盖保存的连接
	*
	* @return 
	*/
    public function getDB($key = NULL, $getNew = false, $replace = true)
    {
        if($this->db !== NULL && !$getNew)
        {
            return $this->db;
        }

        $db = new Bd_DB(Bd_Db_DBMan::$ENABLE_PROFILING);
        if(Bd_Db_DBMan::$CONN_TIMEOUT > 0)
        {
            $db->setConnectTimeOut(Bd_Db_DBMan::$CONN_TIMEOUT);
        }

        // 尝试的次数
        $try_count = 0;
        while(true)
        {
            if(count($this->validHosts) == 0 ||
                ($index = $this->hostSelector->select($this, $key)) === false)
            {
                return false;
            }
            // return the same host
            if($this->currentHostIndex === $index)
            {
                return $this->db;
            }
            // do connect
            $host = $this->allHosts[$index];
            $ret = $db->connect(
                $host[0],
                $this->userConf['uname'],
                $this->userConf['passwd'],
                $this->dbname,
                $host[1],
                Bd_Db_DBMan::$CONN_FLAGS
            );
            // got it
            if($ret)
            {
                break;
            }
            // record failed host
            $this->_recordFailedHost($index);
            // try count exceeded
            if(++$try_count == Bd_Db_DBMan::$MAX_TRY_COUNT)
            {
                return false;
            }
        }
        if($this->db == NULL || $replace)
        {
            $this->currentHostIndex = $index;
            $this->db = $db;
        }
        return $db;
    }

    // record failed host
    private function _recordFailedHost($index)
    {
        $status = array('last_failed_time' => time());
        $this->allHosts[$index][2] = $status;
        unset($this->validHosts[$index]);
        $this->justFailedHosts[$index] = $this->allHosts[$index];
        $this->failedHosts[$index] = $this->allHosts[$index];
        // save status
        if($this->statusMan !== NULL)
        {
            $host = $this->allHosts[$index];
            $this->statusMan->save($host[0], $host[1], $status);
        }
    }

    public function __get($name)
    {
        if($name == 'db')
        {
            return $this->getDB();
        }
        else if(property_exists($this, $name))
        {
            return $this->$name;
        }
        else if($name == 'currentHost')
        {
            if($this->currentHostIndex === NULL)
            {
                return NULL;
            }
            return $this->allHosts[$this->currentHostIndex];
        }
        return NULL;
    }
}
