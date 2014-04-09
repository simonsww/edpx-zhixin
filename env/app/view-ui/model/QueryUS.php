<?php
/**
 * 连US获取自然结果、阿拉丁、知心等检索结果
 * @author 贾春鑫(jiachunxin@baidu.com)
 *
 */
class QueryUS {
	
	public function queryFromUs($arrData) {
		$arrQueryInfo = $arrData ['uiData'] ['queryInfo'];
		$arrSessionInfo = $arrData ['uiData'] ['passport'];
		$arrControlInfo = $arrData ['uiControl'];
		// 传递给us的数据结构
		$objQuery = new QueryUSInfo ();
		$objQuery->time = time ();
		$objQuery->word = $arrQueryInfo ['queryWord'];
		$objQuery->wordNoSyntax = $arrQueryInfo ['wordNoSyntax'];
		$objQuery->otherResultQuery = $arrQueryInfo ['otherResultQuery'];
		$objQuery->ip = $arrQueryInfo ['ip'];
		if ($arrQueryInfo ['interPage'] > 0) {
			$objQuery->isInterPage = 1;
		} else {
			$objQuery->isInterPage = 0;
		}
		if ($arrQueryInfo ['bwsRetry'] > 0) {
			$objQuery->isBwsRetry = 1;
		} else {
			$objQuery->isBwsRetry = 0;
		}
		$objQuery->preference = $arrQueryInfo ['preference'];
		$objQuery->passportUserName = $arrSessionInfo ['passportUserName'];
		if (! empty ( $arrQueryInfo ['JpAlaPre'] )) {
			$objQuery->JpAlaPre = $arrQueryInfo ['JpAlaPre'];
		}
		$objQuery->codeType = $arrQueryInfo ['originCodeType'] & (~ (DICT_SEARCH_BIT | MON_BIT | NEWS_SEARCH_BIT | BAIDU_REFER_BIT | TITLE_SEARCH_BIT | AUTHOR_SEARCH_BIT));
		if ( ( ($arrQueryInfo ['isDebug']) && (intval($arrData ['uiData'] ['templateConfig'] ['debug'])) ) > 0 ) {
			$objQuery->isDebug = 1;
		} else {
			$objQuery->isDebug = 0;
		}
		$objQuery->strategyName = $arrQueryInfo ['strategyName'];
		$objQuery->siteName = $arrQueryInfo ['siteName'];
		$objQuery->lastModified = $arrQueryInfo ['lastModified'];
		$strTemplateNameMod = null;
		if (! empty ( $arrControlInfo ['templateName'] ) && $arrControlInfo ['platform'] !== $GLOBALS ['DEFAULT_PLATFORM']) {
			$strTemplateNameMod = 'baidu' . $arrQueryInfo ['dspName'];
		}
		if (empty ( $strTemplateNameMod )) {
			$objQuery->templateName = $arrControlInfo ['templateName'];
		} else {
			$objQuery->templateName = $strTemplateNameMod;
		}
		$objQuery->sid = $arrQueryInfo ['samplingId'];
		$objQuery->cookie = $arrQueryInfo ['baiduId'];
		$objQuery->needsp = $arrQueryInfo ['needSp'];
		$objQuery->pageNo = $arrQueryInfo ['pageNo'];

		$objQuery->queryId = $arrQueryInfo ['queryIdInt'];
		$objQuery->beforeQueryId = $arrQueryInfo ['beforeQueryId'];
		
		$objQuery->beforeUrl = $arrQueryInfo ['beforeUrl'];
		$objQuery->accountName = $arrQueryInfo ['accountName'];
		$objQuery->isContCluster = $arrQueryInfo ['isContMirror'];
		$objQuery->isSiteCluster = $arrQueryInfo ['isSiteCluster'];
		$intPageNum = 0;
		if ($arrQueryInfo ['pageNo'] == 1 || ($arrQueryInfo ['pageNo'] == 2 && $arrQueryInfo ['resNum'] == 10)) {
			$intPageNum = $arrQueryInfo ['pageNum'];
		} else {
			$intPageNum = $arrQueryInfo ['pageNum'] - $arrQueryInfo ['usm'];
		}
		if ($intPageNum < 0) {
			$intPageNum = 0;
		}
		if ($intPageNum >= MAX_OUTPUT_NUM) {
			$intPageNum = 750;
		}
		$objQuery->pageNum = $intPageNum;
		$objQuery->resNum = $arrQueryInfo ['resNum'];
		$objQuery->resultLang = $arrQueryInfo ['resultLang'];
		$objQuery->resultLocale = $arrQueryInfo ['resultLocale'];
		$strUrlParam = self::filterParamFromUrl ( $arrQueryInfo ['urlParam'], WENKU_WAP_PC_KEY );
		if (! empty ( $strUrlParam ) && ! empty ( $arrQueryInfo ['wenkuUrlPara'] )) {
			$strUrlParam .= '&' . $arrQueryInfo ['wenkuUrlPara'];
		}
		$objQuery->urlParam = $strUrlParam;
		$objQuery->requestCode = $arrQueryInfo ['requestCode'];
		$objQuery->usm = $arrQueryInfo ['usm'];
		$objQuery->UrlParaPack = self::packUrlParam ( $strUrlParam, $arrQueryInfo ['postData'], $strTemplateNameMod, $arrQueryInfo['cookieInfo']);
		if (PROTECTPP_SWITCH_OPEN == $arrQueryInfo ['resLimitSwitch']) {
			$objQuery->enalbeModifyUsm = 1;
		} else {
			$objQuery->enalbeModifyUsm = 0;
		}
		$intCommand = 0;
		for($intI = 0; $intI < DA_RES_COUNT; $intI ++) {
			$intCommand |= $arrQueryInfo ['daResource'] [$intI];
		}
		$objQuery->template_rsse_command = $intCommand;
		$objQuery->need_open_disphilight = $arrQueryInfo ['need_open_disphilight'];
		$objQuery->need_RsSE_result = $arrQueryInfo ['needRsSeResult'];
		$objQuery->need_ers_result = $arrQueryInfo ['needERSResult'];
		$objQuery->need_asp_result = $arrQueryInfo ['needASPResult'];
		$objQuery->need_as_result = $arrQueryInfo ['need_as_result'];
		$objQuery->preQueryWord = $arrQueryInfo ['preQueryWord'];
		$objQuery->querySource = $arrQueryInfo ['querySource'];
		$objQuery->isInternalFlow = $arrQueryInfo ['isInternalFlow'];
		$objQuery->srcId = $arrQueryInfo ['srcId'];
		$objQuery->templateForRs = $arrQueryInfo ['templateForRs'];
		$objQuery->beforeQueryId = $arrQueryInfo ['beforeQueryId'];
		$objQuery->noscript = $arrQueryInfo ['noscript'];
		$objQuery->cookieNoscript = $arrQueryInfo ['cookieNoscript'];
		$objQuery->channel = $arrQueryInfo ['channel'];
		$objQuery->rsPos = $arrQueryInfo ['rsPos'];
		$objQuery->platformName = $arrControlInfo ['platform'];
		$objQuery->is_bws_re = $arrQueryInfo ['is_bws_re'];
		$objQuery->useragent_full = $arrQueryInfo ['useragent_full'];
		$objQuery->confuse_Switch = $arrQueryInfo ['confuse_Switch'];
		$objQuery->protectNum = $arrQueryInfo ['protectNum'];
		$objQuery->ec_src = $arrQueryInfo ['ec_src'];
		$objQuery->php_default_platform = $GLOBALS ['DEFAULT_PLATFORM'];
		$objQuery->dspName = $arrQueryInfo ['dspName'];
		$objQuery->ipv6Address = $arrQueryInfo ['ipv6Address'];
		$objQuery->refer = $arrQueryInfo ['refer'];
		$objQuery->needProtect = $arrQueryInfo ['needProtect'];
		$objQuery->protectPPSwitch = $arrQueryInfo ['protectPPSwitch'];
		$objQuery->nojc = $arrQueryInfo ['nojc'];
		$objQuery->super_se_flag = $arrQueryInfo ['superSeFlag'];
		$objQuery->isContainPunc = $arrQueryInfo ['isContainPunc'];
		$objQuery->wordNoPunc = $arrQueryInfo ['wordNoPunc'];
		$objQuery->clusterMod = $arrQueryInfo ['clusterMod'];
		$objQuery->wordEnc = $arrQueryInfo ['wordEnc'];
		$objQuery->extraStr = $arrQueryInfo ['extraStr'];
		$objQuery->strategy_state = $arrQueryInfo ['strategyState'];
		$objQuery->prompt_flag = $arrQueryInfo ['promptUsOpen'];
		$objQuery->passport_user_id = $arrSessionInfo['passportUserId'];
		$objQuery->need_interleaving = $arrQueryInfo ['need_interleaving'];
		$objQuery->comeFrom = $arrQueryInfo ['comeFrom'];
		
		if(!empty($arrQueryInfo['country'])){
			$objQuery->country_str = $arrQueryInfo['country'];
		}
		
		$objQuery->is_sample_template = isset($arrQueryInfo['is_sample_template']) ? intval($arrQueryInfo['is_sample_template']) : 0;
		$objQuery->superseSwitch =  isset($arrQueryInfo['superseSwitch']) ? intval($arrQueryInfo['superseSwitch']) : 1;
		$objQuery->query_lang = $arrQueryInfo['query_lang'];
		$objQuery->displayLang = $arrControlInfo['language'];
		if(isset($arrQueryInfo['isParams'])){
			if($arrQueryInfo['isParams']['mod'] === IS_PRE_DICT_REQ){
				if(!empty($arrQueryInfo['isParams']['hsug'])){
					$objQuery->hsug = $arrQueryInfo['isParams']['hsug'];
				}
				if(!empty($arrQueryInfo['isParams']['sug'])){
					$objQuery->sug = $arrQueryInfo['isParams']['sug'];
				}
				if(!empty($arrQueryInfo['isParams']['clist'])){
					$objQuery->clist = $arrQueryInfo['isParams']['clist'];
				}
			}
			$objQuery->mod = $arrQueryInfo['isParams']['mod'];
			$objQuery->cqid = empty($arrQueryInfo['isParams']['cqid']) ? '0' : $arrQueryInfo['isParams']['cqid'];
			$objQuery->isid = empty($arrQueryInfo['isParams']['isid']) ? '0' : $arrQueryInfo['isParams']['isid'];
			$objQuery->chk = empty($arrQueryInfo['isParams']['chk']) ? '0' : $arrQueryInfo['isParams']['chk'];
			if(in_array($objQuery->mod,array(IS_PRE_REQ,IS_PRE_DICT_REQ)) && in_array($objQuery->word,array('baidu','百度'))){
				$objQuery->f4s = 1;
			}else{
				$objQuery->f4s = $arrQueryInfo['isParams']['f4s']; 
			}
			$objQuery->isbd =$arrQueryInfo['isParams']['isbd'];
			$objQuery->csq = intval($arrQueryInfo['isParams']['csq']);
			$objQuery->pstg = intval($arrQueryInfo['isParams']['pstg']);
			$objQuery->isDebugSwitch = intval($arrQueryInfo['isDebugSwitch']);
		}

		// User Agent相关字段, by chenjinsheng@baidu.com, 2013-07-08
        if (!empty($arrQueryInfo['userAgent'])) {
            list($resx, $resy) = @explode('x', $arrQueryInfo['userAgent']['resolution']);
            $arrUaInfo = array(
                'ua_os' => $arrQueryInfo['userAgent']['os'],
                'ua_browser' => $arrQueryInfo['userAgent']['browser'],
                'ua_modal' => $arrQueryInfo['userAgent']['modal'],
                'ua_measure' => $arrQueryInfo['userAgent']['measure'],
                'ua_res_x' => $resx,
                'ua_res_y' => $resy,
            );
            $arrExpFields = Bd_Conf::getConf('tpl_uaadaptation/UA_DICT_EXPLICIT');
            $arrExpFields = array_keys($arrExpFields);
            foreach ($arrExpFields as $filed) {
            	unset($arrQueryInfo['userAgent'][$filed]);
            }
            if (!empty($arrQueryInfo['userAgent'])) { 
				$objUaFields = Util::mcpack_normal($arrQueryInfo['userAgent']);
				$strUaFields = mc_pack_array2pack($objUaFields);
				$arrUaInfo['ua_ext'] = $strUaFields;
			}
            $objQuery->uaInfo = $arrUaInfo;
        }      
		
		$arrQuery = $objQuery->toArray ();
		$arrQuery = Util::mcpack_normal ( $arrQuery );
		foreach ( $arrQuery as $key => $value ) {
			if (in_array ( $key, array ('cookie', 'beforeUrl', 'UrlParaPack', 'JpAlaPre' ) )) {
				$arrQuery ['(raw)' . $key] = $value;
				unset ( $arrQuery [$key] );
			}
		}

		if (!isset($_ENV['HHVM'])) {
			ral_set_logid ( CLog::logId () );
			$ret = ral ( 'us', 'us', $arrQuery, Volatile::rand () );
			if ($ret === false) {
				$intErrno = ral_get_errno (); 
				CLog::fatal ( 'Fail to connect us, errNo:' . $intErrno, $GLOBALS ['logArr'] );
			}   
		}   
		else {
			$ral = new RalClass();
			$ral->ral_set_logid(CLog::logId());
			$ret = $ral->ral('us', 'us', $arrQuery, Volatile::rand());
			if ($ret === false) {
				$intErrno = $ral->ral_get_errno();
				$strErrmsg = $ral->ral_get_error($intErrno);
				CLog::fatal ( 'Fail to connect us, errNo:'. $intErrno . 'errMsg: ' . $strErrmsg, $GLOBALS ['logArr'] );
			}
		}   

		return $ret;
	}
	
	/**
	 * 从url中删除某个参数，
	 * 如http://www.baidu.com/s?tn=baidurt&rtt=1&bsst=1&wd=%D2%C9%CB%C6%C5%ED%C0%F6%E6%C2%C5%AE%B1%A3%EF%DA%C6%D8%B9%E2&pst=a
	 * 删除pst，结果为：
	 * http://www.baidu.com/s?tn=baidurt&rtt=1&bsst=1&wd=%D2%C9%CB%C6%C5%ED%C0%F6%E6%C2%C5%AE%B1%A3%EF%DA%C6%D8%B9%E2
	 *
	 * @param $strUrl unknown_type       	
	 * @param $strParam unknown_type       	
	 * @return unknown mixed
	 */
	public function filterParamFromUrl($strUrl, $strParam) {
		if (empty ( $strUrl ) || empty ( $strParam )) {
			return $strUrl;
		}
		return preg_replace ( '/' . $strParam . '=[^&#]*/', '', $strUrl );
	}
	/**
	 * 将url、post中的参数打包起来传给us
	 * 我只是从ui移植到vui
	 *
	 * @param $strUrlParam unknown_type       	
	 * @param $strPostData unknown_type       	
	 * @param $strTemplateNameMod unknown_type       	
	 */
	public function packUrlParam($strUrlParam, $strPostData, $strTemplateNameMod, $arrCookieInfo) {
		$intOpenAdvancedModify = Util::getConf ( '/view-ui', 'GLOBAL/OPEN_ADVANCED_MODIFY' );
		if ($intOpenAdvancedModify < 1) {
			$intOpenAdvancedModify = OPEN_ADVANCED_MODIFY;
		}
		$arrQueryPart = array ();
		if (! empty ( $strUrlParam )) {
			$intSplit = strpos ( $strUrlParam, '?' );
			if ($intSplit !== false) {
				$strQueryInfo = substr ( $strUrlParam, $intSplit + 1 );
				$arrQueryPart = self::URLRewiteAdvance ( $strQueryInfo, $intOpenAdvancedModify );
			
			}
		}
		$arrPostData = array ();
		parse_str ( $strPostData, $arrPostData );
		unset ( $arrPostData ['f'] );
		if (! empty ( $strTemplateNameMod ) && ! empty ( $arrPostData ['tn'] )) {
			$arrPostData ['tn'] = $strTemplateNameMod;
		}
		if (! is_array ( $arrQueryPart )) {
			$arrQueryPart = array ();
		}
		//加入对safe参数的校验
// 		if(isset($arrQueryPart['baidu_safe'])){
// 			if($arrQueryPart['baidu_safe'] == 1|| $arrQueryPart['baidu_safe'] == 0){
// 				$arrQueryPart['baidu_safe'] = intval($arrQueryPart['baidu_safe']);
// 			}else{
// 				unset($arrQueryPart['baidu_safe']);
// 			}
// 		}
		if (! is_array ( $arrPostData )) {
			$arrPostData = array ();
		}
		$arr = array_merge ( $arrQueryPart, $arrPostData );
		
		if(!empty($arrCookieInfo)){
			$arr = array_merge($arr,$arrCookieInfo);
		}
		
		foreach( $arr as $key => $value ) {
            if( $value == '' ) {                   //value类型均为string，包括0
                unset( $arr[$key] );
            }       
        }      
        $arr = Util::mcpack_normal ( $arr );
		$str = mc_pack_array2pack ( $arr );
		return $str;
	}
	
	/**
	 * 处理word，主要是将高级搜索的封装起来，比如:
	 * http://www.baidu.com/s?q1=a&q2=b&q3=c&q4=d+e+f&rn=20&lm=30&ct=1&ft=&q5=&q6=&tn=baiduadv
	 * 处理为：a "b" (c) -(d | e | f)
	 *
	 * @param $strQuery unknown_type       	
	 * @param $intAdvModify unknown_type       	
	 */
	public function URLRewiteAdvance($strQuery, $intAdvModify) {
		if (empty ( $strQuery )) {
			return $strQuery;
		}
		$arrQuerys = array ();
		parse_str ( $strQuery, $arrQuerys );
		if (empty ( $arrQuerys )) {
			return $strQuery;
		}
		
		if (empty ( $arrQuerys ['word'] )) {
			$strQ1 = trim ( $arrQuerys ['q1'] );
			$strQ2 = trim ( $arrQuerys ['q2'] );
			$strQ3 = trim ( $arrQuerys ['q3'] );
			$strQ4 = trim ( $arrQuerys ['q4'] );
			$strQ5 = trim ( $arrQuerys ['q5'] );
			$strQ6 = trim ( $arrQuerys ['q6'] );
			$strFt = trim ( $arrQuerys ['ft'] );
			unset ( $arrQuerys ['q1'] );
			unset ( $arrQuerys ['q2'] );
			unset ( $arrQuerys ['q3'] );
			unset ( $arrQuerys ['q4'] );
			unset ( $arrQuerys ['q5'] );
			unset ( $arrQuerys ['q6'] );
			$strWord = '';
			if (! empty ( $strFt )) {
				$strWord .= 'filetype:' . $strFt . ' ';
			}
			if (! empty ( $strQ6 )) {
				$strWord .= 'site:(' . $strQ6 . ') ';
			}
			if (empty ( $strQ1 ) && empty ( $strQ2 ) && empty ( $strQ3 ) && empty ( $strQ4 ) && empty ( $strQ6 )) {
				$strQ5 = null;
			}
			if ($strQ5 == 1) {
				$strWord .= 'title: (';
			} else if ($strQ5 == 2) {
				$strWord .= 'inurl: (';
			} else {
				$strWord .= ' ';
			}
			if (! empty ( $strQ1 )) {
				$strWord .= $strQ1;
			}
			if (! empty ( $strQ2 )) {
				$strWord .= ' "' . $strQ2 . '" ';
			}
			// 处理“不包括以下关键词”，格式为-(word)
			if (! empty ( $strQ3 )) {
				$strWord .= ' (';
				// 将其中的空格" "替换为" | "
				$strWord .= preg_replace ( '/[ ]+/', ' | ', $strQ3 );
				$strWord .= ')';
			}
			// 处理“不包括以下关键词”，格式为-(word)
			if (! empty ( $strQ4 )) {
				if ($intAdvModify > 0) {
					$strWord .= ' -(';
				} else {
					$strWord .= ' - (';
				}
				// 将其中的空格" "替换为" | "
				$strWord .= preg_replace ( '/[ ]+/', ' | ', $strQ4 );
				$strWord .= ')';
			}
			
			if ($strQ5 == 1 || $strQ5 == 2) {
				$strWord .= ')';
			}
			$arrQuerys ['word'] = $strWord;
		}
		// 如果z为空，则使用dq
		if (empty ( $arrQuerys ['z'] ) && ! empty ( $arrQuerys ['dq'] )) {
			$arrQuerys ['z'] = $arrQuerys ['dq'];
			unset ( $arrQuerys ['dq'] );
		}
		return $arrQuerys;
	}
}
