<?php 
/**
 * Smarty plugin
 * @package Smarty
 * @subpackage PluginsFunction
 */

/**
 * Smarty {makePromlink} function plugin
 *
 * Type:     function<br>
 * Name:     makePromlink<br>
 * Purpose:  make promlink html string
 *
 * @author 
 * @param
    [required parameters]:
    links 推广文链信息数组
 * @param Smarty_Internal_Template $template template object
 * @return string
 */
    // {%makePromlink links='[{"time":["2013-11-19_0:00","2013-11-20_0:00"],"android":{"id":"bdtv_and","text":"百度电视云，为看片儿而生！","href":"http://tv.baidu.com/m?from=wise"},"ios":{"id":"bdtv_ios","text":"百度电视云，为看片儿而生！","href":"http://tv.baidu.com/m?from=wise"}}]'%}
function smarty_function_makePromlink($params, &$smarty){

    if(empty($params['links'])){
        return '';
    }
    $result = json_decode($params['links']);

    //判断看有没有后门,得到后门的时间戳
    function getCurrentTime(){
        $t = $_GET['promlink'];
        if(empty($t)){
            return time();
        }else{                
            return parseTime($t);
        }        
    }

    //把字符串时间转成时间戳
    function parseTime($t){
        //防止后门输入错误，如果后门输入错误，就使用当前时间
        try{
            return strtotime(str_replace('_', ' ', $t));
        }catch(Exception $e){
            return time();
        }
                    
    }

    function setPromlinkElement($info){
        $htmlstring = '';
        if($info){
            $htmlstring = 
            '<img src="http://m.baidu.com/static/hb/hot.gif" /><a id="'.$info->id.'" href="'.$info->href.'" style="margin-left:5px;font-size:14px;">'.$info->text.'</a>';
        }
        return $htmlstring;
    }
    //取出当天的内容
    $currentTime = getCurrentTime();
    $currentLinks = array();
    //
    $pageData = $smarty->getTemplateVars('page');
    if(empty($pageData)){
        $pageData = $smarty->getTemplateVars('pageData');
    }
    $isAndroid = $pageData['isAndroid'];

    for($i=0,$len=count($result);$i<$len;$i++){

        $promlink = $result[$i];
        $startTime = parseTime($promlink->time[0]);
        $endTime = parseTime($promlink->time[1]);

        if($currentTime>=$startTime && $currentTime<$endTime){
            if($isAndroid == 1){
                if(!empty($promlink->android)){
                    array_push($currentLinks, $promlink->android);
                };
            }else{
                if(!empty($promlink->ios)){
                    array_push($currentLinks, $promlink->ios);
                }
            }

        }
    }

    $currentLinksLength = count($currentLinks);

    if($currentLinksLength === 0){//当天没有
        $htmlstring = setPromlinkElement(null);
    }else if($currentLinksLength === 1){//当天只有一个
        $htmlstring = setPromlinkElement($currentLinks[0]);
    }else{//当天有多个，随机显示
        $htmlstring = setPromlinkElement($currentLinks[rand(0, $currentLinksLength-1)]);
    }

    return $htmlstring;

}

    