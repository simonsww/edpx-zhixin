<?php

function smarty_modifier_imageUrlDi($url)
{
	if(empty($url)) return '';
	$url = str_replace('&amp;','&',$url);
	$key = 'wisetimgkey';
	$sec = time();
	$di = md5(sprintf("%s%u%s", $key, $sec, $url));
	return 'sec='.$sec.'&amp;di='.$di.'&amp;src='.urlencode($url);
}

/* vim: set expandtab: */

?>
