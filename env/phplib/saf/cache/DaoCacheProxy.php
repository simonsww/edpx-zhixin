<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 * $Id$ 
 * 
 **************************************************************************/
 


/**
 * @file DaoCacheProxy.php
 * @author chenyijie(chenyijie@baidu.com)
 * @date 2012/07/12 22:33:33
 * @version $Revision$ 
 * @brief 此类的_call()方法封装了 Dao 层对cache的具体处理逻辑 
 *  
 **/

class Saf_Cache_DaoCacheProxy extends Saf_Cache_CacheProxyAbstract{
    
    public function __construct($objClass)
    {
        $this->objClass = $objClass;
    }
    
   /**
     * @brief Dao层CacheProxy的具体处理逻辑
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
        
        if(!parent::_isCacheOpen('daocache/Global/cache'))
        {
            //不用cache 则直接调用类指定的方法
            return  parent::_getFunctionCall($func,$args); 
        }
        return true;
    }

    //************* For Test ******************

}
?>
