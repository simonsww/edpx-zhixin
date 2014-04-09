<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file RpcService.php
 * @author liuqingjun(com@baidu.com)
 * @date 2011/06/03 13:49:32
 * @brief 
 *  
 **/

require_once(dirname(__FILE__)."/ArchBase.php");
require_once(dirname(__FILE__)."/../RequestId.php");
abstract class Ak_Service_RpcService extends Ak_Service_ArchBase {
    protected function _input_converter($method, $param, $extra) {
        if (!is_array($param)) {
            $this->_add_error("input parameter is not array!");
            return null;
        }
        $param['method'] = $method;
        //$param['pid'] = $this->_extra['pid'];
        foreach($this->_extra as $k => $v) {
            if (!isset($param[$k]))
                $param[$k] = $v;
        }
        return $param;
    }

    protected function _output_converter($output) {
        return $output;
    }
}





/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
