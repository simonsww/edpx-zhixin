<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 * $Id$ 
 * 
 **************************************************************************/
 
 
 
/**
 * @file AdaptAction.php
 * @author niuyunkun(niuyunkun@baidu.com)
 * @date 2012/07/04 15:37:14
 * @version $Revision$ 
 * @brief 通用适配业务逻辑类
 *  
 **/
class Saf_Action_AdaptAction extends Saf_Action_BaseAction {
  
    function __construct() {
        $this->actionDict = parent :: ADAPT_INFO;
        $this->actionConstruct('adapt');
    }

    /**
     * @brief 复写BaseAction的actionStartUpInit()方法，为了单测而留着
     *        因单测中会Mock此类的getScreenTypeFromWise方法，该方法中
     *        含有ral的调用与外界也没有参数交互，因此Mock后AdaptAction
     *        的构造函数将不会被执行导致ADAPT_INFO字典未被打开，最终导
     *        致单测全部挂掉，考虑可测性改造成本，最终选择复写此方法来
     *        解决
     *
     * @see BaseAction::actionStartUpInit() 
     * @author chenyijie
     * @date 2012/10/17 11:58:21
     **/
    public function actionStartUpInit() {
        //开启字典写权限
        parent :: $arrDict[parent :: ADAPT_INFO]['status'] = parent :: DICT_WRITE;
        //用户自定义hook
        if (is_object($this->objHook)) {
            $this->objHook->hookStartUpHead();
        }
    }

    public function actionStartUp() {
        $state = parent :: $arrDict[parent :: ADAPT_INFO]['data']['needAdapt'];
        if ($state === false) {
             return false;
        }
        $needAdapt = false;
        $screenType = '';
        $arrRequest = Saf_SmartMain :: getCgi();
        if (!isset($arrRequest['request_param']['bd_page_type'])) {
            $needAdapt = true;
        } elseif ($arrRequest['request_param']['bd_page_type'] == 0) {
            $screenType = 'wml';
        } elseif ($arrRequest['request_param']['bd_page_type'] == 1) {
            if (!isset($arrRequest['request_param']['pu'])) {
                $needAdapt = true;
            } else {
                $arrPU = self :: parsePU( $arrRequest['request_param']['pu'] );
                if (!isset($arrPU['sz'])) {
                    $needAdapt = true;
                } elseif (preg_match('/1330_\d+/', $arrPU['sz'])) {
                    $screenType = 'big';
                } elseif (preg_match('/1320_\d+/', $arrPU['sz'])) {
                    $screenType = 'iphone';
                } elseif (preg_match('/1321_\d+/', $arrPU['sz'])) {
                    $screenType = 'utouch';
                } elseif (preg_match('/1325_\d+/', $arrPU['sz'])) {
                    $screenType = 'pad';
                } elseif (preg_match('/\d+_\d+/', $arrPU['sz'])) {
                    $screenType = 'middle';
                } else {
                    $needAdapt = true;
                }
            }
        } else {
            $needAdapt = true;
        }
        if ($needAdapt) {
            $data =  $this->getScreenTypeFromWise();
            if ($data != false) {
                $screenType = $data['_adapt_result']['bd_page_type'] == 0 ? 'wml' : $data['_adapt_result']['tn'];
            }
        }

        $adaptInfo = array(
            'pu' => $arrRequest['request_param']['pu'],
            'screenType' => $screenType,
            'adaptData' => $data,
        );
        self :: setAdaptInfo( $adaptInfo );
            
    }

    public function actionShutDown() {
        /**
         * cgishutdown暂无业务逻辑
         */
    }
    
    /**
     * @brief 将适配信息保存在字典中
     *
     * @return 失败false, 成功array()
     * @author niuyunkun 
     * * @date 2012/07/06
    **/
    public static function setAdaptInfo($arrValue) {
        if (parent :: __setDict(parent :: ADAPT_INFO, $arrValue) === true) {
            return parent :: __getDict(parent :: ADAPT_INFO);
        } else {
            Saf_SmartMain :: setSafLog("保存适配信息出错", 1);
            return false;
        }
    }

    /**
     * @brief 获取适配信息
     *
     * @return 失败false, 成功array()
     * @author niuyunkun 
     * @date 2012/07/06
    **/
    public static function getAdaptInfo() {
        return parent :: __getDict(parent :: ADAPT_INFO);
    }

    /**
     * @brief 解析pu参数
     *
     * @return 失败false, 成功array()
     * @author niuyunkun
     * @date 2012/07/10
    **/
    public static function parsePU($pu) {
        if (empty($pu)) {
            return false;
        }
        $arrTemp = explode( ',', $pu );
        foreach ($arrTemp as $arrAt) {
            $tmp = explode( '@', $arrAt );
            $arrPU[$tmp[0]] = $tmp[1];
        }
        
        return $arrPU;
    }
    
    /**
     * @brief 通过wise适配服务获取接入设备信息
     *
     * @return  success-array failed-false
     * @retval  array/boolean 
     * @author niuyunkun
     * @date 2012/07/10 21:38:54
    **/
    public function getScreenTypeFromWise() {
        //talk with wise server
        $data = ral( 'wise', 'getscreentype', $_SERVER, rand() );
        if ($data === false) {
            Bd_Log::warning( "getScreenTypeFromWise failed! ral error no:".ral_get_errno()." error_msg:"
                .ral_get_error()." protocol_status:".ral_get_protocol_code() );
            return false ;
        } else {
            return $data;
        }
    }

    //For test
    public function setScreenTypeFromWise() {

    }
}

/* vim: set ts=4 sw=4 sts=4 tw=100 */
