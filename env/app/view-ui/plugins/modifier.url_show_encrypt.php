<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/
/**
 * 为了百科、知道结果的showUrl直接展示加密串
 * @author jiachunxin
 * @param unknown_type $string
 * @return unknown
 */
function smarty_modifier_url_show_encrypt($strShowUrl, $strEncrypt)
{
	//return $strShowUrl;
	$strShowUrl = trim($strShowUrl);
	$strEncrypt = trim($strEncrypt);
	$strQuery = parse_url($strEncrypt, PHP_URL_QUERY);
	parse_str($strQuery, $arrUrls);
	$strEncrypt = $arrUrls['url'];
	if(empty($strShowUrl) || empty($strEncrypt) ){
		return $strShowUrl;
	}
	// 暫時寫在代碼中
	$arrBaikeHostList=array('baike.baidu.com/subview',
		'baike.baidu.com/view',
		'http://baike.baidu.com/subview',
		'http://baike.baidu.com/view'
	);

	$arrZhidaoHostList=array('zhidao.baidu.com/question',
		'zhidao.baidu.com/browse',
		'http://zhidao.baidu.com/question',
		'http://zhidao.baidu.com/browse'
	);

	$arrWenkuHostList=array('wenku.baidu.com/view',
			'http://wenku.baidu.com/view',
	);

	preg_match_all("/\\x04([^\\x05]*)\\x05/", $strShowUrl ,$blodWord);
	$strShowUrl = str_replace(array("\x04", "\x05"),"", $strShowUrl);
        
	foreach ($arrBaikeHostList as $v){
		$intPos = strpos($strShowUrl, $v);
		if($intPos === 0){
			return str_replace($blodWord[1], $blodWord[0], 'baike.baidu.com/link?url='.$strEncrypt); 
		}
	}

	foreach ($arrZhidaoHostList as $v){
		$intPos = strpos($strShowUrl, $v);
		if($intPos === 0){
			return str_replace($blodWord[1], $blodWord[0], 'zhidao.baidu.com/link?url='.$strEncrypt);				                
		}
	}
	
	foreach ($arrWenkuHostList as $v){
		$intPos = strpos($strShowUrl, $v);
		if($intPos === 0){
			return str_replace($blodWord[1], $blodWord[0], 'wenku.baidu.com/link?url='.$strEncrypt);
		}
	}
	
    return str_replace($blodWord[1], $blodWord[0], $strShowUrl);        
}

