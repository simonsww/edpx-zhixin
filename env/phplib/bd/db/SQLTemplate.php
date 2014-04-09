<?php
/*
* class Bd_Db_SQLTemplate
*
* Author: zhangdongjin@baidu.com
*
* */

class Bd_Db_SQLTemplate implements Bd_Db_ISQL
{
    const V_BEGIN = '{';
    const V_END = '}';
    const V_SPLIT = ':';
    const T_NUM = 'n';
    const T_STR = 's';
    const T_RAW = 'r';

    private $template = NULL;
    private $arrParsed = NULL;
    private $arrVar = NULL;
    private $arrParams = NULL;

    private $sql = NULL;
    private $db = NULL;

    public function __construct($db)
    {
        $this->db = $db;
        /*
        if($db instanceof DB || $db instanceof mysqli)
        {
            $this->db = $db;
        }
        else
        {
            // something wrong
        }
         */
    }

    /*
    * prapare a template
    *
    * PARAMS:
    *   $template: template string, eg:
    *              SELECT * FROM user where id={id:n} and name={name:s}
    *
    * RETURN:
    *   bool
    *
    * */
    public function prepare($template)
    {
        $this->template = strval($template);
        $this->arrParsed = NULL;
        $this->arrVar = NULL;
        $this->arrParams = NULL;
        $this->sql = NULL;

        // parse template string into arrParsed and arrVar
        if(!$this->__parse())
        {
            $this->template = NULL;
            return false;
        }
//        print_r($this->arrParsed);
//        print_r($this->arrVar);
        return true;
    }

    /*
    * bind parameter(s) for a prepared template
    *
    * PARAMS:
    *
    *   $params: array(key => value, ...) or key name.
    *   $value:  value of the key. ignored if $param is array.
    *   $getNow: whether to get SQL immediately
    *
    * RETURN:
    *   bool or SQL string
    */
    public function bindParam($param, $value = NULL, $getNow = false)
    {
        // not prapared
        if($this->template === NULL)
        {
            return false;
        }

        $this->sql = NULL;

        // array
        if(is_array($param))
        {
            foreach($param as $k => $v)
            {
                if($this->bindOneParam($k, $v) === false)
                {
                    return false;
                }   
            }
        }
        // one param
        else if(!$this->bindOneParam($param, $value))
        {
            return false;
        }

        if($getNow)
        {
            return $this->__createSQL();
        }
        return true;
    }

    private function bindOneParam($k, $v)
    {
        $k = Bd_Db_SQLTemplate::V_BEGIN.$k;
        if(!array_key_exists($k, $this->arrVar))
        {
            return null;
        }

        if($this->arrVar[$k] == Bd_Db_SQLTemplate::T_NUM)
        {
            if(!is_numeric($v))
            {
                return false;
            }
        }
        else if($this->arrVar[$k] != Bd_Db_SQLTemplate::T_RAW)
        {
            if($this->db instanceof Bd_DB)
            {
                $v = $this->db->escapeString($v);
            }
            else if($this->db instanceof mysqli)
            {
                $v = $this->db->real_escape_string($v);
            }
            $v = "'$v'";
        }
        $this->arrParams[$k] = $v;
        return true;
    }

    public function getSQL()
    {
        // not prepared
        if($this->template === NULL)
        {
            return NULL;
        }

        // sql already created
        if($this->sql !== NULL)
        {
            return $this->sql;
        }

        // newly created
        return $this->__createSQL();
    }

    public function __parse()
    {
        $off = 0;
        $total = strlen($this->template);

        while($off != $total)
        {
            // search for variable
            $nextOff = strpos($this->template, Bd_Db_SQLTemplate::V_BEGIN, $off);
            // not found
            if($nextOff === false)
            {
                $this->arrParsed[] = substr($this->template, $off);
                break;
            }
            // 取出开头的串
            if($off != $nextOff)
            {
                $this->arrParsed[] = substr($this->template, $off, $nextOff - $off);
                $off = $nextOff;
            }
            // search for the split char
            $nextOff = strpos($this->template, Bd_Db_SQLTemplate::V_SPLIT, $off);
            // bad format
            if($nextOff === false || ($varLen = $nextOff - $off) == 1 ||
                $this->template{$nextOff+2} !=  Bd_Db_SQLTemplate::V_END)
            {
                $this->arrParsed = NULL;
                $this->arrVar = NULL;
                return false;
            }
            $var = substr($this->template, $off, $varLen);
            $this->arrParsed[] = $var;
            $this->arrVar[$var] = $this->template{$nextOff+1};
            $off = $nextOff+3;
        }
        return true;
    }

    private function __createSQL()
    {
        // no enough params
        if(count($this->arrParams) != count($this->arrVar))
        {
            return NULL;
        }

        $sql = '';
        foreach($this->arrParsed as $v)
        {
            if(strncmp($v, Bd_Db_SQLTemplate::V_BEGIN, strlen(Bd_Db_SQLTemplate::V_BEGIN)) == 0)
            {
                $sql .= $this->arrParams[$v];
            }
            else
            {
                $sql .= $v;
            }
        }
        $this->sql = $sql;
        return $sql;
    }
}
