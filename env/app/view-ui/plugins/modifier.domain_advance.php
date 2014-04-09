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
 * @author lanrui@baidu.com
 * @date 2013-1-16 11:40
 */

function smarty_modifier_domain_advance($string, $encodeURI=false)
{
    $logArr['smarty_modifier'] = "modifier_domain_advance";
    $status = 0;
    $logArr['url'] = $string;
    $string = trim($string);
	if( strlen($string) == 0 ) {
        CLog::warning("domain string is empty", $status, $logArr, 1);
        return $string;
    }
    
    $flag = 0;
    $domain = "";
    $domain2 = "";
    $prefix = "";
    if( strncasecmp($string, "http://", 7) == 0 ) {
    	$domain = substr($string, 7);
    	$prefix = "http://";
        $flag = 1;
    }elseif( strncasecmp($string, "https://", 8) == 0 ){
    	$domain = substr($string, 8);
    	$prefix = "https://";
    	$flag = 1;
    }elseif( strncasecmp($string, "ftp://", 6) == 0 ){
    	$domain = substr($string, 6);
    	$prefix = "ftp://";
    	$flag = 1;
    }elseif( strncasecmp($string, "url:", 4) == 0 ) {
        //$pos = strspn($string, " ", 4);
        //$domain = substr($string, 4+$pos);
        $domain = trim(substr($string,4));
        if( strncasecmp($domain, "http://", 7) == 0 ) {
        	$domain2 = substr($domain, 7);
        	$prefix = "http://";
            $flag = 2;
        }elseif( strncasecmp($domain, "https://", 8) == 0 ) {
        	$domain2 = substr($domain, 8);
        	$prefix = "https://";
            $flag = 2;
        }elseif( strncasecmp($domain, "ftp://", 6) == 0 ) {
        	$domain2 = substr($domain, 6);
        	$prefix = "ftp://";
            $flag = 2;
        }
    }
    
    if( $encodeURI ) {
    	if( $flag === 1 ){
    		$result = hilight_encodeURI($domain);
    	}elseif( $flag === 2 ){
    		$result = hilight_encodeURI($domain2);
    	}       
        $logArr['result'] = $result;
        if( false === $result ) {
            $status = -1;
            CLog::warning("fail to call hilight_encodeURI", $status, $logArr, 1);
            if( $flag == 1 ){
            	$result=$domain;
            }elseif( $flag == 2){
            	$result=$domain2;
            }else{
            	$result=$domain;
            }      
        }

        if( $flag !== 0 ){
        	$result = $prefix.$result;
        }
    }else {
   		if( $flag === 1 ){
    		$result = $string;
    	}elseif( $flag === 2 ){
    		$result = $domain;
    	}else{
    		$result = $string;
    	}
    }
    
    if( $flag === 0 ){
        $result = "http://".$string;
//        if(strstr($string,'://') !== false){
//            $result = $string;
//        }else{
//            $result = "http://".$string;
//        }
    }

    $logArr['result'] = $result;
    //CLog::warning("call domain_advance", $status, $logArr, 1);
    return $result;
}


/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
