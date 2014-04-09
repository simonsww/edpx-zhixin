<?php
$url='http://127.0.0.1:8080/';
$arrData=array (
  'uiControl' => 
  array (
    'type' => 'detect',
    'templateName' => 'baidu',
    'templateType' => 'baidu',
    'templateNone' => true,
    'language' => 'zh-CN',
    'encKeyStr' => 'hello_xiaoshuai_baidu_zuodan_baidu',
    'maxRandomStrLen' => 3,
  ),
);
$context['http'] = array
(
	'method' => 'POST',
	'content' => mc_pack_array2pack($arrData),
);
$rst=file_get_contents($url, false, stream_context_create($context));
if(empty($rst)){
	exit(1);
}