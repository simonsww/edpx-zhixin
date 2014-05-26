<?php
/**
 * Smarty plugin
 * @package Smarty
 * @subpackage plugins
 */


/**
 * Smarty wordtruncate modifier plugin
 *
 * Type:     modifier<br>
 * Name:     wordtruncate<br>
 * Date:     
 * Purpose:  truncate a word
 * Input:    string to truncate
 * Example:  {$var|wordtruncate:"4":"UTF-8":"..."}
 * @version 1.0
 * @param string
 * @param string
 * @return string
 */
function smarty_modifier_wordtruncate($str, $length = 0, $encoding = 'UTF-8', $endMark = '..', $rawStartLabel = '\2', $rawEndLabel = '\3', $outStartLabel = '<em>', $outEndLabel = '</em>',$outpuEncoding='UTF-8')
{
    return Wise_Utils::wordEmTruncate($str, $length, $encoding, $endMark, $rawStartLabel, $rawEndLabel, $outStartLabel, $outEndLabel, $outpuEncoding);
}

/* vim: set expandtab: */

?>
