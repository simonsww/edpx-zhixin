<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 * $Id$ 
 * 
 **************************************************************************/
 
 
 
/**
 * @file DsCacheProxy.php
 * @author chenyijie(chenyijie@baidu.com)
 * @date 2012/07/12 22:33:33
 * @version $1.0.0$ 
 * @brief 此类的_call()方法封装了DataService层对cache的具体处理逻辑 
 *  
 **/

class Saf_Cache_DsCacheProxy extends Saf_Cache_CacheProxyAbstract{

    private $objClassName;
    
    public function __construct($objClass)
    {
        $this->objClass = $objClass;
        $this->objClassName = get_class($this->objClass);
    }
 
    /**
     * @brief DataService层CacheProxy的具体处理逻辑
     *
     * @param  $func 用户传入的函数名
     * @param  $args 传递给$func函数的参数
     * @return 从cache中拿到的数据或者是$func调用拿到的数据
     * @retval 同$func对应函数返回数据类型一致
     * @author chenyijie
     * @date 2012/09/27 20:32:42
    **/   
    public function __call($func, $args)
    {
        $this->cacheKeyConfPath = 'dscache/funcToKey/' . $this->objClassName . '/' . $func;
        $result = parent::_init('dscache', $func, $args);
        if($this->initState === false)
        {
            //CacheProxyAbstract::_init()方法中如果有return的情况 则把return的值传递到上层
            return $result;
        }
        
        //Key的生成规则：APP名(或者用户指定)_配置文件中指定key_参数值
        $key = $this->firstKeySection . $this->linkSign;
        $key = $key . $this->cacheKeyFromConf['key'] . $this->linkSign;
        $callable = method_exists($this->objClass, 'getKey');
        if($callable === true) 
        {
            $key = $key . strval($this->objClass->getKey($func,$args));
        } 
        else 
        {
            $key = $key . $args[0];
        }
        $arrErr = array(
            'caller'   => 'DsCacheProxy',
            'class'    => get_class($this->objClass),
            'function' => $func,
            'key'      => $key,
        );
        if($this->cacheKeyFromConf['type'] === 'get')
        {
            $value = $this->objCacheClient->get($key);
            if($value === false)
            {
                Bd_Log::trace("Get data from cache failed, call user func to get data from Database",
                    parent::GET_DATA_FAILED, $arrErr);
                
                $value = parent::_getFunctionCall($func,$args);
                $cacheKeyDisableTime = parent::_getKeyDisableTime('dscache/Global/KeyDisableTime');
                $this->objCacheClient->add($key, $value, $cacheKeyDisableTime);
                //add操作失败则不进行任何操作
            }
            Bd_Log::trace("Get data from cache success.",0,$arrErr);
            return $value;
        }
        else if($this->cacheKeyFromConf['type'] === 'set')
        {
            $value = parent::_getFunctionCall($func,$args);
            $cacheKeyDisableTime = parent::_getKeyDisableTime('dscache/Global/KeyDisableTime');
            $state = $this->objCacheClient->delete($key);
            if($state === false)
            {
                Bd_Log::trace("Delete data in cache failed.", parent::DELETE_DATA_FAILED, $arrErr);
                return false;
            }
            $this->objCacheClient->add($key, $value, $cacheKeyDisableTime);
            //add操作失败则不进行任何操作
            Bd_Log::trace("Set data in cache success.",0,$arrErr);
            return true;
        }
        else
        {
            $value = parent::_getFunctionCall($func,$args);
            Bd_Log::warning('Get config failed, can not get correct function cache operation type.',
                 parent::GET_CONF_FAILED, $arrErr);
            return $value;
        }
    }

    /**
     * @brief 根据$key删除cache中对应的数据
     *
     * @param  $key cache中的key
     * @return true or false
     * @retval boolean
     * @author chenyijie
     * @date 2012/09/27 20:32:42
    **/
    public function deleteCacheKey($key) 
    {
        if(!parent::_getCacheClient())
        {
            return false;
        }
        $result = $this->objCacheClient->delete($key);
        if($result === false) 
        {
            $arrErr = array(
                'caller' => 'DsCacheProxy',
                'class'  => get_class($this->objClass),
                'key'    => $key,
            );
            Bd_Log::trace("Delete data from cache failed.", parent::DELETE_DATA_FAILED, $arrErr);
            parent :: $errCode = parent::DELETE_DATA_FAILED;
            return false;
        }
        Bd_Log::trace("Delete data in cache success.",0,$arrErr);
        return true;
    }

    //************* For Test ******************
    public function isCacheOpen($confRoute) 
    {
        return parent::_isCacheOpen($confRoute);
    }

    public function getLinkSign($confRoute) 
    {
        return parent::_getLinkSign($confRoute);
    }

    public function getKeyDisableTime($confRoute) 
    {
        return parent::_getKeyDisableTime($confRoute);
    }
}
?>
