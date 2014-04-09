<?php
/**
 */

ini_set ( "memory_limit", "1024M" );
error_reporting ( E_ALL & ~ E_NOTICE );
ini_set ( 'display_errors', 'On' );
ini_set ( 'error_log', '' );

$arrresult=array();

// 主循环
while ( ($strLine = fgets ( STDIN )) != false ) {
	$strLine = trim ( $strLine );
	if (empty ( $strLine )) {
		continue;
	}
	parse($strLine);
	unset ( $strLine );
}


foreach ($arrresult as $k=>$v){
	echo $k."\t".$v['n']."\t".$v['e']."\n";
}

if(empty($arrresult)){
	echo " ";	
}

function parse($strLine){
	//排除的模式
	if(preg_match('/notice.*built by gcc/',$strLine)){
		return;
	}
	if(preg_match('/notice.*OS: Linux/',$strLine)){
		return;
	}
	if(preg_match('/notice.*getrlimit\(RLIMIT_NOFILE\)/',$strLine)){
		return;
	}
	if(preg_match('/notice.*worker process/',$strLine)){
		return;
	}
	if(preg_match('/notice.*sched_setaffinity/',$strLine)){
		return;
	}
	if(preg_match('/notice.*cache loader process/',$strLine)){
		return;
	}
	if(preg_match('/notice.*signal .* received/',$strLine)){
		return;
	}
	if(preg_match('/notice.*cache manager process/',$strLine)){
		return;
	}
	if(preg_match('/notice.*exiting/',$strLine)){
		return;
	}
	if(preg_match('/notice.*gracefully shutting down/',$strLine)){
		return;
	}
	if(preg_match('/notice.*reconfiguring/',$strLine)){
		return;
	}
	if(preg_match('/notice.*-nginx_/',$strLine)){
		return;
	}
	if(preg_match('/Time :/',$strLine)){
		return;
	}
	if(preg_match('/notice.*using the .* event method/',$strLine)){
		return;
	}
	if(preg_match('/notice.*reopening logs/',$strLine)){
		return;
	}
	//已识别模式
	if(preg_match('/cross warn: success after retry/',$strLine)){
		statistic('cross warn: success after retry', $strLine);
		return;
	}
	if(preg_match('/cross warn: refuse after retry/',$strLine)){
		statistic('cross warn: refuse after retry', $strLine);
		return;
	}
	if(preg_match('/cross warn: refuse by early warning/',$strLine)){
		statistic('cross warn: refuse by early warning', $strLine);
		return;
	}
	if(preg_match('/cross warn: refuse by upstream directly/',$strLine)){
		statistic('cross warn: refuse by upstream directly', $strLine);
		return;
	}
	//自动识别
	$arr = split(" ", $strLine);
	$key="";
	for($i=0; $i<20; $i++){
		$arr[$i]=trim($arr[$i]);
		if(empty($arr[$i])){
			continue;
		}
		if(preg_match('/[0-9=&\?\.\/]/', $arr[$i])){
			continue;
		}
		$key.=' '.$arr[$i];
	}
	statistic($key, $strLine);
}

function statistic($key, $strLine){
	global  $arrresult;
	if(empty($arrresult[$key])){
		$arrresult[$key]['n']=1;
		$arrresult[$key]['e']=$strLine;
	}else{
		$arrresult[$key]['n']+=1;
	}
}

