<?php
/**
 * 连SUG服务获取sug信息
 * @author 唐颋(tangting01@baidu.com)
 *
 */
class QuerySug {
	public function queryFromSug(&$arrData){
		//sug接口wiki：http://wiki.babel.baidu.com/twiki/bin/view/Ps/Rank/InterActionTopic/OpensugInterfaceIntroduction
		//json=1表示返回标准的json格式数据
		//cb=空 表示返回的数据中没有“window.baidu.sug”回调
		$arrUrlParams = array();
		$strReferWord = '';
		if(!empty($arrData['uiData']['queryinfo']['refer'])){
			$strUrlParams = parse_url($arrData['uiData']['queryinfo']['refer'],PHP_URL_QUERY );
			if(!empty($strUrlParams)){
				parse_str($strUrlParams,$arrUrlParams);
				if(!empty($arrUrlParams)){
					$strReferWord = isset($arrUrlParams['wd']) ? $arrUrlParams['wd'] : (isset($arrUrlParams['word']) ? $arrUrlParams['word'] : (isset($arrUrlParams['w']) ? $arrUrlParams['w'] : ''));
				}
			}
		}
		$arrHeader['pathinfo'] = 'su';
		$arrHeader['querystring'] = 'wd='. $arrData ['uiData'] ['queryInfo']['queryWord']."&ie=utf-8&json=2&cb=";
		$arrHeader['Referer'] = $_SERVER['HTTP_REFERER'];
                $arrHeader['Cookie'] = $_SERVER['HTTP_COOKIE'];
		
		$arrData['uiData']['queryInfo']['isParams']['sug_status'] = SUG_STATUS_NORMAL;
		$arrSugInfo = array();
		if(!isset($_ENV['HHVM'])){
			ral_set_logid(CLog::logId());
			$ret = ral('sug','get','',Volatile::rand(),$arrHeader);
		}else{
			$ral = new RalClass();
			$ral->ral_set_logid(CLog::logId());
			$ret =$ral->ral_curl_sug('sug','',$arrHeader);
		}
		
		//ral请求失败
		if ($ret === false) {
			$arrData['uiData']['queryInfo']['isParams']['sug_status'] = SUG_STATUS_RAL_ERROR;
			return $arrSugInfo;
		}
		$arrRst = json_decode($ret,true);
		//json_decode失败
		if($arrRst === false){
			$arrData['uiData']['queryInfo']['isParams']['sug_status'] = SUG_STATUS_JSON_FAIL;
			return $arrSugInfo;
		}
		if(empty($arrRst['q']) ){
			$arrData['uiData']['queryInfo']['isParams']['sug_status'] = SUG_STATUS_ERROR_REQ;
			return $arrSugInfo;
		}
		//sug为空
		if(empty($arrRst['s']) || !is_array($arrRst['s'])){
			$arrData['uiData']['queryInfo']['isParams']['sug_status'] = SUG_STATUS_NO_SUG;
			return $arrSugInfo;
		}
		$arrSugInfo = $arrRst['s'];
		return $arrSugInfo;
	}
	
}
