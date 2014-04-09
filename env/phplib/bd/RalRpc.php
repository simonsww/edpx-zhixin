<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file rpc.php
 * @author liuqingjun(com@baidu.com)
 * @date 2011/03/09 11:06:14
 * @brief 
 *  
 **/

final class Bd_RalRpc {
    public static $err_msg;
    private static $extra = array();
    public static function set_extra($extra = array()) {
        if (!is_array($extra)) {
            return false;
        }
        self::$extra = $extra;
        return true;
    }
    public static function add_extra($extra = array()) {
        if (!is_array($extra)) {
            return false;
        }
        self::$extra = array_merge(self::$extra, $extra);
        return true;
    }
    public static function get_extra() {
        return self::$extra;
    }
    public static function create($service, $extra = null) {
        //set logid
        if(defined('LOG_ID'))
            ral_set_logid(LOG_ID);

        if (!is_array($extra)) {
            $extra = self::$extra;
        } else {
            $extra = array_merge(self::$extra, $extra);
        }
        
        self::$err_msg = '';
        if (strpos($service, '_') === false)
            $classname = 'Ak_Service_' . $service;
        else
            $classname = $service;
        $ret = new $classname();
        if ($ret->_init($service, $extra)) {
            return $ret;
        }
        self::$err_msg = $ret->get_error();
        return null;
    }
    public static function get_error() {
        return self::$err_msg;
    }
}
/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
