<?php
/**
 * 钩子类
 * @author cuichao02 
 * @date 2011/02/21
 */
class Saf_Base_Hook{

    private static $arrObjHook = array();
    private static $boolCreateHook = false;

    /**
     * @brief modify by luhaixia 获取全局定义了Hook和App域的Hook，如果都没有定义，则使用默认的Hook
     *
     * @return  public function 
     * @retval   
     * @see 
     * @note 
     * @author luhaixia
     * @date 2012/03/28 13:44:21
    **/
    static protected function creatObjHook()
    {
        if(Saf_Base_Hook::$boolCreateHook){ //已经创建了Hook则直接返回
            return true;
        }
        Saf_Base_Hook::$arrObjHook = array();
        $strGlobalSafHook = Bd_Conf::getConf('/saf/hook_name');
        if(!empty($strGlobalSafHook)){
            if(class_exists($strGlobalSafHook)){
                Saf_Base_Hook::$arrObjHook[] = new $strGlobalSafHook();
            }else{
                Saf_SmartMain :: setSafLog("创建的勾子类({$strGlobalSafHook})不存在", 2);
            }
        }
        $strAppSafHook = Bd_Conf::getAppConf('/saf/hook_name');
        if(!empty($strAppSafHook)){
            if(class_exists($strAppSafHook)){
                Saf_Base_Hook::$arrObjHook[] = new $strAppSafHook();
            }else{
                Saf_SmartMain :: setSafLog("创建的勾子类({$strAppSafHook})不存在", 2);
            }
        }
        if(count(Saf_Base_Hook::$arrObjHook) == 0) {
            $strHookClassName = 'Saf_Base_Hook';
            Saf_SmartMain :: setSafLog("没有设置需要创建的勾子类，使用默认的({$strHookClassName})", 2);
            Saf_Base_Hook :: $arrObjHook[] = new $strHookClassName();
        }
        Saf_Base_Hook::$boolCreateHook = true;
    }

    /**
     * @brief 处理CGI的钩子
     *
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public function cgiHook()
    {
        Saf_Base_Hook :: creatObjHook();
        foreach (Saf_Base_Hook::$arrObjHook as $objHook) {
            $objHook->cgiAction();
        }
    }

    /**
     * @brief 处理userinfo的钩子
     *
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public function userInfoHook()
    {
        Saf_Base_Hook :: creatObjHook();
        foreach (Saf_Base_Hook::$arrObjHook as $objHook) {
            $objHook->userInfoAction();
        }
    }

    /**
     * @brief 保存passport的钩子
     *
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public function savePassportHook()
    {
        Saf_Base_Hook :: creatObjHook();
        foreach (Saf_Base_Hook::$arrObjHook as $objHook) {
            $objHook->savePassportAction();
        }
    }

    /**
     * @brief 保存log的钩子
     *
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public function saveLogHook() 
    {
        Saf_Base_Hook :: creatObjHook();
        foreach (Saf_Base_Hook::$arrObjHook as $objHook) {
            $objHook->saveLogAction();
        }
    }

    /**
     * @brief 业务执行出错后执行的钩子
     *
     * @author cuichao02 
     * @date 2011/02/21
    **/ 
    public function fatalHook(){
        Saf_Base_Hook :: creatObjHook();
        foreach (Saf_Base_Hook::$arrObjHook as $objHook) {
            $objHook->fatalAction();
        }
    }

    /**
     * @brief 接口函数，处理CGI
     *
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public function cgiAction()
    {

    }

    /**
     * @brief 接口函数，处理userinfo
     *
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public function userInfoAction()
    {

    }

    /**
     * @brief 接口函数，处理保存passport
     *
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public function savePassportAction()
    {

    }

    /**
     * @brief 接口函数，处理保存log
     *
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public function saveLogAction()
    {

    }

    /**
     * @brief 接口函数，处理业务执行fatal后的异常处理
     *
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public function fatalAction()
    {

    }

    /**
     * @brief 运行时出错处理钩子
     *
     * @param str $code //save_passport
     * @param str $message //system busy
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public function warningAction($code, $message)
    {
        Saf_SmartMain :: setLogNotice( array('saf_' . $code => $message) );
    }
}

/* vim: set ts=4 sw=4 sts=4 tw=100 */
