<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file modifier.format_int.php
 * @package plugins
 * @author liyudong@baidu.com
 * @date 2011-11-03 10:47
 */

function smarty_modifier_format_int($number)
{
    
    $logArr['smarty_modifier'] = "modifier_format_int";
    $status = 0;
    $number = sprintf("%F", $number);
    $logArr['number'] = $number;
    $size = strlen($number);
    for( $i = $size-1, $j = 1; $i >= 0; $i--, $j++ ) {
        $word = substr($number, $i, 1);
        if( $word === "." ) {
            $result = "";
            $j = 0;
            continue;
        }
        if( $i < 3 ) {
            $result = $word . $result;
        }else {
            $result = "0" . $result;
        }
        if( $j%3 == 0 && $i != 0 ) {
            $result = "," . $result;
        }
    }
    $logArr['result'] = $result;
    CLog::debug("success to call format_int", $status, $logArr, 1);
    return $result;
}


/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
