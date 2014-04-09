<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file modifier.endwith.php
 * @package plugins
 * @author liyudong@baidu.com
 * @date 2011-11-03 10:49
 */

function smarty_modifier_endwith($string, $part)
{
    $logArr['smarty_modifier'] = "modifier_endwith";
    $status = 0;
    $logArr['string'] = $string;
    $logArr['part'] = $part;

    if( strlen($part) == 0 ) {
        $result = 1;
    }elseif( strlen($string) == 0 ) {
        $result = 0;
    }else {
        $pos = strrpos($string, $part);
        $string_size = strlen($string);
        $part_size = strlen($part);

        $result = 0;
        if( $pos !== false && $string_size === $part_size + $pos ) {
            $result = 1;
        }
    }
    $logArr['result'] = $result;
    CLog::debug("success to call endwith", $status, $logArr, 1);
    return $result;
}













/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
