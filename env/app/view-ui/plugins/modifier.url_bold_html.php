<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file modifier.url_bold_html.php
 * @package plugins
 * @author liyudong@baidu.com
 * @date 2011-11-03 10:40
 */


function smarty_modifier_url_bold_html($string)
{
    $logArr['smarty_modifier'] = "modifier_url_bold_html";
    $status = 0;
    $logArr['string'] = $string;

    if( strlen($string) == 0 ) {
        $result = $string;
        return $result;
    }

    $prefix =  $GLOBALS['DISPLAY']['BOLD_PREFIX'];
    $suffix = $GLOBALS['DISPLAY']['BOLD_SUFFIX'];

    $logArr['prefix'] = $prefix;
    $logArr['suffix'] = $suffix;

    $result = hilight_url_bold_html($string, $prefix, $suffix);
    if( false === $result ) {
        $result = $string;
        $status = -1;
        $logArr['result'] = $result;
        CLog::warning("fail to call hilight_url_bold_html", $status, $logArr, 1);
        return $result;
    }
    $logArr['result'] = $result;
    CLog::debug("success to call url_bold_html modifier", $status, $logArr, 1);
    return $result;
}









/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
