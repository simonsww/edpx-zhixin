<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file modifier.highlight.php
 * @package plugins
 * @author liyudong@baidu.com
 * @date 2011-11-03 10:55
 * 
 * ======================================插件说明=====================================
 * 
 * 标题飘红
 * type=0:gss aladdin,修改type=3,在调用扩展时,会转成3
 * type=1:UI自己实现的匹配飘红
 * type=2:根据DX的标记替换飘红
 * type=3:使用DA返回的飘红词调用飘红库飘红
 * type=4:使用AC返回的飘红词调用飘红库飘红
 * 
 * 摘要飘红
 * type=5:UI自己实现的匹配飘红,在调用扩展时,会转成1
 * type=6:根据DX的标记替换飘红,在调用扩展时,会转成2
 * 
 * ======================================飘红库说明=====================================
 * Hilight_title:
 * 1、UI自己实现的匹配飘红；
 * 2、根据DX的标记替换飘红；
 * 3、使用DA返回的飘红词调用飘红库飘红；
 * 4、使用AC返回的飘红词调用飘红库飘红；
 * Hilight_abstract:
 * 1、UI自己实现的匹配飘红；
 * 2、根据DX的标记替换飘红；
 * 
 */
function smarty_modifier_highlight($string, $type=0)
{

    // BY pengxing
    // 忽略highlight插件的效果
    return $string;

	$time_start = Volatile::microtime(true)*1000;
    $logArr['smarty_modifier'] = "modifier_highlight";
    /**
     * hilight info
     * @var array
     */
    $hilight_info = CSmarty::getHilightInfo();

    $hilight_info['hiFixInfo']['bold_prefix'] = $GLOBALS['DISPLAY']['BOLD_PREFIX'];
    $hilight_info['hiFixInfo']['bold_postfix'] = $GLOBALS['DISPLAY']['BOLD_SUFFIX'];

    $logArr['text'] = $string;
    $logArr['type'] = $type;
    $result = false;

    $hilight_query_info = array();
    $queryInfo = CSmarty::getQueryInfo();

    $language = trim(strtolower($queryInfo['language']));
    $tempArray = explode('-', $language);
    if (strlen($queryInfo['language']) != 0) {
        if ($language == 'zh-cn' || $language == 'zh-tw') {
            $hilight_query_info['query_language'] = $language;
        } else {
            if(count($tempArray) == 2){
                $hilight_query_info['query_language'] = $tempArray[0];
            }else{
                $hilight_query_info['query_language'] = 'zh-cn';
            }
        }
    } else {
        $hilight_query_info['query_language'] = 'zh-cn';
    }
    $hilight_query_info['query_codetype'] = empty($queryInfo['outputEncode']) ? "utf-8" : (string)$queryInfo['outputEncode'];
    $hilight_query_info['user_locale'] = empty($tempArray[1]) ? "cn" : $tempArray[1];
    
    switch($type) {
        case 0://hilight for aladdin's page
            $hi_word = CSmarty::getHiWord();
            if( strlen($hi_word) > 0 ) {
                $hilight_info['hilightInfo']['ori_hilight'] = $hi_word;
            }
            $type = 3;
        case 1:
        case 2:
        case 3:
        case 4:
            /**
             * hilight title
             */
            $logArr['hilight_type'] = 'title';
//error_log("hiFixInfo=".var_export($hilight_info['hiFixInfo'],true)."\n", 3, '/home/work/talk.log');
//error_log("hilightInfo=".var_export($hilight_info['hilightInfo'],true)."\n", 3, '/home/work/talk.log');
//error_log("dynamicConfig=".var_export($hilight_info['dynamicConfig'],true)."\n", 3, '/home/work/talk.log');
            //$result = hilight_title($string, $hilight_info['hiFixInfo'],$hilight_info['hilightInfo'], $hilight_info['dynamicConfig'], $type);
            $result = hilight_title_ver2($string, $hilight_info['hiFixInfo'],$hilight_info['hilightInfo'], $hilight_info['dynamicConfig'], $type,$hilight_query_info);
            break;
        case 5:
        case 6:
            /**
             * hilight abstract
             */
            $type = $type - 4;
            $logArr['hilight_type'] = 'abstract';
            $logArr['type'] = $type;
            //$result = hilight_abstract($string, $hilight_info['hiFixInfo'],$hilight_info['hilightInfo'], $hilight_info['dynamicConfig'], $type);
            $result = hilight_abstract_ver2($string, $hilight_info['hiFixInfo'],$hilight_info['hilightInfo'], $hilight_info['dynamicConfig'], $type,$hilight_query_info);
            break;
        default:
            $type = 2;
            $logArr['type'] = $type;
            $logArr['hilight_type'] = 'title';
            //$result = hilight_title($string, $hilight_info['hiFixInfo'],$hilight_info['hilightInfo'], $hilight_info['dynamicConfig'], $type);
            $result = hilight_title_ver2($string, $hilight_info['hiFixInfo'],$hilight_info['hilightInfo'], $hilight_info['dynamicConfig'], $type,$hilight_query_info);
            break;
    }
    if( false === $result ) {
        CLog::warning("fail to hilight", 0, $logArr, 1);
        return $string;
    }
    $GLOBALS['logArr']['time_highlight'] +=
        round(Volatile::microtime(true)*1000 - $time_start,2);
    return $result;
}














/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
