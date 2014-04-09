<?php
/**
 *
 *
 * @file function.build.php
 * @package plugins
 * @author wangpeng20@baidu.com
 * @date 2013-1-7 15:47
 *
 * 建立到结果页的内链，
 * @param params: 将被改写的参数，形式可以是 array("wd"=>"baidu","pn"=>20) 或者"wd=baidu&pn=20"，array传进来的参数将被urlencode处理
 * @param exlcude: 指定不包含的参数，形式可以是 "pn" 或 array("pn",'tn')
 * @param include: 指定包含的透传参数，形式可以是 "pn" 或 array("pn",'tn')
 * @param searchAction: 指定url中"?"以前的内容，string
 * @param set_default_action: 默认的searchAction
 * @params others: 其他参数会被合并到params统一处理
 * @example: 
 *  设置默认的searchAction，不会有任何输出
 *   {%build_search_url set_default_action="http://www.hao123.com/s"%}
 *  从当前url中删除trh、tre、trb三个参数
 *   <a class="close" href="{%build_search_url exclude=array("trh","tre","trb")%}">×</a>
 *  重写pn参数（上一页）
 *   <a href="{%build_search_url pn=($pageNo-1)*$urlPara.rn%}" class="pre">
 *  params可以传一个get参数串，这里是改query，并加了一些参数
 *   <a href="{%build_search_url params="wd=`$seWord`&f=12&rsp=`$index`&oq=`$queryUrlEncoded`"%}">{%$seWord|escape%}</a>
 *   
 */

function smarty_function_build_search_url($params,$template)
{
    static $DEFAULT_ACTION="/s";
    static $DEFAULT_INCLUDE=array('ie');
    //除这些参数以外，其他均不透传
    $all_params=array( 'wd', 'cl', 'ct', 'tn', 'rn', 'ie', 'f', 'lm', 'si', 'usm', 'z', 'ch', 'sts','vit', 'dsp', 'trh', 'trb', 'tre','la','lo','st','nojc','haobd','rtt','bsst','gvideo');
    //参数默认值，当前值和默认值相等，则不用包含这个参数，但在DEFAULT_INCLUDE中的仍会被包含
    $default_value=array('sts'=>'','cl'=>3,'ct'=>0,'tn'=>'baidu','rn'=>10,'ie'=>'utf-8','lm'=>0,'usm'=>0,'z'=>3,'ch'=>0,'trh'=>0,'si'=>'');
    
    list($rewrite_params_str,$exclude,$include,$searchAction,$set_default_action)=array($params['params'],$params['exclude'],$params['include'],$params['searchAction'],$params['set_default_action']);
    $meaningful_param_names=array('params','exclude','include','searchAction','set_default_action');
    
    
    //////////////////处理searchAction参数////////////////////
    if($set_default_action){
        $DEFAULT_ACTION=$set_default_action;
        if(count($params)==1&&$params['set_default_action']){
            //只是设置了默认action，不输出url
            return;
        }
    }
    $searchAction=$searchAction?$searchAction:$DEFAULT_ACTION;

    /////////////////处理rewrite_params 参数/////////////////
    //
    $rewrite_params=array();
    foreach($params as $k=>$v){
        if(!in_array($k,$meaningful_param_names)){
            $rewrite_params[$k]=urlencode($v);
        }
    }
    if(is_string($rewrite_params_str)){
        $tmp=array();
        parse_str($rewrite_params_str,$tmp);
        foreach($tmp as $k =>$v){
            $tmp[$k]=urlencode($v);
        }
        $rewrite_params=array_merge($rewrite_params,$tmp);
    }elseif(is_array($rewrite_params_str)){
        foreach($rewrite_params_str as $k=>$v){
            if(!in_array($k,$meaningful_param_names)){
                $rewrite_params[$k]=urlencode($v);
            }
        }
    }
    ////////////////处理include 参数////////////////////////
    if(!is_array($include)){
        $include=array($include);
    }
    $include=array_keys(array_flip(array_filter($include)));
    ////////////////处理exclude 参数////////////////////////
    if(!is_array($exclude)){
        $exclude=array($exclude);
    }
    $exclude=array_keys(array_flip(array_filter($exclude)));
    
    ///////////////获得current_params///////////////////////
    $tplData=$template->getTemplateVars("tplData");
    if(isset($tplData['queryInfo'])){
        $queryInfo=$tplData['queryInfo'];
    }else{
        //aladdin_render中的情况
        $queryInfo=$template->getTemplateVars("queryInfo");
    }
    $current_params=$queryInfo['pUrlConfig'];
    $current_params['wd']=$queryInfo['queryWordBak']?$queryInfo['queryWordBak']:$queryInfo['wordNoSyntax'];



    $result=array();

    foreach($current_params as $k=>$v){
        if(!in_array($k,$all_params)){
            continue;
        }
        if(isset($default_value[$k]) && $default_value[$k]==$v){
            //和默认值相等，就不用出现在结果里了
            continue;
        }
        if(in_array($k,$exclude)){
            continue;
        }
        if(strlen($v)==0){
            //空串的值，不要往下传了
            continue;
        }
        $result[$k]=urlencode($v);
    }
    foreach($include as $k){
        if(!isset($result[$k]) ){
            if(isset($current_params[$k])){
                $result[$k]=urlencode($current_params[$k]);
            }
        }
    }
    foreach($DEFAULT_INCLUDE as $k){
        if( !in_array($k,$exclude)
            && !isset($result[$k]) 
            && isset($default_value[$k])){
            $result[$k]=$default_value[$k];
        }
    }
    foreach($rewrite_params as $k=>$v){
        $result[$k]=$v;
    }

    $res=array();
    foreach($result as $k=>$v){
        $res[]="$k=$v";
    }
    return $searchAction."?".implode($res,"&");
}
/*
 *
 * test code
 *
class Template{
    public function getTemplateVars($v){
        return array('queryInfo'=>array(
            'wordNoSyntax' => '检索词',
            'pUrlConfig'=>array(
                'bs'=>'',//before search
                'tn'=>'baidu', //baidu || baidufir（在结果中查找）||baiduadv（百度高级搜索）|| baiduhome_pg ，流量标志参数
                'rn'=>10,//请求的单页结果数量
                'wd'=>'检索词',
                'ft'=>'pdf',//pdf,doc,xls,ppt,rtf
                'lm'=>'',//0、所有时间，1、一小时，2、一天，3、一周，4、一月，5、一年，6、自定义
                't1'=>'2012-01-01',//时间段搜索，从2012-01-01开始
                't2'=>'2012-02-14',//时间段搜索，从2012-02-14结束
                'q1'=>'',//包含以下全部关键词，包含
                'q2'=>'',//包含以下完整关键词，精确
                'q3'=>'',//包含以下任意一个关键词
                'q4'=>'',//不包含以下关键词
                'q6'=>'baidu.com',//站内搜索站点名
                'ie'=>'utf-8',//query的encoding，和outputEncoding不一定一样
                'pn'=>'3',
                'trh'=>0,
            )
        ),);
    }
}
echo smarty_function_build_search_url(array(
    'set_default_action'=>'http://www.hao123.com/s',
),new Template())."\n";

echo smarty_function_build_search_url(array(
    'params'=>array('wd'=>'qq','test'=>111),
    'set_default_action'=>'http://www.hao123.com/s',
),new Template())."\n";

echo smarty_function_build_search_url(array(
    'params'=>'wd=%E6%A3%80%E7%B4%A2%E8%AF%8D&aaa=1',
    'include'=>'pn',
),new Template())."\n";
 */
