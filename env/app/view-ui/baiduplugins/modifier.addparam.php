<?php
/**
 * Smarty plugin
 * @package Smarty
 * @subpackage plugins
 */


/**
 * Smarty addparam modifier plugin
 *
 * Type:     modifier<br>
 * Name:     addparam<br>
 * Date:     
 * Purpose:  add a param
 * Input:    url
 * Example:  {$var|addparam:"name":"ximi"}
 * @version 1.0
 * @param string
 * @param string
 * @return string
 */
function smarty_modifier_addparam($url,$key='',$value='',$transfer=true,$all=0)
{
    return Wise_Utils::addUrlParam($url,$key,$value,$transfer,$all);
}

/* vim: set expandtab: */

?>
