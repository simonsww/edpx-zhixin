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

interface Bd_Db_IStatusMan
{
    public function load($host, $port);
    public function save($host, $port, $status);
    public function clean($host, $port);
    public function cleanAll();
}
/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
