<?php
/***************************************************************************
 *   
 *   Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 *   
 ***************************************************************************/
 
 
 
/**
 * @file $FILE NAME$
 * @author $DoxygenToolkit_authorName$
 * @date 2011/01/20 14:19:45
 * @brief  $Revision$
 *  
 */

// result of stmt execute
class Bd_Db_StmtResult extends Bd_Db_AbsDBResult
{
    private $stmt;
    private $finfo;
    private $row;
    private $pos = 0;
    private $noused_stmt_obj;

    public function __construct(mysqli_stmt $stmt, array $finfo, $stmt_obj = NULL)
    {
        $this->finfo = $finfo;
        $this->stmt = $stmt;
        $this->noused_stmt_obj = $stmt_obj;
        // do bind result
        $count = 0;
        foreach($finfo as $v)
        {
            $bindString .=', &$this->row['.$count.']';
            ++$count;
        }
        $bindString = '$this->stmt->bind_result('.substr($bindString, 2).');';
        eval($bindString);
    }

    public function __destruct()
    {
        if($this->stmt !== NULL)
        {
            $this->free();
        }
    }

    public function next($type = Bd_DB::FETCH_ASSOC)
    {
        $ret = $this->stmt->fetch();
        if(!$ret)
        {
            return $ret;
        }

        if($type == Bd_DB::FETCH_ASSOC)
        {
            foreach($this->row as $k => $v)
            {
                $tmp[$this->finfo[$k]->name] = $v;
            }
        }
        else
        {
            // $row is ref, so we can't use $tmp = $row
            foreach($this->row as $v)
            {
                $tmp[] = $v;
            }
        }
        $this->pos++;
        return $tmp;
    }

    public function seek($where)
    {
        // unseekable
        if($this->stmt->num_rows == 0)
        {
            return false;
        }

        if($where < 0 || $where >= $this->stmt->num_rows)
        {
            return false;
        }

        if($this->stmt->data_seek($where) === false)
        {
            return false;
        }

        $this->pos = $where;
        return true;
    }

    public function tell()
    {
        return $this->pos;
    }

    public function count()
    {
        return $this->stmt->num_rows;
    }

    public function free()
    {
        $this->stmt->free_result();
        $this->stmt = NULL;
    }
}
/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
