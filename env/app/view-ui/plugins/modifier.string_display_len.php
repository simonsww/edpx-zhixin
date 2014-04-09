<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file modifier.limitlen.php
 * @package plugins
 * @author liyudong@baidu.com
 * @date 2011-11-03 10:51
 */

function smarty_modifier_string_display_len($string)
{
    $logArr['smarty_modifier'] = "modifier_string_display_len";
    $status = 0;
    $logArr['string'] = $string;

    if( strlen($string) == 0 ) {
        $result = 0;
        return $result;
    }

    $result = hilight_stringDisplayLen($string);
    $logArr['result'] = $result;
    CLog::debug("success to call limitlen", $status, $logArr, 1);
    return $result;
}













/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
