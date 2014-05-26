<?php
/**
 * Smarty plugin
 * @package Smarty
 * @subpackage PluginsFunction
 */

/**
 * Smarty {wiseMakeTcUrl} function plugin
 *
 * Type:     function<br>
 * Name:     wiseMakeTcUrl<br>
 * Purpose:  make tc url
 *
 * @author zhao.hui <zhao.hui@>
 * @param
	string tcreq4log 是否是手势
	array  $pageData 页面参数
	array  $alaData  阿拉丁参数
	array  $reqData url参数
	string $fm 用来表明结果类型:结果类型_展现样式
	string $sa 搜索行为来源_位置(第2位可选)
	string $url 要跳转到的目标地址
	string $cardtype 表示sto的第二位，卡片的名称
	string $cardpostion 表示sto的第三位，卡片的位置，1表示需要加1，每个卡片的第一次引用都要设置为1
	string $a ,$p 拼接成sto的第四位（eg:a2l2），
			$a = 1 表示为表示区块的位置；
			$p表示类型，取值如下
			l：link子链
			f：表单子链
			p：图片子链
			g：手势子链
			b：button子链
			t：tab子链
			title：标题
	footlink：优化阅读
	string $l 是否为跳转
			0:普通转码页
			1:跳转至原网页
			3:云阅读页
			4:色情资源页
	string $srd siteapp转码参数
	string $dict 转码页的页面类型
	string $waplogo 目标页面为手机页面, waplogo=1
	string $cardtype 类型_资源类型_结果内位置
	string $auto false表示自己计算卡片的tj和sto的值
 * @param Smarty_Internal_Template $template template object
 * @return string
 */
//{%wiseMakeTcUrl  url='' cardtype='' cardpostion='1' auto='false' a='1' fm='' p='' sa='' l='1' waplogo='1' dict='' pageData=$pageData reqData=$reqData alaData=$alaData%}
function smarty_function_wiseMakeTcUrl($params)
{
    if ($params['tcreq4log'] == 1)
	{
		return "http://m.baidu.com/tc?ssid=".$params['reqData']['ssid']."&uid=".$params['reqData']['uid']."&from=".$params['reqData']['from']."&bd_page_type=".$params['reqData']['bd_page_type']."&pu=".$params['reqData']['pu']."&lid=".$params['reqData']['lid']."&ref=".$params['reqData']['pageRef']."&tcreq4log=1&fm=".$params['fm']."&sto=".$params['sto']."&w=".$params['reqData']['pn']."_".$params['reqData']['rn']."_".urlencode($params['reqData']['word'])."&ala_clk=".$params['alaData']['enresourceid']."_".$params['alaData']['iteration']."_".$params['reqData']['pn']."_".$params['reqData']['rn']."_".$params['ala_clk'];
	}
	$tmp = array();
    global $WISE_MAKE_TC_URL_TMP;
	//偏移量_单页条数_搜索词
	$tmp['w'] = $params['reqData']['pn']."_".$params['reqData']['rn']."_".$params['reqData']['word'];
	//定制转码页头尾:iphone
	$tmp['t'] = $params['pageData']['abct'];
	//所点结果在当前结果页位置
	$tmp['order'] = $params['alaData']['iteration'];
	//搜索类型_版式_搜索行为来源
	$tmp['ref'] = $params['pageData']['pageRef'];
	//用来表明结果类型:结果类型_展现样式
	$tmp['fm'] = $params['fm'];
	//搜索行为来源_位置(第2位可选)
	if($params['sa'] && $params['sa'] !='')
	{
		$tmp['sa'] = $params['sa'];
	}
	//到siteapp转码页必须参数
    if($params['srd'] && $params['srd'] !=''){
        $tmp['srd']=$params['srd'];
    }
	//转码页的页面类型
	if($params['dict'] && $params['dict'] !='')
	{
		$tmp['dict'] = $params['dict'];
	}

	//目标页面是否为手机页面
	if($params['waplogo']==1)
	{
		$tmp['waplogo'] = 1;
	}
	//是否为跳转
	$tmp['l'] = $params['l'] ? $params['l'] : 1 ;
	//搜索logid，由wiaui生成
	$tmp['lid'] = $params['reqData']['lid'];
	//要跳转的目标地址，必须放在最后
    $tmp_str = http_build_query($tmp, '', '&amp;');

	//sto的计算，搜索统计参数，类型_资源类型_结果内位置_结果内链接位置
	if($params['cardtype'])
	{
		//自动计算卡片的位置
		if($params['cardpostion'] == 'true')
		{
			$WISE_MAKE_TC_URL_TMP['cardpostion'] += 1;
		}
		if($params['auto'] == 'false')
		{
			$tmp['sto'] = $params['cardtype']."_".$params['p']; 
		}
		else
		{
			$sto_a = $params['cardtype']."_".$WISE_MAKE_TC_URL_TMP['cardpostion']."_a";
			if($params['a'])
			{
				$WISE_MAKE_TC_URL_TMP[$sto_a] = $params['a'];
			}
			$sto_p = $params['cardtype']."_".$WISE_MAKE_TC_URL_TMP['cardpostion']."_a".$WISE_MAKE_TC_URL_TMP[$sto_a].$params['p'];
			$WISE_MAKE_TC_URL_TMP[$sto_p] += 1;
			$tmp['sto'] = $sto_p.$WISE_MAKE_TC_URL_TMP[$sto_p];
		}				
	}
	//tj参数拼接，结果id_位置_偏移量_单页条数_链接位置
	$tj = $params['alaData']['enresourceid']."_".$params['alaData']['iteration']."_".$params['reqData']['pn']."_".$params['reqData']['rn']."_".$params['p'];
	$WISE_MAKE_TC_URL_TMP[$tj] += 1;//自动计算位置
	$tmp['tj'] = $params['auto'] == 'false' ? $tj : $tj.$WISE_MAKE_TC_URL_TMP[$tj];
	
	//拼接params形式，ssid、uid、bd_page_type、from、pu框架会自动加上，原谅我最后sto和tj的兼容处理
	return ($params['pageData']['url']['tcUrl']."tc?".$tmp_str."&amp;sto=".$tmp['sto']."&amp;tj=".$tmp['tj']."&amp;src=".urlencode(urldecode($params['url'])));    
}
?>
