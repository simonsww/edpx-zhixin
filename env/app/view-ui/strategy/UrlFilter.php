<?php
/**
 * 
 * @desc 按配置文件中的资源进行url去重过滤
 * @author chenhuailiang@baidu.com
 *
 */
class UrlFilter extends Strategy {
	
	public function run(&$arrData, $arrConf) {
		if (empty ( $arrData ) || ! is_array ( $arrData )) {
			return false;
		}
		$arrFilterConfs = Util::getConf ( '/url_filter', 'URL_FILTER' );
		if (! is_array ( $arrFilterConfs ) || empty ( $arrFilterConfs )) {
			return false;
		}
		
		$arrResultUrls = array ();
		// 查找对应资源
		foreach ( $GLOBALS ['RESULT'] as $res ) {
			if (isset ( $arrFilterConfs [$res] ) && ! empty ( $arrFilterConfs [$res] ['src_ids'] )) {
				$arrFilterConfs [$res] ['src_ids'] = explode ( ',', $arrFilterConfs [$res] ['src_ids'] );
				$arrFilterConfs [$res] ['src_ids'] = array_flip ( $arrFilterConfs [$res] ['src_ids'] );
				foreach ( $arrData ['uiData'] [$res] ['item'] as $intIndex => $arrItem ) {
					if (isset ( $arrFilterConfs [$res] ['src_ids'] [$arrItem ['dispData'] ['StdStg']] )) {
						$arrResultUrls [trim ( $arrItem ['itemUrl'] )] = trim ( $arrItem ['itemUrl'] );
					}
				}
			}
		}
		
		// 对AS结果url去重
		$strResult = 'asResult';
		$intTotalCount = isset ( $arrFilterConfs ['count'] ) ? intval ( $arrFilterConfs ['count'] ) : 0;
		$intCurCount = 0;
		$intAs = 0;
		$intSp = 0;
		$strForLog = '';
		if (! empty ( $arrResultUrls ) && is_array ( $arrData ['uiData'] [$strResult] ['item'] ) && ! empty ( $arrData ['uiData'] [$strResult] ['item'] )) {
			foreach ( $arrData ['uiData'] [$strResult] ['item'] as $intIndex => $arrItem ) {
				if ($intTotalCount > 0 && $intCurCount >= $intTotalCount) {
					break;
				}
				if (isset ( $arrResultUrls [trim ( $arrItem ['offsetInfo'] ['url'] )] )) {
					if ($arrItem ['comeFrome'] == 'AS') {
						$intAs ++;
					} else if ($arrItem ['comeFrome'] == 'SP') {
						$intSp ++;
					}
					$intCurCount ++;
					unset ( $arrData ['uiData'] [$strResult] ['item'] [$intIndex] );
					$strForLog = 'url_filter_asResult';
				}
			}
		}
		$arrData ['uiData'] [$strResult] ['asResultNum'] = intval ( $arrData ['uiData'] [$strResult] ['asResultNum'] ) - $intAs;
		$arrData ['uiData'] [$strResult] ['spResutlNum'] = intval ( $arrData ['uiData'] [$strResult] ['spResutlNum'] ) - $intSp;
		if (! empty ( $strForLog )) {
			$GLOBALS ['logArr'] ['url_filter'] = $strForLog;
		}
		return true;
	}
}