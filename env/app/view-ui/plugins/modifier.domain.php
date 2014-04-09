<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file modifier.domain.php
 * @package plugins
 * @author liyudong@baidu.com
 * @date 2011-11-03 10:47
 */

function smarty_modifier_domain($string, $encodeURI=false)
{
    $logArr['smarty_modifier'] = "modifier_domain";
    $status = 0;
    $logArr['url'] = $string;
   
    $domain = $string;
    if( strncasecmp($domain, "http://", 7) == 0 ) {
        $domain = substr($domain, 7);
    }elseif( strncasecmp($domain, "url:", 4) == 0 ) {
        $pos = strspn($domain, " ", 4);
        $domain = substr($domain, 4+$pos);
        if( strncasecmp($domain, "http://", 7) == 0 ) {
            $domain = substr($domain, 7);
        }
    }
    if( strlen($domain) == 0 ) {
        $domain = $string;
    }
    if( $encodeURI ) {
        $result = hilight_encodeURI($domain);
        $logArr['result'] = $result;
        if( false === $result ) {
            $status = -1;
            CLog::warning("fail to call hilight_domain", $status, $logArr, 1);
            return $domain;
        }
    }else {
        $result = $domain;
    }
    return $result;
}


/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
