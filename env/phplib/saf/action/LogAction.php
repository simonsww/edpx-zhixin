<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 * $Id$ 
 * 
 **************************************************************************/
 
 
 
/**
 * @file LogAction.php
 * @author luhaixia(luhaixia@baidu.com)
 * @date 2012/07/04 21:55:17
 * @version $Revision$ 
 * @brief Log业务流程
 *  
 **/
class Saf_Action_LogAction extends Saf_Action_BaseAction {
    
    function __construct() {
        $this->actionConstruct('log');
    }

    public function actionStartUp() {
        //启动OMP
        $objOmp = new Bd_Omp();
        $objOmp->start();
		$uid = 0;
		$arrUserInfo = Saf_Action_SessionAction::getUserInfo();
		if(is_array($arrUserInfo) && isset($arrUserInfo['uid'])){
			$uid = intval($arrUserInfo['uid']);
		}
		//uid字段是omp字段，wf和notice日志都需要打印
		Bd_Log::addNotice('uid', $uid);
        Saf_Action_PublicAction::setPublic(array('omp' => $objOmp));
    }

    public function actionShutDown() {
        /*
         * 打印统计日志字段
         */
        $arrLog = array();
        $arrUserInfo = Saf_Action_SessionAction::getUserInfo();
        if (count($arrUserInfo) > 0) {
            //$arrLog['uid'] = intval($arrUserInfo['uid']);//uid字段是omp字段，wf和notice日志都需要打印
            $arrLog['un']  = strval($arrUserInfo['uname']);
            $arrLog['mobilephone'] = strval($arrUserInfo['securemobil']);
            $arrLog['email']       = strval($arrUserInfo['secureemail']);
        } else {
            $arrLog['uid'] = 0;
            $arrLog['un']  = '';
            $arrLog['mobilephone'] = '';
            $arrLog['email']       = '';
        }
        $arrLog['baiduid']     = isset($_COOKIE['BAIDUID']) ? $_COOKIE['BAIDUID'] : '';
        $arrLog['url']         = isset($_SERVER['REQUEST_URI']) ? $_SERVER['REQUEST_URI'] : '';
        $arrLog['refer']       = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : '';
        $arrLog['uip']         = Bd_Env::getUserIp();
        $arrLog['ua']          = isset($_SERVER['HTTP_USER_AGENT']) ? $_SERVER['HTTP_USER_AGENT'] : '';
        $arrLog['host']        = isset($_SERVER['HTTP_HOST']) ? $_SERVER['HTTP_HOST'] : '';
        self :: setLogNotice($arrLog);

        //结束OMP
        $arrPublic = Saf_Action_PublicAction::getPublic();
        $objOmp = $arrPublic['omp'];
        if (is_object($objOmp)) {
            $objOmp->stop();
        }
        //打印notice日志
        self :: saveLogNotice();
    }
    
    /**
     * @brief 设置Log数据
     *
     * @param array(key=>value)
     * @return 失败false, 成功array()
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function setLogNotice($arrValue) {
        if (parent :: __setDict(parent :: LOG_NOTICE, $arrValue) === true) {
            Saf_Base_Log  :: addLogNotice($arrValue);
            return parent :: __getDict(parent :: LOG_NOTICE);
        } else {
            Saf_SmartMain :: setSafLog("设置log字典数据报错(" . var_export($arrValue, true) . ")", 1);
            return false;
        }
    }

    /**
     * @brief 获得LOG数据
     *
     * @return 失败false, 成功array()
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function getLogNotice() { 
        return parent :: __getDict(parent :: LOG_NOTICE);
    }

    /**
     * @brief 保存到日志中
     *
     * @author cuichao02 
     * @date 2011/02/21
    **/
    protected static function saveLogNotice() {
        Saf_Base_Hook :: saveLogHook();
        Saf_Base_Log  :: notice();
    }
}

/* vim: set ts=4 sw=4 sts=4 tw=100 */
