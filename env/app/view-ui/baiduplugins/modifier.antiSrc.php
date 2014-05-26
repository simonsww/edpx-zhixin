<?php
/**
 * Smarty plugin
 * @package Smarty
 * @smarty_modifier_antiSrc
 */


/**
 * @param string
 * @param string
 * @return string
 */
function smarty_modifier_antiSrc($or_url, $type)
{
	$src = urldecode($or_url);
	if(empty($src)) return '';
	$pos = strpos($src,'#');
	if($pos !== false){
		$src = substr($src,0,$pos);
	}
	$key = 'B@1duW1se';
	$sec = floor((time() % (3600*24*365*5)) / 3600);
	$di = substr(md5($key.$sec.$src), 0, 16);

	if($type == '&amp;'){ 
		return 'sec='.$sec.'&amp;di='.$di.'&amp;src='.$or_url;
	}
	if($type == '&'){ 
		return 'sec='.$sec.'&di='.$di.'&src='.$or_url;
	} 
		
}

/* vim: set expandtab: */

?>
