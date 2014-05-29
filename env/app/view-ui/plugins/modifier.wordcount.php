<?php
/**
 * Smarty plugin
 * @package Smarty
 * @subpackage plugins
 */


function smarty_modifier_wordcount($str,$encoding = 'UTF-8')
{
    if(strtolower($encoding) == 'gbk') {

        $encoding = 'gb18030';
    }
    
	if(!is_string($str)||$str === '') return false;
    $mbLen = iconv_strlen($str, $encoding);
    $subLen = 0;
    for ($i = 0; $i < $mbLen; $i++) {
    	$mbChr = iconv_substr($str, $i, 1, $encoding);
    	if (1 == strlen($mbChr)) {
    		$subLen += 1;
    	} else {
    		$subLen += 2;
    	}
    }
    return $subLen;
}

?>
