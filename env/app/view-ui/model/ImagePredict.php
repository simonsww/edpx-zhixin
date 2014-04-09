<?php
/***************************************************************************
 * 
 * Copyright (c) 2014 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
/**
 * @file ImagePredict.php
 * @author songlei(songlei03@baidu.com)
 * @date 2014/01/27 15:04:05
 * @brief 
 *  
 **/

class ImagePredict{

    private static $_instance = null ;

    private $_cacheBase = null;

    public static function getInstance(){

        if(self::$_instance === null){
            self::$_instance = new ImagePredict();
            self::$_instance->init();
        }
        return self::$_instance;
    }

    private function init(){
        $arrConf = Util::getConf ( '/image_predict', 'Memcache' );
        $this->_cacheBase = CacheBase::getInstance();
        $this->_cacheBase->setOption(Memcached::OPT_DISTRIBUTION, Memcached::DISTRIBUTION_CONSISTENT);
        $this->_cacheBase->setOption(Memcached::OPT_CONNECT_TIMEOUT,$arrConf['CONNECT_TIMEOUT']);
        $this->_cacheBase->setOption(Memcached::OPT_SEND_TIMEOUT,$arrConf['SEND_TIMEOUT']);
        $this->_cacheBase->setOption(Memcached::OPT_RECV_TIMEOUT,$arrConf['RECV_TIMEOUT']);

        foreach($arrConf['Servers'] as $key => $val){
            $serverInfo = explode(' ',$val);
            $rc = $this->_cacheBase->addServer($serverInfo[0],$serverInfo[1]);
            if(false === $rc){
                CLog::warning ("ImgPredict addServer failed,".$this->_cacheBase->getErrMsg());
            }
        }
    }

    public function setItem($key,$val,$expiration = 0){
        //$val = implode(' ',$val);
        $val = serialize($val);
        $rc = $this->_cacheBase->set($key,$val,$expiration);
        if(false === $rc){
            CLog::warning ("ImgPredict setItem failed,".$this->_cacheBase->getErrMsg());
        }
        return $rc;
    }

    public function getItem($key){
        $val = $this->_cacheBase->get($key);
        if(!empty($val)){
            //return explode(' ',$val);
            return unserialize($val);
        }else{
            return array();   
        }
    }

    public function getResultMessage(){
        return $this->_cacheBase->getResultMessage();
    }

    /**
     * type:0-读cache时   1-写cache时
     */
    public static function getPreImageKey($arrData,$arrConf,$type=0){
        $arrConf = Util::getConf ( '/image_predict', 'IMAGE_PREDICT' );
        $queryInfo = $arrData['uiData']['queryInfo'];
        //临时硬编码：先上写时，读用旧的key
        $version = $type==1?$arrConf['version']:"0.1";
        $key =
md5($queryInfo['queryWord'].'+'.intval($queryInfo['pageNo']).'+'.intval($queryInfo['resNum']).'+'.$queryInfo['language'].'+'.$arrData['uiControl']['platform'].'+'.$arrData['uiControl']['templateType'].'+'.$arrData['uiControl']['templateName'].'+'.$version);
        return $key;
    }    

    public function calChangeRate($data){
        $arrFromCache = $data['uiData']['queryInfo']['viewConfig']['predictImg'];
        $arrFromStrategy = $data['uiData']['queryInfo']['viewConfig']['normalImgList'];
        if(is_array($arrFromCache) && !empty($arrFromCache) && is_array($arrFromStrategy) &&
        !empty($arrFromStrategy)){
            $img_predict_num =
            empty($arrFromCache['left']['urlList'])?0:count($arrFromCache['left']['urlList']) +
            empty($arrFromCache['right']['urlList'])?0:count($arrFromCache['right']['urlList']);
            $img_normal_num =
            empty($arrFromStrategy['left']['urlList'])?0:count($arrFromStrategy['left']['urlList']) +
            empty($arrFromStrategy['right']['urlList'])?0:count($arrFromStrategy['right']['urlList']);
            $item_diff_left  =
            array_diff($arrFromCache['left']['urlList'],$arrFromStrategy['left']['urlList']);
            $item_diff_right  =
            array_diff($arrFromCache['right']['urlList'],$arrFromStrategy['right']['urlList']);
            $img_diff_num = empty($item_diff_left)?0:count($item_diff_left) +
            empty($item_diff_right)?0:count($item_diff_right);
            
            if($img_diff_num == 0 ){
                return 0 ;
            }else if( $img_normal_num == 0 ){
                return 0 ;
            }else if( $img_predict_num == 0){
                return -1;
            }else{
                return $img_diff_num / $img_normal_num;
            }
        }else{
            return -1;
        }
    }
}
/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
