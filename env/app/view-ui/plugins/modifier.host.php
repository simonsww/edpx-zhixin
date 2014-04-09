<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file modifier.host.php
 * @package plugins
 * @author liyudong@baidu.com
 * @date 2011-11-03 10:47
 */

function smarty_modifier_host($string)
{
    /*
    $status = 0;
    $logArr['url'] = $string;
   
    $url = parse_url($string);
    $result = $url['host'];
    if( empty($result) ) {
        $length = strlen($string);
        $i = strpos($string, ':');
        $j = strpos($string, '/');
        if( $i > 0 && $j > 0 ) {
            $length = $i > $j ? $j : $i;
        }elseif($i > 0) {
            $length = $i;
        }elseif($j > 0) {
            $length = $j;
        }   
        $result = substr($string, 0, $length);
    }
    
    $logArr['result'] = $result;
    CLog::debug("success to call host", $status, $logArr, 1);
    return $result;
    */
    $logArr['smarty_modifier'] = "modifier_host";
    $status = 0;
    $logArr['url'] = $string;
   
    $host = $string;
    if( strncasecmp($host, "http://", 7) == 0 ) {
        $host = substr($host, 7);
    }
    $pos1 = strpos($host, '/');
    $pos2 = strpos($host, ':');
    $pos = ($pos1 === false) || ($pos2 !== false && $pos2 < $pos1) ? $pos2 : $pos1;
    if( $pos === false ) {
        $result = $host; 
    }else {
        $result = substr($host, 0, $pos);
    }
    $logArr['result'] = $result;
    CLog::debug("success to call host", $status, $logArr, 1);
    return $result;

}


/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
