<?php
/**
* brief of DBStmt.php:
*
* @author zhangdongjin@baidu.com
* @date 2008/11/09 23:47:30
* @version $Revision: 1.2 $
* @todo
*/

// never create instance by yourself
class Bd_Db_DBStmt
{
    private $stmt;

    public function __construct(mysqli_stmt $stmt)
    {
        $this->stmt = $stmt;
    }

    public function __destruct()
    {
        if($this->stmt !== NULL)
        {
            $this->close();
        }
    }

    public function close()
    {
        $this->stmt->close();
        $this->stmt = NULL;
    }

    public function __get($name)
    {
        switch($name)
        {
            case 'stmt':
                return $this->stmt;
            case 'error':
                return $this->stmt->error;
            case 'errno':
                return $this->stmt->errno;
            case 'affectedRows':
                return $this->stmt->affected_rows;
            case 'paramCount':
                return $this->stmt->param_count;
            default:
                return NULL;
        }
    }

	/**
	* @brief 绑定参数
	*
	* @return 
	*/
    public function bindParam()
    {
        $args = func_get_args();
        return call_user_func_array(array($this->stmt, 'bind_param'), $args);
    }

	/**
	* @brief 执行查询
	*
	* @param $fetchType 获取方式
	* @param $bolUseResult 是否使用MYSQL_USE_RESULT
	*
	* @return 
	*/
    public function execute($fetchType = Bd_DB::FETCH_ASSOC, $bolUseResult = false)
    {
        if(!$this->stmt->execute())
        {
            return false;
        }
        // get metadata
        $res = $this->stmt->result_metadata();
        // no result
        if(!$res)
        {
            return true;
        }
        $finfo = $res->fetch_fields();
        $res->free();

        // get an object
        if($fetchType == Bd_DB::FETCH_OBJ || $bolUseResult)
        {
            if(!$bolUseResult && !$this->stmt->store_result())
            {
                return false;
            }
            return new Bd_Db_StmtResult($this->stmt, $finfo, $this);
        }

        // store result
        if(!$this->stmt->store_result())
        {
            return false;
        }

        $count = 0;
        $bindString = '';
        foreach($finfo as $v)
        {
            // get bind string
            $bindString .= ', &$row['.$count.']';
            ++$count;
        }

        $row = array();
        $bindString = '$this->stmt->bind_result('.substr($bindString, 2).');';
        eval($bindString);
        // fetch
        $ret = array();
        while(true)
        {
            $tmp = array();
            $r = $this->stmt->fetch();
            if($r === NULL)
            {
                break;
            }
            else if($r === false)
            {
                $this->stmt->free_result();
                return false;
            }
 //           var_dump($row);
            if($fetchType == Bd_DB::FETCH_ASSOC)
            {
                foreach($row as $k => $v)
                {
                    $tmp[$finfo[$k]->name] = $v;
                }
            }
            else
            {
                // $row is ref, so we can't use $tmp = $row
                foreach($row as $v)
                {
                    $tmp[] = $v;
                }
            }

            $ret[] = $tmp;
        }
        $this->stmt->free_result();
        return $ret;
    }

	/**
	* @brief 获取受影响的行数
	*
	* @return 
	*/
    public function getAffectedRows()
    {
        return $this->stmt->affected_rows;
    }

	/**
	* @brief 获取参数个数
	*
	* @return 
	*/
    public function getParamCount()
    {
        return $this->stmt->param_count;
    }

	/**
	* @brief 获取错误码
	*
	* @return 
	*/
    public function errno()
    {
        return $this->stmt->errno;
    }

	/**
	* @brief 获取错误描述
	*
	* @return 
	*/
    public function error()
    {
        return $this->stmt->error;
    }
}
