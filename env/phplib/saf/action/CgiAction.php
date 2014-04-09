<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 * $Id$ 
 * 
 **************************************************************************/
 
 
 
/**
 * @file CgiAction.php
 * @author niuyunkun(niuyunkun@baidu.com)
 * @date 2012/07/04 21:54:11
 * @version $Revision$ 
 * @brief 获取GET POST参数类
 *  
 **/
class Saf_Action_CgiAction extends Saf_Action_BaseAction {
    
    function __construct() {
        $this->actionDict = parent :: REQUEST_PARAM;
        $this->actionConstruct('cgi');
    }

    public function actionStartUp() {
        return self :: setCgi( Saf_Base_Cgi :: getRequest() );
    }

    public function actionShutDown() {
        /**
         * cgishutdown暂无业务逻辑
         */
    }

    /**
     * @brief 复写BaseAction的actionStartUpFinish()方法，执行cgiHook()
     *
     * @see BaseAction:actionStartUpFinish()
     * @note  Saf_Base_Hook兼容老SAF的Hook使用方式
     * @author chenyijie
     * @date 2012/10/16 16:41:09
    **/
    public function actionStartUpFinish() {
        //执行用户自定义Hook
        if (is_object($this->objHook)) {
            $this->objHook->hookStartUpTail();
        }
        Saf_Base_Hook :: cgiHook();
        //关闭字典写权限
        parent :: $arrDict[parent :: REQUEST_PARAM]['status'] = parent :: DICT_READ;
    }
                
    /**
     * @brief 设置CGI数据 
     *
     * @return 失败false, 成功array()
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function setCgi($arrValue) {
        if (parent :: __setDict(parent :: REQUEST_PARAM, $arrValue) === true) {
            return parent :: __getDict(parent :: REQUEST_PARAM);
        } else {
            Saf_SmartMain :: setSafLog("保存CGI数据出错", 1);
            return false;
        }
    }
    
    /**
     * @brief 获得CGI数据
     *
     * @return 失败false, 成功array()
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function getCgi() {
        return parent :: __getDict(parent :: REQUEST_PARAM);
    }

    /**
     * @brief 用$arrParams去替换现有的CGI参数列表并返回被替换掉的CGI参数列表
     *
     * @return  array/false
     * @retval  array/bool
     * @see SmartMain::setCgiStart
     * @note 该接口用于SAF API调用时
     * @author chenyijie
     * @date 2012/10/23 18:47:21
    **/
    public static function setCgiStart($arrParams) {
        //开放写权限
        parent :: $arrDict[parent :: REQUEST_PARAM]['status'] = parent :: DICT_WRITE;
        $arrLastCgi = self::getCgi();
        if (is_array($arrParams)) {
            foreach($arrParams as $key => $value){
                parent :: $arrDict[parent :: REQUEST_PARAM]['data'][$key] = $value;
            }
        } else {
            self :: setCgi($arrParams);
        }
        //关闭写权限 
        parent :: $arrDict[parent :: REQUEST_PARAM]['status'] = parent :: DICT_READ;
        return $arrLastCgi;
    }

    /**
     * @brief 去掉指定key的cgi参数*
     *
     * @params  array('key1', 'key2');
     * @return  失败false成功true;
     * @see 
     * @note 
     * @author luhaixia
     * @date 2012/05/08 14:29:54
    **/
    public static function unsetCgi($arrKeys) {
        if (parent :: DICT_WRITE === (parent :: $arrDict[parent :: REQUEST_PARAM]['status'] & parent :: DICT_WRITE)) {
            if (!is_array($arrKeys)) {
                $arrKeys = array($arrKeys);
            }
            foreach ($arrKeys as $key) {
                if (isset(parent :: $arrDict[parent :: REQUEST_PARAM]['data'][$key])) {
                    unset(parent :: $arrDict[parent :: REQUEST_PARAM]['data'][$key]);
                }
            }
            return true;
        } else {
            Saf_SmartMain :: setSafLog("没有写字典(REQUEST_PARAM)的权限", 0);
            return false;
        }
    }

    //for Test
    /**
     * @brief 将REQUEST_PARAM字典清空
     *
     * @note 此接口为单测时使用，外部不开放 
     * @author chenyijie
     * @date 2012/10/24 15:24:16
    **/
    public static function cleanRequestParamDict() {
        parent :: $arrDict[parent :: REQUEST_PARAM]['data'] = null;
    }
}

/* vim: set ts=4 sw=4 sts=4 tw=100 */
