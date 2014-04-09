<?php
/**
 * 
 * @desc 页面级模板选择功能，根据tn选择模板
 * @author chenhuailiang@baidu.com
 *
 */
class TemplateSelector {
	
	/**
	 * 模板选择
	 *
	 * @param $arrData unknown_type       	
	 * @return true or false
	 */
	public function getUserInfo(&$arrData) {
		if (empty ( $arrData ) || ! is_array ( $arrData )) {
			CLog::warning ( "tpl select is wrong, param err!" );
			return false;
		}
		// Flag
		if (Util::getConf ( '/feature', 'FEATURE_LIST/TemplateSelector/TURN' ) !== 'ON') {
			return true;
		}
		
		// 读取tn和tplName
		// $arrAccounts = Util::getConf ( '/accounts', 'ACCOUNT_TPLNAME' );
		// $arrTplTypes = Util::getConf ( '/tpl_type', 'TEMPLATE_TYPE' );
		require VUI_TEMPLATE_PATH . PHP_TEMPLATES;
		if (! isset ( $arrTplTypes )) {
			CLog::warning ( "tpl select is wrong, require tpl type err!" );
			return false;
		}
		
		$arrQueryInfo = &$arrData ['uiData'] ['queryInfo'];
		$arrHilightInfo = &$arrData ['uiData'] ['hilightInfo'];
		$arrControlInfo = &$arrData ['uiControl'];
		$arrUrlConfig = $arrQueryInfo ['pUrlConfig'];
		$arrTplConfig = array ();
		$strTn = "";
		$strTplName = "";
		if (isset($arrControlInfo['oriAccountName']) && !empty($arrControlInfo['oriAccountName']) && isset($arrControlInfo['oriTplName']) && !empty($arrControlInfo['oriTplName'])){
			$strTn = trim($arrControlInfo['oriAccountName']);
			$strTplName = trim($arrControlInfo['oriTplName']);
		}
		// 处理首页模板
		/* if ($arrData ['uiControl'] ['templateSwitch'] == 2) {
			$strTn = isset ( $arrUrlConfig ['tn'] ) ? trim ( $arrUrlConfig ['tn'] ) : '';
			$strTplName = "";
			if (! empty ( $strTn )) {
				$strTplName = get_value_by_key ( $strTn );
			}
			if (empty ( $strTplName )) {
				$arrUrlConfig ['tn'] = trim ( $GLOBALS ['DEFAULT_TEMPLATE_NAME'] );
			}
			// return true;
		} */
		
		/* when useing debug page. */
		if (! empty ( $GLOBALS ['DEBUG_PAGE_TN'] ) && strcasecmp ( $GLOBALS ['DEBUG_PAGE_TN'], $strTn ) == 0){
			$arrControlInfo ['templateName'] = trim ( $GLOBALS ['DEFAULT_TEMPLATE_NAME'] );
			$arrQueryInfo ['strategyName'] = BAIDU_TEMPLATE;
		}else{
			// tn选择模板
			/* $strTn = isset ( $arrUrlConfig ['tn'] ) ? trim ( $arrUrlConfig ['tn'] ) : trim ( $GLOBALS ['DEFAULT_TEMPLATE_NAME'] );
			$strTplName = "";
			if (! empty ( $strTn )) {
				$strTplName = get_value_by_key ( $strTn );
			}
			if (! empty ( $strTplName )) {
				$arrControlInfo ['templateName'] = $strTplName;
			} else {
				$arrUrlConfig ['tn'] = trim ( $GLOBALS ['DEFAULT_TEMPLATE_NAME'] );
				$arrControlInfo ['templateName'] = trim ( $GLOBALS ['DEFAULT_TEMPLATE_NAME'] );
				$arrQueryInfo ['strategyName'] = BAIDU_TEMPLATE;
			} */
			if(!empty($strTn) && !empty($strTplName)){
				$arrUrlConfig ['tn'] = $strTn;
				$arrControlInfo ['templateName'] = $strTplName;
			}else{
				$arrUrlConfig ['tn'] = trim ( $GLOBALS ['DEFAULT_TEMPLATE_NAME'] );
				$arrControlInfo ['templateName'] = trim ( $GLOBALS ['DEFAULT_TEMPLATE_NAME'] );
				$arrQueryInfo ['strategyName'] = BAIDU_TEMPLATE;
			}
			
			// 是否是站内搜索，是则选模板SITE_SEARCH_TEMP_PP
			if (isset ( $arrUrlConfig ['sts'] )) {
				$arrUrlConfig ['sts'] = trim ( $arrUrlConfig ['sts'] );
				if (! empty ( $arrUrlConfig ['sts'] )) {
					if (isset ( $arrQueryInfo ['isHideSite'] ) && intval ( $arrQueryInfo ['isHideSite'] ) == 1 && isset ( $arrTplTypes [$GLOBALS ['TEMP_SITE_NOPP']] )) {
						$arrControlInfo ['templateName'] = $GLOBALS ['TEMP_SITE_NOPP'];
					} else if (isset ( $arrTplTypes [$GLOBALS ['TEMP_SITE_PP']] )) {
						$arrControlInfo ['templateName'] = $GLOBALS ['TEMP_SITE_PP'];
					}
				}
			}
		}
		
		// 模板类型
		$arrPlatForm = array ();
		if (isset ( $arrTplTypes [$arrControlInfo ['templateName']] )) {
			$arrControlInfo ['templateType'] = $arrTplTypes[$arrControlInfo ['templateName']]['type'];
			$arrPlatForm = $arrTplTypes[$arrControlInfo ['templateName']] ['platform'];
		} else {
			$arrUrlConfig ['tn'] = trim ( $GLOBALS ['DEFAULT_TEMPLATE_NAME'] );
			$arrControlInfo ['templateName'] = trim ( $GLOBALS ['DEFAULT_TEMPLATE_NAME'] );
			$arrControlInfo ['templateType'] = trim ( $GLOBALS ['DEFAULT_TEMPLATE_TYPE'] );
			$arrPlatForm [] = trim ( $GLOBALS ['DEFAULT_PLATFORM'] );
		}
		
		// 平台检查
		if (! in_array ( $arrControlInfo ['platform'], $arrPlatForm )) {
			if(count($arrPlatForm) >= 2){
				$arrControlInfo ['platform'] = $arrPlatForm [1];
			}else{
				$arrControlInfo ['platform'] = $arrPlatForm [0];
			}
			$arrQueryInfo ['dspName'] = "";
		}
		
		//dsp参数处理
		if(count($arrPlatForm) == 1 && strcasecmp($arrControlInfo ['platform'], "pad") == 0) {
			if (empty($arrData ['uiData'] ['queryInfo'] ['dspName'])) {
				$arrData ['uiData'] ['queryInfo'] ['dspName'] = "ipad";
				CLog::warning ( "dspName is not ipad when using pad template.");
			}
		}
		
		//检查模板目录是否存在，不存在使用baidu模板
		$strTplConfigPath = CSmarty::getTplFolderPath ( VUI_TEMPLATE_PATH, $arrControlInfo ['platform'], $arrControlInfo ['language'], $arrControlInfo ['templateType'] ) . $arrControlInfo ['templateName'];
		if (! file_exists ( $strTplConfigPath )) {
			$arrUrlConfig ['tn'] = trim ( $GLOBALS ['DEFAULT_TEMPLATE_NAME'] );
			$arrControlInfo ['templateName'] = trim ( $GLOBALS ['DEFAULT_TEMPLATE_NAME'] );
			$arrQueryInfo ['strategyName'] = BAIDU_TEMPLATE;
			
			// 模板类型
			unset($arrPlatForm);
			$arrPlatForm = array ();
			if (isset ( $arrTplTypes [$arrControlInfo ['templateName']] )) {
				$arrControlInfo ['templateType'] = $arrTplTypes[$arrControlInfo ['templateName']]['type'];
				$arrPlatForm = $arrTplTypes[$arrControlInfo ['templateName']] ['platform'];
			} else {
				$arrUrlConfig ['tn'] = trim ( $GLOBALS ['DEFAULT_TEMPLATE_NAME'] );
				$arrControlInfo ['templateName'] = trim ( $GLOBALS ['DEFAULT_TEMPLATE_NAME'] );
				$arrControlInfo ['templateType'] = trim ( $GLOBALS ['DEFAULT_TEMPLATE_TYPE'] );
				$arrPlatForm [] = trim ( $GLOBALS ['DEFAULT_PLATFORM'] );
			}
			
			// 平台检查
			if (! in_array ( $arrControlInfo ['platform'], $arrPlatForm )) {
				if(count($arrPlatForm) >= 2){
					$arrControlInfo ['platform'] = $arrPlatForm [1];
				}else{
					$arrControlInfo ['platform'] = $arrPlatForm [0];
				}
				$arrQueryInfo ['dspName'] = "";
			}
		}
		
		// 获取模板配置信息
		unset($strTplConfigPath);
		$strTplConfigPath = CSmarty::getTplFolderPath ( VUI_TEMPLATE_PATH, $arrControlInfo ['platform'], $arrControlInfo ['language'], $arrControlInfo ['templateType'] ) . $arrControlInfo ['templateName'] . '/' . $arrControlInfo ['templateName'] . '.cfg.php';
		if (! file_exists ( $strTplConfigPath )) {
			$strTplConfigPath = CSmarty::getTplFolderPath ( VUI_TEMPLATE_PATH, $arrControlInfo ['platform'], $arrControlInfo ['language'], $arrControlInfo ['templateType'] ) . $arrControlInfo ['templateType'] . '.cfg.php';
			if (! file_exists ( $strTplConfigPath )) {
				$arrControlInfo ['templateName'] = trim ( $GLOBALS ['DEFAULT_TEMPLATE_NAME'] );
				$arrControlInfo ['templateType'] = trim ( $GLOBALS ['DEFAULT_TEMPLATE_TYPE'] );
				$arrUrlConfig ['tn'] = trim ( $GLOBALS ['DEFAULT_TEMPLATE_NAME'] );
				$arrQueryInfo ['strategyName'] = BAIDU_TEMPLATE;
				
				$strTplConfigPath = CSmarty::getTplFolderPath ( VUI_TEMPLATE_PATH, $arrControlInfo ['platform'], $arrControlInfo ['language'], $arrControlInfo ['templateType'] ) . $arrControlInfo ['templateName'] . '/' . $arrControlInfo ['templateName'] . '.cfg.php';
				if (! file_exists ( $strTplConfigPath )) {
					$strTplConfigPath = CSmarty::getTplFolderPath ( VUI_TEMPLATE_PATH, $arrControlInfo ['platform'], $arrControlInfo ['language'], $arrControlInfo ['templateType'] ) . $arrControlInfo ['templateType'] . '.cfg.php';
					if (! file_exists ( $strTplConfigPath )) {
						$arrControlInfo ['platform'] = trim ( $GLOBALS ['DEFAULT_PLATFORM'] );
						$arrControlInfo ['language'] = trim ( $GLOBALS ['DEFAULT_LANGUAGE'] );
						$strTplConfigPath = CSmarty::getTplFolderPath ( VUI_TEMPLATE_PATH, $arrControlInfo ['platform'], $arrControlInfo ['language'], $arrControlInfo ['templateType'] ) . $arrControlInfo ['templateName'] . '/' . $arrControlInfo ['templateName'] . '.cfg.php';
						if (! file_exists ( $strTplConfigPath )) {
							$strTplConfigPath = CSmarty::getTplFolderPath ( VUI_TEMPLATE_PATH, $arrControlInfo ['platform'], $arrControlInfo ['language'], $arrControlInfo ['templateType'] ) . $arrControlInfo ['templateType'] . '.cfg.php';
							if (! file_exists ( $strTplConfigPath )) {
								CLog::warning ( "tpl select is wrong, cfg not existed!" );
								return false;
							}
						}
					}
				}
			}
		}
		$arrQueryInfo['accountName'] = $arrUrlConfig ['tn'];
		$arrData ['uiControl'] ['tplConfigPath'] = $strTplConfigPath;
		$arrData ['uiControl'] ['tplConfigName'] = $arrControlInfo ['templateName'];
		$arrData ['uiControl'] ['tplConfigType'] = $arrControlInfo ['templateType'];
		/* $arrTplConfig = $this->getTplConfig ( $strTplConfigPath );
		if (! is_array ( $arrTplConfig ) || empty ( $arrTplConfig ) || count ( $arrTplConfig ) <= 0) {
			// log
			CLog::warning ( "tpl select is wrong, getting cfg err!" );
			return false;
		}
		
		// 处理首页模板
		if ($arrData ['uiControl'] ['templateSwitch'] == 2) {
			$arrFrontPage = Util::getConf ( '/frontpage', 'FRONTPAGE/LOGO' );
			if (! empty ( $arrFrontPage ) && is_array ( $arrFrontPage )) {
				foreach ( $arrFrontPage as $key => $value ) {
					$arrTplConfig [$key] = $value;
				}
			}
		}
		
		// 解析模板配置项
		$bolRet = $this->parseTplConfig ( $arrData, $arrTplConfig ); */
		return true;
	}
	
	/**
	 * 获取模板配置
	 *
	 * @param
	 *       	 $strTplConfigPath
	 * @return array
	 */
	public function getTplConfig($strTplConfigPath) {
		require $strTplConfigPath;
		if (! isset ( $arrPhpTplConfigs )) {
			// log
			CLog::warning ( "tpl select is wrong, include cfg err!" );
			return array ();
		}
		// check配置项
		$arrTplConfig = array ();
		foreach ( $arrPhpTplConfigs as $key => $value ) {
			if (strlen ( $key ) > TEMP_CONFIG_KEY_LEN || strlen ( $value ) > TEMP_CONFIG_VALUE_LEN) {
				// log
				CLog::warning ( "tpl select is wrong, cfg item too long!" );
				return array ();
			}
			if (isset ( $arrTplConfig [$key] )) {
				// log
				CLog::warning ( "cfg item is already existed!" );
				continue;
			}
			$arrTplConfig [$key] = $value;
		}
		// 转码
		/* $error_key = array ();
		iconv_data ( $arrTplConfig, APP_ENCODING, $GLOBALS ['UI_ENCODING'], "tplconfig", $error_key );
		foreach ( $error_key as $k => $v ) {
			$GLOBALS ['logArr'] [$k] = $v;
		}
		if (! empty ( $error_key )) {
			CLog::warning ( "tpl config convert encoding err" );
		} */
		return $arrTplConfig;
	}
	
	/**
	 * 解析模板配置
	 *
	 * @param $arrData unknown_type       	
	 * @param $arrTplConfig unknown_type       	
	 * @return boolean
	 */
	public function parseTplConfig(&$arrData, $arrTplConfig) {
		$arrQueryInfo = &$arrData ['uiData'] ['queryInfo'];
		$arrHilightInfo = &$arrData ['uiData'] ['hilightInfo'];
		$arrControlInfo = &$arrData ['uiControl'];
		$arrUrlConfig = $arrQueryInfo ['pUrlConfig'];
		
		// strategy
		unset($arrQueryInfo ['strategyName']);
		$bolTnUnFeature = (Util::getConf('/feature', 'FEATURE_LIST/TN_UN/TURN') === 'ON') ? true : false;
		if($bolTnUnFeature){
			$strTn = empty($arrData['uiData']['queryInfo']['accountName']) ? $GLOBALS ['DEFAULT_TEMPLATE_NAME'] : $arrData['uiData']['queryInfo']['accountName'];
			$strStrategyName = shmdict_getValueFromDict($strTn, 'tn_un');
			$arrQueryInfo ['strategyName'] = empty($strStrategyName) ? 'baidu' : $strStrategyName;
		}else{
			if (isset ( $arrTplConfig ['strategy'] )) {
				$arrQueryInfo ['strategyName'] = trim ( $arrTplConfig ['strategy'] );
			} else if (! isset ( $arrQueryInfo ['strategyName'] )) {
				$arrQueryInfo ['strategyName'] = DEFAULT_TEMPLATE_STRATEGY;
			}
		}
		
		// services
		unset($arrControlInfo ['services_ResultPage']);
		$arrServiceNames = explode ( ',', ALL_SERVICE );
		$arrServiceNames = array_flip ( $arrServiceNames );
		if (isset ( $arrTplConfig ['services'] ) && ! empty ( $arrTplConfig ['services'] )) {
			$arrServices = explode ( ',', $arrTplConfig ['services'] );
			$arrResultPage = array ();
			for($i = 0; $i < MAX_SVR_NUM; $i ++) {
				$arrResultPage [$i] = 0;
			}
			foreach ( $arrServices as $key ) {
				if (isset ( $arrServiceNames [$key] ) && $arrServiceNames [$key] < MAX_SVR_NUM) {
					$arrResultPage [$arrServiceNames [$key]] = 1;
				}
			}
			$arrControlInfo ['services_ResultPage'] = $arrResultPage;
		}
		
		unset($arrControlInfo ['services_FrontPage']);
		if (isset ( $arrTplConfig ['front_services'] ) && ! empty ( $arrTplConfig ['front_services'] )) {
			$arrServices = explode ( ',', $arrTplConfig ['front_services'] );
			$arrResultPage = array ();
			for($i = 0; $i < MAX_SVR_NUM; $i ++) {
				$arrResultPage [$i] = 0;
			}
			foreach ( $arrServices as $key ) {
				if (isset ( $arrServiceNames [$key] ) && $arrServiceNames [$key] < MAX_SVR_NUM) {
					$arrResultPage [$arrServiceNames [$key]] = 1;
				}
			}
			$arrControlInfo ['services_FrontPage'] = $arrResultPage;
		}
		
		if (isset ( $arrTplConfig ['ignore_url'] )) {
			$arrControlInfo ['ignoreUrl'] = intval ( $arrTplConfig ['ignore_url'] );
		} else {
			$arrControlInfo ['ignoreUrl'] = 0;
		}
		if (isset ( $arrTplConfig ['protectpp'] )) {
			$arrControlInfo ['protectppSwitch'] = intval ( $arrTplConfig ['protectpp'] );
			if ($arrControlInfo ['protectppSwitch'] != PROTECTPP_SWITCH_OPEN) {
				$arrControlInfo ['protectppSwitch'] = PROTECTPP_SWITCH_CLOSE;
			}
		} else {
			$arrControlInfo ['protectppSwitch'] = PROTECTPP_SWITCH_CLOSE;
		}
		// 强制关闭了
		$arrControlInfo ['protectppSwitch'] = PROTECTPP_SWITCH_CLOSE;
		
		if (isset ( $arrTplConfig ['needsp'] )) {
			$arrQueryInfo ['needSp'] = intval ( $arrTplConfig ['needsp'] );
			if ($arrQueryInfo ['needSp'] < 0 || $arrQueryInfo ['needSp'] > 1) {
				$arrQueryInfo ['needSp'] = 0;
			}
		} else {
			$arrQueryInfo ['needSp'] = 0;
		}
		
		if (isset ( $arrTplConfig ['inter_page'] )) {
			$arrQueryInfo ['interPage'] = intval ( $arrTplConfig ['inter_page'] );
		} else {
			$arrQueryInfo ['interPage'] = 0;
		}
		
		if (isset ( $arrTplConfig ['resLimit'] )) {
			$arrQueryInfo ['resLimitSwitch'] = intval ( $arrTplConfig ['resLimit'] );
			if ($arrQueryInfo ['resLimitSwitch'] != PROTECTPP_SWITCH_OPEN) {
				$arrQueryInfo ['resLimitSwitch'] = PROTECTPP_SWITCH_CLOSE;
			}
		} else {
			$arrQueryInfo ['resLimitSwitch'] = PROTECTPP_SWITCH_CLOSE;
		}
		
		unset($arrQueryInfo ['wenkuUrlPara']);
		if (isset ( $arrTplConfig ['special_pagetype_para'] )) {
			$strTemp = $arrTplConfig ['special_pagetype_para'];
			$arrTemp = str_split ( $strTemp );
			$bolFlag = true;
			foreach ( $arrTemp as $char ) {
				if (is_numeric ( $char ) && $char >= 0 && $char <= 9) {
					continue;
				} else if ($char == ',' || $char == '|') {
					continue;
				} else {
					$bolFlag = false;
					break;
				}
			}
			if ($bolFlag === true) {
				$arrQueryInfo ['wenkuUrlPara'] = WENKU_WAP_PC_KEY . '=' . $strTemp;
			}
		}
		
		/*
		 * da所需资源号
		 */
		unset($arrQueryInfo ['daResource']);
		if (isset ( $arrTplConfig ['da_resource'] )) {
			$arrResource = explode ( ',', $arrTplConfig ['da_resource'] );
			$arrDaResource = array ();
			for($i = 0; $i < DA_RES_COUNT; $i ++) {
				if (isset ( $arrResource [$i] )) {
					$arrDaResource [$i] = intval ( $arrResource [$i] );
				} else {
					$arrDaResource [$i] = 0;
				}
			}
			$arrQueryInfo ['daResource'] = $arrDaResource;
		}
		
		// RS服务请求参数
		$arrQueryInfo ['needRsSeResult'] = isset ( $arrControlInfo ['services_ResultPage'] [SvrType_RS] ) ? $arrControlInfo ['services_ResultPage'] [SvrType_RS] : 0;
		
		// ERS服务请求参数
		$intEcomrsOpen = isset ( $arrQueryInfo ['ecomrsOpen'] ) ? intval ( $arrQueryInfo ['ecomrsOpen'] ) : 1;
		$intNeedERSResult = isset ( $arrControlInfo ['services_ResultPage'] [SvrType_ERS] ) ? $arrControlInfo ['services_ResultPage'] [SvrType_ERS] : 0;
		if ($intEcomrsOpen == 1 && $intNeedERSResult == 1) {
			$arrQueryInfo ['needERSResult'] = 1;
		} else {
			$arrQueryInfo ['needERSResult'] = 0;
		}
		
		/*
		 * 区分是否为内部流量
		 */
		unset($arrQueryInfo ['isInternalFlow']);
		if (isset ( $arrTplConfig ['is_internal_flow'] )) {
			$intFlowFlag = intval ( $arrTplConfig ['is_internal_flow'] );
			if ($intFlowFlag != 0 && $intFlowFlag != 1) {
				$intFlowFlag = 0;
			}
			$arrQueryInfo ['isInternalFlow'] = $intFlowFlag;
		}
		
		if ($arrUrlConfig ['f'] == FROM_RS && isset ( $arrTplConfig ['pp_template_for_rs'] )) {
			$arrQueryInfo ['templateForRs'] = $arrTplConfig ['pp_template_for_rs'];
		} else {
			$arrQueryInfo ['templateForRs'] = $arrUrlConfig ['tn'];
		}
		
		$arrEcSrc = array ();
		$intEcNum = 0;
		if (isset ( $arrTplConfig ['ec_serial'] ) && ! empty( $arrTplConfig ['ec_serial'] )) {
			$arrTemp = explode ( ',', $arrTplConfig ['ec_serial'] );
			$count = 0;
			foreach ( $arrTemp as $index => $value ) {
				if ($count >= MAX_EC_SRC_NUM) {
					break;
				}
				$arrEcSrc [$index] ['id'] = intval ( $value );
				$count ++;
			}
			$intEcNum = $count;
		}
		if (isset ( $arrTplConfig ['ec_templates'] ) && ! empty( $arrTplConfig ['ec_templates'] )) {
			$arrTemp = explode ( ',', $arrTplConfig ['ec_templates'] );
			$count = 0;
			foreach ( $arrTemp as $index => $value ) {
				if ($count >= MAX_EC_SRC_NUM) {
					break;
				}
				$arrEcSrc [$index] ['template_name'] = trim ( $value );
				$count ++;
			}
			if ($count < $intEcNum) {
				$intEcNum = $count;
			}
		}
		if ($intEcNum <= 0) {
			$intEcNum = 1;
			$arrEcSrc [0] ['id'] = 2;
			$arrEcSrc [0] ['template_name'] = "baidufsheadps";
		}
		$arrSrcId = array ();
		$arrEcSrcs = array ();
		for($i = 0; $i < $intEcNum; $i ++) {
			$arrSrcId [] = $arrEcSrc [$i] ['id'];
			$arrEcSrcs [$i] ['id'] = isset ( $arrEcSrc [$i] ['id'] ) ? intval ( $arrEcSrc [$i] ['id'] ) : 0;
			$arrEcSrcs [$i] ['req_num'] = isset ( $arrEcSrc [$i] ['req_num'] ) ? intval ( $arrEcSrc [$i] ['req_num'] ) : 0;
			$arrEcSrcs [$i] ['ad_offset'] = isset ( $arrEcSrc [$i] ['ad_offset'] ) ? intval ( $arrEcSrc [$i] ['ad_offset'] ) : 0;
			$arrEcSrcs [$i] ['charge_name'] = isset ( $arrEcSrc [$i] ['charge_name'] ) ? $arrEcSrc [$i] ['charge_name'] : '';
			$arrEcSrcs [$i] ['template_name'] = isset ( $arrEcSrc [$i] ['template_name'] ) ? $arrEcSrc [$i] ['template_name'] : 0;
			$arrEcSrcs [$i] ['user_def'] = isset ( $arrEcSrc [$i] ['user_def'] ) ? $arrEcSrc [$i] ['user_def'] : '';
			$arrEcSrcs [$i] ['printInfo'] = isset ( $arrEcSrc [$i] ['printInfo'] ) ? $arrEcSrc [$i] ['printInfo'] : '';
		}
		$arrQueryInfo ['srcId'] = $arrSrcId;
		$arrQueryInfo ['ec_src'] = $arrEcSrcs;
		
		// ASP服务迁移
		$arrQueryInfo ['needASPResult'] = isset ( $arrControlInfo ['services_ResultPage'] [SvrType_EC] ) ? $arrControlInfo ['services_ResultPage'] [SvrType_EC] : 0;
		
		// confuse 广告和大搜索一致
// 		if (isset ( $arrTplConfig ['confuseResult'] )) {
// 			$arrQueryInfo ['confuse_Switch'] = intval ( $arrTplConfig ['confuseResult'] );
// 			if ($arrQueryInfo ['confuse_Switch'] != PROTECTPP_SWITCH_OPEN) {
// 				$arrQueryInfo ['confuse_Switch'] = PROTECTPP_SWITCH_CLOSE;
// 			}
// 		} else {
// 			$arrQueryInfo ['confuse_Switch'] = PROTECTPP_SWITCH_CLOSE;
// 		}
		
		
		/*****************************anti360 临时逻辑***************************************/
		/**
		 * 0-关闭    1-全开启     2-部分开启    非法或没传时默认0
		 */
		if(isset ( $arrTplConfig ['confuseResult'] )){
			$intConfuseResult = intval($arrTplConfig ['confuseResult']);
			if($intConfuseResult == PROTECTPP_SWITCH_OPEN || $intConfuseResult == PROTECTPP_SWITCH_PART_OPEN){
				$arrQueryInfo ['confuse_Switch'] = $intConfuseResult;
			}else{
				$arrQueryInfo ['confuse_Switch'] = PROTECTPP_SWITCH_CLOSE;
			}
		}else {
			$arrQueryInfo ['confuse_Switch'] = PROTECTPP_SWITCH_CLOSE;
		}
		/*********************************************************************************/
		
		// 是否需要AS结果，包括AC和阿拉丁以及至知心
		$arrQueryInfo ['need_as_result'] = isset ( $arrControlInfo ['services_ResultPage'] [SvrType_AS] ) ? $arrControlInfo ['services_ResultPage'] [SvrType_AS] : 0;
		
		// 结构化和阿拉丁飘红
		$arrQueryInfo ['protectPPSwitch'] = $arrControlInfo ['protectppSwitch'];
		
		// 设置templateConfig
        $arrData ['uiData'] ['templateConfig'] = $arrTplConfig;
        var_dump($arrData);
		
		// 设置hilight信息
		unset($arrHilightInfo ['hiFixInfo'] ['hilight_prefix']);
		if (isset ( $arrTplConfig ['hilight_prefix'] )) {
			$arrHilightInfo ['hiFixInfo'] ['hilight_prefix'] = trim ( $arrTplConfig ['hilight_prefix'] );
		}
		unset($arrHilightInfo ['hiFixInfo'] ['hilight_postfix']);
		if (isset ( $arrTplConfig ['hilight_postfix'] )) {
			$arrHilightInfo ['hiFixInfo'] ['hilight_postfix'] = trim ( $arrTplConfig ['hilight_postfix'] );
		}
		unset($arrHilightInfo ['hiFixInfo'] ['bold_prefix']);
		if (isset ( $arrTplConfig ['bold_prefix'] )) {
			$arrHilightInfo ['hiFixInfo'] ['bold_prefix'] = trim ( $arrTplConfig ['bold_prefix'] );
		}
		unset($arrHilightInfo ['hiFixInfo'] ['bold_postfix']);
		if (isset ( $arrTplConfig ['bold_postfix'] )) {
			$arrHilightInfo ['hiFixInfo'] ['bold_postfix'] = trim ( $arrTplConfig ['bold_postfix'] );
		}
		
		return true;
	}
}
