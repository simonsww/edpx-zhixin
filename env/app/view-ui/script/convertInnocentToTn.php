<?php
$arrData = file ( 'innocent' );
foreach ( $arrData as $data ) {
	if (empty ( $data )) {
		continue;
	}
	$arrItem = explode ( ' ', trim ( $data ) );
	if (count ( $arrItem ) == 1) {
	
	} else if (count ( $arrItem ) == 2) {
		if (preg_match ( '/\d+\.\d+\.\d+\.\d+/', $arrItem [1] )) {
		
		} else {
			echo $arrItem [1] . " : 1\n";
		}
	} else if (count ( $arrItem ) == 3) {
		echo $arrItem [1] . " : 1\n";
	}
}
