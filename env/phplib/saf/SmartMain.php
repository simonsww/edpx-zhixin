<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 * $Id$ 
 * 
 **************************************************************************/
 
 
 
/**
 * @file SmartMain.php
 * @author niuyunkun(niuyunkun@baidu.com)
 * @author luhaixia(luhaixia@baidu.com)
 * @author cuichao(cuichao02@baidu.com)
 * @author chenyijie(chenyijie@baidu.com)
 * @date 2012/07/04 13:24:25
 * @version $revision$ 
 * @brief SAF框架对外接口类
 *  
 **/
class Saf_SmartMain {

    //saf通用流程可裁剪，目前有通用流程cgi,session和log
    //cgi功能:获取POST和GET参数，并根据ie和oe参数做编码转换，执行Hook：cgiAction;
    //session功能:请求执行前Passport登陆功能，执行Hook：userInfoAction和savePassportAction;
    //log功能:请求结束打印Notice日志
    //通用流程可配置，App域的配置覆盖全局配置
    //cgi和log流程不允许裁剪， 1.0.4版本引入
    private static $arrCommonAction = array(
        'cgi'     => 1,
        'adapt'   => 0,
        'log'     => 1,
        'public'  => 0,
        'session' => 0,
        'uuap'    => 0,
    );

    private static $arrActionObj = array();       /**< 存放saf通用业务Action类对象数组        */
    private static $arrHook = array();            /**< 存放saf通用业务Action类的Hook对象数组  */

    /**
     * @brief 按照saf.conf中的配置初始化$arrActionObj数组,
     *        App域的配置将覆盖全局配置，若用户未提供配置，则按照默认设置开启流程
     *
     * @see adapterStart() 
     * @author luhaixia
     * @date 2012/03/28 14:16:42
    **/
    private static function initCommonAction() {
        $arrConf = Bd_Conf::getAppConf('saf/action');
        if (empty($arrConf)) {
            $arrConf = Bd_Conf::getConf('saf/action');
        }
        foreach ($arrConf as $key => $value) {
            if (isset($arrConf[$key]) && array_key_exists(strtolower($key),self::$arrCommonAction)) {
                self::$arrCommonAction[strtolower($key)] |= intval($value);
            }
        }
        foreach (self :: $arrCommonAction as $key => $value) {
            if ($value > 0) {
                $class = "Saf_Action_".ucfirst($key)."Action";
                if (class_exists($class)) {
                    $obj = new $class();
                    self :: $arrActionObj[$key] = $obj;
                } else {
                    Saf_SmartMain :: setSafLog( "通用业务流程加载失败，class {$class} does not exist.", 2 );
                }
            }
        }
    }

    /**
     * @brief 根据saf.conf配置文件初始化arrHook数组
     *
     * @return  true / false
     * @retval  bool
     * @see adapterStart()
     * @author luhaixia 
     * @date 2012/10/15 12:07:57
    **/
    private static function initHook(){
        $arrConf = Bd_Conf :: getAppConf( 'saf/hook' );
        if (empty($arrConf)) {
            $arrConf = Bd_Conf :: getConf( 'saf/hook' );
        }
        if (!is_array($arrConf)) {
            return false;
        }
        foreach ($arrConf as $key => $value) {
            if (isset($arrConf[$key]) && $value != '0') {
                $key = strtolower($key);
                self :: $arrHook[$key] = $value ;
            }
        }
        return true;
    }

    /**
     * @brief  根据saf.conf初始化$arrActionObj和$arrHook
     *         并依次执行$arrActionObj数组中Action的actionStartUp()方法
     *
     * @see Saf_ApUserPlugin:dispatchLoopStartup()接口
     * @see actionStartUpInit()与actionStartUpFinish()由BaseAction提供了实
     *      现，子类可按各自需求重写
     * @note 在app的Action执行之前执行 
     * @author chenyijie
     * @date 2012/10/16 10:34:00
    **/
    public static function adapterStart() {
        self :: initHook();
        self :: initCommonAction();
        foreach (self :: $arrActionObj as $key => $obj)
        {
            $obj->actionStartUpInit();
            $obj->actionStartUp();
            $obj->actionStartUpFinish();
        }
    }

    /**
     * @brief  依次执行各Action的actionShutDown()方法
     *
     * @see Saf_ApUserPlugin:dispatchLoopShutdown()接口
     * @note 在app的Action执行之后执行
     * @author chenyijie
     * @date 2012/10/16 10:34:00
    **/
    public static function adapterEnd() {
        foreach (self :: $arrActionObj as $key => $obj)
        {
            $obj->actionShutDownInit();
            $obj->actionShutDown();
            $obj->actionShutDownFinish();
        }
    }

    /**
     * @brief 获取$arrHook数组
     *
     * @return  array 
     * @retval  array 
     * @see Saf_Action_BaseAction:actionConstruct()接口
     * @author chenyijie
     * @date 2012/10/16 12:16:52
    **/
    public static function getHook() {
        return self :: $arrHook;
    }

    //saf内部LOG，调试使用,预订义3个级别，应用方可以自己加级别，不做限制。
    protected static $arrSafLog = array(
        'level_0'	=>	//saf核心函数报错SmartMain类(SmartMain核心函数报错，多数是权限方面。使用范围:以"__"开头的函数)
        array(0 =>array('funName'=>'类名::函数', 'line'=>'行数', 'message'=>'内容')),
        'level_1'	=>	//saf内部使用报错(SmartMain类使用上的报错， 多数是参数格式，核心数据返回值出错。使用范围:SmartMain类)
        array(0 =>array('funName'=>'类名::函数', 'line'=>'行数', 'message'=>'内容')),
        'level_2'	=>	//saf外部应该报错(主要是base文件夹中的类报错，多数是逻辑、通信、数据校验。使用范围:base文件夹中的类)
        array(0 =>array('funName'=>'类名::函数', 'line'=>'行数', 'message'=>'内容')),
    );

    protected static $errno  = 0;
    protected static $errmsg = '';

    /**
     * @brief  设置saf内部log
     *
     * @param 消息内容 $message
     * @param 级别 $level 应用方可以随意增加级别，不做限制，系统默认使用3级
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function setSafLog($message, $level) {
        $trace = debug_backtrace();
        self :: $arrSafLog['level_' . $level][] = array( 'funName' => $trace[1]['class'] . '::' . $trace[1]['function'], 
            'line'    => $trace[0]['line'], 
            'message' => $message );
    }

    /**
     * @brief  获得saf内部log
     *
     * @return array()
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function getSafLog() {
        return self :: $arrSafLog;
    }

    /**
     * @brief  SAF cgi流程设置CGI数据对外接口
     *
     * @return 失败false, 成功array()
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function setCgi($arrValue) {
        return Saf_Action_CgiAction :: setCgi($arrValue);
    }

    /**
     * @brief  SAF cgi流程获得CGI数据对外接口
     *
     * @return 失败false, 成功array()
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function getCgi() {
        return Saf_Action_CgiAction :: getCgi();
    }

    /**
     * @brief  SAF cgi流程返回set之前的cgi参数对外接口
     *
     * @return 失败false, 成功array()
     * @author cuichao02 
     * @date 2011/02/21 
    **/
    public static function setCgiStart($arrParams) {
        return Saf_Action_CgiAction :: setCgiStart($arrParams);
    }

    /**
     * @brief SAF cgi流程去掉指定key的cgi参数对外接口
     *
     * @params  array('key1', 'key2');
     * @return  失败false成功true;
     * @see 
     * @note 
     * @author luhaixia
     * @date 2012/05/08 14:29:54
    **/
    public static function unsetCgi($arrKeys) {
        return Saf_Action_CgiAction :: unsetCgi($arrKeys);
    } 

    /**
     * @brief SAF adapt流程设置适配信息对外接口
     *
     * @return  失败false, 成功array()
     * @author cuichao02
     * @date 2011/02/11 14:15:46
    **/
    public static function setAdaptInfo($arrValue) {
        return Saf_Action_AdaptAction :: setAdaptInfo($arrValue);
    } 

    /**
     * @brief SAF adapt流程获取适配信息对外接口
     *
     * @return  失败false, 成功array() 
     * @author cuichao02
     * @date 2011/02/11 14:15:54
    **/
    public static function getAdaptInfo() {
        return Saf_Action_AdaptAction :: getAdaptInfo();
    }

    /**
     * @brief  SAF public流程设置公共字典数据对外接口
     *
     * @return 失败false, 成功array()
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function setPublic($arrValue) {
        return Saf_Action_PublicAction :: setPublic($arrValue);
    }

    /**
     * @brief  SAF public流程获得公共字典数据对外接口
     *
     * @return 失败false, 成功array()
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function getPublic() {
        return Saf_Action_PublicAction :: getPublic();
    }

    /**
     * @brief  SAF session流程设置用户信息数据对外接口
     *
     * @return 失败false, 成功array()
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function setUserInfo($arrValue) {
        return Saf_Action_SessionAction :: setUserInfo($arrValue);
    }

    /**
     * @brief  SAF session/uuap流程获得用户信息数据对外接口
     *
     * @return 失败false, 成功array()
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function getUserInfo() {
        return Saf_Action_SessionAction :: getUserInfo();
    }

    /**
     * @brief  SAF session流程获得将要存储到passport的数据的对外接口
     * 
     * @return 失败false, 成功array()
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function getSavePassport() {
        return Saf_Action_SessionAction :: getSavePassport(); 
    }

    /**
     * @brief  SAF session流程设置将要保存到passport的数据的对外接口
     *
     * @param int $bit 设置第几位
     * @param int $v   设置值
     * @return 失败false, 成功array()
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function setSavePassport($bit, $v) {
        return Saf_Action_SessionAction :: setSavePassport($bit, $v); 
    }

    /**
     * @brief  SAF log流程设置LOG数据的对外接口
     *
     * @param array(key=>value)
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function setLogNotice($arrValue) {
        return Saf_Action_LogAction :: setLogNotice($arrValue);
    }

    /**
     * @brief  SAF log流程获得LOG数据的对外接口
     *
     * @return 失败false, 成功array()
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function getLogNotice() {
        return Saf_Action_LogAction :: getLogNotice();
    }

} 

/* vim: set ts=4 sw=4 sts=4 tw=100 */
