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
function smarty_modifier_wordtranscode($str, $inpuencoding = 'GBK', $outpuEncoding='UTF-8')
{
    if( strtolower($inpuencoding) == 'gbk') {
        
        $inpuencoding = 'gb18030';
    }

    if( strtolower($outpuEncoding) == 'gbk') {

        $outpuEncoding = 'gb18030';
    }
    
    return iconv($inpuencoding, $outpuEncoding, $str);
}

/* vim: set expandtab: */

?>
