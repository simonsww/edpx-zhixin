<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file modifier.encodeURI.php
 * @package plugins
 * @author liyudong@baidu.com
 * @date 2011-11-03 10:50
 */

function smarty_modifier_encodeURI($uri)
{
    $logArr['smarty_modifier'] = "modifier_encodeURI"; 
    $status = 0;
    $logArr['uri'] = $string;
    
    if( strlen($uri) == 0 ) {
        $status = -1;
        CLog::warning("uri is empty", $status, $logArr, 1);
        return $uri;
    }

    $result = hilight_encodeURI($uri);
    if( false === $result ) {
        $status = -1;
        CLog::warning("fail to call hilight_encodeURI", $status, $logArr, 1);
        return $uri;
    }
    return $result;
}

/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
