<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 * $Id$ 
 * 
 **************************************************************************/
 
 
 
/**
 * @file UuapAction.php
 * @author chenyijie(chenyijie@baidu.com)
 * @date 2012/08/07 21:57:36
 * @version $1.0.8.0$ 
 * @brief 基于CAS协议的UUAP SSO单点登录服务封装类 
 *  
 **/
class Saf_Action_UuapAction extends Saf_Action_BaseAction {

    function __construct() {
        $this->actionDict = parent :: USER_INFO;
        $this->actionConstruct('uuap');
    }

    public function actionStartUp() {
        $username = Bd_PhpCas::isAuthenticated();
        // 如果ral/services/uuap.conf配置错误 $username 便会是false 
        if ($username === false) {       
            return false;
        }       
        //使用UUAP SSO服务登录后会返回用户登录的账户名，此处复用USER_INFO字典用于存储
        $arrUserInfo = array(
            'uname' => $username, 
        );      
        $re = self :: setUserInfo($arrUserInfo);
    }

    public function actionShutDown() {
        /**
          *uuapActionShutDown暂无逻辑
          */
    }
    
    /**
     * @brief 设置用户信息数据
     * @return success-array failed-false
     * @retval array/boolean 
     * @author chenyijie
     * @date 2011/08/07 21:59:25
    **/
    public static function setUserInfo($arrValue) {
        if (parent :: __setDict(parent :: USER_INFO, $arrValue) === true) {
            return parent :: __getDict(parent :: USER_INFO);
        } else {
            Saf_SmartMain :: setSafLog("保存用户信息出错", 1);
            return false;
        }
    }

    /**
     * @brief 获得用户信息数据
     * @return success-array failed-false
     * @retval array/boolean 
     * @author chenyijie 
     * @date 2011/02/21 21:55:25
    **/
    public static function getUserInfo() {
        return parent :: __getDict(parent :: USER_INFO);
    }

}

/* vim: set ts=4 sw=4 sts=4 tw=100 */
