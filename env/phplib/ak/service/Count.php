<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file Count.php
 * @author zhaoxiaozhuo(com@baidu.com)
 * @date 2011/06/13 14:13:23
 * @brief 
 *  
 **/

require_once(dirname(__FILE__)."/RpcService.php");
class Ak_Service_Count extends Ak_Service_RpcService {
    protected function _input_converter($method, $param, $extra) {
        if (!is_array($param)) {
            $this->_add_error("input parameter is not array!");
            return null;
        }
        if (isset($extra['region'])) {
            $param['sid'] = $extra['pid'].'_'.strtolower($extra['region']);
        }
        return $param;
    }
}

/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
