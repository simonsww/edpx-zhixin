<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file Amsg.php
 * @author zhaoxiaozhuo(com@baidu.com)
 * @date 2011/06/13 14:13:23
 * @brief 
 *  
 **/

//require_once(dirname(__FILE__)."/../HttpBase.php");
require_once(dirname(__FILE__)."/RpcService.php");
class Ak_Service_Amsg extends Ak_Service_RpcService {
    protected function _input_converter($method, $param, $extra) {
        if (!is_array($param)) {
            $this->_add_error("input parameter is not array!");
            return null;
        }
        switch($method){
        case 'sendMail':
            if (isset($param['msg_mail'])) {
                $ret['msg_mail'] = $param['msg_mail'];
            } else {
                $ret['msg_mail'] = $param;
            }
            $ret['command_no'] = 10001;
            break;
        case 'sendSmsp':
            $ret['msg_smsp'] = $param;
            $ret['command_no'] = 10002;
            break;
        case 'sendSpace':
            if (isset($param['msg_space'])) {
                $ret['msg_space'] = $param['msg_space'];
            } else {
                $ret['msg_space'] = $param;
            }
            $ret['command_no'] = 10100;
            break;
        case 'sendApple':
            if (isset($param['msg_apple'])) {
                $ret['msg_apple'] = $param['msg_apple'];
            } elseif(isset($param['msg_space'])) {
                $ret['msg_apple'] = $param['msg_space'];
            } else {
                $ret['msg_apple'] = $param;
            }
            $ret['command_no'] = 10200;
            break;
        case 'sendMsg':
            $ret['msg_msg'] = $param;
            $ret['command_no'] = 20000;
            break;
        case 'sendMsgBatch':
            $ret['msg_msgs'] = $param;
            $ret['command_no'] = 20001;
            break;
        default:
            $ret['command_no'] = 0;
            break;
        }
        return $ret;
    }
}
/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
