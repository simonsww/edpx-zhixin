<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 *
 ******************************************************************************/



/**
 *
 *
 * @file modifier.ssl_url_r.php
 * @package plugins
 * @author liyudong@baidu.com
 * @date 2011-11-03 10:51
 */

function smarty_modifier_ssl_url_r($string, $length)
{
    $logArr['smarty_modifier'] = "modifier_ssl_url_r";
    $status = 0;
    $logArr['string'] = urlencode( $string );
    $logArr['length'] = $length;

    return $string;
}













/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
