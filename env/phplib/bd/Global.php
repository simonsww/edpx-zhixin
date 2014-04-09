<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file Global.php
 * @author liushi@baidu.com wangtao04@baidu.com
 * @date 2011/12/14 17:39:27
 * @brief 
 *  
 **/
require_once(dirname(__FILE__) . '/global/strategy/Base.php');
class Bd_Global
{
    private static $_conf_cache = array(); //locale.conf's cache
    
    private static $_default_strategy =  array('Domain', 'Url', 'Header', 'Ip');
    private static $_strategy = array();
    private static $_is_ut = false;
    
    //instance domain for getInstance domain
    private static $_instance_domain = array();
    //force_locale support
    private static $_force_locale = null;
    
    //default locale 
    private static $_default_locale = null;
    
    //support locale
    private static $_support_locale = array();
    
    //support instance
    private static $_support_instance = array(); 
    //instance idx
    private static $_instance_idx = array(); 
    
    //product instacne
    private static $_instance = null;
    
    //product locale
    private static $_locale = null;
    
    //strategy 本次识别成功时的策略
    private static $_cur_strategy = null;
    
    //locale => instance
    private static $_locale_map = null;
    
    
    private static function _loadConfCache()
    {
        if (empty(self::$_conf_cache)) {
           self::$_conf_cache = Bd_Conf::getConf('/i18n/locale/');
        }
    }
    
    /**
        * @brief  语言识别策略顺序初始化
     */
    private static function _initSeq() 
    {
        self::_loadConfCache();
        $seq = self::$_conf_cache['strategy'];
        
        if (empty($seq)) {
            self::$_strategy = self::$_default_strategy;
        } else {
            //检查strategy的顺序
            $filter_strategy = array();
            foreach ($seq as $_v) {
                if (in_array($_v, self::$_default_strategy)) {
                    $filter_strategy[] = $_v;
                }
            }
            
            if ($filter_strategy != self::$_default_strategy) {
                $str = implode(',', self::$_default_strategy);
                self::_fatalErr("check strategy seq in locale.conf, plugin build-in strategy seq must be {$str}");
            }
            self::$_strategy = $seq;
        }
    }
    
    /**
        * @brief  locale初始化
     */
    private static function _initLocale ()
    {
        self::_loadConfCache();
        
        self::$_default_locale = self::$_conf_cache['default_locale'];
        if (empty(self::$_default_locale)) {
            self::_fatalErr("check \"default_locale\" in locale.conf, \"default_locale\" can't be empty!");
        }
        //support locale
        self::$_support_locale = self::$_conf_cache['valid_locales'];
        if (empty(self::$_support_locale)) {
            self::_fatalErr("check \"valid_locales\" in locale.conf, \"valid_locales\" can't empty!");
        }
        if (!in_array(self::$_default_locale, self::$_support_locale)) {
            self::_fatalErr("check \"default_locale\" in locale.conf, \"default_locale\" must be valid locale!");
        }
        
    }
    
    /**
        * @brief  instance初始化
     */
    private static function _initInstance ()
    {
        //support locale
        self::$_support_instance = self::$_conf_cache['valid_instances'];
        if (empty(self::$_support_instance)) {
            self::_fatalErr("check \"valid_instances\" in locale.conf, \"valid_instances\" can't empty!");
        }
    }
    
    private static function _initLocaleMap()
    {
        $locale_map = array();
        $locale_map_arr = self::$_conf_cache['locale_map'];
        
        if ($locale_map_arr) foreach ($locale_map_arr as $_v){
            $_tmp = str_replace(array('=>', '= >'), ',', $_v);
            $_tmp = explode(',', $_tmp);
            
            $_locale = trim($_tmp[0]);
            $_instance = trim($_tmp[1]);
            if (!self::_checkLocaleValid($_locale)) {
                Bd_Log::warning("locale_map \"{$_v}\"'s locale is not valid, ignored!");
                continue;
            }
            if (!self::_checkInstanceValid($_instance)){
                Bd_Log::warning("locale_map \"{$_v}\"'s instance is not valid, ignored!");
                continue;
            }
            $locale_map[$_locale] = $_instance;
        }
        self::$_locale_map = $locale_map;
    }
    
    /**
        * @brief  locale =》instance转换
        * 按以下优先级顺序：
        * 1)locale == instance
        * 2)region == instance
     */
    public static function getInstanceFromLocale ($locale)
    {
        if (empty($locale)) {
            return ;
        }
        if (!self::_checkLocaleValid($locale)) {
            return ;
        }
        
        if (empty(self::$_support_instance)) {
            self::_initInstance();
        }
        
        //自定义map映射命中就确认
        if (empty(self::$_locale_map) && self::$_conf_cache['locale_map']) {//self::$_locale_map为空，重新加载
            self::_initLocaleMap();
        }
        if (self::$_locale_map && self::$_locale_map[$locale]) {
            return  self::$_locale_map[$locale];
        }
        
        //默认规则
        $instance = '';
        if (in_array($locale, self::$_support_instance)) {
            $instance = $locale;
        } else {
            $tmp = explode('-', $locale);
            $region = $tmp[1];
            if (in_array($region, self::$_support_instance)) {
                $instance = $region;
            }
        }
        return $instance;
    }
    
    /**
        * @brief  force_locale 识别
     */
    private static function _checkForceLocale() 
    {
        self::_loadConfCache();
        self::$_force_locale = '';
        
        $force_locale_on = self::$_conf_cache['force_locale'];
        if(empty($force_locale_on)) {
            return ;
        }
        
        $force_support_ip = array();
        $ips = self::$_conf_cache['force_support_ip'];
        if ($ips) {
            //parse support_ips
            foreach($ips as $ip) {
                $ip = trim($ip);
                if(strpos($ip, ' ') !== false) {//ip range
                    $ip_arr = split(' +',$ip,2);
                    $force_support_ip[] = array(
                            ip2long($ip_arr[0]),
                            ip2long($ip_arr[1]),
                    );
                }else{
                    //single ip
                    $force_support_ip[] = array(
                            ip2long($ip),
                            ip2long($ip),
                    );
                }
            }
        }
        
        if ((true === self::_checkIfInternalVisit($_SERVER['REMOTE_ADDR'], $force_support_ip))
            && (isset($_GET['force_locale']) || isset($_COOKIE['force_locale']))) {
            if (isset($_GET['force_locale'])) {
                $flocale = $_GET['force_locale'];
            } else if(isset($_COOKIE['force_locale'])) {
                $flocale = $_COOKIE['force_locale'];
            }
            
            if(in_array($flocale, self::$_support_locale)) {
                self::$_force_locale = $flocale;
            }
        }
    }
    
    
    /**
        * @brief  总的初始化
     */
    private static function _init()
    {
        self::_initLocale();
        self::_initSeq();
        self::_initInstance();
        self::_initLocaleMap();
    }
    
    /**
        * @brief  获取顶级域名
        *
        * @param $host   
        *
        * @return string 
     */
    private function _getTopDomain($host)
    {
        $host = strtolower($host);
        if(strpos($host,'/') !== false){
            $parse = @parse_url($host);
            $host = $parse['host'];
        }
        $topleveldomaindb = array('com','edu','gov','int','mil','net','org','biz','info','pro','name','museum','coop','aero','xxx','idv','mobi','cc','me', 'co');
        $str = '';
        foreach($topleveldomaindb as $v){
            $str .= ($str ? '|' : '').$v;
        }
        $matchstr="[^\.]+\.(?:(".$str.")|\w{2}|((".$str.")\.\w{2}))$";
        if(preg_match("/".$matchstr."/ies", $host, $matchs)){
            $domain = $matchs['0'];
        }else{
            $domain = $host;
        }
        return $domain;
    }
    
    /**
        * @brief  验证是否为内网访问
        *
        * @param $clientip    客户端IP
        *
        * @return bool 
     */
    private static function _checkIfInternalVisit($clientip, $support_ip)
    {
        if (is_string($clientip)) {
            $clientip = ip2long($clientip);
        }

        $valid = false;
        if(!is_array($support_ip)){
            return $valid;
        }
        foreach($support_ip as $ip_range) {
            if($clientip >= $ip_range[0] && $clientip <= $ip_range[1]) {
                $valid = true; 
                return $valid;
            }
        }
        return $valid;
    }
    
    
    /**
        * @brief  致命错误处理
        * @param $msg   错误消息    
     */
    private static function _fatalErr($msg)
    {
        Bd_Log::fatal($msg);
        throw new Exception($msg);
    }
    
    private static function _end()
    {
        //检查是否是内部访问的指定语言请求
        self::_checkForceLocale();
        $parts = split('-', self::$_locale);
        $region = $parts[1];
        
        if(self::$_is_ut === true){
            $ret = array(
                'LOCALE' => self::$_locale,
                'INSTANCE' => self::$_instance,
            );
            return $ret;
        }

        define('REGION', $region);//only for giknow
        define('LOCALE', self::$_locale); //only for giknow

        if( (!isset($_COOKIE['locale'])) || ($_COOKIE['locale']&& (self::$_locale != $_COOKIE['locale']))){
            $topDomain = self::_getTopDomain($_SERVER['SERVER_NAME']);
            if ($topDomain) {
                $topDomain = ".".$topDomain;
            }
            setcookie('locale', self::$_locale, gmmktime() + 3600 * 24 * 300, '/', $topDomain);
        }
        
        if(self::$_force_locale && (self::$_force_locale != $_COOKIE['force_locale'])) {
            setcookie('force_locale', self::$_force_locale, 0, '/', $topDomain);
        }
    }
    
    private function _checkLocaleValid($locale) 
    {
        if (empty(self::$_support_locale)) {
            self::_initLocale();
        }
        
        return in_array($locale, self::$_support_locale) ? true : false;
    }
    
    private function _checkInstanceValid($instance) 
    {
        if (empty(self::$_support_instance)) {
            self::_initInstance();
        }
        
        return in_array($instance, self::$_support_instance) ? true : false;
    }
    
    public static function setUT($ut)
    {
        self::$_is_ut = ($ut === true);
    }
    
    /**
        * @brief  语言识别主函数
        * 识别出来的locale, instance存于成员 self::$_locale, self::$_instance 中
     */
    public static function checkLocale()
    {
        self::_init();
        
        self::$_locale = '';
        self::$_instance = '';
        self::$_cur_strategy = '';
        
        foreach (self::$_strategy as $_v) {
            $strategyName = $_v;
            $className = ucfirst($_v);

            if (in_array($_v, self::$_default_strategy)) {
                $className = "Bd_Global_Strategy_{$_v}";
            }
            if (!class_exists($className)) {
                if (in_array($_v, self::$_default_strategy)) {
                    require_once(dirname(__FILE__) . '/global/strategy/'. ucfirst($_v) . '.php' );
                } else {
                    // 产品线自定义类
                    $arr = explode('_', $className);
                    $fileName = array_pop($arr);
                    $path = $arr ? strtolower(implode('/', $arr)) . "/$fileName" : $fileName;
                    require_once(dirname(__FILE__) . '/../' . $path . '.php' );
                }
            }
            
            if (!class_exists($className)) {
                self::_fatalErr("strategy class $className not found, please check locale.conf");
            }
            
            $obj = new $className();
            
            if (!($obj instanceof Bd_Global_Strategy_Base) ) {
				self::_fatalErr("class {$className} must extends from Bd_Global_Strategy_Base.");
			}
			
            if ($obj->run()) {
                $_cur_locale = Bd_Global_Strategy_Base::getLocale();
                if ($_cur_locale) {
                    //如果识别出来的不合法，忽略，进入下一策略
                    if (self::_checkLocaleValid($_cur_locale)) {
                        //如果策略有识别instance，合法既识别成功
                        self::$_locale = $_cur_locale;
                        self::$_cur_strategy = $strategyName;
                        break;
                    } else {//locale 不合法
                        self::$_locale = '';
                        self::$_instance = '';
                        self::$_cur_strategy = '';
                        Bd_Log::warning("strategy {$strategyName} locale \"{$_cur_locale}\" is not valid, ignored!");
                    }
                }
                
            }
        }
        
        if(empty(self::$_locale)){
            self::$_locale = self::$_default_locale;
        }
        
        //locale => instance
        if (empty(self::$_instance)) {
            self::$_instance = self::getInstanceFromLocale(self::$_locale);
        }
        
        $ret = self::_end();
        return $ret;
    }

    /**
        * @brief validDomain 判断一个域名是否等于目标域名，或是目标域名的合法子域名
        *           比如检查zhidao.baidu.co.th是否为baidu.co.th的子域名
        *           Bd_Global::validDomain('zhidao.baidu.co.th','baidu.co.th');
        * @param $checkHost     待检查的域名，仅包括host部分，不要添加pathinfo和querystring
        * @param $target        目标域名
        *
        *   
        * @return   相等或合法返回true，否则返回false
     */
    public static function validDomain($checkHost, $target)
    {
        if(preg_match('/(.+\.|^)'.$target.'$/', $checkHost)){
            return true;
        }else{
            return false;
        }
    }
    

    /**
        * @brief  获取该全球域名
        *
        * @return 
        *       string  全球域名
     */
    public static function getGlobalDomain()
    {
        self::_loadConfCache();
        return self::$_conf_cache['global_domain'];
    }
    
    
    /**
        * @brief  获取当前支持的locale
        *
        * @return array    
     */
    public static function getSupportLocale()
    {
        if (empty(self::$_support_locale)) {
            self::_initLocale();
        }
        return self::$_support_locale;
    }
    
    /**
        * @brief  获取当前支持的locale
        *
        * @return array    
     */
    public static function getConfCache()
    {
        self::_loadConfCache();
        return self::$_conf_cache;
    }
    
    public static function delConfCache()
    {
        self::$_conf_cache=array();
    }
    
    
    /**
        * @brief  获取模板当前的locale
        *
        * @return string    
     */
    public static function getTemplateLocale()
    {
        $locale = '';
        if(self::$_force_locale) {
            $locale = self::$_force_locale;
        } else if (self::$_locale) {
            $locale = self::$_locale;
        } else {
            Bd_Log::warning('call Bd_Global::getTemplateLocale, but no locale is empty!');
        }
        return $locale;       
    }
    
    /**
        * @brief  根据参数或locale定义获取域名
        *
        * @param $locale    指定的locale字符串，不传则为当前
        *
        * @return 
     */
    public static function getLocaleDomain($locale = null)
    {
        if($locale === null) {
            if(self::$_locale){
                $locale = self::$_locale;
            } 
        }
        if(empty($locale)){
            Bd_Log::warning('call Bd_Global::getLocaleDomain, but no locale param');
            return null;
        }
        
        $domains = self::$_conf_cache['domains'];
        
        if($domains) foreach($domains as $domain) {
            if ($domain['locale'] == $locale) {
                return $domain['domain'];
            }
        } 
    }
    
    /**
        * @brief  根据参数或instance定义获取域名 只giknow使用, 不推荐，需domains中各个locale对应的instance惟一时使用
        *
        * @param $instance    指定的instance字符串，不传则为当前
        *
        * @return 
     */
    public static function getInstanceDomain($instance = null)
    {        
        if($instance === null) {
            if(self::$_instance){
                $instance = self::$_instance;
            } 
        }
        if(empty($instance)){
            Bd_Log::warning('call Bd_Global::getInstanceDomain, but no instance param');
            return null;
        }
        
        //init instance => domain array
        if (empty(self::$_instance_domain)) {
            $domains = self::$_conf_cache['domains'];
            if($domains) foreach($domains as $domain) {
                $_cur_instance = self::getInstanceFromLocale($domain['locale']);
                
                if (!isset(self::$_instance_domain[$_cur_instance])) {
                    self::$_instance_domain[$_cur_instance] = $domain['domain'];
                } else {
                    Bd_Log::warning('duplicate domain for instance: '.$_cur_instance.' '.$domain['domain']);
                }
            } 
        }
        
        return self::$_instance_domain[$instance];
    }
    
    /**
        * @brief 根据参数或instance获取该instance内部序号
        *
        * @param $instance    指定的instance字符串，不传则为当前
        *
        * @return 
     */
    public static function getInstanceIndex($instance = null)
    {
        if($instance === null){
            $instance = self::$_instance;
        }
        if (empty(self::$_instance_idx)) {
            self::$_instance_idx = Bd_Conf::getConf('/i18n/i18n/instances');
            if (empty(self::$_instance_idx)) {
                Bd_Log::warning(" instances => index is empty! check /i18n/i18n.conf" );
            }
        }

        foreach(self::$_instance_idx as $_v){
            if($_v['instance'] === $instance){
                return $_v['index'];
            }
        }

        return null;
    }
    
    /**
        * @brief  兼容iknow-global，不使用; 
     */
    public function getRegionIndex($region = null) 
    {
        return self::getInstanceIndex($region);
    }
    
    /**
        * @brief  兼容iknow-global，不使用; 
     */
    public function getRegionDomain($region = null) 
    {
        return self::getInstanceDomain($region);
    }
    
    /**
        * @brief  获取locale值    
     */
    public static function getLocale()
    {
        return self::$_locale ? self::$_locale : self::$_default_locale;
    }
    
    /**
        * @brief  获取识别成功时使用的策略
     */
    public static function getStrategy()
    {
        return self::$_cur_strategy;
    }
    
    /**
        * @brief  获取instance值    
     */
    public static function getInstance()
    {
        return self::$_instance;
    }
    
    /**
        * @brief  设置当前识别的instance的值
        *
        * @param $instance   
        *
     */
    public static function setInstance($instance)
    {
        if (empty($instance)) {
            return false;
        }
        
        if (empty(self::$_support_instance)) {
            self::_initInstance();
        }
        
        if (!in_array($instance, self::$_support_instance)) {
            Bd_Log::warning("set instance err, instance \"$instance\" is not valid;");
            return false;
        }
        
        self::$_instance = $instance;
        return true;
    }
    
    
    /**
       * @brief  数据访问接口初始化，须在语言识别(checkLocale)之后调用 or $param 
       * @param $param
       *            1) 默认不传，使用识别后的instance，locale；
       *            2) array('instance' => xx, //必须
       *                     'locale' => xx //必须
       *                )
       * @return bool 
     */
    public function  initDataInterface($param  =  null)
    {
        if(null == $param) {
            $instance = Bd_Global::getInstance();
            $locale = Bd_Global::getLocale();
        } else {
        	$instance = $param['instance'];
        	$locale = $param['locale'];
        	if (empty($param['instance'])) {
        	   Bd_Log::warning(" initDataInterface input param \"instance\"  can't be empty! param:" . var_export($param, true) );
        	   return false;
        	}
        }
        
        if (empty($instance)) {
            Bd_Log::warning(" initDataInterface \"instance\"  can't be empty! " );
            return false;
    	}
    	
    	Bd_Conf::setLevel("/i18n/instance/$instance/");
        if (!class_exists('Bd_RalRpc')) {
            require_once(dirname(__FILE__) . '/RalRpc.php');
        }
    	
    	require_once(dirname(__FILE__) . '/global/strategy/Base.php');
        Bd_RalRpc::add_extra(array('instance' => $instance, 'region' => $instance, 'locale' => $locale));
        
        Bd_Log::addNotice('instance', $instance);
        Bd_Log::addNotice('locale', $locale);
        Bd_Log::addNotice('strategy', self::$_cur_strategy);
        
        return true;
    }
}




/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
