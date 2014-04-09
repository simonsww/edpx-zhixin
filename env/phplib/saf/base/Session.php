<?php

/**
 * 处理用户信息&验证类
 * @author cuichao02 
 * @date 2011/02/21
 */
class Saf_Base_Session{

    /**
     * @brief 从PASSPORT获得用户登录状态
     * 
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function checkLogin()
    {
        $safConf = Bd_Conf :: getAppConf('/saf');
        if (empty($safConf)) {
            $safConf = Bd_Conf :: getConf('/saf');
        }
        $strSessionType = intval($safConf['session_type']);
        $intAutoReset = intval($safConf['auto_reset_cookie']);
        if ($_COOKIE['BDUSS'] == '') { 
            //passport not login
            return false;
        }
        //新版session1 session2同时兼容
        $re = Bd_Passport :: checkUserLogin(); 

        if ($re === false) {
            Saf_SmartMain :: setSafLog("获取session链接到passport服务器出错(" . var_export($arrOutput, true) . ")", 2);
            Saf_Base_Hook :: warningAction('get_session_passport', 'system busy');
            return false;
        }

        // check reset_cookie
        if ($intAutoReset > 0 && is_array($re)) {
            if ($strSessionType == 2) {
                $intNeedReset = $re['need_set_cookie'];
            } else {
                $intNeedReset = $re['need_reset_cookie'];
            }
            if ($intNeedReset == 1) {
                if ($intAutoReset == 1 || $re['bduss'] == '') {
                    setcookie('BDUSS', '', time()-3600, '/', '.baidu.com');
                    return false;
                } else {
                    setcookie('BDUSS', $re['bduss'], time() + 6*3600, '/', '.baidu.com');
                }
            }
        }
        return $re;
    }

    /**
     * @brief 保存用户信息到passport
     *
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function saveModDatat()
    {
        $arrSavePassport = Saf_SmartMain :: getSavePassport();
        if (is_array($arrSavePassport) &&
            count($arrSavePassport) > 0) {
                $safConf = Bd_Conf :: getAppConf('/saf');
                if(empty($safConf)){
                    $safConf = Bd_Conf :: getConf('/saf');
                }
                $intPassportSaveLen = intval($safConf['passport_save_len']);
                if ($intPassportSaveLen == 0) {
                    $intPassportSaveLen = 32 ; 
                }
                Bd_Passport :: initDataBuf($arrCachePass, $intPassportSaveLen);

                foreach ($arrSavePassport as $bit => $v) {
                    Bd_Passport :: modDataBufByBit($arrCachePass , intval($bit), intval($v));
                }
                $arrOutput = Bd_Passport :: modData($_COOKIE['BDUSS'] , '' ,'' , $arrCachePass['data'] , $arrCachePass['mask']);

                if ($arrOutput['status'] !=0 || $arrOutput == false) {
                    Saf_SmartMain :: setSafLog("保存到passport服务器出错(" . var_export($arrOutput, true) . ")", 2);
                    Saf_Base_Hook :: warningAction('save_passport', 'system busy');
                    return false;
                }
            }
        return true;
    }
    
    /**
     * @brief 初始化passport值 global变量中读取配置
     *
     * @note 已废弃
     */
    function setPassportConf()
    {
        return;
    }
}

/* vim: set ts=4 sw=4 sts=4 tw=100 */
