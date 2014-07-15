<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 *
 ******************************************************************************/



/**
 *
 *
 * @file modifier.limitlen.php
 * @package plugins
 * @author liyudong@baidu.com
 * @date 2011-11-03 10:51
 */

function smarty_modifier_limitlen($string, $length)
{
    $logArr['smarty_modifier'] = "modifier_limitlen";
    $status = 0;
    $logArr['string'] = urlencode( $string );
    $logArr['length'] = $length;

    if( strlen($string) == 0 ) {
        $result = $string;
        return $result;
    }

    // BY pengxing
    // 复写limitlen的逻辑
    /*
    if (strlen($string) > $length) {
        if(function_exists('mb_substr')) {
            $result = mb_substr($string, 0, intval($length/3) - 3) . '...';
        } else {
            $result = substr($string, 0, $length - 3) . '...';
        }
        if(!$result) {
            return $result;
        }
    } else {
        $result = $string;
    }
    */

    // BY lizhifeng
    // 跟原逻辑差太远了。。完全没意义。。果断再次复写limitlen的逻辑
    if (function_exists('mb_strcut') && function_exists('mb_strwidth')) { // mb_strlen // mb_substr
        $strwidth = mb_strwidth($string, 'UTF-8');
        if ($strwidth > $length) {
            $length = $length - 2; // not 3 !!!
            $result = '';
            // FIXME 直接用最笨、最原始、最木有效率但是又最简单的方法暴力hack出最终结果。。。
            for ($i = $length; mb_strwidth($result, 'UTF-8') <= $length; $i++) {
                $result = mb_strcut($string, 0, $i, 'UTF-8');
            }
            for (            ; mb_strwidth($result, 'UTF-8') >  $length; $i--) {
                $result = mb_strcut($string, 0, $i, 'UTF-8');
            }
            $result .= '...';
        }
        else {
            $result = $string;
        }
    }
    else { // should throw error?
        if (strlen($string) > $length) {
            $result = substr($string, 0, $length - 3) . '...';
        }
        else {
            $result = $string;
        }
    }

    return $result;

    /*
    $result = hilight_limitlen($string, $length);
    if( false === $result ) {
        $result = $string;
        $status = -1;
        $logArr['result'] = $result;
        CLog::warning("fail to call limitlen", $status, $logArr, 1);
        return $result;
    }
    $logArr['result'] = $result;
    CLog::debug("success to call limitlen", $status, $logArr, 1);
    return $result;
     */
}













/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
