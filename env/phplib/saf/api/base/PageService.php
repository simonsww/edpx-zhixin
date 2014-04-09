<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file PageService.php
 * @author luhaixia(com@baidu.com)
 * @date 2011/09/19 17:57:27
 * @brief 
 *  
 **/
class Saf_Api_Base_PageService {

    const SUCCESS = 0;
    const PARAM_ERROR = 1;
    const METHOD_NOT_EXIST = 2;
    const NODEFAULT = 'nodefault';

    protected $errno;
    protected $_conf;

    public function execute() {
        $arrCgi = Saf_SmartMain::getCgi();
        $arrRequest = $arrCgi['post'];
        if (isset($arrRequest['method'])) {
            $objDS = null;
            $strFunc = null;
            $arrParams = array();
            $arrOutput = array();
            $strApp = isset($arrRequest['app']) ? $arrRequest['app'] :APP;
            $res = $this->getMethod($arrRequest['method'], $strApp, $objDS, $strFunc, $arrParams, $arrOutput);
            if ($res == self::SUCCESS) {
                $arrInput = $this->getParmas($arrParams, $arrRequest);
                if (false === $arrInput) {
                    $errno = self::PARAM_ERROR;
                    return array('errno' => $errno);
                }
                try {
                    $res = call_user_func_array(array($objDS,$strFunc),$arrInput);
                } catch(Exception $e) {
                    $errno = $e->getCode();
                    return array('errno' => $errno);
                }
                if ($arrOutput == null) {
                    $arrData['output'] = $res;
                } else {
                    $arrData[$arrOutput[0]] = $res;
                }
                return array('errno' => self::SUCCESS, 'data'=> $arrData);
            }
        }
    }

    private function getMethod($strMethod, $strApp, &$objDS, &$strFunc, &$arrParams, &$arrOutput) {
        $this->_conf = Bd_Conf::getMyConf("api");
        if (isset($this->_conf[$strMethod])) {
            $arrConf = $this->_conf[$strMethod];
            $strDSName = $arrConf['ds'];
            $strFunc   = $arrConf['func'];
            $objDS = new $strDSName();
            if (isset($arrConf['params'])) {
                $arrParams = $arrConf['params'];
            } else {
                $arrParams = null;
            }
            if (isset($arrConf['output'])) {
                $arrOutput = $arrConf['output'];
            } else {
                $arrOutput = null;
            }
        } else {
            Bd_Log::warning("$strMethod failed with no such methods in $strApp\'s api.conf", self::METHOD_NOT_EXIST, $arrRequest);
            return self::METHOD_NOT_EXIST;
        }
        return self::SUCCESS;
    }

    private function getParmas($arrParams, $arrRequest) {
        if ($arrParams == null) {
            $arrInput = $arrRequest;
            unset($arrInput['method']);
            unset($arrInput['app']);
        } else {
            foreach ($arrParams as $key => $value) {
                if (isset($arrRequest[$key])) {
                    $arrInput[] = $arrRequest[$key];
                } elseif (strtolower($value) == self::NODEFAULT) {
                    //<参数必填，参数的顺序需要和func的声明中的参数顺序一致
                    $errno = self::PARAM_ERROR;
                    Bd_Log::warning($arrInput['method']." failed with invalid params no $key", $errno, $arrRequest);
                    return false;
                }else{
                    $arrInput[] = $value;
                }
            }
        }
        return $arrInput;
    }
}

/* vim: set ts=4 sw=4 sts=4 tw=100 */
