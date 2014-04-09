<?php
/***************************************************************************
 * 
 * Copyright (c) 2014 Baidu.com, Inc. All Rights Reserved
 * $Id$ 
 * 
 **************************************************************************/
 
 /**
 * @file modifier.sitesign.php
 * @author ³Â³¿(chenchen20@baidu.com)
 * @date 2014/04/02 14:16:35
 * @version $Revision$ 
 * @brief 
 *  
 **/

function smarty_modifier_sitesign($uri){
    $logArr['smarty_modifier'] = "modifier_sitesign"; 
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
        CLog::warning("fail to call site_sign", $status, $logArr, 1);
        return $uri;
    }
    // result[0] : Õ¾µãÇ©Ãû
    // result[1] : urlÇ©Ãû
    return $result[0];
}
 
/* vim: set ts=4 sw=4 sts=4 tw=100 */
?>
