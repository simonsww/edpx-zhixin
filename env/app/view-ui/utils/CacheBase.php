<?php
/***************************************************************************
 * 
 * Copyright (c) 2014 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file Cache.php
 * @author search(songlei@baidu.com)
 * @date 2014/02/20 13:39:41
 * @brief 
 *  
 **/

class CacheBase{

    private static $_instance = null ;

    private $_memcached = null;

    private $_errmsg = "";

    public static function getInstance(){
        if(self::$_instance === null){
            self::$_instance = new CacheBase();
            self::$_instance->init();
        }   
        return self::$_instance;
    }

    private function init(){
        $this->_memcached = new Memcached();
        $this->_memcached->setOption(Memcached::OPT_DISTRIBUTION, Memcached::DISTRIBUTION_CONSISTENT);
        $this->_memcached->setOption(Memcached::OPT_CONNECT_TIMEOUT,10);
        $this->_memcached->setOption(Memcached::OPT_SEND_TIMEOUT,10);
        $this->_memcached->setOption(Memcached::OPT_RECV_TIMEOUT,10);
    }

    public function setOption($option, $value){
        $rc = $this->_memcached->setOption($option,$value);
        if($rc === false){
             $this->_errmsg = 'set option('.$option.') to memcached failed ';
        }
        return $rc;
    }

    public function addServer($host ,$port ,$weight = 0){
        $rc = $this->_memcached->addServer($host,$port,$weight);
        if($rc === false){
             $this->_errmsg = 'add server host('.$host.')  port ('.$port.')failed ';
        }
        return $rc;
    }

    public function add($key,$val,$intExpire = 0){
        $rc = $this->_memcached->add($key,$val,$intExpire);
        if($rc === false){
             $this->_errmsg = 'add key(' . $strKey . ') to memcached failed or key has already exists';
        }
        return $rc;
    }   

    public function set($key,$val,$intExpire = 0){
        $rc = $this->_memcached->set($key,$val,$intExpire);
        if($rc === false){
             $this->_errmsg = 'set key(' . $key . ') to memcached failed';
        }
        return $rc;
    }

    public function get($key,$val){
        $rc = $this->_memcached->get($key);
        if($rc === false){
             $this->_errmsg = 'get key(' . $key . ') from memcached failed or key not exists';
        }
        return $rc;
    }

    public function increment($key,$intValue = 1){
        $rc = $this->_memcached->increment($key,$intValue);
        if($rc === false){
            $this->_errmsg = 'increment key(' . $strKey . ') to memcached failed';
        }
        return $rc;
    
    }

    public function decrement($key,$intValue = 1){
        $rc = $this->_memcached->decrement($key, $intValue);
        if($rc === false){
            $this->_errmsg = 'increment key(' . $strKey . ') to memcached failed';
        }
        return $rc;
    }

    public function flush(){
        $rc = $this->_memcached->flush();
        if($rc === false){
            $this->errmsg = 'flush memcached failed';
        }
        return $rc;
    
    }

    public function delete($key,$intTime = 0){
        $rc = $this->_memcached->delete($key,$intTime);
        if($rc === false){
            $this->errmsg = 'delete key(' . $key . ') from memcached failed';
        }
        return $rc;
    }
        
    public function getResultMessage(){
        return $this->_memcached->getResultMessage();
    }

    public function getErrMsg(){
        return $this->_errmsg;
    }

}






/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
