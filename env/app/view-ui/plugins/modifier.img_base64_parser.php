<?php
/**
 * img base64 通过src获取图片id
 *
 * @package plugins
 * @author lizhouquan@baidu.com
 */

/**
 *
 * @param $strImgSrc unknown_type       	
 * @return string "data-b64-id"
 *        
 */
function smarty_modifier_img_base64_parser($strImgSrc) {
	if (empty ( $strImgSrc )) {
		return '';
	}
	$arrQueryInfo = CSmarty::getQueryInfo ();
	
	if (! isset ( $arrQueryInfo ['base64'] ) || $arrQueryInfo ['base64'] !== 'on') {
		return '';
	}

	if (! isset ( $arrQueryInfo ['base64_left_exp'] ) || $arrQueryInfo ['base64_left_exp'] !== 'on') {
		return '';
	}
	
	if ( isset ( $arrQueryInfo ['base64_img_sids_left'] ) && !empty ( $arrQueryInfo ['base64_img_sids_left'] [$strImgSrc] )) {
		return $arrQueryInfo ['base64_img_sids_left'] [$strImgSrc];
		CLog::debug ( "get img base64 src id OK" );
	}else if ( isset ( $arrQueryInfo ['base64_img_sids'] ) && !empty ( $arrQueryInfo ['base64_img_sids'] [$strImgSrc] )) {
		return $arrQueryInfo ['base64_img_sids'] [$strImgSrc];
		CLog::debug ( "get img base64 src id OK" );   
	}
	return '';
}
