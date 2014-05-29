<?php
/**
 * Smarty plugin
 * @package Smarty
 * @subpackage plugins
 */


/**
 * Smarty get domain modifier plugin
 *
 * Type:     modifier<br>
 * Name:     get_domain<br>
 * Date:     
 * Purpose:  truncate a word
 * Input:    string to truncate
 * Example:  {$var|get_domain}
 * @version 1.0
 * @param string
 * @param string
 * @return string
 */
function smarty_modifier_get_domain($url)
{
//	$info = parse_url($url);
//    if(!empty($info['host']))
//    	return $info['host'].(!empty($info['port'])?':'.$info['port']:'');
//    return $url;
	if(preg_match('/^(?:\w+\:\/\/|)([^\/]+)/',trim($url),$matches)){
		return $matches[1];
	}
	return trim($url);
}

/* vim: set expandtab: */

?>
