<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file interface.php
 * @author liuqingjun(com@baidu.com)
 * @date 2011/03/09 11:06:14
 * @brief 
 *  
 **/

interface Bd_RalRpc_Interface {
    //init, to be called by RPC::create
    public function _init($service, $extra);

    //public interface
    public function __call($method, $param);
    public function get_error();
    public function set_rpc_option($key, $value);
}

?>
