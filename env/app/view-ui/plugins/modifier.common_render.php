<?php
/**
 * 通用的单条渲染插件，可渲染aladdin、result、ecom等目录下；
 * 不能渲染midpage、xml、data和baidu下的完整页面模板
 *
 * @package plugins
 * @author jiachunxin@baidu.com
 */
function smarty_modifier_common_render($data, $type, $templateName, $curr_sort = false) {
	if($GLOBALS['mulit_render_flag'] === 1){
		$key = $data['multi_render_key'];
		if(empty($key)){
			CLog::warning("empty_key!", 1);
		}
		return $key;
	}
	
	$logArr ['smarty_modifier'] = "common_render";
	$conf = CSmarty::getConf ();
	$language = $conf ['language'];
	$platform = $conf ['platform'];
	
	$logArr ['template_type'] = $type;
	$logArr ['template_name'] = $templateName;
	$logArr ['language'] = $language;
	$logArr ['platform'] = $platform;
	$logArr['StdStg'] = $data ['StdStg'];
	// result目录下的模板不统计性能
	$time_start = Volatile::microtime ( true ) * 1000;
	if ($type != $GLOBALS ['STRUCT_TEMPLATE_TYPE']) {
		$log_key = $data ['StdStg'] . '_' . $templateName;
	}else{
		CSmarty::addStructTplRenderNumCount();
	}
	if (empty ( $type )) {
		CLog::warning ( "template type is empty", - 1, $logArr, 1 );
		return false;
	}
	if (empty ( $templateName )) {
		CLog::warning ( "template name is empty", - 1, $logArr, 1 );
		return false;
	}
	if (empty ( $data ['resultData'] ['tplData'] ) || ! is_array ( $data ['resultData'] ['tplData'] )) {
		CLog::warning ( "tplData is empty", - 1, $logArr, 1 );
		return false;
	}
	
	$data ['resultData'] ['queryInfo'] = CSmarty::getQueryInfo ();
	$data ['resultData'] ['templateConfig'] = CSmarty::getTemplateConfig ();
	if ($curr_sort === false) {
		$curr_sort = 0;
	} else {
		$curr_sort += 1;
	}
	$data ['resultData'] ['extData'] ['curr_sort'] = $curr_sort;
	
	// page renderer
	$smarty = CSmarty::getInstance ( array ('language' => $language, 'type' => $type, 'platform' => $platform ) );
	if (false === $smarty) {
		$status = - 1;
		$errors = CSmarty::getError ();
		$errors_str = implode ( ";", $errors );
		$logArr [$type . '_smarty_error'] = $errors_str;
		CLog::warning ( "fail to get instance of smarty, type: $type", $status, $logArr, 1 );
		return false;
	}
	
	// encrypt page's url
	backend_encrypt_url ( $data, $platform, $language, $type, $templateName );
	
	// render page
	$page = $smarty->do_render ( $data, $templateName, 1 );

	if (empty ( $page )) {
		$status = - 1;
		$errors = CSmarty::getError ();
		$errors_str = implode ( ";", $errors );
		CLog::warning ( "fail to render " . $type . " page, errors[$errors_str],info[$log_key]", $status, $logArr, 1 );
		return false;
	}
	$tm_cost = round ( Volatile::microtime ( true ) * 1000 - $time_start,2);
	// result目录下的模板不统计性能
	if ($type != $GLOBALS ['STRUCT_TEMPLATE_TYPE']) {
		$GLOBALS ['logArr'] ["aladdin_page_size_{$log_key}"] = strlen ( $page );
		$GLOBALS ['logArr'] ["time_aladdin_{$log_key}"] = $tm_cost;
		$GLOBALS['time_count_temp']['time_aladdin_total'] += $tm_cost;
		$GLOBALS['time_count_temp']['render_aladdin_num'] ++;
	}else{
		CSmarty::addStructTplRenderTimeCount($tm_cost);
		// result模板也统计性能，合并打印
		CSmarty::recordResultTplRenderTime($tm_cost);
	}
	return $page;
}
