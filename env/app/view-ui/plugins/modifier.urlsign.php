<?php
/***************************************************************************
 * 
 * Copyright (c) 2014 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file modifier.urlsign.php
 * @author search(com@baidu.com)
 * @date 2014/02/18 18:53:32
 * @brief 
 *  
 **/

function smarty_modifier_urlsign($uri){
    $logArr['smarty_modifier'] = "modifier_urlsign"; 
    $status = 0;
    $logArr['uri'] = $string;
    if( strlen($uri) == 0 ) {
        $status = -1;
        CLog::warning("uri is empty", $status, $logArr, 1);
        return $uri;
    }
    $result = hilight_url_sign($uri);
    if( false === $result ) {
        $status = -1;
        CLog::warning("fail to call url_sign_64", $status, $logArr, 1);
        return $uri;
    }
    // result[0] : 站点签名
    // result[1] : url签名
    return $result[1];
}






/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
