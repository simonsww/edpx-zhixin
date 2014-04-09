<?php
/**
 * 
 * @desc 抽样模板选择
 * @author chenhuailiang@baidu.com
 *
 */
class TemplateSampling {
	
	/**
	 * 抽样模板选择
	 *
	 * @param $arrData unknown_type       	
	 * @return true or false
	 */
	public function getTemplateSample(&$arrData) {
		if (empty ( $arrData ) || ! is_array ( $arrData )) {
			CLog::warning ( "tpl sample is wrong, param err!" );
			return false;
		}
		// Flag
		if (Util::getConf ( '/feature', 'FEATURE_LIST/TemplateSampling/TURN' ) !== 'ON') {
			return false;
		}
		
		if (empty ( $GLOBALS ['DEBUG_PAGE_TN'] ) || strcasecmp ( $GLOBALS ['DEBUG_PAGE_TN'], $arrData ['uiData'] ['queryInfo'] ['pUrlConfig'] ['tn'] ) != 0) {
			$arrControlInfo = &$arrData ['uiControl'];
			// 站内搜索模板不抽样
			if (strcasecmp ( $arrControlInfo ['templateName'], $GLOBALS ['TEMP_SITE_NOPP'] ) == 0 || strcasecmp ( $arrControlInfo ['templateName'], $GLOBALS ['TEMP_SITE_PP'] ) == 0) {
				return false;
			}
			
			$arrQueryInfo = &$arrData ['uiData'] ['queryInfo'];
			if (is_array ( $arrQueryInfo ['samplingId'] ) && ! empty ( $arrQueryInfo ['samplingId'] )) {
				$intSamplingCount = 0;
				foreach ( $arrQueryInfo ['samplingId'] as $intId ) {
					if ($intId < SAMPLING_MIN) {
						break;
					}
					$intSamplingCount ++;
				}
				if ($intSamplingCount > 0 && $intSamplingCount == count ( $arrQueryInfo ['samplingId'] )) {
					if (true === $this->get_sampling_template ( $arrData )) {
						return true;
					}
				} else {
					CLog::warning ( "Invalid sampling id : " . $arrQueryInfo ['samplingId'] [$intSamplingCount] . " < SAMPLING_MIN " . SAMPLING_MIN );
					$arrQueryInfo ['samplingId'] = array ();
				}
			}
		}
		return false;
	}
	
	/**
	 * @param unknown_type $arrData
	 * @return boolean
	 */
	public function get_sampling_template(&$arrData) {
		if ($arrData ['uiControl'] ['templateSwitch'] == 2) {
			$arrTplSample = Util::getConf ( '/sample_variable', 'sample_variable/FRONT_PAGE_INDEX' );
		} else {
			$arrTplSample = Util::getConf ( '/sample_variable', 'sample_variable/RESULT_PAGE_INDEX' );
		}
		if (! is_array ( $arrTplSample ) || empty ( $arrTplSample )) {
			//CLog::warning ( "tpl sampling conf is null" );
			return false;
		}
		$arrSids = $arrData ['uiData'] ['queryInfo'] ['samplingId'];
		$arrSids = array_flip ( $arrSids );
		$strTplName = "";
		foreach ( $arrTplSample ['Contexted'] as $arrTemp ) {
			if (isset ( $arrSids [$arrTemp ['sampling_id']] )) {
				$strTplName = $arrTemp ['value'];
				break;
			}
		}
		if (! empty ( $strTplName )) {
			//$arrTplTypes = Util::getConf ( '/tpl_type', 'TEMPLATE_TYPE' );
			require VUI_TEMPLATE_PATH . PHP_TEMPLATES;
			if (! isset ( $arrTplTypes )) {
				CLog::warning ( "tpl sampling is wrong, require tpl type err!" );
				return false;
			}
			$arrControlInfo = &$arrData ['uiControl'];
			// 模板类型
			$arrPlatForm = array ();
			$strType = "";
			if (isset ( $arrTplTypes [$strTplName] )) {
				$strType = $arrTplTypes[$strTplName]['type'];
				$arrPlatForm = $arrTplTypes[$strTplName] ['platform'];
			} else {
				CLog::warning ( "tpl sampling is wrong, tpl type not existed!" );
				return false;
			//	$strType = trim ( $GLOBALS ['DEFAULT_TEMPLATE_TYPE'] );
			//	$arrPlatForm [] = trim ( $GLOBALS ['DEFAULT_PLATFORM'] );
			}
			
			// 平台检查
			if (! in_array ( $arrControlInfo ['platform'], $arrPlatForm )) {
				CLog::warning ( "tpl platform is not matching" );
				return false;
			}
			
			//dsp参数处理
			if(count($arrPlatForm) == 1 && strcasecmp($arrControlInfo ['platform'], "pad") == 0) {
				if (empty($arrData ['uiData'] ['queryInfo'] ['dspName'])) {
					$arrData ['uiData'] ['queryInfo'] ['dspName'] = "ipad";
					CLog::warning ( "dspName is not ipad when using pad template.");
				}
			}
			
			// 检查模板配置
			$bolFlag = false;
			$strTplConfigPath = CSmarty::getTplFolderPath ( VUI_TEMPLATE_PATH, $arrControlInfo ['platform'], $arrControlInfo ['language'], $strType ) . $strTplName . '/' . $strTplName . '.cfg.php';
			if (file_exists ( $strTplConfigPath )) {
				$bolFlag = true;
			} else {
				$strTplConfigPath = CSmarty::getTplFolderPath ( VUI_TEMPLATE_PATH, $arrControlInfo ['platform'], $arrControlInfo ['language'], $strType ) . $strType . '.cfg.php';
				if (file_exists ( $strTplConfigPath )) {
					$bolFlag = true;
				} else {
					CLog::warning ( "tpl cfg is not existed, tplname : " . $strTplName );
					return false;
				}
			}
			if ($bolFlag === true) {
				//补充
				/* $objTemplateSelector = new TemplateSelector ();
				$arrTplConfig = $objTemplateSelector->getTplConfig ( $strTplConfigPath );
				if (! is_array ( $arrTplConfig ) || empty ( $arrTplConfig ) || count ( $arrTplConfig ) <= 0) {
					// log
					CLog::warning ( "tpl sampling is wrong, getting cfg err!" );
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
				} */
				$arrData ['uiControl'] ['tplSamplingPath'] = $strTplConfigPath;
				$arrControlInfo ['templateName'] = $strTplName;
				$arrControlInfo ['templateType'] = $strType;
				return true;
				// 解析模板配置项
			//	$bolRet = $objTemplateSelector->parseTplConfig ( $arrData, $arrTplConfig );
			//	CLog::debug ( "tpl sampling tplname : " . $strTplName );
			//	return $bolRet;
			}
		}
		return false;
	}
}
