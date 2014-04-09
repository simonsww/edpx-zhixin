<?php
/**
 * img base64 通过src获取图片id
 *
 * @package plugins
 * @author chenhuailiang@baidu.com
 */

/**
 *
 * @param $strImgSrc unknown_type       	
 * @return boolean unknown data-src={%$ls.src%} data-b64-id={%$ls.imgkey%}>
 *         <img src={%$ls.src%}>
 *        
 */
function smarty_modifier_img_base64_render($strImgSrc) {
	if (empty ( $strImgSrc )) {
		CLog::warning ( "fail to get img base64 src id, src null" );
		return false;
	}
	$arrQueryInfo = CSmarty::getQueryInfo ();
	$strPage = "";
	
	if (! isset ( $arrQueryInfo ['base64'] ) || $arrQueryInfo ['base64'] !== 'on') {
		$strPage = 'src="' . $strImgSrc . '"';
		return $strPage;
	}
	
	if (! isset ( $arrQueryInfo ['base64_sids_for_plugin'] ) || empty ( $arrQueryInfo ['base64_sids_for_plugin'] [$strImgSrc] )) {
		$strPage = 'src="' . $strImgSrc . '"';
		return $strPage;
	} else {
		$strPage = 'data-src="' . $strImgSrc . '" ' . 'data-b64-id="' . $arrQueryInfo ['base64_sids_for_plugin'] [$strImgSrc] . '"';
		CLog::debug ( "get img base64 src id OK" );
		return $strPage;
	}
}
