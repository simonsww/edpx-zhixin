<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file 
 * @author wangtao04(com@baidu.com)
 * @date 2011/06/09 14:13:23
 * @brief 
 *  
 **/

require_once(dirname(__FILE__)."/ArchBase.php");
class Ak_Service_ActsCtrl extends Ak_Service_ArchBase {
    protected $_pid_include_region = false;

    protected function _get_queryarr($method, $param, $extra) {
        $retval = parent::_get_queryarr($method, $param, $extra);

        $type  = $this->_extra['type'];
        if (empty($type)) {
            $type = 'submit';
        } 
        $retval['type'] = $type;
        return $retval;
    }

    protected function _input_converter($method, $param, $extra) {
        if (!is_array($param)) {
            $this->_add_error("input parameter is not array!");
            return null;
        }
        if(isset($extra['region'])){
            $param['region'] = $extra['region'];
        }
        return array('data' => json_encode($param));
    }

    protected function _output_converter($output) {
        return json_decode($output, true);
    }
}

/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
