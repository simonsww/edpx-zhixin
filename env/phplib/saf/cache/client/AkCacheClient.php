<?php
/***************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * $Id$ 
 *
 **************************************************************************/



/**
 * @file AkCacheClient.php
 * @author chenyijie(chenyijie@baidu.com)
 * @date 2012/07/09 20:53:33
 * @version $1.0.0$ 
 * @brief 此类封装了ksarch memcache集群客户端初始化方法 
 *
 **/

class Saf_Cache_Client_AkCacheClient implements Saf_Cache_Client_Interface {
  
    /**
     * @brief 此接口封装了Ak_McClient初始化的过程
     *
     * @return  初始化成功返回Ak_McClient对象实例，失败则返回false
     * @retval  object/boolean
     * @author chenyijie
     * @date 2012/09/27 20:53:48
    **/
    public function create() {
        $zkHost = array();
        $zkhostFromConf = Bd_Conf::getConf('cacheproxy/AkCache/zkhost');
        if($zkhostFromConf === false) 
        {
            Bd_Log::warning('Get conf form cache.conf failed when create AkCacheClient');
            return false;
        }
        //装配ip和port
        foreach($zkhostFromConf as $value) 
        {
            $content = $value['ip'].':'.$value['port'];
            $zkHost[] = $content;
        }
        
        Ak_Zookeeper::setHost($zkHost);
        Ak_AClient::SetGlobalConf(array('ZookeeperHost' => $zkHost));

        //创建cache客户端实例
        $keyArray = array(
            'pid',
            'zk_path',
            'default_expire',
            'curr_idc',
            'delete_directly',
            'delete_delay',
            'connect_timeout',
            'poll_timeout',
            'send_timeout',
            'recv_timeout',
            'acm_connect_timeout',
            'acm_read_timeout',
            'acm_write_timeout',
        );
        $mcConf = array();
        $confArray = Bd_Conf:: getConf('cacheproxy/AkCache/mc_conf/');
        //去除confArray中读取到的空项 
        foreach($keyArray as $key) 
        {
            if(isset($confArray[$key]) && ($confArray[$key] !== '')) 
            {
                $mcConf[$key]=$confArray[$key];
            }
        }
        if(empty($mcConf)) {
            //错误号参见CacheProxyAbstract.php中的定义
            Bd_Log::warning('Get conf form cache.conf failed when create AkCacheClient', 6, null);
            return false;
        }
        //去除不需要进行string -> int类型转换的项
        array_splice($keyArray, 0, 2);
        array_splice($keyArray, 1, 1);
        //记录需要进行string -> bool转换的项
        $boolArray = array_splice($keyArray, 1, 2);
        
        foreach($keyArray as $key) 
        {
           if(array_key_exists($key,$mcConf)) 
           {
              $mcConf[$key] = intval($mcConf[$key]);
           }
        } 
        foreach($boolArray as $key) 
        {
            if($mcConf[$key] === 'true')
            {   
                $mcConf[$key] = true;
            } 
            else 
            {   
                $mcConf[$key] = false;
            }   
        }
        /* 装配后的mcConf的具体示例
        $mcConf = array(
            'pid'     => $pid,
            'zk_path' => $zk_path,
            'default_expire' => 86400,
            'curr_idc' => 'tc',
            'delete_directly' => true,
            'delete_delay' => true,
            'connect_timeout' => 10,
            'poll_timeout' => 20,
            'send_timeout' => 100,
            'recv_timeout' => 500,
            'acm_connect_timeout' => 30,
            'acm_read_timeout' => 500,
            'acm_write_timeout' => 100,
        );
        */
        $objMcClient = Ak_McClient::create($mcConf);
        if(is_null($objMcClient))
        {
            Bd_Log::debug("create AkCacheClient failed", 2, $mcConf);
            return false;
        }
        return $objMcClient;
    }
   
}
?>
