<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file Friend.php
 * @author zhaoxiaozhuo(com@baidu.com)
 * @date 2011/06/15 14:13:23
 * @brief 
 *  
 **/

require_once(dirname(__FILE__)."/ArchBase.php");
class Ak_Service_Friend extends Ak_Service_ArchBase {
    protected function _get_pathinfo($method, $param, $extra) {
        return $method;
    }
    protected function _get_queryarr($method, $param, $extra) {
        $retval = parent::_get_queryarr($method, $param, $extra);
        return $param + $retval + $this->_extra;
    }
    protected function _input_converter($method, $param, $extra) {
        if (!is_array($param)) {
            $this->_add_error("input parameter is not array!");
            return null;
        }
        return $param;
    }

    protected function _output_converter($output) {
        return $output;
    }
}

/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
