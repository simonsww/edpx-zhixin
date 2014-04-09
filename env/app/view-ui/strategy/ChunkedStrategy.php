<?php
/********************************************************
*   Copyright (C) 2013 All rights reserved.
*   
*   @file：ChunkedStrategy.php
*   @author：songlei03@baidu.com
*   @data：2013/11/27 11:11
*   @brief：chunked策略
*
*********************************************************/

class ChunkedStrategy{


    static public function splitTpl($data){
        $templateName = $data['uiControl']['templateName'];
        $templateType = $data['uiControl']['templateType'];
        $templateSwitch = $data['uiControl']['templateSwitch'];
        $platform = $data['uiControl']['platform'];
        $requestType = $data['uiControl']['type'];
        $nginxMainPage = $data['uiControl']['isNginxMainPage'];
        $bolSplitTpl = (Util::getConf('/feature', 'FEATURE_LIST/SPLITTPL/TURN') === 'ON') ? true : false;
        if(!$bolSplitTpl){
            return false;
        }
        if($GLOBALS['PS-ISASYNCFLAG'] == 1){
        	return false;
        }
        
        //黑名单机制，在黑名单中的不走chunked
        $templateInfo = Util::getConf('/chunked', 'ChunkedTpl');
        if(!empty($templateInfo[$templateType])){
        	$templateNameInfo = $templateInfo[$templateType]['templateName'];
        	if(!empty($templateNameInfo)){
        		$templateNameArr = explode(',',$templateNameInfo);
        		if(!empty($templateNameArr) && is_array($templateNameArr) && in_array($templateName,$templateNameArr)){
        			return false;
        		}
        	}
        }

        if($platform === 'pc' && $templateSwitch != 2 && $requestType != 'detect' && $nginxMainPage == 2){
            return true;
        }
        return false;
    }
    
    static public function chunked($data,$bolSplitTpl,$arrHeader,$arrUrlConfig){
        $templateName = $data['uiControl']['templateName'];
        $templateType = $data['uiControl']['templateType'];
        $templateSwitch = $data['uiControl']['templateSwitch'];
        $platform = $data['uiControl']['platform'];
        $requestType = $data['uiControl']['type'];
        $nginxMainPage = $data['uiControl']['isNginxMainPage'];
        $accountName = $data['uiControl']['oriAccountName'];
        
        //模板拆分开关
        if(!$bolSplitTpl){
            return false;
        }
        if($GLOBALS['PS-ISASYNCFLAG'] == 1){
        	return false;
        }
        //chunked 开关
        $bolChunked = (Util::getConf('/feature', 'FEATURE_LIST/CHUNKED/TURN') === 'ON') ? true : false;
        if(!$bolChunked){
            return false;
        }
        //url 开关
        if($arrUrlConfig['bd_ck'] != '1'){
            return false;
        } 
        //判断是否单包渲染 && head 请求不chunked
        if($_SERVER['REQUEST_METHOD'] =='HEAD' || $_SERVER['DOCUMENT_URI'] == '/chunked_retry'){
            return false;
        } 
        $templateInfo = Util::getConf('/chunked', 'ChunkedTpl');
        //tn 目前暂时不判断 
        /*
        $tnInfo = $templateInfo['tn'];
        $tnArr = explode(',',$tnInfo);
        if(!in_array($accountName,$tnArr)){
            return false;
        }
         */
        //兼容代码
        if(isset($_COOKIE['BD_CK'])){
            return false;
        }
        
        //黑名单机制，在黑名单中的不走chunked
        if(!empty($templateInfo[$templateType])){
        	$templateNameInfo = $templateInfo[$templateType]['templateName'];
        	if(!empty($templateNameInfo)){
        		$templateNameArr = explode(',',$templateNameInfo);
        		if(!empty($templateNameArr) && is_array($templateNameArr) && in_array($templateName,$templateNameArr)){
        			return false;
        		}
        	}
        }
        
        //判断是否支持GZIP
        $encodeArr = explode(',',$arrHeader['ACCEPT-ENCODING']);
        if(!in_array('gzip',$encodeArr)){
            return false;
        }
        if($platform === 'pc' && $templateSwitch != 2 && $requestType != 'detect' && $nginxMainPage == 2){
            //抽样处理
            $bolSample = (Util::getConf('/feature', 'FEATURE_LIST/CHUNKED_SAMPLE/TURN') === 'ON') ? true : false;   
            if($bolSample){
                $chunkedSimpleId = 4460;
                if (is_array ( $data ['uiData'] ['queryInfo'] ['samplingId'] ) && ! empty ( $data ['uiData'] ['queryInfo'] ['samplingId'])) {
                    $arrSids = $data ['uiData'] ['queryInfo'] ['samplingId'];
                    $arrSids = array_flip ( $arrSids );
                    if(isset($arrSids[$chunkedSimpleId])){
                        return true;
                    }
                }
                return false;
            }else{
                $chunkedSimpleId = 4461;
                if (is_array ( $data ['uiData'] ['queryInfo'] ['samplingId'] ) && ! empty ( $data ['uiData'] ['queryInfo'] ['samplingId'])) {
                    $arrSids = $data ['uiData'] ['queryInfo'] ['samplingId'];
                    $arrSids = array_flip ( $arrSids );
                    if(isset($arrSids[$chunkedSimpleId])){
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }
}



/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
