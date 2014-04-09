<?php
 /***************************************************************************
  * 
  * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
  *      
  **************************************************************************/



/**
 * @file PhpCas.php
 * @author chenyijie(chenyijie@baidu.com)
 * @date 2012/07/25 17:06:36
 * @version $1.0.2.4$
 * @brief UUAP SSO服务需用到的CAS协议PHP实现在ODP中的封装类
 *  
 **/

class Bd_PhpCas {
    
    private static $isInit = false;              /**< 用于记录init()函数的执行状态           */
    private static $isCasClientInit = false;     /**< 用于记录getCasInit()函数的执行状态     */
    private static $arrConf = null;              /**< 用于存放Bd_Conf读取的uuap.conf中的配置 */
   
    /** 
      *使用ClassMapper工具生成的对php/phplib/ext/cas目录下文件路径的映射数组
     **/ 
    private static $casClassMap = array(
        'phpCAS' => 'php/phplib/ext/cas/CAS.php',
        'CAS_AuthenticationException' => 'php/phplib/ext/cas/CAS/AuthenticationException.php',
        'CAS_Client' => 'php/phplib/ext/cas/CAS/Client.php',
        'CAS_CookieJar' => 'php/phplib/ext/cas/CAS/CookieJar.php',
        'CAS_Exception' => 'php/phplib/ext/cas/CAS/Exception.php',
        'CAS_GracefullTerminationException' => 'php/phplib/ext/cas/CAS/GracefullTerminationException.php',
        'CAS_InvalidArgumentException' => 'php/phplib/ext/cas/CAS/InvalidArgumentException.php',
        'CAS_OutOfSequenceException' => 'php/phplib/ext/cas/CAS/OutOfSequenceException.php',
        'CAS_ProxiedService' => 'php/phplib/ext/cas/CAS/ProxiedService.php',
        'CAS_ProxyChain' => 'php/phplib/ext/cas/CAS/ProxyChain.php',
        'CAS_ProxyTicketException' => 'php/phplib/ext/cas/CAS/ProxyTicketException.php',
        'CAS_Languages_Catalan' => 'php/phplib/ext/cas/CAS/Languages/Catalan.php',
        'CAS_Languages_English' => 'php/phplib/ext/cas/CAS/Languages/English.php',
        'CAS_Languages_French' => 'php/phplib/ext/cas/CAS/Languages/French.php',
        'CAS_Languages_German' => 'php/phplib/ext/cas/CAS/Languages/German.php',
        'CAS_Languages_Greek' => 'php/phplib/ext/cas/CAS/Languages/Greek.php',
        'CAS_Languages_Japanese' => 'php/phplib/ext/cas/CAS/Languages/Japanese.php',
        'CAS_Languages_LanguageInterface' => 'php/phplib/ext/cas/CAS/Languages/LanguageInterface.php',
        'CAS_Languages_Spanish' => 'php/phplib/ext/cas/CAS/Languages/Spanish.php',
        'CAS_PGTStorage_AbstractStorage' => 'php/phplib/ext/cas/CAS/PGTStorage/AbstractStorage.php',
        'CAS_PGTStorage_Db' => 'php/phplib/ext/cas/CAS/PGTStorage/Db.php',
        'CAS_PGTStorage_File' => 'php/phplib/ext/cas/CAS/PGTStorage/File.php',
        'CAS_ProxiedService_Abstract' => 'php/phplib/ext/cas/CAS/ProxiedService/Abstract.php',
        'CAS_ProxiedService_Exception' =>  'php/phplib/ext/cas/CAS/ProxiedService/Exception.php',
        'CAS_ProxiedService_Http' => 'php/phplib/ext/cas/CAS/ProxiedService/Http.php',
        'CAS_ProxiedService_Imap' => 'php/phplib/ext/cas/CAS/ProxiedService/Imap.php',
        'CAS_ProxiedService_Testable' =>  'php/phplib/ext/cas/CAS/ProxiedService/Testable.php',
        'CAS_ProxyChain_AllowedList' => 'php/phplib/ext/cas/CAS/ProxyChain/AllowedList.php',
        'CAS_ProxyChain_Any' => 'php/phplib/ext/cas/CAS/ProxyChain/Any.php',
        'CAS_ProxyChain_Interface' => 'php/phplib/ext/cas/CAS/ProxyChain/Interface.php',
        'CAS_ProxyChain_Trusted' => 'php/phplib/ext/cas/CAS/ProxyChain/Trusted.php',
        'CAS_Request_AbstractRequest' => 'php/phplib/ext/cas/CAS/Request/AbstractRequest.php',
        'CAS_Request_CurlMultiRequest' => 'php/phplib/ext/cas/CAS/Request/CurlMultiRequest.php',
        'CAS_Request_CurlRequest' => 'php/phplib/ext/cas/CAS/Request/CurlRequest.php',
        'CAS_Request_Exception' => 'php/phplib/ext/cas/CAS/Request/Exception.php',
        'CAS_Request_MultiRequestInterface' => 'php/phplib/ext/cas/CAS/Request/MultiRequestInterface.php',
        'CAS_Request_RequestInterface' => 'php/phplib/ext/cas/CAS/Request/RequestInterface.php',
        'CAS_ProxiedService_Http_Abstract' => 'php/phplib/ext/cas/CAS/ProxiedService/Http/Abstract.php',
        'CAS_ProxiedService_Http_Get' => 'php/phplib/ext/cas/CAS/ProxiedService/Http/Get.php',
        'CAS_ProxiedService_Http_Post' => 'php/phplib/ext/cas/CAS/ProxiedService/Http/Post.php',
    );
    
   /**
     * @brief ext中的CAS外部文件映射初始化接口
     *
     * @return  success-true failed-false
     * @retval  boolean
     * @see  php/phplib/ext/cas/中的phpCAS相关实现文件
     * @note 将php/ext/cas目录下的文件进行路径映射,并读取ral/services/uuap.conf配置文件的信息
     * @author chenyijie
     * @date 2012/09/28 22:25:52
    **/
    private static function getCasInit()
    {
        if(!self::$isInit) 
        {
            Bd_Autoloader::addClassMap(self::$casClassMap);
            self::$isInit = true;
        }

        // 加载配置
        if(empty(self::$arrConf))
        {
            self::$arrConf = Bd_Conf::getConf('ral/services/uuap/CamelConfig/ServiceConfig/Local/Service');
            if(empty(self::$arrConf))
            {
                Bd_Log::warning('Get configure from ral/services/uuap.conf failed');
                self::$arrConf = null;
                return false;
            }
            //裁剪掉关于UIC服务的配置
            foreach (self::$arrConf as $index)
            {
                if($index['Name'] === 'uuapSSO')
                {
                    self::$arrConf = $index;
                }
            }
        }
        if(self::$arrConf['ReverseProxy'] === 'On')
        {
            $str = $_SERVER['SERVER_NAME'];
            if(self::$arrConf['ProxyPort'])
            {
                $str .= ":". self::$arrConf['ProxyPort'];
            }
            define("UUAP_SERVICE_URL", $str);
        }
        return true;
    }

   /**
     * @brief 全局初始化接口
     *
     * @return  success-true failed-false 
     * @retval  boolean
     * @see getCasInit()
     * @note 这个函数修改了session的存储文件路径为/odp/data/phpcas,并关闭了phpCAS第三方库本身的日志
     * @note 在一个CGI中phpCAS client对象只能被初始化一次，因此设置$isCasClientInit属性用来控制
     * @author chenyijie
     * @date 2012/09/28 22:28:43
    **/
    private static function init()
    {
        if(self::$isCasClientInit)
        {
            return true;
        }
        
        if(!self::getCasInit())
        {
            Bd_Log::warning('UUAP CAS protocol init failed');
            return false;
        }

        $link = self::$arrConf['Server'][0]['Hostname'];
        $port = self::$arrConf['DefaultPort']; 
        
        if(defined("IS_ODP"))
        {
            $path = Bd_AppEnv::getEnv('data');
            $path = dirname(dirname($path)) . '/phpcas/';
            session_save_path($path);
        }
        
        phpCAS::setDebug('');
        phpCAS::client(CAS_VERSION_2_0, $link, intval($port), '');
        phpCAS::setNoCasServerValidation();
        phpCAS::handleLogoutRequests(false);
        self::$isCasClientInit = true;
        return true;
    }
    
   /**
     * @brief 判断用户是否登录接口
     *
     * @return  已登录-用户登录的账户名string  未登录-false
     * @retval  string/boolean
     * @author chenyijie
     * @date 2012/09/28 22:18:27
    **/
    public static function isAuthenticated()
    {
        if(!self::init())
        {
            return false;
        }

        $result = phpCAS::isAuthenticated();
        if($result === true)
        {
            $result = phpCAS::getUser();
        }
        session_write_close();
        return $result;
    }
    
   /**
     * @brief 封装使用UUAP SSO服务的登录过程
     *
     * @return  success-用户登录的账户名string
     * @retval  string
     * @note    调用此接口将重定向到UUAP的登陆页面进行用户登录
     * @author chenyijie
     * @date 2012/09/28 22:17:00
    **/
    public static function login()
    {
        if(!self::init())
        {
            return false;
        }
        phpCAS::forceAuthentication();
        //取的到则返回登录的用户账户名 
        session_write_close();
        return phpCAS::getUser(); 
    }

   /**
     * @brief 封装使用UUAP SSO服务的退出过程
     *
     * @return  success-true failed-false
     * @retval  boolean
     * @note    调用此接口成功后将跳转到http://uuap.baidu.com/logout 
     * @author chenyijie
     * @date 2012/09/28 22:14:39
    **/
    public static function logout()
    {
        if(!self::init())
        {
            return false;
        }
        setcookie('username', 'guest', time() + 3600 * 24 *100, "/");
        phpCAS::logout();
        return true;
    }
}


?>
