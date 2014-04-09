<?php
/***************************************************************************
 *   
 *   Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 *   
 ***************************************************************************/
 
 
 
/**
 * 
 * default balance selector for new version DB
 *
 * @author hanshinan@baidu.com
 *  
 */

class Bd_Db_RandBalancer implements Bd_Db_IBalancer
{
    /**
    * @brief 选择host
    *
    * @param $allHosts 全部Host
    * @param $key 选择key
    *
    * @return 
    */
    public function select($allHosts, $key = NULL)
    {
        if(!count($allHosts['valid_hosts']))
        {
            return false;
        }
        return array_rand($allHosts['valid_hosts']);
    }
}
/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
