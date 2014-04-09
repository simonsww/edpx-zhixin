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
	$arr=explode("\t", $strLine);
	if(in_array($arr[1], array(-1,1,2,3,4)))
	{
		$arrTn_result[$arr[0]][$arr[1]]['n']+=$arr[2];
		$arrTn_result[$arr[0]][$arr[1]]['e']=$strLine;
	}
	unset ( $strLine );
}

foreach ($arrTn_result as $k=>$v){
	echo $k."\t".$v[-1]['n']."\t".$v[1]['n']."\t".$v[2]['n']."\t".$v[3]['n']."\t".$v[4]['n']."\n";
}