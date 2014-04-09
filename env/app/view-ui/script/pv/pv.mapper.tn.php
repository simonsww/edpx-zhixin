<?php
/**
 */
ini_set ( "memory_limit", "1024M" );
error_reporting ( E_ALL & ~ E_NOTICE );
ini_set ( 'display_errors', 'On' );
ini_set ( 'error_log', '' );

$arrTn_result=array();

// 主循环
while ( ($strLine = fgets ( STDIN )) != false ) {
	$strLine = trim ( $strLine );
	if (empty ( $strLine )) {
		continue;
	}
	parse($strLine);
	unset ( $strLine );
}

echo "";

foreach ($arrTn_result as $k=>$v){
	foreach ($v as $kk=>$vv){
		echo $k."\t".$kk."\t".$vv['n']."\t".$vv['e']."\n";
	}
}

function parse($strLine){
	$matches1=array();
	$matches2= array();
	global  $arrTn_result;
	if(!preg_match('/(tn=06074089_1_pg|tn=pubwin_6_pg|tn=request_28_pg)/', $strLine)){
		return;
	}
	if(preg_match('/page_type=3/', $strLine)){
		preg_match('/GET (.*) HTTP/', $strLine, $matches1);
		if(empty($matches1[1])){
			return;
		}
		$strquery=parse_url($matches1[1]);
		if(empty($strquery['query'])){
			return ;
		}
		parse_str($strquery['query'], $arrquery1);
		$strTn=empty($arrquery1['tn'])?"baidu":$arrquery1['tn'];
		if($strTn=='baidu'){
			return;
		}
		
		preg_match('/pct. "([^"]*)"/', $strLine, $matches2);
		$strquery=parse_url($matches2[1]);
		//非百度站点
		if($strquery['host']!='www.baidu.com'){
			$arrTn_result[$strTn][1]['n']+=1;
			$arrTn_result[$strTn][1]['e']=$strLine;
			return;
		}
		//首页
		if($strquery['path']!='/s'&&$strquery['path']!='/baidu'){
			$arrTn_result[$strTn][2]['n']+=1;
			$arrTn_result[$strTn][2]['e']=$strLine;
			return;
		}
		if(!empty($strquery['query'])){
			parse_str($strquery['query'], $arrquery1);
			$strTn1=empty($arrquery1['tn'])?"baidu":$arrquery1['tn'];
			if($strTn1==$strTn){
				$arrTn_result[$strTn][3]['n']+=1;
				$arrTn_result[$strTn][3]['e']=$strLine;
			}else{
				$arrTn_result[$strTn][4]['n']+=1;
				$arrTn_result[$strTn][4]['e']=$strLine;
			}
		}else{
			//首页
			$arrTn_result[$strTn][2]['n']+=1;
			$arrTn_result[$strTn][2]['e']=$strLine;
		}
	}else{
		//首页请求的数量
		preg_match('/GET (.*) HTTP/', $strLine, $matches1);
		if(empty($matches1[1])){
			return;
		}
		$strquery=parse_url($matches1[1]);
		if(empty($strquery['query'])){
			return ;
		}
		parse_str($strquery['query'], $arrquery1);
		$strTn=empty($arrquery1['tn'])?"baidu":$arrquery1['tn'];
		if($strTn=='baidu'){
			return;
		}
		$arrTn_result[$strTn][-1]['n']+=1;
		$arrTn_result[$strTn][-1]['e']=$strLine;
	}
}
