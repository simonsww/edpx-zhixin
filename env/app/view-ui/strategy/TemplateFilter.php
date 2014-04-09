<?php
/**
 * 
 * @desc 模板过滤，在配置中的模板对应的单条结果会被删除，不渲染展现
 * @author chenhuailiang@baidu.com
 *
 */
class TemplateFilter extends Strategy {
	
	public function run(&$arrData, $arrConf) {
		if (empty ( $arrData ) || ! is_array ( $arrData )) {
			return false;
		}
		$arrFilterConfs = Util::getConf ( '/tpl_filter', 'TEMPLATE_FILTER' );
		if (! is_array ( $arrFilterConfs ) || empty ( $arrFilterConfs ) || empty ( $arrFilterConfs ['result'] ) || empty ( $arrFilterConfs ['template_name'] )) {
			return false;
		}
		$arrResult = explode ( ',', $arrFilterConfs ['result'] );
		$arrResult = array_flip ( $arrResult );
		$arrTplNames = explode ( ',', $arrFilterConfs ['template_name'] );
		$arrTplNames = array_flip ( $arrTplNames );
		$intTotalCount = isset ( $arrFilterConfs ['count'] ) ? intval ( $arrFilterConfs ['count'] ) : 0;
		$intCurCount = 0;
		$bolFlag = false;
		
		// 过滤模板对应的单条结果
		$arrForLog = array ();
		foreach ( $GLOBALS ['RESULT'] as $res ) {
			if (isset ( $arrResult [$res] ) && is_array ( $arrData ['uiData'] [$res] ['item'] ) && ! empty ( $arrData ['uiData'] [$res] ['item'] )) {
				// 处理每条结果
				foreach ( $arrData ['uiData'] [$res] ['item'] as $intIndex => $arrItem ) {
					if ($intTotalCount > 0 && $intCurCount >= $intTotalCount) {
						$bolFlag = true;
						break;
					}
					if (isset ( $arrTplNames [$arrItem ['dispData'] ['strategy'] ['tempName']] )) {
						// 待补充日志
						unset ( $arrData ['uiData'] [$res] ['item'] [$intIndex] );
						$intCurCount ++;
						$strTemp = $arrItem ['dispData'] ['strategy'] ['tempName'];
						$arrForLog [$strTemp] = $strTemp;
						unset ( $strTemp );
					}
				}
			}
			if ($bolFlag === true) {
				break;
			}
		}
		if (! empty ( $arrForLog )) {
			$GLOBALS ['logArr'] ['template_filter'] = implode ( ',', $arrForLog );
		}
		return true;
	}
}