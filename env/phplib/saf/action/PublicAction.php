<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 * $Id$ 
 * 
 **************************************************************************/
 
 
 
/**
 * @file PublicAction.php
 * @author niuyunkun(niuyunkun@baidu.com)
 * @date 2012/07/04 21:55:58
 * @version $Revision$ 
 * @brief 公共字典类 
 *  
 **/
class Saf_Action_PublicAction extends Saf_Action_BaseAction {
    
    function __construct() {
        $this->actionConstruct('public');
    }

    public function actionStartUp() {
        /**
         * publicStartUp暂无业务逻辑
         */
    }

    public function actionShutDown() {
        /**
         * publicShutDown暂无业务逻辑
         */
    }
    
    /**
     * @brief 设置公共字典数据
     *
     * @return 失败false, 成功array()
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function setPublic($arrValue) {
        if (parent :: __setDict(parent :: PUBLIC_PARAM, $arrValue) === true) {
            return parent :: __getDict(parent :: PUBLIC_PARAM);
        } else {
            Saf_SmartMain :: setSafLog("保存公共字典数据时出错", 1);
            return false;
        }
    }

    /**
     * @brief 获得公共字典数据 
     *
     * @return 失败false, 成功array()
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function getPublic() {
        return parent :: __getDict(parent :: PUBLIC_PARAM);
    }

    //for Test
    /**
     * @brief 将REQUEST_PARAM字典清空
     *
     * @note 此接口为单测时使用，外部不开放 
     * @author chenyijie
     * @date 2012/10/24 15:24:16
    **/
    public static function cleanPublicParamDict() {
        parent :: $arrDict[parent :: PUBLIC_PARAM]['data'] = null;
    }


}

/* vim: set ts=4 sw=4 sts=4 tw=100 */
