<?php
/**
 * 
 * 解析url、cookie中的參數
 * @author jiachunxin
 *
 */

class ParamParser {
	/**
	 * 变脸项目-根据浏览器是否开启了js来展现不同的页面
	 * @return boolean
	 */
	public static function parseNojs(&$arrData) {
		$arrData['uiData']['queryInfo']['noscript'] = intval($_GET['nojs']);
		$arrData['uiData']['queryInfo']['cookieNoscript'] = intval($_COOKIE['NOJS']);
		
		if($arrData['uiData']['queryInfo']['noscript']==1&&$arrData['uiData']['queryInfo']['cookieNoscript']!=1)
		{
			Cookie::setCookie('NOJS', '1');
		}
	}
	
}
