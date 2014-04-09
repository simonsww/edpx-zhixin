<?php
/***************************************************************************
 *   
 *   Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 *   
 ***************************************************************************/
 
 
 
/**
 * 
 * interface for balance selector
 *
 * @author hanshinan@baidu.com
 *  
 */

interface Bd_Db_IBalancer
{
    public function select($allHosts, $key = NULL);
}
/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
