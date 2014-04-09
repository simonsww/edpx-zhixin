<?php
/**
 * Y参数计算
 * @author tangting01@baidu.com
 *
 */
class ClkEncryption extends Strategy {

	public function run(&$arrData, $arrConf) {
		if (empty ( $arrData ) || ! is_array ( $arrData )) {
			return false;
		}
		
		$arrPublicInfo = array();
		$intPageNo = intval($arrData['uiData']['queryInfo']['pageNo']);
		$intRstNum = intval($arrData['uiData']['queryInfo']['resNum']);
		$arrPublicInfo['word_enc'] = $arrData['uiData']['queryInfo']['wordEnc'];
		//query_come_from
		$arrPublicInfo['come_from'] = intval($arrData['uiData']['queryInfo']['pUrlConfig']['f']);
		$arrPublicInfo['time'] = Volatile::gettimeofday();
		
		//T参数
		$arrData['uiData']['queryInfo']['listTime'] = $arrPublicInfo['time']['sec'];
		$arrNewQueryInfo = CSmarty::getQueryInfo();
		$arrNewQueryInfo['listTime'] = $arrPublicInfo['time']['sec'];
		//CSmarty::setQueryInfo($arrData['uiData']['queryInfo']);
		CSmarty::setQueryInfo($arrNewQueryInfo);
		if(!empty($arrData['uiData']['asResult']['item']) && is_array($arrData['uiData']['asResult']['item'])){
			foreach($arrData['uiData']['asResult']['item'] as $intIndex => &$arrItem){
				if(!in_array($arrItem['comeFrome'],array('SP','AS'))){
					continue;
				}
				$arrStrategys = array();
				$strUrl = $arrItem['offsetInfo']['urlEncoded'];
				//$arrPublicInfo['url'] = iconv('utf-8','gbk',$arrItem['offsetInfo']['url']);
				$arrPublicInfo['url'] = urldecode($strUrl);
				$arrPublicInfo['id'] = $intIndex + ($intPageNo -1) * $intRstNum + 1;
				if(!empty($arrItem['comeFrome']) && $arrItem['comeFrome'] == 'AS'){
					$arrStrategys = $arrItem['urls']['asUrls']['strategys'];
				}else{
					$arrStrategys = $arrItem['strategyS'];
				}
                                $arrStrategys = array_slice($arrStrategys, 0, 4);
				$arrRst = getClkEncryption($arrStrategys,$arrPublicInfo);
				//加密串
				if(!empty($arrRst['clkencryption'])){
					$arrItem['encryptionClick'] = trim($arrRst['clkencryption']);
				}
				//F,F1,F2,F3参数
				if(!empty($arrRst['strategyStr']) && is_array($arrRst['strategyStr'])){
					$arrItem['strategyStr'] = $arrRst['strategyStr'];
				}
				//Y参数
				if(!empty($arrRst['identifyStr'])){
					$arrItem['identifyStr'] = trim($arrRst['identifyStr']);
				}
			}
		}
		$intSearchIdentifyStr = getSeClkencryption($arrPublicInfo);
		if($intSearchIdentifyStr !== false){
			$arrData['uiData']['asResult']['searchIdentifyStr'] = $intSearchIdentifyStr;
		}
		return true;
	}
}
