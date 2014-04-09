<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file ak/service/Redis.php
 * @author liuqingjun(com@baidu.com)
 * @date 2012/06/27 20:19:01
 * @brief 
 *  
 **/

class Ak_Service_Redis extends Bd_RalRpc_Base {
    protected function _get_pid() {
        $pid = array('Redis');
        if (isset($this->_extra['pid'])) {
            $pid[] = $this->_extra['pid'];
        }
        if (isset($this->_extra['app'])) {
            $pid[] = $this->_extra['app'];
        }
        if (isset($this->_extra['instance'])) {
            $pid[] = $this->_extra['instance'];
        }
        return implode('_', $pid);
    }
    protected function _extra_init(&$extra) {
        if (!isset($extra['pid']) || !isset($extra['tk'])) {
            return false;
        }
        $this->_service = $this->_get_pid();
        return true;
    }
    protected function _input_convert($method, $param, $extra) {
        $param['method'] = strtoupper($method);
        $param['uname'] = $this->_extra['pid'];
        $param['tk'] = $this->_extra['tk'];
        return $param;
    }
    protected function _output_convert($output, $extra) {
        return $output;
    }
}




/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
