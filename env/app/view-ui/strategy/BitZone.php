<?php
/**
 *
* @desc 策略标志位解析
* @author tangting01@baidu.com
*
*/
class BitZone extends Strategy {
	public function run(&$arrData, $arrConf) {
		if (empty ( $arrData ) || ! is_array ( $arrData )) {
			return false;
		}
		$arrBitZoneConf = Util::getConf ( '/bitzone', 'BITZONE' );
		$arrBitZoneConf = $this->analysisConf ( $arrBitZoneConf );
		if (empty ( $arrBitZoneConf )) {
			return false;
		}
		
		// 遍历获得asResult->item->0/1/..->urls->asurls->strategys中的标志位数组
		// 取得配置中各标志位在上述数组位置中的值
		// 将最终解析出来的标志位值加入asResult->item->0/1/..->dispData->strategybits中
		if (! empty ( $arrData ['uiData']['asResult'] ['item'] ) && is_array ( $arrData ['uiData']['asResult'] ['item'] )) {
			foreach ( $arrData ['uiData']['asResult'] ['item'] as &$asResultItem ) {
				$arrBitZoneInfo = array ();
				if (! empty ( $asResultItem ['urls'] ['asUrls'] ['strategys'] ) && is_array ( $asResultItem ['urls'] ['asUrls'] ['strategys'] )) {
					foreach ( $arrBitZoneConf as $strTipKey => $arrTipConfInfo ) {
						$strTipValue = '';
						foreach ( $arrTipConfInfo as $intSection => $arrPos ) {
							$intStrategySectionNum = intval ( $asResultItem ['urls'] ['asUrls'] ['strategys'] [$intSection] );
							foreach ( $arrPos as $intPos ) {
								$intTmp = (($intStrategySectionNum & pow ( 2, $intPos )) == 0) ? 0 : 1;
								$strTipValue = ($strTipValue === '') ? $intTmp : $strTipValue . $intTmp;
							}
						}
						$arrBitZoneInfo [$strTipKey] = bindec ( $strTipValue );
					}
				}
				$asResultItem ['dispData'] ['strategybits'] = $arrBitZoneInfo;
			}
		}
		return true;
	}
	
	/**
	 * Input:key1:1-2,3;2-3
	 * key2:0-2
	 * Output:array('key1'=>array(1=>array(2,3)),2=>array(3),'key2'=>array(0=>array(2)))
	 */
	private function analysisConf($arrBitZoneConf) {
		$arrRst = array ();
		if (empty ( $arrBitZoneConf ) || ! is_array ( $arrBitZoneConf )) {
			return false;
		}
		foreach ( $arrBitZoneConf as $strTipKey => $strTipValue ) {
			$arrOneKeyInfo = array ();
			$arrTipValue = explode ( ";", $strTipValue );
			foreach ( $arrTipValue as $arrValue ) {
				list ( $intSection, $strpos ) = explode ( "-", $arrValue );
				$arrPos = explode ( ",", $strpos );
				$arrOneKeyInfo [$intSection] = $arrPos;
			}
			$arrRst [$strTipKey] = $arrOneKeyInfo;
		}
		return $arrRst;
	}
}
