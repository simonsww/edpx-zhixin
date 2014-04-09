<?php
/***************************************************************************
 *
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 * $Id$ 
 *
 ***************************************************************************/



/**
 * @file CacheClient.php
 * @author chenyijie(chenyijie@baidu.com)
 * @date 2012/07/09 13:36:23 
 * @version $1.0.0$ 
 * @brief 此类根据conf/cache.conf中的配置项来获取Client对象实例
 *
 **/

class Saf_Cache_CacheClient {
    
    private static $instance = null;          /**< CacheClient对象      */

    /**
     * @brief 此接口用于产生CacheCline实例并返回已有的CacheClient实例
     *
     * @return  success-CacheClient实例 failed-false
     * @retval  object/boolean 
     * @author chenyijie
     * @date 2012/07/09 13:36:23
    **/
    public static function getInstance() 
    {
        if(!empty(self :: $instance))
        {
            return self :: $instance;
        }
        $cacheClientClass = Bd_Conf::getConf('cacheproxy/which_cache_client');
        if($cacheClientClass === false) 
        {
            Bd_Log::warning("The ClientClass which you set in the cache.conf file does not exist");
            return false;
        }
        $cacheStr = 'Saf_Cache_Client_' . $cacheClientClass;
        if(!class_exists($cacheStr)) 
        {
            Bd_Log::warning("The ClientClass which you set in the cache.conf file does not exist");
            return false; 
        }
        $cacheObj = new $cacheStr();
        self :: $instance = $cacheObj->create();
        return self :: $instance;
    }

    //For Test
    public static function setInstance($instance)
    {
        self :: $instance = $instance;
    }
}

?>
