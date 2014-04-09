<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file modifier.url_limit.php
 * @package plugins
 * @author liyudong@baidu.com
 * @date 2011-11-03 10:40
 */


function smarty_modifier_url_limit($string, $length, $escaped=false)
{
    $logArr['smarty_modifier'] = "modifier_url_limit";
    $status = 0;
    $logArr['url'] = $string;
    $logArr['limit_len'] = $length;
    $logArr['escaped'] = $escaped;

    if( strlen($string) == 0 ) {
        $result = $string;
        return $result;
    }

    $result = trim(hilight_url_limit($string, $length, $escaped));
    $resultTmp = explode(" " ,$result);
    $result = implode("", $resultTmp);

    if( false === $result ) {
        $result = $string;
        $status = -1;
        $logArr['result'] = $result;
        CLog::warning("fail to call hilight_url_limit", $status, $logArr, 1);
        return $string;
    }
    $logArr['result'] = $result;
    CLog::debug("success to call url_limit", $status, $logArr, 1);
    return $result;
}













/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
