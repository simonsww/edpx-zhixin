<?php
/**
 *
 *
 * @file function.build.php
 * @package plugins
 * @author wangchen03@baidu.com
 * @date 2013-1-7 15:47
 *
 * @see function.build_search_url.php
 * @see modifier.limit_ubburl.php
 */
//this varable used to preg_replace_callback
$limit_callback_tpl = null;
function smarty_function_build_search_url_limit_ubburl_callback($match){
    include_once('function.build_search_url.php');
    global $limit_callback_tpl;
    $param=$match[1];
    $word=$match[2];
    $param = smarty_function_build_search_url(array(params=>$param),$limit_callback_tpl);
    return "<a href=\"$param\" target=\"_blank\">$word</a>";
}
function smarty_function_build_search_url_limit_ubburl($params,$template)
{
    include_once('modifier.limit_ubburl.php');
    $content = $params['content'];
    $limit = $params['limit'];
    global $limit_callback_tpl;
    $limit_callback_tpl = $template;
   if($limit){
        $content = smarty_modifier_limit_ubburl($content,$limit);
    }
    //replace [url http://xxx]xxx[/url]
    $content = preg_replace('/\[url\shttp(.*?)\](.*?)\[\/url\]/','<a href="http$1" target="_blank">$2</a>',$content);
    $content = preg_replace_callback('/\[url\s(.*?)\](.*?)\[\/url\]/','smarty_function_build_search_url_limit_ubburl_callback',$content);
    return $content;
}

