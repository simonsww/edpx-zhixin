<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * $Id$ 
 * 
 **************************************************************************/
 
 
 
/**
 * @file Service.php
 * @author wiki(luhaixia@baidu.com)
 * @date 2011/09/06 11:33:51
 * @version $Revision$ 
 * @brief 
 *  
 **/
class Saf_Api_Service {
    
    protected $bolLocal;
    protected $host;
    protected $port;
    protected $service;
    protected $defaultUrl;
    public $errno;
    public $errmsg;
    protected $oe; //Serive服务端内部的编码格式

    /**
     * @brief 构造函数，读取service的配置
     *
     * @return   
     * @retval   
     * @see 
     * @note 
     * @author wiki
     * @date 2011/09/06 16:12:35
    **/
    public function __construct($service = MAIN_APP) {
        $this->service = $service;
        //读service的配置文件
        $arrConf = Bd_Conf::getMyConf("service/app_".strtolower($this->service));
        $this->bolLocal = ($arrConf['proxy']==='php')?true:false;	

        $this->defaultUrl = "/api/".$this->service."/data?fromapi=1";
        $this->oe         = null; //命名方式同saf
    }

    /**
     * @brief 获取Service内部的编码格式
     *
     * @return  public function 
     * @retval   
     * @see 
     * @note 
     * @author luhaixia
     * @date 2011/11/21 15:49:23
    **/
    public function getServieEncode() {
        return strtolower($this->oe);
    }

    /**
     * @brief 是否支持本地php调用
     *
     * @return   
     * @retval   
     * @see 
     * @note 
     * @author wiki
     * @date 2011/09/06 16:12:51
    **/
    public function isLocalService(){
        return $this->bolLocal;
    }

    /**
     * @brief 将AP的autoload环境切换至service所在的APP下
     *
     * @return   
     * @retval   
     * @see 
     * @note 
     * @author wiki
     * @date 2011/09/06 16:12:04
    **/
    public function setServicePath($arrCgi) {
        $len = count(Saf_Api_Server::$serviceStack);
        Saf_Api_Server::$serviceStack[$len] = $this->service;
        //切换currApp
        Bd_AppEnv::setCurrApp($this->service);
        
        //切换Ap的上下文
        $objAp = Ap_Application::app();
        $objAp->setAppDirectory(APP_PATH."/".$this->service);
        $local_lib = Bd_AppEnv::getEnv('code').'/library';
        Ap_Loader::getInstance()->setLibraryPath($local_lib);
        $arrLastCgi = Saf_SmartMain::setCgiStart($arrCgi);
        Saf_Api_Server::$cgiStack[$len-1] = $arrLastCgi;
    }

    /**
     * @brief 将Ap的autoload环境切换回调用者所在的APP
     *
     * @return   
     * @retval   
     * @see 
     * @note 
     * @author wiki
     * @date 2011/09/06 16:13:23
    **/
    public function resetServicePath() {
        $lenStack =  count(Saf_Api_Server::$serviceStack);
        if ($lenStack >= 2) {
            unset(Saf_Api_Server::$serviceStack[$lenStack-1]);
            $strLastService = Saf_Api_Server::$serviceStack[$lenStack-2];
            //切换currAPP
            Bd_AppEnv::setCurrApp($strLastService);
            //切换Ap上下文
            $objAp = Ap_Application::app();   
            $objAp->setAppDirectory(APP_PATH."/".$strLastService);
            $local_lib = Bd_AppEnv::getEnv('code').'/library';
            Ap_Loader::getInstance()->setLibraryPath($local_lib);
            //还原cgi
            $arrLastCgi = Saf_Api_Server::$cgiStack[$lenStack-2];
            $res = Saf_SmartMain::setCgiStart($arrLastCgi);
            unset(Saf_Api_Server::$cgiStack[$lenStack-2]);
        } else {
            //切换APP
            Bd_AppEnv::setCurrApp(MAIN_APP);
            $objAp = Ap_Application::app();
            $objAp->setAppDirectory(APP_PATH."/".MAIN_APP);
            $local_lib = Bd_AppEnv::getEnv('code').'/library';
            Ap_Loader::getInstance()->setLibraryPath($local_lib);
        }
    }

    public function execute($arrInput, $arrOutput, $strPageService = null, $strUrl = null, $strHttpType = 'post') {
        $arrParams = $arrInput;

        if ($this->isLocalService() && $strPageService != null) {     /**< 支持本地php调用       */
            try {
                //传参数 autoload切换
                $arrParams['app'] = $this->service;
                $this->setServicePath(array($strHttpType => $arrParams));
                //直接调用PS->execute();
                $objPS = new $strPageService($arrParams);
                $arrRes = $objPS->execute();

                //autoload切换回来
                $this->resetServicePath();
            } catch(Exception $e) {
                $this->resetServicePath();
                Bd_Log::warning($e->getMessage(), $e->getCode(),$arrParams);
                return false;
            }
        } else {
            /*
             *每个method硬编码一个URl和一个PageService
             */
            if ($strUrl == null) {
                $strUrl = $this->defaultUrl;
            }
            if (strpos($strUrl, "http://") !== false) {
            /*
                $objUtil = new Saf_Api_Util_Http();
                $strUrl = $objUtil->getUrl($strUrl, $arrParams, $strHttpType);
                $strRes = $objUtil->fetchUrl($strUrl, $strHttpType, $arrParams, $this->cookie);
            */
                Bd_Log::warning("Url $strUrl not valid");
            } else {
                $arrInput = $this->getRalInfo($strUrl, $arrParams, $strHttpType);
                $strRes = $this->_ralExecute($arrInput);
            }
            $arrRes = json_decode($strRes,true);
            if (strtolower($this->oe) != "utf8" && strtolower($this->oe) != "utf-8") {
                $arrRes = Bd_String::iconv_recursive($arrRes, "UTF-8", "GBK");
            }
        }
        if (isset($arrRes['errno']) && intval($arrRes['errno']) != 0) {
            //业务级错误
            $this->errno = $arrRes['errno'] ;
            return false;
        }
        return $arrRes;
    }

    protected function _ralExecute($arrInput) {
        //ral_set_logid(LOG_ID);
        ral_set_log(4, Bd_AppEnv::getCurrApp());
        ral_set_pathinfo($arrInput['pathinfo']);
        ral_set_querystring($arrInput['querystring']);
        ral_set_useragent('ral spider');
        /* 
        //ral_set_header("Cookie:".$strCookie);这个接口不会reset出出现head过大而报错问题，有需要再升级
        $arrCookie = array();
        if (is_array($_COOKIE) && count($_COOKIE) > 0) {
            foreach($_COOKIE as $key => $value) {
                if ($key != "LITE_DEBUG") {    
                    $arrCookie[] = "$key=".$value; 
                }
            }
        }
        $strCookie = implode(";", $arrCookie);
        ral_set_header("Cookie:".$strCookie);
        */

        if (count($arrInput['post']) <= 0) {
            $arrInput['post']['time'] = time();
        }
        $content = ral($this->service, __FUNCTION__ ,http_build_query($arrInput['post']), rand());
        if ($content == false) {
            Bd_Log::warning("ral execute [".$this->service."] failed param[".var_export($arrInput,true)."]");
        }
        return $content;
    }

    private function getRalInfo($strUrl, $arrParams, $strHttpType) {
        $strPathInfo = "";
        $strQueryString = "";
        $arrPost = array();
        $intPos = strpos($strUrl, "?");
        if ($intPos === false) {
            $strPathInfo = $strUrl;
        } else {
            $strPathInfo = substr($strUrl, 0, $intPos);
            $strQueryString = substr($strUrl, $intPos+1);
        }
        if ($strHttpType == "get") {
            $strQueryString .= "&".http_build_query($arrParams);
        }
        if ($strHttpType == 'post') {
            $arrPost = $arrParams;
        }
        $arrRes = array(
            'pathinfo' => $strPathInfo,
            'querystring' => $strQueryString,
            'post' => $arrPost,
        );
        return $arrRes;
    }
}

/* vim: set ts=4 sw=4 sts=4 tw=100 */
