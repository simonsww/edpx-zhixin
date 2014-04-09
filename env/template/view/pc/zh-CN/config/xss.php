<?php
return array(
	//基本配置区域，建议用utf-8编码保存本文件。当然使用gbk也无影响。
	'TPL_LEFT_DELIMITER' 		=> '{%',  					//smarty左界符
	'TPL_RIGHT_DELIMITER' 		=> '%}', 					//smarty右界符
	'TPL_SUFFIX'				=> 'tpl',					//模板文件扩展名	
	'func_name_callback'		=> '/sslcallback/',			//回调函数名，$sslcallback(json)，正则匹配，防止多个变量名，不需要则可以删除此行配置
	'name_callback'				=> 'callback',				//smarty.get.callback(json)，不需要则可以删除此行配置
	
	//添加各场景开关检查功能，on 或者 off，默认为on，即全部要检查	
	'check_callback'			=> 'off',
	'check_html'				=> 'on',
	'check_js'					=> 'on',
	'check_data'				=> 'on',
	'check_path'				=> 'on',
	'check_event'				=> 'on',
	
	//各场景对应的安全转义函数，正则配置
	'escape_js' 				=> '/f_escape_js|escape:javascript/',	//js转义函数配置
	'escape_html' 				=> '/f_escape_xml|escape:html|escape/',		//html转义函数配置
	'escape_event' 				=> '/f_escape_event/',					//标签事件属性值场景转义函数配置
	'escape_data' 				=> '/f_escape_data/',					//json数据转义配置
	'escape_path' 				=> '/f_escape_path|escape:url/',				//url属性里转义
	'escape_callback' 			=> '/f_escape_callback/',				//callback最小化转义
	
	//如果某个特定变量不需要转义，可以加上|escape:none ，正则配置
	'noescape' 					=> '/escape:[\'|\"]?none[\'|\"]?/',
	
	//全局白名单，变量名与正则匹配则可信，无需转义
 	 'XSS_SAFE_VAR' 			=> array(),								//安全变量列表，必须是正则，不包含$ 
	 //精确白名单，某特定文件某个变量是完全可信的
	 'file_safe_var'			=>array()				//filename为相对路径（非中文），$varname为变量，表明filename下的所有$varname都是白名单

);