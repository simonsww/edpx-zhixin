<?php
/*******************************************************************************
 *
 * Copyright (c) 2014 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file modifier.strlen_character.php
 * @package plugins
 * @purpose: Calculate the number of characters of a string
 * @author chenchen20@baidu.com
 * @date 2014-03-07 14:02
 */

function smarty_modifier_strlen_character($string)
{
    $logArr['smarty_modifier'] = "modifier_strlen_character";
    $status = 0;
    $intI = 0;  
    $intCount = 0;  
    $logArr['string'] = $string;

    $intLength = strlen ($string);  
    if( $intLength == 0 ) {
        $status = -1;
        CLog::warning("string is empty", $status, $logArr, 1);
        return 0;
    }

    while ( $intI < $intLength ) {  
        $chrAscii = ord ($string[$intI]); //按字节转成ascii码 
        $intCount++;                    
        $intI++;  
        if( $intI >= $intLength )
             break;  
        if( $chrAscii & 0x80 ) {          //汉字的两个字符ascii码都大于0x80，此处判断是否为汉字
            $chrAscii <<= 1;  
            while ( $chrAscii & 0x80 ) {  //判断为汉字，$intCount自增1. 
                $intI++;                
                $chrAscii <<= 1;  
            }  
        }  
    }  
    return $intCount;  
}













/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
