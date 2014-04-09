<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file modifier.firstpart.php
 * @package plugins
 * @author liyudong@baidu.com
 * @date 2011-11-03 10:49
 */

function smarty_modifier_firstpart($string, $part)
{
    $logArr['smarty_modifier'] = "modifier_firstpart";
    $status = 0;
    $logArr['string'] = $string;
    $logArr['part'] = $part;

    $pos = strrpos($string, $part);
    $string_size = strlen($string);
    $part_size = strlen($part);

    $result = $string;
    if( $pos !== false && $string_size === $part_size + $pos ) {
        $result = substr($string, 0, $string_size-$part_size); 
    }
    $logArr['result'] = $result;
    CLog::debug("success to call firstpart", $status, $logArr, 1);
    return $result;
}













/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
