<?php
/**
 * 为wise生成特殊的url标记
 * @param unknown_type $url
 * @return string
 */
function smarty_modifier_wiseUrlDi($url){
	if(empty($url)) return '';
	$url = str_replace('&amp;','&',$url);
	$key = 'wisetimgkey';
	$sec = Volatile::time();
	$di = md5(sprintf("%s%u%s", $key, $sec, $url));
	return 'sec='.$sec.'&amp;di='.$di.'&amp;src='.urlencode($url);
}
