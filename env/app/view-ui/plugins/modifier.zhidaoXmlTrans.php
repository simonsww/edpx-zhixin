<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file modifier.zhidaoXmlTrans.php
 * @package plugins
 * @author liyudong@baidu.com
 * @date 2011-11-03 10:47
 */

function smarty_modifier_zhidaoXmlTrans()
{
    $logArr['smarty_modifier'] = "modifier_zhidaoXmlTrans";
    /**
     * hilight info
     * @var array
     */
    $hilight_info = CSmarty::getHilightInfo();

    $hi_word = $hilight_info['hilightInfo']['hi_word'];
    $hi_off = $hilight_info['hilightInfo']['hi_off'];
    $hi_num = $hilight_info['hilightInfo']['hi_num'];
    $status = 0;
	if(isset($hi_off[0])){
		$hi_off[0] = 0;
	}
    
    $result = hilight_zhidaoXmlTrans($hi_word, $hi_off, $hi_num);
    if( false == $result ) {
        $status = -1;
        CLog::warning("fail to call hilight_zhidaoXmlTrans", $status, $logArr, 1);
        return false;
    }
    CLog::debug("success to call zhidaoXmlTrans modifier", $status, $logArr, 1);
    return $result;
}



/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
