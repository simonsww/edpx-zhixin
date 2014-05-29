<?php
/**
 * Smarty plugin
 * @package Smarty
 * @subpackage PluginsFunction
 */

/**
 * Smarty {wiseMakeTcUrlNew} function plugin
 *
 * Type:     function<br>
 * Name:     wiseMakeTcUrlNew<br>
 * Purpose:  make tc url
 *
 * @author zhao.hui <zhao.hui@> sunxiaobo <sunxiaobo03@>
 * @param
    
    [Required parameters]
    array  alaData  阿拉丁参数
	string src 要跳转到的目标地址，对应规范中的src
    string tj5 表示类型，取值如下：  
			l：link子链
			f：表单子链
			p：图片子链
			g：手势子链
			b：button子链
			t：tab子链
            title：标题

    [Optional parameters]
	string l是否为跳转
			0:普通转码页
			1:跳转至原网页
			3:云阅读页
            4:色情资源页
    string debugMode 传入任何非空值，就可以tc到自己测试机地址
    string dict 转码页的子页面类型，$l传入且不等于1时要传 
    string fm 用来表明结果类型:结果类型_展现样式
    string waplogo 表明时候是手机页，继承base模板开发阿拉丁时，waplogo为真就会有手机icon
    string sto1 sto2 sto3 sto4
    用来表示sto参数,sto1是卡片类型，一般传'c';sto2是子卡片类型；sto3是子卡片序列;sto4是链接类型
 * @param Smarty_Internal_Template $template template object
 * @return string
 */
//{%wiseMakeTcUrlNew src='...' fm='alzd' alaData=$alaData l=1 waplogo=1 sto1=12 sto2=xx sto3=xx sto4=l tj5=l%}
function smarty_function_wiseMakeTcUrlNew($params, &$smarty)
{
    $reqData = $smarty->getTemplateVars('reqData');
    $pageData = $smarty->getTemplateVars('pageData');
    $host = "m.baidu.com"; 

    if(empty($reqData)){
        $reqData = $smarty->getTemplateVars('req');
        $pageData = $smarty->getTemplateVars('page');
    }

    //用于做TC和STO最后一位的自增操作
    global $WISE_MAKE_TC_URL_TMP;
    //params中传入的这些不自动拼接
    $blacklist = array('sto1', 'sto2', 'sto3', 'sto4', 'tj5', 'l', 'dict', 'alaData','src', 'debugMode', 'order', 'undecode');
    
    $urlpath_array = array(
        'from' => $reqData['from'],
        'ssid' => $reqData['ssid'],
        'uid' => $reqData['uid'],
        'bd_page_type' => $reqData['bd_page_type'],
        'pu' => $reqData['pu'],
        'baiduid' => $reqData['baiduid'],
        'w' => $reqData['pn'].'_'.$reqData['rn'].'_'.$reqData['word'],
        't' => $pageData['abct'],
        'l' => 1);
    
    $tmp = array();

	//搜索类型_版式_搜索行为来源
    $tmp['ref'] = $pageData['pageRef'];

    $alaData = $params['alaData'];

	//搜索logID，对应展现日志中的logID
    $tmp['lid'] = $reqData['lid'];
        
    $tmp['order'] = $alaData['iteration'];
    
    if(isset($alaData['tc_params'])){         
        foreach($alaData['tc_params'] as $key => $value){
             if(!in_array($key, $blacklist)){
                 $tmp[$key] = $value;
             }
        }
    }

    foreach($params as $key => $value){
        if(!in_array($key, $blacklist)){
            $tmp[$key] = $value;
        }
    }
	
	if(isset($alaData['tcscore_dicttype_new'])){
        $tmp['dict'] = $alaData['tcscore_dicttype_new'];
    }

    //若传入l参数，重新赋值
    if(isset($params['l'])){
        $urlpath_array['l'] = $params['l'];
    }

	//sto的计算，搜索统计参数，样式类型_子卡片类型_子卡片位置_子卡片内子链类型
	if($params['sto1'])
    {
        $sto = $params['sto1'].'_'.$params['sto2'].'_'.$params['sto3'].'_'.$params['sto4'];

        $WISE_MAKE_TC_URL_TMP[$sto.'_'.$alaData['iteration']] += 1;

        $tmp['sto'] = $sto.$WISE_MAKE_TC_URL_TMP[$sto.'_'.$alaData['iteration']];
	}
	
	//tj参数拼接，结果id_位置_偏移量_单页条数_链接位置
    $tmp['tj'] = $alaData['enresourceid']."_".$alaData['iteration']."_".$reqData['pn']."_".$reqData['rn']."_".$params['tj5'];

    if(strcmp($params['tj5'], 'title') && strcmp($params['tj5'], 'footlink')){
        $WISE_MAKE_TC_URL_TMP[$tmp['tj']] += 1;
        $tmp['tj'] = $tmp['tj'].$WISE_MAKE_TC_URL_TMP[$tmp['tj']];
    }
    
    $urlpath_str = http_build_query($urlpath_array, '', '/');

	//要跳转的目标地址，必须放在最后
    $tmp_str = http_build_query($tmp, '', '&amp;');
    
    if(!empty($params['debugMode'])){
        $host = $_SERVER['HTTP_HOST'];
    }
    
    $src = $params['src'];

    if(empty($params['undecode'])){
        $src = urldecode($params['src']);
    }

    //src最后添加，IOProcess机制
    return 'http://'.$host.'/'.$urlpath_str.'/tc?'.$tmp_str.'&amp;src='.urlencode($src);
}

