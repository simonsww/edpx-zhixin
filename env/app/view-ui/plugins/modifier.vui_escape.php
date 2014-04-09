<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file modifier.vui_escape.php
 * @package plugins
 * @author liyudong@baidu.com
 * @date 2011-11-03 10:51
 */

function smarty_modifier_vui_escape($string, $type="html")
{
    $logArr['smarty_modifier'] = "modifier_vui_escape";
    $type = strtolower($type);
    $status = 0;
    $logArr['string'] = $string;
    $logArr['type'] = $type;

    if( strlen($string) == 0 ) {
        $result = $string;
        $status = -1;
        //CLog::warning("string is empty", $status, $logArr, 1);
        return $result;
    }
    switch( $type ) {
        case "html" :
            $type = ":h";
            break;
        case "javascript" :
            $type = ":j";
            break;
        case "url" :
            $type = ":u";
            break;
        default:
            $type = ":h";
            break;
    }
    $result = hilight_escape($string, ":[utf8]" . $type);
    if( false === $result ) {
        $result = $string;
        $status = -1;
        $logArr['result'] = $result;
        CLog::warning("fail to call vui_escape", $status, $logArr, 1);
        return $result;
    }
    $logArr['result'] = $result;
    CLog::debug("success to call vui_escape", $status, $logArr, 1);
    return $result;
}













/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
