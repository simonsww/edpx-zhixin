<?php
/**
* brief of DBResult.php:
*
* @author zhangdongjin@baidu.com
*/


// result of DB query
class Bd_Db_DBResult extends Bd_Db_AbsDBResult
{
    private $result;
    private $pos = 0;

    public function __construct(mysqli_result $result)
    {
        $this->result = $result;
    }

    public function __destruct()
    {
        if($this->result !== NULL)
        {
            $this->free();
        }
    }

	/**
	* @brief 获取当前行，并移动指针
	*
	* @param $type 获取方式
	*
	* @return 
	*/
    public function next($type = Bd_DB::FETCH_ASSOC)
    {
        if($type == Bd_DB::FETCH_ASSOC)
        {
            $row = $this->result->fetch_assoc();
        }
        else
        {
            $row = $this->result->fetch_row();
        }
        if($row)
        {
            $this->pos++;
        }
        return $row;
    }

	/**
	* @brief 设置指针位置
	*
	* @param $where
	*
	* @return 
	*/
    public function seek($where)
    {
        if($where < 0 || $where >= $this->result->num_rows)
        {
            return false;
        }

        if(!$this->result->data_seek($where))
        {
            return false;
        }
        $this->pos = $where;
        return true;
    }

	/**
	* @brief 获取指针位置
	*
	* @return 
	*/
    public function tell()
    {
        return $this->pos;
    }

	/**
	* @brief 获取结果集行数
	*
	* @return 
	*/
    public function count()
    {
        return $this->result->num_rows;
    }

	/**
	* @brief 释放结果集资源
	*
	* @return 
	*/
    public function free()
    {
        $this->result->free();
        $this->result = NULL;
    }
}
