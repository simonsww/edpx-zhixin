<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file modifier.getPages.php 
 * @package plugins
 * @author liuyue05@baidu.com
 * @date 2014-01-25 00:00
 */


function smarty_modifier_getPages($currentPage, $totalPages, $displaySize = 10){

	//容错部分
	if ($totalPages <= 0 || $displaySize <= 0 || $currentPage<= 0) {
		return array();
	}
	else{

		$startPage = 1;
		$endPage = $totalPages;


		//总页数大于显示尺寸
		if($totalPages > $displaySize){
			//当前页前面的分页数
			$front = floor($displaySize/2);
			//当前页后面的分页数
			$tail = $displaySize - $front - 1;

			if(($currentPage - 1) <= $front){
				$endPage = $displaySize;
			}
			else if($currentPage >($totalPages - $tail)){
				$startPage = $totalPages - $displaySize + 1;
			}
			else{
				$startPage = $currentPage - $front;
				$endPage = $startPage + $displaySize - 1;
			}

		}
		return range($startPage, $endPage);
	}

}
?>
