<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file modifier.limit_ubburl.php
 * @package plugins
 * @author fengfei02@baidu.com
 * @date 2012-11-05 10:51
 */

function smarty_modifier_limit_ubburl($string, $length, $limiturl=true)
{
	$status = -1;
    $logArr['smarty_modifier'] = "modifier_limit_ubburl";
    $logArr['string'] = urlencode( $string );
    $logArr['length'] = $length;

    if( strlen($string) == 0 ) {
        $result = $string;
        return $result;
    }
    
    $outstr = $string;
    $min_pos = PHP_INT_MAX;
    $max_pos = 0;
    $pos_hash = array();
    
    // not greedy matching
    preg_match_all ( "/\[url.*\].*\[\/url\]/U", $string, $out, PREG_PATTERN_ORDER );
    
    foreach($out[0] as $s) {
                
        $pos = strpos($outstr, $s);
                
                
        $p1 = strpos($s, ']');
    
        $p2 = strpos($s, '[/url]');
    
        $mid_str = substr( $s, $p1+1, $p2 - $p1 - 1);
                
        $url_str = substr($s, 0 , $p1 + 1);

        $pos_hash[] = array(
            'word' => $mid_str,
            'url_str' => $url_str,
            'pos' => $pos, 
        );      

        // not greedy matching
        $outstr = preg_replace("/\[url.*\].*\[\/url\]/U", $mid_str, $outstr, 1);

        $min_pos = $pos < $min_pos ? $pos : $min_pos;
        $max_pos = $pos > $max_pos ? $pos : $max_pos;   
    }
    $result = hilight_limitlen( $outstr, $length );
    if( false === $result ) {
        $result = $string;
        $logArr['result'] = $result;
        CLog::warning("fail to call limitlen", $status, $logArr, 1);
        return $result;
    }
    
    //there is no url tag
    if( empty( $pos_hash ) ) {
    	return $result;
    }
    
    //not limited
    if( substr( $result , -3 ) !== '...'){
    	return $string;
    }
    
    $result_len = strlen($result) - 3;
    
    //limited from the first url  
    if( $result_len <= $min_pos ) {
    	return $result;
    }
    
    $index = 0;
    $result_arr = array();
    foreach( $pos_hash as $key => $value ) {
	    if( $result_len <= $value['pos'] ) {
		    $result_arr[] = substr($result, $index);
		    break;
        }else if($result_len > $value['pos'] && $result_len < $value['pos'] + strlen($value['word'])) {
        	$result_arr[] = substr($result, $index, $value['pos']- $index );
		    if($limiturl === false){
                $result_arr[] = $value['url_str'];
		        $result_arr[] = $value['word'];
		        $result_arr[] = '[/url]';
            }
            $result_arr[] = '...';
			break;
        }else{
		    $result_arr[] = substr( $result, $index, $value['pos']- $index );
		    $result_arr[] = $value['url_str'];
		    $result_arr[] = $value['word'];
		    $result_arr[] = '[/url]';
		    $index = $value['pos'] + strlen( $value['word'] );
        }
    }
    if( $index >= $max_pos ){
	    $result_arr[] = substr( $result, $index );
    }
    $result = implode( '', $result_arr );
    return $result;
}













/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
