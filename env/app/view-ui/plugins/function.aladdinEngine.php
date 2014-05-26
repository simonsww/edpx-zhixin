<?php
function smarty_function_aladdinEngine($params){
	$tree = Search_AladdinTree::singleton();
	$arrPageInfo = $params['arrPageInfo'];
	$pageData  = $arrPageInfo['pageData'];	
	#模板名
	$tplName = basename($arrPageInfo['alaData']['tplFile']);
    #是否为弱态模板
	$isWeaken = strpos($tplName,'weaken');
    # 兼容pad版
	if($pageData['tpl'] == 'pad') $pageData['tpl'] = 'iphone';
	# 阿拉丁目录中的文件路径
    !!$isWeaken ? $jsTn = $pageData['tpl'].'.weaken':$jsTn = $pageData['tpl'];
	$customJs  = $params['_alaTpl'].'/'.$jsTn.'.js';
    $customCss = $params['_alaTpl'].'/'.$pageData['tpl'].'.css';
    # 结果序列
	$iteration = $arrPageInfo['alaData']['iteration'];
	# 检查该条结果是否已经在组件树上注册
	$subTree = $tree->getSubTree($iteration);

	# 设置偏移量
	$loopX = 0;
	$loopY = -1;
	if($subTree){
		$currentMod = $tree->current();
		$loopX = $currentMod['coordinate']['x'];
		$tree->remove($currentMod['coordinate']);
	}
	
	# dom data上的tpl字段 是否可以用tplt代替
	if(!empty($params['_alaTpl'])){
	    $arrPageInfo['_alaTplName'] = basename($params['_alaTpl']);
	}

	# fm参数供tc url插件用
 	if(!empty($params['_alaFm'])){
	    $arrPageInfo['_alaFm'] = $params['_alaFm'];
	}

	# 调试模式开关
	if(!empty($params['_alaDebug'])){
	    $arrPageInfo['_alaDebug'] = $params['_alaDebug'];
	}
	
	# 自定义脚本 非弱态且文件存在
	if(/*!$isWeaken && */file_exists($customJs)){
		$arrPageInfo['_alaCustJs'] = $customJs;
	}
	
	# 自定义样式
	if(file_exists($customCss)){
	    $arrPageInfo['_alaCustCss'] = $customCss;
	}

	# 数据类型判断
    if(is_array($params['modules']) && !empty($params['modules'])){
        $modules = $params['modules'];
        #给最外层组件打上标记 用来插入css和js
        $iteration = $arrPageInfo['alaData']['iteration'];
        if(!$subTree) $modules[0]['addon']["alaShell"] = true;      
    }else{
        return;
    }
	
	#smarty实例
	$tmpProxy = new Search_AladdinModTemplate();
	if(false === $tmpProxy){
	    return;
	}

	return $tmpProxy->fetchMod($modules,$arrPageInfo,$loopX,null);
}
?>
