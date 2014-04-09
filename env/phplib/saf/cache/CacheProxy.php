<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 * $Id$ 
 * 
 **************************************************************************/
 


/**
 * @file CacheProxy.php
 * @author chenyijie(chenyijie@baidu.com)
 * @date 2012/07/10
 * @version $1.0.0$ 
 * @brief 此类为CacheProxy的入口类，负责不同层请求的分发
 *  
 **/

class Saf_Cache_CacheProxy{
    
    private $objClass;        /**< 使用cacheproxy的类       */
    private $decorateClass;   /**< 匹配的cacheproxy类       */
    
    /**
     * @brief CacheProxy初始化 根据配置文件进行适配
     *
     * @param  $objClass 使用CacheProxy的类
     * @return $this->decorateClass
     * @retval object
     * @note 
     * @author chenyijie
     * @date 2012/07/10 14:33:59
    **/
    public function __construct($objClass) 
    {
        $this->objClass = $objClass;
        $strClassName = get_class($this->objClass);
        $cacheProxyClass = null;
        $layers = Bd_Conf::getConf('cacheproxy/layers');
        
        if($layers === false || $layers === null || (!is_array($layers))) 
        {
            //如果cacheproxy.conf中关于layers的配置项读取出错则不使用CacheProxy
            $this->decorateClass = $this->objClass;
        }
        else
        {
            //如果$strClassName中了layers中的一个$cacheProxyStr[index]正则式，
            //则将$cacheProxyClass设置为这个$cacheProxyStr[index]对应的$cacheProxyStr
            foreach($layers as $cacheProxyStr => $index) 
            {
                if(preg_match("/$index/", $strClassName))
                {
                    $cacheProxyClass = $cacheProxyStr;
                }
            
            }
        }
        if(!is_null($cacheProxyClass))
        {
            $this->decorateClass = new $cacheProxyClass($this->objClass);
        } 
        else 
        {
            //如果$cacheProxyClass为空则说明没有中正则，
            //则$decorateClass为此类本身，不使用CacheProxy
            $this->decorateClass = $this->objClass;
        }
    }

    /**
     * @brief 魔术方法，负责调用$this->decorateClass->$func()
     *
     * @param  $func 用户传入的函数名
     * @param  $args传递给$func函数的参数
     * @return $func对应方法的返回结果
     * @retval $func对应函数的返回值类型
     * @note   此方法自动调用
     * @author chenyijie
     * @date 2012/07/10 14:33:59
    **/
    public function __call($func, $args) 
    {
        $checkFunction = array($this->objClass,$func);
        $callable = is_callable($checkFunction);
        if($callable === false) 
        {
            $arrErr = array(
                'caller'   => 'CacheProxy',
                'class'    => get_class($this->objClass),
                'function' => $func,
            ); 
            Bd_Log::warning("The Function can not be called", 1, $arrErr);
            if($func === 'ut') 
            {
                //为了单测
                return false;
            }
            trigger_error("The Function can not be called", E_USER_WARNING);
        }
        $result = call_user_func_array(array($this->decorateClass,$func),$args);
        return $result;
    }
        
    //JUST FOR UT
    public function getDecorateClass()
    {
        return $this->decorateClass; 
    }
    public function setDecorateClass($objDecorateClass)
    {
        $this->decorateClass = $objDecorateClass; 
    }   

}

?>
