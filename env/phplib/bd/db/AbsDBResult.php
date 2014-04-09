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


// abstract DBResult
abstract class Bd_Db_AbsDBResult
{
    abstract public function next($type = Bd_DB::FETCH_ASSOC);
    abstract public function seek($where);
    abstract public function tell();
    abstract public function count();
    abstract public function free();

    public function walk($callback, $type = Bd_DB::FETCH_ASSOC)
    {
        // seek head
        if($this->tell() != 0 && !$this->seek(0))
        {
            return false;
        }

        $args = func_get_args();
        if(count($args) <= 2)
        {
            $args = array();
        }
        else
        {
            array_shift($args);
            array_shift($args);
        }

        $count = 0;
        while($row = $this->next($type))
        {
            $count++;
            $tmp = $args;
            array_unshift($tmp, $row);
            if(call_user_func_array($callback, $tmp) === false)
            {
                break;
            }
        }
        return $count;
    }
}
/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
