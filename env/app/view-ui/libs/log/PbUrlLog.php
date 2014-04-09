<?php
/********************************************************
*   Copyright (C) 2013 All rights reserved.
*   
*   @file：PbUrlLog.php
*   @author：songlei03@baidu.com
*   @data：2013/10/09 14:02
*   @brief：
*
*********************************************************/
class PbUrlLog{

    private $BaiduLog;
    
    public function __construct(){
        $this->BaiduLog = new BaiduLog();
    }
    
    public function confirmLog($arrData){
    	if(empty($arrData) || $arrData ['uiControl'] ['type'] != 'www'){
    		return ;
    	}
    	$arrQueryInfo = $arrData['uiData']['queryInfo'];
    	 
    	if($arrQueryInfo['isParams']['mod'] !== IS_CONFIRM_REQ || !isset($arrQueryInfo['isParams']['cqid']) || !isset($arrQueryInfo['isParams']['isid']) || !isset($arrQueryInfo['isParams']['chk'])){
    		return;
    	}
    	 
    	$this->BaiduLog->setProduct(ProductID::PS);
    	$this->BaiduLog->setTimestamp(b2log_get_timestamp());
    	$this->BaiduLog->setLogid(CLog::logId());
    	$this->BaiduLog->setQueryId($arrQueryInfo ['queryId']);
    	$this->BaiduLog->setBaiduid($arrQueryInfo ['baiduId']);
    	 
    	$BaiduIs = new BaiduIs();
    	$BaiduIs->setMod($arrQueryInfo['isParams']['mod']);
    	$BaiduIs->setCqid($arrQueryInfo['isParams']['cqid']);
    	$BaiduIs->setIsid($arrQueryInfo['isParams']['isid']);
    	$BaiduIs->setChk($arrQueryInfo['isParams']['chk']);
    	$BaiduIs->setIsBd($arrQueryInfo['isParams']['isbd']);
    	$BaiduIs->setCsq($arrQueryInfo['isParams']['csq']);
    	$this->BaiduLog->setBaiduis($BaiduIs);
    	$logInfo = $this->BaiduLog->serialize();
    	$ret = b2log_write("pre_pbUrl", $logInfo);
    }
    

    public function log($arrData,$intType=0){

        
       if(empty($arrData) || $arrData ['uiControl'] ['type'] != 'www'){
           return ;
       }
       $arrQueryInfo = $arrData['uiData']['queryInfo'];
       $arrResult = $arrData['uiData']['asResult'];
       // Consider midpage displayed 20 result per page as default,Here we set
       // the threshold from PB_PAGESIZE to PB_PAGESIZE*2
       if ($arrQueryInfo ['resNum'] > 2 * $GLOBALS ['URLLOG'] ['PB_PAGESIZE'] || $arrQueryInfo ['pageNo'] > 2 || $arrResult ['asResultNum'] < 0) {
           return;
       }
       $this->BaiduLog->setProduct(ProductID::PS);
       $this->BaiduLog->setTimestamp(b2log_get_timestamp());
       $this->BaiduLog->setLogid(CLog::logId());
       			$BaiduIs = new BaiduIs();
       if($intType === 1){
       			$BaiduIs->setMod($arrQueryInfo['isParams']['mod']);
       			$BaiduIs->setCqid($arrQueryInfo['isParams']['cqid']);
       			$BaiduIs->setIsid($arrQueryInfo['isParams']['isid']);
       			$BaiduIs->setChk($arrQueryInfo['isParams']['chk']);
       			$BaiduIs->setIsBd($arrQueryInfo['isParams']['isbd']);
       			$this->BaiduLog->setBaiduis($BaiduIs);
       }
       
       // 高可信se置换后，日志里仍然打印原始query
       if ($arrQueryInfo ['superSeFlag'] == 1) {
           $this->BaiduLog->setQuery($arrQueryInfo ['queryWordBak']);
       } else {
           $this->BaiduLog->setQuery($arrQueryInfo ['queryWord']);
       }
       $this->addQueryInfo($arrData);
       $this->addUrlInfos($arrData);
       $logInfo = $this->BaiduLog->serialize();
       $strLogFile = ($intType === 1) ? 'pre_pbUrl' :  'pbUrl';
       $ret = b2log_write($strLogFile, $logInfo); 
    }
    // 生成UrlInfo部分
    private function addUrlInfos($arrData){
        if (empty ( $arrData )) {
            return;
        }
                
        $ecResult = $arrData ['uiData'] ['ecResult'];
        $arrResult = $arrData ['uiData'] ['asResult'];
        $topResult = $arrData ['uiData'] ['topResult'];
        $leftResult = $arrData ['uiData'] ['leftResult'];
        $rightResult = $arrData ['uiData'] ['rightResult'];
        $arrQueryInfo = $arrData ['uiData'] ['queryInfo'];
        $intI = 0;
        // ec队列
        foreach ( $ecResult ['ecResultItem'] as $result ) {
            $urlInfo = new UrlInfo();
            if($result['source'] == SRC_PPIM ) {
                $ppImInfoLog = new PPimInfoLog();
                $intI++;
                $urlInfo->setIndex($intI);
                $urlInfo->setUrlType(UrlID::PPIM_ID);
                $ppImInfoLog->setAdNum($result ['adNum'] + $intI - 1 );
                $ppImInfoLog->setAspUid($arrData ['uiData'] ['ecResult'] ['aspuid']);
                $urlInfo->setPpimLog($ppImInfoLog);
                $this->BaiduLog->addUrlInfo($urlInfo);
            }else if($result['source'] == SRC_NEWPP){
                $ppInfoLog = new PPInfoLog();
                $intI++;
                $urlInfo->setIndex($intI);
                $urlInfo->setUrlType(UrlID::PP_ID);
                $ppInfoLog->setAdNum($result['adNum']);
                $urlInfo->setPpLog($ppInfoLog);
                $this->BaiduLog->addUrlInfo($urlInfo);
            }
        }
        //左侧队列
        foreach($leftResult ['item'] as $result ) {
            $urlInfo = new UrlInfo();
            $intI++;
            $urlInfo->setIndex($intI);
            $urlInfo->setUrl(trim($result['itemUrl']));
            $urlInfo->setUrlType(UrlID::LEFT_ZX_ID);
            $leftZxUrlInfoLog = new LeftZXUrlInfoLog();
            $leftZxUrlInfoLog->setIsClAs($result['isClAs']);
            $leftZxUrlInfoLog->setStdStg(intval($result ['dispData'] ['StdStg']));
            $leftZxUrlInfoLog->setStdStl(intval($result ['dispData'] ['StdStl']));
            $leftZxUrlInfoLog->setUrlJiucuoFlag('0');
            for($i=0;$i<4;$i++){
                $leftZxUrlInfoLog->addStrategys('0');
            }
            $leftZxUrlInfoLog->setCategoryId($result ['dispData'] ['category_id']);
            $leftZxUrlInfoLog->setCardId($result['dispData']['card_id']);
            $leftZxUrlInfoLog->setEntityName(urlencode($result['dispData']['entityname']));
            $leftZxUrlInfoLog->setUri(urlencode ( $result ['dispData'] ['uri'] ));
            $leftZxUrlInfoLog->setTempName($result ['dispData'] ['strategy']['tempName']);
            $leftZxUrlInfoLog->setTitle(urlencode($result['dispData']['resultData']['tplData']['title']));
            $itemUriInfo = $this->addItemUriInfo($result);
            if(!empty($itemUriInfo)){
                $leftZxUrlInfoLog->setItemUriInfo($itemUriInfo);
            }
            if (isset($result['burstFlag']) && !empty($result['burstFlag'])) {
                $leftZxUrlInfoLog->setBurstFlag(intval($result['burstFlag']));
            }
            //透传日志
            $arrInfo = mc_pack_pack2array($result ['gSampleLog']);
            if (false != $arrInfo) {
            	foreach ( $arrInfo as $key => $value ) {
            		$dispData = new DispData();
            		$dispData->setKey($key);
            		$dispData->setVal($value);
            		$leftZxUrlInfoLog->addGSampleLog($dispData);
            	}
            }
            $urlInfo->setLeftZxLog($leftZxUrlInfoLog);
            $this->BaiduLog->addUrlInfo($urlInfo);
        }

        //as 队列
        foreach($arrResult ['item'] as $result){
            $urlInfo = new UrlInfo();
            $intI ++;
            if ($result ['source'] == SRC_AS){
                $asUrlInfoLog = new AsUrlInfoLog();
                $urlInfo->setIndex($intI);
                $urlInfo->setUrl(trim ( $result ['offsetInfo'] ['url']));
                $urlInfo->setUrlType(UrlID::AS_ID);
                $asUrlInfoLog->setWeight($result ['urls'] ['asUrls'] ['weight']) ;
                $asUrlInfoLog->setUrlNo($result ['urls'] ['asUrls'] ['urlno']);
                $asUrlInfoLog->setSuburlSign($result ['urls'] ['asUrls'] ['suburlSign']);
                $asUrlInfoLog->setSiteSign1($result ['urls'] ['asUrls'] ['siteSign1']);
                $asUrlInfoLog->setMixSignsitesign($result ['urls'] ['asUrls'] ['mixSignSiteSign']);
                $asUrlInfoLog->setMixSignSex($result ['urls'] ['asUrls'] ['mixSignSex']);
                $asUrlInfoLog->setMixSignPol($result ['urls'] ['asUrls'] ['mixSignPol']);
                $asUrlInfoLog->setContSign( $result ['urls'] ['asUrls'] ['contSign']);
                $asUrlInfoLog->setMatchProp($result ['urls'] ['asUrls'] ['matchProp']);
                foreach($result ['urls'] ['asUrls'] ['strategys'] as $strategy){
                    $asUrlInfoLog->addStrategys($strategy);
                }
                $asUrlInfoLog->setInfo($result ['info']);
                $oriIndex = ($result ['info'] & 0x00ff0000) >> 16;
                if (0 < $oriIndex && $oriIndex <= $GLOBALS ['URLLOG'] ['MAX_PB_PAGESIZE']) {
                    $asUrlInfoLog->setAuthWeight($result ['authWeight']);
                    $asUrlInfoLog->setTimeFactor($result ['timeFactor']);
                    $asUrlInfoLog->setPageType($result['pageType']);
                    $asUrlInfoLog->setField($result ['field']);
                }
                $asUrlInfoLog->setStdStg(intval($result ['dispData'] ['StdStg']));
                $asUrlInfoLog->setStdStl(intval($result ['dispData'] ['StdStl']));
                $arrInfo = mc_pack_pack2array($result ['gSampleLog']);
                $hasSampleLog = false;
                if (false != $arrInfo) {
                    foreach ( $arrInfo as $key => $value ) {
                        $dispData = new DispData(); 
                        $dispData->setKey($key);
                        $dispData->setVal($value);
                        $asUrlInfoLog->addGSampleLog($dispData);
                    }
                    $hasSampleLog = true;
                }
                if($hasSampleLog){
                foreach ( $result ['dispData'] ['addSubArr'] as $arrPromot ) {
                    $asUrlInfoLog->addItemSecureId($arrPromot['typeID']);
                    }
                }
                if (isset($result ['dispData'] ['as_struct_exp']) && ! empty($result ['dispData'] ['as_struct_exp'])) {
                    $asUrlInfoLog->setFakeImageShow($result ['dispData'] ['as_struct_exp']);
                }
                if (isset($result['dispData'] ['src_id']) && !empty($result['dispData'] ['src_id']) ) { 
                    $asUrlInfoLog->setSrcId($result['dispData']['src_id']);
                }   
               
                if (isset($result['dispData'] ['img']) && !empty($result['dispData'] ['img']) ) { 
                    $asUrlInfoLog->setImg((bool)$result['dispData']['img']);
                }   
                if(isset($result['dispData']['FavURL']) && !empty($result['dispData']['FavURL'])) {
                    $asUrlInfoLog->setFavUrl('1');
                }   
                //打印title和showTime
                $asUrlInfoLog->setTitle(urlencode($result ['offsetInfo'] ['title']));
                $asUrlInfoLog->setShowTime($result ['timeShow']);
                $asUrlInfoLog->setNewTimeFactor(sprintf('%s',$result['dispData']['newTimeFactor']));
                if(isset($result['burstFlag']) && !empty($result['burstFlag'])){
                    $asUrlInfoLog->setBurstFlag(intval($result['burstFlag']));
                }
                //大V包括安全联盟和百度身份认证两部分
                if(!empty($result['dispData'] ['safeUnion'])){
                    $asUrlInfoLog->setSafeUnion('1');
                }
                if(!empty($result['dispData'] ['eVcard'])){
                    $asUrlInfoLog->setEVcard('1');
                }
                //官网标记
                if(!empty($result['dispData'] ['sublink']['is_main'])){
                    $asUrlInfoLog->setIsMain('1');
                }
                if( !empty($result['dispData']['womcEntranceFilter'])){
                    $dispData = new DispData(); 
                    $dispData->setKey('pjzx_show');
                    $dispData->setVal('1');
                    $asUrlInfoLog->addGSampleLog($dispData);
                }
                if (empty ( $result ['dispData'] ['ASURL'] )) {
                    $asUrlInfoLog->setAsUrl('0');
                } else {
                    $asUrlInfoLog->setAsUrl('1');
                }
                $asUrlInfoLog->setClickWeight($result['clickWeight']);
                $asUrlInfoLog->setTemplateName($result ['dispData'] ['templateName']);
                if (Util::getConf('/feature', 'FEATURE_LIST/ABSTRACT_PB_LOG/TURN') === 'ON') {
                    $asUrlInfoLog->setAbstractTxt($result['offsetInfo']['summary']);
                }
                $itemUriInfo = $this->addItemUriInfo($result);
                if(!empty($itemUriInfo)){
                    $asUrlInfoLog->setItemUriInfo($itemUriInfo);
                }
                
                
                $urlInfo->setAsLog($asUrlInfoLog);
                $this->BaiduLog->addUrlInfo($urlInfo);
            }
            else if($result ['source'] == SRC_SP){
                $urlInfo = new UrlInfo();
                $urlInfo->setIndex($intI);
                $urlInfo->setUrl(trim($result['resUrl']));
                $urlInfo->setUrlType(UrlID::SP_ID);
                $spUrlInfoLog = new SpUrlInfoLog();
                $spUrlInfoLog->setIsClAs($result ['isClAs']);
                $spUrlInfoLog->setDispLog($result ['dispLog']);
                foreach($result ['strategyS'] as $arrStrategys){
                    $spUrlInfoLog->addStrategys($arrStrategys);
                }
                //透传数据
                $arrInfo = mc_pack_pack2array($result ['gSampleLog']);
                if (false != $arrInfo) {
                    foreach ( $arrInfo as $key => $value ) {
                        $dispData = new DispData(); 
                        $dispData->setKey($key);
                        $dispData->setVal($value);
                        $spUrlInfoLog->addGSampleLog($dispData);
                    }
                }
                if(isset($result['clickWeightMerge']) && !empty($result['clickWeightMerge'])){
                    $dispData = new DispData();
                    $dispData->setKey("clickweightmerge");
                    $dispData->setVal((string)$result['clickWeightMerge']);
                    $spUrlInfoLog->addGSampleLog($dispData);
                }
                if(isset($result ['dispData'] ['as_struct_exp']) && ! empty($result ['dispData'] ['as_struct_exp'])) {
                    $spUrlInfoLog->setFakeImageShow($result ['dispData'] ['as_struct_exp']);
                }
                if(isset($result['burstFlag']) && !empty($result['burstFlag'])){
                    $spUrlInfoLog->setBurstFlag(intval($result['burstFlag']));
                }
                if (isset($result['dispData']['resultData']['tplData']['title']) && !empty($result['dispData']['resultData']['tplData']['title'])){
                    $spUrlInfoLog->setTitle(urlencode($result['dispData']['resultData']['tplData']['title']));
                }
                if(isset($result['dispData']['strategy']['tempName']) && !empty($result['dispData']['strategy']['tempName'])        ){
                    $spUrlInfoLog->setTempName($result['dispData']['strategy']['tempName']);
                }  
                foreach ( $result ['subUrlInfo'] as $arrUrlInfo ) {
                    $subUrlInfo =  new SubUrlInfo();
                    $subUrlInfo->setSubUrl($arrUrlInfo ['subUrl']);
                    $subUrlInfo->setSubSiteId($arrUrlInfo ['subSiteId']);
                    $spUrlInfoLog->addSubUrlInfo($subUrlInfo);
                }
                $itemUriInfo = $this->addItemUriInfo($result);
                if(!empty($itemUriInfo)){
                    $spUrlInfoLog->setItemUriInfo($itemUriInfo);
                }
                $urlInfo->setSpLog($spUrlInfoLog);
                $this->BaiduLog->addUrlInfo($urlInfo);
            }else{
                $urlInfo = new UrlInfo();
                $urlInfo->setIndex($intI);
                $urlInfo->setUrlType(UrlInfo::UNKNOW_ID);
            }
        }
        $intI = 0;
        //上侧队列
        foreach($topResult['item'] as $result){
            $intI++;
            $topResultInfo = new ResultInfo();
            $topResultInfo->setIndex($intI);
            $topResultInfo->setUrl(trim($result['itemUrl']));
            $topResultInfo->setResultType(ResultID::TOPZHIXINRESULT);

            $topResult = new ZhiXinResult();

            
            $topResult->setStdStg(intval($result ['dispData'] ['StdStg']));
            $topResult->setStdStl(intval($result ['dispData'] ['StdStl']));
            $topResult->setCategoryId($result ['dispData'] ['category_id']);
            $topResult->setCardId($result ['dispData'] ['card_id']);

            $topResult->setEntityName(urlencode($result ['dispData'] ['entityname']));
            $topResult->setUri(urlencode($result ['dispData'] ['uri']));
            $topResult->setTempName($result['dispData']['strategy']['tempName']);
            $itemUriInfo = $this->addItemUriInfo($result);
            if(!empty($itemUriInfo)){
                $topResult->setItemUriInfo($itemUriInfo);
            }
			//标题
            $topResult->setTitle($result['title']);
            //透传日志
            $arrInfo = mc_pack_pack2array($result ['gSampleLog']);
            if (false != $arrInfo) {
            	foreach ( $arrInfo as $key => $value ) {
            		$dispData = new DispData();
            		$dispData->setKey($key);
            		$dispData->setVal($value);
            		$topResult->addGSampleLog($dispData);
            	}
            }
            
            $topResultInfo->setZxResult($topResult);
            $this->BaiduLog->addResultInfo($topResultInfo);
        }
        $intI = 0;
        //右侧队列
        foreach ( $rightResult ['item'] as $result ) {
            $intI++;
            $rightResultInfo = new ResultInfo();
            $rightResultInfo->setIndex($intI);
            $rightResultInfo->setUrl(trim($result['itemUrl']));
            $rightResultInfo->setResultType(ResultID::RIGHTZHIXINRESULT);
            
            $rightResult = new ZhiXinResult();
            $rightResult->setStdStg(intval($result ['dispData'] ['StdStg']));
            $rightResult->setStdStl(intval($result ['dispData'] ['StdStl']));
            $rightResult->setCategoryId($result ['dispData'] ['category_id']);
            $rightResult->setCardId($result ['dispData'] ['card_id']);
            $rightResult->setEntityName(urlencode ( $result ['dispData'] ['entityname']));
            $rightResult->setUri(urlencode ( $result ['dispData'] ['uri']));
            $rightResult->setTempName($result ['dispData'] ['strategy']['tempName']);
            
            $itemUriInfo = $this->addItemUriInfo($result);
            if(!empty($itemUriInfo)){
                $rightResult->setItemUriInfo($itemUriInfo);
            }
            
            //标题
            $rightResult->setTitle($result['title']);
            //透传日志
            $arrInfo = mc_pack_pack2array($result ['gSampleLog']);
            if (false != $arrInfo) {
            	foreach ( $arrInfo as $key => $value ) {
            		$dispData = new DispData();
            		$dispData->setKey($key);
            		$dispData->setVal($value);
            		$rightResult->addGSampleLog($dispData);
            	}
            }
            
            $rightResultInfo->setZxResult($rightResult);
            $this->BaiduLog->addResultInfo($rightResultInfo);
        }
        
        $intI = 0;

        // ec队列
        // 先计算之和并打印
        $intNum = 0;
        foreach ( $ecResult ['ecResultItem'] as $result ) {
            $intNum += $result ['adNum'];
        }
        // ec队列不为空时才处理
        if($intNum){
            $intI++;
            $aspResultInfo = new ResultInfo();
            $aspResultInfo->setIndex($intI);
            $aspResultInfo->setResultType(ResultID::ASPRESULT);
            $aspResult = new AspResult();
            $aspResult->setAspUid($arrData ['uiData'] ['ecResult'] ['aspuid']);
            $aspResult->setAspSrcId(0);
            $aspResult->setNumber($intNum);
            $aspResultInfo->setAdResult($aspResult);
            $itemUriInfo = $this->addItemUriInfo($result);
            if(!empty($itemUriInfo)){
                $aspResult->setItemUriInfo($itemUriInfo);
            }
            $this->BaiduLog->addResultInfo($aspResultInfo);
            foreach ( $ecResult ['ecResultItem'] as $result ) {
                $intI ++;
                $aspResultInfo = new ResultInfo();
                $aspResultInfo->setIndex($intI);
                $aspResultInfo->setResultType(ResultID::ASPRESULT);
                $aspResult = new AspResult();
                $aspResult->setAspUid($arrData ['uiData'] ['ecResult'] ['aspuid']);
                $aspResult->setAspSrcId($result['id']);
                $aspResult->setNumber($result['adNum']);
                $itemUriInfo = $this->addItemUriInfo($result);
                if(!empty($itemUriInfo)){
                    $aspResult->setItemUriInfo($itemUriInfo);
                }
             
                $aspResultInfo->setAdResult($aspResult);
                $this->BaiduLog->addResultInfo($aspResultInfo);
            }
        }

    }
        
    
    // 生成QueryInfo部分
    private function addQueryInfo($arrData) {
        if (empty ( $arrData )) {
            return;
        }
        $arrQueryInfo = $arrData ['uiData'] ['queryInfo'];
        $arrResult = $arrData ['uiData'] ['asResult'];
        $rsseResult = $arrData ['uiData'] ['rsseResult'];
        $appResult = $arrData ['uiData'] ['appResult'];
        $favoResult = $arrData ['uiData'] ['favoResult'];
        $topResult = $arrData ['uiData'] ['topResult'];
        $rightResult = $arrData ['uiData'] ['rightResult'];
        $disableFlag = $arrData ['uiData'] ['disableFlag'];
        $ecResult = $arrData ['uiData'] ['ecResult'];

        $this->BaiduLog->setQueryId($arrQueryInfo ['queryId']);
        $this->BaiduLog->setPageNo($arrQueryInfo ['pageNo']);

        // 页面所有结果数，包括广告
        // ec队列
        $intAsNum = $arrResult ['asResultNum'] + $arrResult ['spResutlNum'] + $arrResult ['adjResultNum'];
        foreach ( $ecResult ['ecResultItem'] as $result ) {
            if ($result ['source'] == SRC_PPIM || $result ['source'] == SRC_NEWPP) {
                $intAsNum += $result ['adNum'];
            }
        }
        $this->BaiduLog->setAsNum($intAsNum);
        $this->BaiduLog->setUserUintIp($arrQueryInfo ['ip']);
        $this->BaiduLog->setBaiduid($arrQueryInfo ['baiduId']);
        $this->BaiduLog->setAccountName($arrQueryInfo['accountName']);
        $this->BaiduLog->setNeedSp($arrQueryInfo ['needSp']);
        $this->BaiduLog->setAsDatadispNum($arrResult ['asDataDispNum']);
        $this->BaiduLog->setAsDatalistNum($arrResult ['asDataListNum']);

        foreach ( $rsseResult ['rsphrase'] as $arrPhrase ) {
           $rsPhrase = new RsPhrase();
           $rsPhrase->setPhrase($arrPhrase ['phrase']);
           $rsPhrase->setRsComefrom((string)$arrPhrase ['rsComeFrom']);
           $this->BaiduLog->addRsPhrase($rsPhrase);
        }
        
        if( !empty($arrData['uiData']['queryInfo']['superSeFlag']) &&  $arrData['uiData']['queryInfo']['superSeFlag'] == 1) {
            $this->BaiduLog->addSeWord($arrData['uiData']['queryInfo']['wordNoSyntax']);
        }
        else {
        foreach ( $rsseResult ['seword'] as $strWord ) {
           $this->BaiduLog->addSeWord($strWord);
            }
        }
        $this->BaiduLog->setUrlParam(urlencode($arrQueryInfo ['urlParam']));
        $this->BaiduLog->setAdJpNum($arrQueryInfo ['extResCount']);
        $intSeInfo = $arrQueryInfo ['seInfo'] > 0 ? 1 : 0;
        $this->BaiduLog->setIsSeInfo($intSeInfo);
        $intListNum = $appResult ['listNum'] > 0 ? $appResult ['listNum'] : 0;
        $this->BaiduLog->setAppListNum($intListNum);
        $intFavoNum = is_array ( $favoResult ['items'] ) ? count ( $favoResult ['items'] ) : 0;
        $this->BaiduLog->setFavoItemNum($intFavoNum);

        foreach ( $arrQueryInfo ['samplingId'] as $intSamplingId ) {
            $this->BaiduLog->addSamplingId($intSamplingId);
        }
        $arrInfo = mc_pack_pack2array($arrQueryInfo ['gSampleLog']);
        if (false != $arrInfo) {
            foreach ( $arrInfo as $key => $value ) {
                $dispData = new DispData(); 
                $dispData->setKey($key);
                $dispData->setVal($value);
                $this->BaiduLog->addGSampleLog($dispData);
            }
        }
        $intTopNum = is_array ( $topResult ['item'] ) ? count ( $topResult ['item'] ) : 0;
        $this->BaiduLog->setTopResultNum($intTopNum);
        $intRightNum = is_array ( $rightResult ['item'] ) ? count ( $rightResult ['item'] ) : 0;
        $this->BaiduLog->setRightResultNum($intRightNum);
        $this->BaiduLog->setAdRightOld($disableFlag ['adRight']);
        $this->BaiduLog->setAdRightNew($ecResult ['advRightNum'] > 1 ? 0 : 1);
        $this->BaiduLog->setAdvStrategyV1($ecResult ['advStrategyV1']);
        $this->BaiduLog->setAdvStrategyV2($ecResult['advStrategyV2']);
        $this->BaiduLog->setAdSecurityPlanTip($ecResult['securityPlanTip']);
        
        $rightPromptStra = empty($arrData ['uiData'] ['queryInfo']['rightPromptStraFlag']) ? 0 : $arrData ['uiData'] ['queryInfo']['rightPromptStraFlag'];
        $this->BaiduLog->setRightPromptStra($rightPromptStra);
        $this->BaiduLog->setInterClickLog($arrData ['uiData'] ['interClickLog']);
        $this->BaiduLog->setBqid($arrQueryInfo ['bqid']);
        foreach ( $arrQueryInfo ['promptNode'] as $arrPromptNode ) {
            $this->BaiduLog->addPromptNode($arrPromptNode ['id']);
        }
        $this->BaiduLog->setCq($arrQueryInfo ['otherResultQuery']);
        $this->BaiduLog->setDispl($arrQueryInfo ['language']);
        $this->BaiduLog->setLa($arrQueryInfo['resultLang']);
        $this->BaiduLog->setQryl($arrQueryInfo['query_lang']);
        if(empty($arrData['uiData']['queryInfo']['superSeFlag'])){
            $this->BaiduLog->setSse(false);
        }else{
            $this->BaiduLog->setSse(true);
        }
        $this->BaiduLog->setDatetime(date ( 'Y-m-d H:i:s' ));
        $this->BaiduLog->setBufTempLog($arrQueryInfo ['bufTempLog']);
    }

    private function addItemUriInfo($result){
        $itemUriInfo = null;
        if(isset($result['dispData']['resultData']['tplData']['list']) && is_array($result['dispData']['resultData']['tplData']['list'])){
            $itemUriInfo = new ItemUriInfo();
            foreach ($result['dispData']['resultData']['tplData']['list'] as $k => $v) {
                if (isset($v['uri'])) {
                    $itemUriInfo->addUri(urlencode($v['uri']));
                }
            }
            if (isset($result['dispData']['resultData']['tplData']['drsv'])) {
                $itemUriInfo->setDrsv($result['dispData']['resultData']['tplData']['drsv']);
            }
            if (isset($result['dispData']['resultData']['tplData']['cardid'])) {
                $itemUriInfo->setCardid($result['dispData']['resultData']['tplData']['cardid']);
            }
        }
        return $itemUriInfo;
    }
}
?>
