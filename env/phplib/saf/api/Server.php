<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * $Id$ 
 * 
 **************************************************************************/
 
 
 
/**
 * @file Api.php
 * @author wiki(luhaixia@baidu.com)
 * @date 2011/09/05 11:42:43
 * @version $Revision$ 
 * @brief 
 *  
 **/
class Saf_Api_Server{

    const SUCCESS = 0;
    const SERVICE_NOT_EXIST = 1;//strService指定的Service不存在，或strService出错。
    const METHOD_NOT_EXIST  = 2;//strMethod指定接口不存在 
    const INPUT_INVALID     = 3;//input格式不正确
    const EXTRA_INVALID     = 4;//extra格式不正确
    const OUTPUT_CHANGED    = 5;//strMethod接口返回值变化
    const METHOD_FAILED     = 6;//method执行错误

    const ENCODE_UTF8      = 'utf-8'; //utf8编码
    const ENCODE_GBK       = 'gbk';   //GBK编码
    //默认编码方式为utf-8

    public static $serviceStack = array(APP);
    public static $cgiStack = array();
    public static $errMsg;    
    public static $errNo;

    public static $serviceErr = array();

    /**
     * @brief 统一调用接口 
     *
     * @param [in/out] $strService  : string 即App，表示api调用的是哪个app的接口
     * @param [in/out] $strMethod   : string 即App的接口
     * @param [in/out] $arrParams   : 输入参数
     * @param [in/out] $arrFilter   : array 指定返回的keys，默认null为全部返回。
     * @param [in/out] $extra   :  array 指定输入的参数的编码，输出编码将和输入编码一致
     * @return  返回值:	array() or false; //正确执行，则返回数据，格式同接口表述，若错误则返回false
     * @retval   
     * @see 
     * @note 
     * @author wiki
     * @date 2011/09/06 16:24:49
    **/
    static public function call($strService, $strMethod, $arrParams, $arrFilter = null, $extra = null) {
        //判断strService是否存在
        //servicename是驼峰形式
        $apiLib = Bd_Conf::getConf("/saf");
        $strPrefix = $apiLib['api_lib'];
        $strServiceClass = $strPrefix."_Api_".ucwords($strService)."_Service";

        if (!class_exists($strServiceClass)) {
            //是否是service调用
            $strServiceClass = $strPrefix."_Service_".ucwords($strService);
            if (class_exists($strServiceClass)) {
                return self::callService($strServiceClass, $strMethod, $arrParams, $arrFilter, $extra);
            } else {
                self::$errMsg = "service or api $strService not exist";
                self::$errNo  = self::SERVICE_NOT_EXIST;
                return false;
            }
        }
        //判断strMethod是否存在
        $objService = new $strServiceClass();
        if (!method_exists($objService, $strMethod)) {
            self::$errNo  = self::METHOD_NOT_EXIST;
            self::$errMsg = "class $strServiceClass method $strMethod  not exist";
            return false;
        }
        //输入参数编码格式转换成service内部的编码格式
        if (is_array($extra) && isset($extra['ie']) 
            && $objService->getServieEncode() != strtolower($extra['ie'])) {
                $arrParams = Bd_String::iconv_recursive($arrParams, strtolower($extra['ie']), 
                                                        $objService->getServieEncode());
        } else {
            if ($extra !== null && (!is_array($extra) || !isset($extra['ie']))) {
                self::$errNo  = self::EXTRA_INVALID;
                self::$errMsg = "$strService::$strMethod failed with invalid extra";
                return false;
            }
        }

        //输入格式检查
        $strMethodReqClass = $strPrefix."_Api_".ucwords($strService)."_Entity_Req".$strMethod;
        $strMethodResClass = $strPrefix."_Api_".ucwords($strService)."_Entity_Res".$strMethod;

        if (!class_exists($strMethodReqClass)) {
            self::$errNo = self::INPUT_INVALID;
            self::$errMsg = "class $strMethodReqClass not exist";
            return false;
        }
        if (!class_exists($strMethodResClass)) {
            self::$errNo  = self::OUTPUT_CHANGED;
            self::$errMsg = "class $strMethodResClass not exist";
            return false;
        }
        $objMethodReq = new $strMethodReqClass();
        $res = $objMethodReq->loadFromArray($arrParams);
        if (!$res) {
            self::$errNo  = self::INPUT_INVALID;
            self::$errMsg = "$strService::$strMethod failed with invalid Input";
            return false;
        }
        $objMethodRes = new $strMethodResClass();

        $res = call_user_func_array(array($objService,$strMethod),array($objMethodReq,$objMethodRes, $arrFilter, $extra));
        if ($res === false) {
            if ($objService->errno != null) {
                self::$serviceErr = $objService->errno;
            } else {
                self::$serviceErr = array();
            }
            self::$errNo  = self::METHOD_FAILED;
            self::$errMsg = "$strService::$strMethod failed in process";
            return false;
        }
        if ($res == null) {
            self::$errNo  = self::OUTPUT_CHANGED;
            self::$errMsg = "$strService::$strMethod failed with changed output";
            return false;
        }

        $arrRes = $res->toArray();
        //返回值过滤
        if (is_array($arrFilter)) {
            foreach ($arrFilter as $key) {
                if (isset($arrRes[$key])) {
                    unset($arrRes[$key]);
                }
            }
        }
        //Service返回值的编码格式和应用客户端编码格式不一致，则转换为api输入的编码格式
        if (is_array($extra) && isset($extra['ie']) 
            && $objService->getServieEncode() != strtolower($extra['ie'])) {
                $arrRes = Bd_String::iconv_recursive($arrRes, $objService->getServieEncode(), $extra['ie']);
        }

        //$arrRes = $objMethodRes->toArray(); //$objMethodRes->toArray();
        //输出格式要求
        return $arrRes;
    }

    //获取调用的file和class,method等信息
    static public function getCallFrom() {
    
    }

    static public function getLastError() {
        return array(self::$errNo => self::$errMsg);
    }

    static public function getServiceError() {
        return self::$serviceErr;
    }

    static private function callService($strServiceClass, $strMethod, $arrInput, $arrOutput, $extra) {
        $objService = new $strServiceClass();
        $res = call_user_func_array(array($objService,$strMethod),array($arrInput,$arrOutput, $extra));
        return $res;
    }
}

/* vim: set ts=4 sw=4 sts=4 tw=100 */
