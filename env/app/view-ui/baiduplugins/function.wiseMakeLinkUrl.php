<?php 
/**
 * Smarty plugin
 * @package Smarty
 * @subpackage PluginsFunction
 */

/**
 * Smarty {wiseMakeLinkUrl} function plugin
 *
 * Type:     function<br>
 * Name:     wiseMakeLinkUrl<br>
 * Purpose:  make Link url
 *
 * @author 
 * @param
 * [required parameters]:
 * src 需要跳转的地址 取值参照 http://map.baidu.com/mobile/?itj=45
 * pubPath 是否在src的值后面添加6个公共参数 true为添加，默认为不添加
 *
 * @param Smarty_Internal_Template $template template object
 * @return string
 */
//{%wiseMakeLinkUrl  src='xxx' pubPath=true%}

require "modifier.antiSrc.php";

function smarty_function_wiseMakeLinkUrl($params, &$smarty){
    
    //兼容处理，在阿拉丁模板中要取reqData字段，主模板中取req
    $reqData = $smarty->getTemplateVars('req');
    $pageData = $smarty->getTemplateVars('page');

    if(empty($reqData)){
        $reqData = $smarty->getTemplateVars('reqData');
        $pageData = $smarty->getTemplateVars('pageData');
    }
    if(function_exists('hhvm_htmlspecialchars_decode'))
    {
        $params['src'] = hhvm_htmlspecialchars_decode($params['src']);
    }
    else
    {
        $params['src'] = htmlspecialchars_decode($params['src']);
    }
	//移动公共参数，这里不要baiduid是因为在src中拼接的时候不要baiduid，所以放入tc跳转其他参数对象中
	$common_prefix_array = array(
		'from' => $reqData['from'], 
		'ssid' => $reqData['ssid'], 
		'uid' => $reqData['uid'], 
		'bd_page_type' => $reqData['bd_page_type'], 
		'pu' => $reqData['pu']);

	$common_prefix_str = http_build_query($common_prefix_array, '', '&');

    //tc跳转其他参数
    $common_tc_array = array(
        'baiduid' => $reqData['baiduid'],
        'ct' => ($params['ct']?$params['ct']:0), 
        'cst' => ($params['cst']?$params['cst']:0), 
        'ref' => ($pageData['pageRef']?$pageData['pageRef']:($params['ref']?$params['ref']:'')), 
        'lid' => ($reqData['lid']?$reqData['lid']:($reqData['logid']?$reqData['logid']:''))
        );
    if($reqData['word']){
        $common_tc_array['w'] = $reqData['pn'].'_'.$reqData['rn'].'_'.$reqData['word'];
    }
    $common_tc_str = http_build_query($common_tc_array, '', '&');

    //如果设置了pubPath为true，为src后面添加6个公共参数
    if($params['pubPath']){
        $params['src'] = $params['src'] . '&' . $common_prefix_str;
    }

    $src = 'src='.urlencode($params['src']);
    //如果域名不是baidu.com，使用加密插件
    if(!preg_match('/\.baidu\.com/', $params['src'])){
        $src = smarty_modifier_antiSrc(urlencode($params['src']), '&');
    }
    //返回链接格式为移动6公共参数 + tc跳转其他参数
    //src格式为src+移动5公共参数（不要baiduid）
    return 'http://m.baidu.com/tc?l=1&noconvert=1&'.$common_prefix_str.'&'.$common_tc_str.'&'.$src;
}

    