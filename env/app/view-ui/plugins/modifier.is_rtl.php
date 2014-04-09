<?php
/*******************************************************************************
 *
 * Copyright (c) 2013 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file modifier.is_rtl.php
 * @package plugins
 * @author wangpeng20@baidu.com
 * @date 2013-1-13 10:47
 */


/*
 * 
 * this function is copy from ar-php project (Identifier.php)
 * http://sourceforge.net/projects/ar-php/?source=dlp
 * @author wangpeng20@baidu.com
 */
function identify_arabic($str)
{
    $minAr  = 55436;
    $maxAr  = 55698;
    $probAr = false;
    $arFlag = false;
    $arRef  = array();
    $max    = strlen($str);
    
    $i = -1;
    while (++$i < $max) {
        $cDec = ord($str[$i]);
        
        // ignore ! " # $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 :
        // If it come in the Arabic context   
        if ($cDec >= 33 && $cDec <= 58) { 
            continue; 
        }
        
        if (!$probAr && ($cDec == 216 || $cDec == 217)) {
            $probAr = true;
            continue;
        }
        
        if ($i > 0) {
            $pDec = ord($str[$i - 1]);
        } else {
            $pDec = null;
        }
        
        if ($probAr) {
            $utfDecCode = ($pDec << 8) + $cDec;

            if ($utfDecCode >= $minAr && $utfDecCode <= $maxAr) {
                if (!$arFlag) {
                    $arFlag  = true;
                    $arRef[] = $i - 1;
                }
            } else {
                if ($arFlag) {
                    $arFlag  = false;
                    $arRef[] = $i - 1;
                }
            }
            
            $probAr = false;
            continue;
        }
        
        if ($arFlag && !preg_match("/^\s$/", $str[$i])) {
            $arFlag  = false;
            $arRef[] = $i;
        }
    }
    
    return $arRef;
}

function smarty_modifier_is_rtl($str)
{
    
    $arr      = identify_arabic($str);
    return count($arr)>0;
    /*
    $isArabic = false;
    $arr      = identify_arabic($str);
    if (count($arr) == 1 && $arr[0] == 0) {
        $isArabic = true;
    }
    return $isArabic;
    */
    
}
