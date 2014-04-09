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
class Ak_Service_Se extends Ak_Service_ArchBase {
    private static $pid_exception = array(
        'baike_relation'    => 'relation',
        'talk_user'         => 'talkuser',
        'talk_message'      => 'talkmessage',
        'talk_group'        => 'talkgroup',
        'dianping_cmt'      => 'dianpingcmtse',
        'dianping_reply'    => 'dianpingreplyse',
        'dianping_user'     => 'dianpinguser',
    );
    protected function _extra_init(&$extra) {
        if (!parent::_extra_init($extra)) return false;
        if (!isset($extra['app'])) {
            $this->_add_error("app not found in extra");
            return false;
        }
        return true;
    }

    protected function _get_queryarr($method, $param, $extra) {
        $retval = parent::_get_queryarr($method, $param, $extra);

        if (isset(self::$pid_exception[$retval['pid']])) {
            $retval['pid'] = self::$pid_exception[$retval['pid']];
        }
        $retval['op'] = $method;
        return $retval;
    }

    protected function _input_converter($method, $param, $extra) {
        return array('_json_' => json_encode($param));
    }

    protected function _output_converter($output) {
        return json_decode($output, true);
    }
}

/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
