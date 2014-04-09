<?php
/**
 * 
 * @desc BWS重查时，根据返回码做不同的重查策略
 * @author chenhuailiang@baidu.com
 *
 */
class RequeryStrategy extends Strategy {
	
	// int32_t retryCode; //在uiControl数组下新增字段retryCode，表示bws重查时传递的错误码。
	public function run(&$arrData, $arrConf) {
		if (empty ( $arrData ) || ! is_array ( $arrData )) {
			return false;
		}
		$arrRequeryConfs = Util::getConf ( '/requery', 'REQUERY_STRATEGY' );
		if (! is_array ( $arrRequeryConfs ) || empty ( $arrRequeryConfs )) {
			return false;
		}
		// 超时重查处理策略，根据返回码做不同的处理，1表示超时重查
		if (isset ( $arrData ['uiControl'] ['retryCode'] ) && intval ( $arrRequeryConfs ['timeout_code'] ) == intval ( $arrData ['uiControl'] ['retryCode'] )) {
			$strForLog = '';
			$arrTimeoutRequery = $arrRequeryConfs ['TIMEOUT_REQUERY'];
			if (! is_array ( $arrTimeoutRequery ) || (empty ( $arrTimeoutRequery ['del_result'] ) && (empty ( $arrTimeoutRequery ['result'] ) || empty ( $arrTimeoutRequery ['come_from'] ) || empty ( $arrTimeoutRequery ['count'] )))) {
				return false;
			}
			$arrDelResult = isset ( $arrTimeoutRequery ['del_result'] ) ? explode ( ',', $arrTimeoutRequery ['del_result'] ) : array ();
			$arrResult = isset ( $arrTimeoutRequery ['result'] ) ? explode ( ',', $arrTimeoutRequery ['result'] ) : array ();
			$arrComeFrom = isset ( $arrTimeoutRequery ['come_from'] ) ? explode ( ',', $arrTimeoutRequery ['come_from'] ) : array ();
			
			// 删除队列，待打印日志
			if (is_array ( $arrDelResult ) && ! empty ( $arrDelResult )) {
				$arrDelResult = array_flip ( $arrDelResult );
				foreach ( $GLOBALS ['RESULT'] as $res ) {
					if (isset ( $arrDelResult [$res] ) && is_array ( $arrData ['uiData'] [$res] ) && ! empty ( $arrData ['uiData'] [$res] )) {
						unset ( $arrData ['uiData'] [$res] );
						$strForLog .= $res . ',';
					}
				}
			}
			
			// 根据来源删除单条结果，待打印日志
			$intDefaultCount = 20;
			$strForLogSingle = '';
			$intCount = isset ( $arrTimeoutRequery ['count'] ) ? intval ( $arrTimeoutRequery ['count'] ) : $intDefaultCount;
			$intCurCount = 0;
			if (is_array ( $arrResult ) && ! empty ( $arrResult ) && is_array ( $arrComeFrom ) && ! empty ( $arrComeFrom )) {
				$arrResult = array_flip ( $arrResult );
				$arrComeFrom = array_flip ( $arrComeFrom );
				foreach ( $GLOBALS ['RESULT'] as $res ) {
					if (isset ( $arrResult [$res] ) && is_array ( $arrData ['uiData'] [$res] ['item'] ) && ! empty ( $arrData ['uiData'] [$res] ['item'] )) {
						// 处理每条结果
						$intCurCount = 0;
						$arrTempItem = array ();
						foreach ( $arrData ['uiData'] [$res] ['item'] as $intIndex => $arrItem ) {
							if ($intCurCount >= $intCount) {
								break;
							}
							if (! isset ( $arrComeFrom [$arrItem ['comeFrome']] )) {
								$arrTempItem [$intIndex] = $arrItem;
								$intCurCount ++;
								// unset ( $arrData ['uiData'] [$res] ['item']
							// [$intIndex] );
							}
						}
						$arrData ['uiData'] [$res] ['item'] = $arrTempItem;
						unset ( $arrTempItem );
						if (empty ( $strForLogSingle )) {
							$strForLogSingle = 'single';
						}
					}
				}
			}
			$GLOBALS ['logArr'] ['timeout_requery'] = $strForLog . $strForLogSingle;
		}
		return true;
	}
}