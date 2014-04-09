<?php
/**
 * 对部分结果进行预处理，处理之后将新增的标记字段统一放在view字段下
 * @author 贾春鑫(jiachunxin@baidu.com)
 *
 */
class ItemDataProcessor extends Strategy {
	public function run(&$arrData, $arrConf) {
		if (empty ( $arrData ) || ! is_array ( $arrData )) {
			return false;
		}
		
		foreach ( $GLOBALS ['RESULT'] as $res ) {
			if (! empty ( $arrData ['uiData'] [$res] ['item'] ) && is_array ( $arrData ['uiData'] [$res] ['item'] )) {
				foreach ( $arrData ['uiData'] [$res] ['item'] as $index => &$item ) {
					$this->FlagForBaiduDomain ( $item );
					$this->removeSegWordFlagFromTitle ( $item );
				}
				unset ( $item );
			}
		}
		return true;
	}
	/**
	 * 对结果中offsetinfo->title的分词标签‘’去掉，给Fe用
	 *
	 * @param unknown $arrItem        	
	 */
	public function removeSegWordFlagFromTitle(&$arrItem) {
		if (empty ( $arrItem ) || ! is_array ( $arrItem )) {
			return;
		}
		
		$arrItem ['offsetInfo']['view'] ['title'] = preg_replace ( '/[\x01\x02\x03\x04\x05]/', '', $arrItem ['offsetInfo'] ['title'] );
	}
	/**
	 * 对as结果中offsetinfo->url中域名为baidu.com的结果打标记，给Fe用
	 *
	 * @param unknown $arrItem        	
	 */
	public function FlagForBaiduDomain(&$arrItem) {
		if (empty ( $arrItem ) || ! is_array ( $arrItem )) {
			return;
		}
		
		if ($arrItem ['source'] != SRC_AS) {
			return;
		}
		// 需要覆盖的域名，暂时看不需要配置
		$arrHosts = array (
				'.baidu.com' 
		);
		
		$strHost = parse_url ( $arrItem ['offsetInfo'] ['url'], PHP_URL_HOST );
		foreach ( $arrHosts as $str ) {
			$intPos_real = strpos ( $strHost, $str );
			$intPos = strlen ( $strHost ) - strlen ( $str );
			if ($intPos_real === $intPos) {
				$arrItem ['offsetInfo']['view'] ['baidudomain'] = 1;
				return;
			}
		}
	}
}
