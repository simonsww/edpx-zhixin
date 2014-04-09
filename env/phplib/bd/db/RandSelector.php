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

class Bd_Db_RandSelector implements Bd_Db_IHostSelector
{
    /**
    * @brief 随机选择接口
    *
    * @param $dbman dbman对象
    * @param $key 选择key
    *
    * @return 
    */
    public function select(Bd_Db_DBMan $dbman, $key = NULL)
    {
        if(!count($dbman->validHosts))
        {
            return false;
        }
        return array_rand($dbman->validHosts);
    }
}
/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
