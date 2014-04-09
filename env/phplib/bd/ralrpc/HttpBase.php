<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file httpbase.php
 * @author liuqingjun(com@baidu.com)
 * @date 2011/03/09 11:06:14
 * @brief 
 *  
 **/

require_once(dirname(__FILE__)."/Base.php");
abstract class Bd_RalRpc_HttpBase extends Bd_RalRpc_Base {
    protected function _extra_init(&$extra) {
        return true;
    }
    protected function _get_pathinfo($method, $param, $extra) {
        return 'index.php';
    }
    protected function _get_queryarr($method, $param, $extra) {
        $get_param = $extra;
        $get_param['service'] = $this->_service;
        $get_param['method'] = $method;
        return $get_param;
    }
    protected function _input_converter($method, $param, $extra) {
        return $param;
    }
    protected function _output_converter($output) {
        return $output;
    }
    protected function _input_convert($method, $param, $extra) {
        $pathinfo = $this->_get_pathinfo($method, $param, $extra);
        if ($pathinfo === null) {
            $this->_add_error("set pathinfo failed");
            return null;
        }
        ral_set_pathinfo($pathinfo);
        $queryarr = $this->_get_queryarr($method, $param, $extra);
        if(!empty($queryarr))
            ral_set_querystring(self::_array2querystr($queryarr));
        else
            ral_set_querystring('');
        return $this->_input_converter($method, $param, $extra);
    }
    protected function _output_convert($output) {
        $result = $this->_output_converter($output);
        if(!is_array($result)) {
            $this->_add_error("output is not array, raw data:{$output}");
            return null;
        }
        return $result;
    }
    protected static function _array2querystr($arr) {
        $str = '';
        foreach($arr as $k => $v) {
            $str .= "$k=".urlencode($v).'&';
        }
        return $str;
    }
}

?>
