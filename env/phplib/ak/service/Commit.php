<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file archpc_se.php
 * @author liuqingjun(com@baidu.com)
 * @date 2011/03/09 14:13:23
 * @brief 
 *  
 **/

require_once(dirname(__FILE__)."/ArchBase.php");
class Ak_Service_Commit extends Ak_Service_ArchBase {
    protected function _get_queryarr($method, $param, $extra) {
        $retval = parent::_get_queryarr($method, $param, $extra);

        if (isset($extra['key']))
            $retval['key'] = $extra['key'];
        else if (isset($this->_extra['key'])) {
            $retval['key'] = $this->_extra['key'];
        }
        return $retval;
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
