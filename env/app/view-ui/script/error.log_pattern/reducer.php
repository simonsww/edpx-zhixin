<?php
/**
 */
ini_set ( "memory_limit", "1024M" );
error_reporting ( E_ALL & ~ E_NOTICE );
ini_set ( 'display_errors', 'On' );
ini_set ( 'error_log', '' );

$arrResult=array();

// 主循环
while ( ($strLine = fgets ( STDIN )) != false ) {
	$strLine = trim ( $strLine );
	if (empty ( $strLine )) {
		continue;
	}
	$arr=explode("\t", $strLine);
	$key = $arr[0];
	if($arr[1]>0 && !empty($key))
	{
		$arrResult[$key]['n'] +=$arr[1];
		$arrResult[$key]['e'] =$arr[2];
	}
	unset ( $strLine );
}

foreach ($arrResult as $k=>$v){
	echo $k."\t".$v['n']."\t".$v['e']."\n";
}