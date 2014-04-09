<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file modifier.real.php
 * @package plugins
 * @author liyudong@baidu.com
 * @date 2011-11-03 10:47
 */

function smarty_modifier_real($string)
{
    $logArr['smarty_modifier'] = "modifier_real";
    $status = 0;
    $logArr['string'] = $string;

    if( strlen($string) == 0 ) {
        $result = $string;
        return $result;
    }


    $result = hilight_real($string);
    if( false == $result ) {
        $result = $string;
        $status = -1;
        $logArr['result'] = $result;
        CLog::warning("fail to call hilight_real", $status, $logArr, 1);
        return $string;
    }
    $logArr['result'] = $result;
    CLog::debug("success to call real modifier", $status, $logArr, 1);
    return $result;
}




/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
