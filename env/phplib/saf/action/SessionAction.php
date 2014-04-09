<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 * $Id$ 
 * 
 **************************************************************************/
 
 
 
/**
 * @file SessionAction.php
 * @author niuyunkun(niuyunkun@baidu.com)
 * @date 2012/07/04 21:56:49
 * @version $Revision$ 
 * @brief 处理用户信息&验证类  
 *  
 **/
class Saf_Action_SessionAction extends Saf_Action_BaseAction {

    function __construct() {
        $this->actionDict = parent :: USER_INFO;
        $this->actionConstruct('session');
    }

    public function actionStartUp() {
        if (!isset($_COOKIE['BDUSS']) || $_COOKIE['BDUSS'] === '') {
            $ssid = $this->_getSSID();
            if ($ssid !== false) {
                $bduss = Bd_Passport :: getBDUSSBySSID($ssid);
                if ($bduss !== false) {
                    $_COOKIE['BDUSS'] = $bduss;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }
        $arrUserInfo = Saf_Base_Session :: checkLogin();
        if ($arrUserInfo === false) {
            return false;
        }
        $re = self :: setUserInfo($arrUserInfo);
        return true;
    }

    public function actionShutDown() {
        self :: savePassport();
    }
    
    /**
     * @brief 复写BaseAction的actionStartUpFinish()方法，执行userInfoHook()
     *
     * @see BaseAction:actionStartUpFinish() 
     * @note Saf_Base_Hook兼容老SAF的Hook使用方式
     * @author chenyijie
     * @date 2012/10/16 17:20:53
    **/
    public function actionStartUpFinish() {
        //兼容老版SAF的Hook使用方式
        Saf_Base_Hook :: userInfoHook();
        //执行用户自定义Hook
        if (is_object($this->objHook)) {
            $this->objHook->hookStartUpTail();
        }
        //关闭字典写权限
        parent :: $arrDict[parent :: USER_INFO]['status'] = parent :: DICT_READ;
    }
    
    /**
     * @brief 设置用户信息数据
     *
     * @return 失败false, 成功array()
     * @author cuichao02 
     * @date 2011/02/21
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
     *
     * @return 失败false, 成功array()
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function getUserInfo() {
        return parent :: __getDict(parent :: USER_INFO);
    }

    /**
     * @brief 将信息保存到passport 
     *
     * @return 失败false, 成功array()
     * @note 仅供用户自定义的Hook中调用
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function savePassport() {
        Saf_Base_Hook :: savePassportHook();
        return Saf_Base_Session :: saveModDatat();
    }

    /**
     * @brief 修改保存在passport字典中的数据
     *
     * @param int $bit 设置第几位
     * @param int $v   设置值
     * @return 失败false, 成功array()
     * @note 此接口只能在Hook中才会调用成功
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function setSavePassport($bit, $v) {
        $arrValue[$bit]  = $v;
        if (parent :: __setDict(parent :: SAVE_PASSPORT, $arrValue) === true) {
            return parent :: __getDict(parent :: SAVE_PASSPORT);
        } else {
            Saf_SmartMain :: setSafLog("设置到passport字典数据报错(" . var_export($arrValue, true) . ")", 1);
            return false;
        }
    }

    /**
     * @brief 获得将要存储passport数据
     *
     * @return 失败false, 成功array()
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function getSavePassport() {
        return parent :: __getDict(parent :: SAVE_PASSPORT);
    }

    /**
     * @brief 从QueryString中获取合法的ssid
     *
     * @return  success-$ssid failed-false 
     * @retval  string/bool 
     * @author chenyijie
     * @date 2012/10/17 17:28:14
    **/
    protected function _getSSID() {
        $arrRequest = Saf_SmartMain::getCgi();
        $ssid = 0;
        if (isset($arrRequest['request_param'])) {
            $ssid = $arrRequest['request_param']['ssid'];
        }
        if ($ssid !== '0' && $ssid != 'anonymous' && strlen($ssid) > 10) {
            return $ssid;
        } else {
            return false;
        }
    }

    //for Test
    /**
     * @brief 将USER_INFO字典清空
     *
     * @note 此接口为单测时使用，外部不开放 
     * @author chenyijie
     * @date 2012/10/24 15:24:16
    **/
    public static function cleanUserInfoDict() {
        parent :: $arrDict[parent :: USER_INFO]['data'] = null;
    }

}

/* vim: set ts=4 sw=4 sts=4 tw=100 */
