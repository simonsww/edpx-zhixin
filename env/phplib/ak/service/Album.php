<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file Album.php
 * @author liuqingjun(com@baidu.com)
 * @date 2011/03/09 14:13:23
 * @brief 
 *  
 **/

//require_once(dirname(__FILE__)."/../HttpBase.php");
require_once(dirname(__FILE__)."/RpcService.php");
class Ak_Service_Album extends Ak_Service_RpcService {
    protected $_version = 2; //album2.0 client
}

/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
