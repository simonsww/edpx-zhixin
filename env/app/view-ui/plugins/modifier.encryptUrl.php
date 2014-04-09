<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file modifier.encryptUrl.php
 * @package plugins
 * @author fengfei02@baidu.com
 * @date 2012-08-30 01:40
 */
function smarty_modifier_encryptUrl($url, $maxRandomStrLen='', $encKeyStr='')
{
    
    $URLEncryption = CSmarty::getURLEncryption();
    if( 0 === intval ( $URLEncryption ) ){
    	return $url;
    }
    
    $result = encryptUrl($url, $maxRandomStrLen, $encKeyStr);
    if(false == $result){
    	$result = '';
    }
    
    return $result;
}














/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
