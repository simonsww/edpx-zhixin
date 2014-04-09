<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 * $Id$ 
 * 
 **************************************************************************/
 


/**
 * @file CacheProxyAbstract.php
 * @author chenyijie(chenyijie@baidu.com)
 * @date 2012/07/12 
 * @version $1.0.0$ 
 * @brief 所有层cacheproxy的基类，提供一些公共的方法
 *  
 **/

abstract class Saf_Cache_CacheProxyAbstract {

    protected $objClass = null;     /**< 使用cacheproxy的类 */ 
  
    protected $initState = false;   /**< 用于判断_init()函数的执行状态            */
    protected $linkSign;            /**< 用于_init()函数返回给子类key连接符的结果 */
    protected $objCacheClient;      /**< 用于_init()函数与_geCacheClient()函数返回给子类Cache集群的客户端对 */
    protected $cacheKeyFromConf;    /**< 用于_init()函数返回给子类Cache对应的配置文件中配置的key的一部      */
    protected $cacheKeyConfPath;    /**< 用于子类传入_init()函数中读取不同层配置文件中Cache对应key的路径    */
    protected $firstKeySection;     /**< 用于子类传入_init()函数中读取装配的key的第一部分的配置内           */
   
    protected static $errCode = 0;  /**< 错误号 */
    
    //错误码
    const FUNC_NOT_CALLABLE           = 1;   /**< 用户传入的$func参数对应的函数调用失败 */
    const CREATE_CACHE_CLIENT_FAILED  = 2;   /**< cache客户端创建失败  */
    const GET_DATA_FAILED             = 3;   /**< cache数据获取失败    */
    const ADD_DATA_FAILED             = 4;   /**< cache数据添加失败    */
    const DELETE_DATA_FAILED          = 5;   /**< cache数据删除失败    */
    const GET_CONF_FAILED             = 6;   /**< 获取配置文件配置错误 */ 

   /**
     *@brief  子类必须实现的接口
     *
     * @param  $func 用户传入的函数名
     * @param  $args传递给$func函数的参数
     * @return 如果没有配置cache则为函数名对应函数的执行结果，如果有则为CacheProxy类封装的Cache存取逻辑执行结果
     * @author chenyijie
     * @date 2012/09/27 17:45:28
    **/    
    abstract public function __call($func,$args);

   /**
     * @brief 初始化接口
     * 
     * @param  $whichCache 配置文件的文件名
     * @param  $func 用户传入的函数名
     * @param  $args传递给$func函数的参数
     * @see _isCacheOpen() _getConf() _getCacheClient() _getLinkSign() _getFirstKeySection()
     * @notice 调用之前必须先设置$this->cacheKeyConfPath的值
     * @return 此接口的返回值通过类属性（linkSign\firstKeySection\initState\objCacheClient）传递
     * @retval object/boolean/$func函数对应的返回值类型 
     * @author chenyijie
     * @date 2012/09/27 17:42:24
    **/
    protected function _init($whichCache, $func, $args)
    {
        if(!$this->_isCacheOpen($whichCache . '/Global/cache'))
        {
            //不用cache 则直接调用类指定的方法
            $this->initState = false;
            return  $this->_getFunctionCall($func,$args);
        }
        $this->cacheKeyFromConf = $this->_getConf($this->cacheKeyConfPath);
        if($this->cacheKeyFromConf === false)
        {
            //如果配置文件中没有这个函数的配置，则直接传递到下层
            $this->initState = false;
            return  $this->_getFunctionCall($func,$args);
        }
        //配置存在，则取得cache客户端实例
        if(!$this->_getCacheClient())
        {
            //cache客户端实例获取失败，则直接传递到下层
            $this->initState = false;
            return  $this->_getFunctionCall($func,$args);
        }
        $this->linkSign = $this->_getLinkSign($whichCache .'/Global/KeyLinkSign');
        $ret = strrpos($this->cacheKeyConfPath,$func);
        $ret = substr($this->cacheKeyConfPath,0,$ret);
        $this->firstKeySection = $this->_getFirstKeySection($ret.'firstKeySection');
        $this->initState = true;
    }
 
   /**
     * @brief 根据配置文件取得cache客户端实例
     *
     * @return success-CacheClient对象实例 failed-false
     * @retval object/boolean 
     * @author chenyijie
     * @date 2012/09/27 17:42:24
    **/
    protected function _getCacheClient() 
    {
        $this->objCacheClient = Saf_Cache_CacheClient::getInstance();
        if($this->objCacheClient === false) 
        {
            $arrErr = array(
                'caller' => 'CacheProxy',
                'class'  => get_class($this->objClass),
            );
            Bd_Log::warning("Get Cache Client Instance failed", self :: CREATE_CACHE_CLIENT_FAILED, $arrErr);
            self :: $errCode = self :: CREATE_CACHE_CLIENT_FAILED;
        }
        return $this->objCacheClient;
    }

   /**
     * @brief 根据配置文件判断是否使用cache
     *
     * @param  $confRoute 配置所在路径
     * @return true or false 
     * @retval boolean 
     * @author chenyijie
     * @date 2012/09/27 17:40:20
    **/
    protected function _isCacheOpen($confRoute) 
    {
        //读取配置文件，判断是否启用cache
        $cacheSwitch = Bd_Conf::getAppConf($confRoute,Bd_AppEnv::getCurrApp());
        if($cacheSwitch === false) 
        {
            $arrErr = array(
                'caller' => 'CacheProxy',
                'class'  => get_class($this->objClass),
            );
            Bd_Log::warning("Get config from config file: " .$confRoute . " failed.", self :: GET_CONF_FAILED, $arrErr);
            self :: $errCode = self :: GET_CONF_FAILED;
            //如果配置文件里配置读取错误 比如 Global 由于误操作变成了 Globale之类 
            //则直接返回false让程序不执行CacheProxy处理逻辑
            return false;
        }
        //如果配置文件里指定了cache:true 才认为使用cache
        if($cacheSwitch === 'true') 
        {
            return true;
        } 
        //其他情况均视为不使用cache
        return false; 
    }

   /**
     * @brief 取得app相关key连接符配置
     *
     * @param  $confRoute 配置所在路径
     * @return 配置文件中的值或者默认值'_'
     * @retval string  
     * @author chenyijie
     * @date 2012/09/27 17:34:06
    **/
    protected function _getLinkSign($confRoute) 
    {
        //读取配置文件，取得key拼接连接符，如果没有配置（为空）则默认使用‘_’作为连接符
        $linkSign = Bd_Conf::getAppConf($confRoute,Bd_AppEnv::getCurrApp());
        //如果没有配置linkSign一项，则使用默认‘_’符号作为KEY连接符
        if($linkSign === '') 
        {
            $linkSign = '_';
        }
        //如果配置文件配置读取失败，则使用默认‘_’符号作为KEY连接符
        if($linkSign === false) 
        {
            $arrErr = array(
                'caller' => 'CacheProxy',
                'class'  => get_class($this->objClass),
            );
            Bd_Log::warning("Get config from config file: ". $confRoute ." failed.", self :: GET_CONF_FAILED, $arrErr);
            self :: $errCode = self :: GET_CONF_FAILED; 

            $linkSign = '_';
        }
        return $linkSign;
    }

   /**
     * @brief 取得app相关key第一部分配置
     *
     * @param  $confRoute 配置所在路径
     * @return 配置文件中的值或者默认值false
     * @retval string
     * @author chenyijie
     * @date 2012/09/27 17:32:24
    **/
    protected function _getFirstKeySection($confRoute)
    {
        $firstKeySection = Bd_Conf::getAppConf($confRoute,Bd_AppEnv::getCurrApp());
        if($firstKeySection === '')
        {
            $firstKeySection = Bd_AppEnv::getCurrApp();
        }
        //读取配置文件，如果获取配置失败（为false）则打日志
        else if($firstKeySection === false)
        {
            $arrErr = array(
                'caller' => 'CacheProxy',
                'class'  => get_class($this->objClass),
            );
            Bd_Log::warning("Get config from config file: ". $confRoute ." failed.", self :: GET_CONF_FAILED, $arrErr);
            self :: $errCode = self :: GET_CONF_FAILED;
            $firstKeySection = Bd_AppEnv::getCurrApp();
        }
        return $firstKeySection;
    }

    /**
     * @brief 取得app相关key的过期时间
     *
     * @param  $confRoute 配置所在路径
     * @return 配置文件中的值或者默认值0
     * @retval string 
     * @author chenyijie
     * @date 2012/09/27 17:30:44
    **/
    protected function _getKeyDisableTime($confRoute) 
    {
        $cacheKeyDisableTime = Bd_Conf::getAppConf($confRoute,Bd_AppEnv::getCurrApp());
        //读取配置文件，取得key的过期时间，如果没有配置（为空）则设置为默认值0
        if($cacheKeyDisableTime === '') 
        {
            $cacheKeyDisableTime = 0;
        } 
        //读取配置文件，取得key的过期时间，如果获取配置失败（为false）则设置为默认值0
        if($cacheKeyDisableTime === false) 
        {
            $arrErr = array(
                'caller' => 'CacheProxy',
                'class'  => get_class($this->objClass),
            );
            Bd_Log::warning("Get config from config file: ". $confRoute ." failed.", self :: GET_CONF_FAILED, $arrErr);
            self :: $errCode = self :: GET_CONF_FAILED;
 
            $cacheKeyDisableTime = 0;
        }
        $cacheKeyDisableTime = intval($cacheKeyDisableTime);
        return $cacheKeyDisableTime;
    }
    
    /**
     * @brief 取得app相关配置文档
     *
     * @param  $confItem 配置所在路径
     * @return success-array或者string failed-false
     * @retval array/boolean
     * @author chenyijie
     * @date 2012/09/27 17:20:22
    **/
    protected function _getConf($confRoute) 
    {
        $conf = Bd_Conf::getAppConf($confRoute,Bd_AppEnv::getCurrApp());
        if($conf === false) 
        {
            $arrErr = array(
                'caller' => 'CacheProxy',
                'class'  => get_class($this->objClass),
            );
            Bd_Log::warning("Get config from config file: ". $confRoute ." failed.", self :: GET_CONF_FAILED, $arrErr);
            self :: $errCode = self :: GET_CONF_FAILED;
        }
        return $conf;
    }

   /**
     * @brief 执行用户传入的函数，如果不可调用，则设置错误码
     *
     * @param  $func 用户传入的函数名
     * @param  $args 传递给$func函数的参数
     * @return $func对应函数的执行结果 
     * @retval 
     * @author chenyijie
     * @date 2012/09/27 17:22:32
    **/
    protected function _getFunctionCall($func, $args) 
    {
        //由于在CacheProxy转发层已经进行过函数可调性测试，因此这里直接调用
        return call_user_func_array(array($this->objClass,$func), $args);
    }
}   
?>
