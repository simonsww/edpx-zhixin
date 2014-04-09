<?php
/***************************************************************************
 * 
 * Copyright (c) 2013 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/

/**
 * @file strategy.php
 *
 * @author baisong(com@baidu.com)
 *         @date 2013/01/14 17:54:01
 *         @brief
 *        
 *        
 */

/*
 * replace some templates with DEFAULT_TEMPLATE_FOR_INTERFERE configured in
 * view-ui.conf according to TEMPLATE_INTERFERE configured also in view-ui.conf
 */
function strategy_function_1(&$data, $index) {
	$tempnames = array ();
	$interfere = array ();
	$flag = 0;
	if (! empty ( $data ['uiData'] ['asResult'] ['item'] ) && is_array ( $data ['uiData'] ['asResult'] ['item'] )) {
		foreach ( $data ['uiData'] ['asResult'] ['item'] as $key => $value ) {
			if ($value ['comeFrome'] == "SP") {
				$tempnames [] = $value ['dispData'] ['strategy'] ['tempName'];
			}
			if ($value ['comeFrome'] == "AS") {
				$tempnames [] = $value ['dispData'] ['templateName'];
			}
		}
	}
	if (! empty ( $data ['uiData'] ['leftResult'] ['item'] ) && is_array ( $data ['uiData'] ['leftResult'] ['item'] )) {
		foreach ( $data ['uiData'] ['leftResult'] ['item'] as $key => $value ) {
				$tempnames [] = $value ['dispData'] ['strategy'] ['tempName'];
		}
	}
	if (! empty ( $GLOBALS ['STRATEGY1'] ['TEMPLATE_INTERFERE'] ) && is_array ( $GLOBALS ['STRATEGY1'] ['TEMPLATE_INTERFERE'] ) && ! empty ( $tempnames ) && is_array ( $tempnames )) {
		foreach ( $GLOBALS ['STRATEGY1'] ['TEMPLATE_INTERFERE'] as $k => $v ) {
			if (in_array ( $v ['right'], $tempnames ) && in_array ( $v ['left'], $tempnames )) {
				$flag = 1;
				$interfere [$v ['right']] = $v ['default'];
			}
		}
		if ($flag == 1) {
			if (! empty ( $data ['uiData'] ['asResult'] ['item'] ) && is_array ( $data ['uiData'] ['asResult'] ['item'] )){
				foreach ( $data ['uiData'] ['asResult'] ['item'] as $key => $value ) {
					if ($value ['comeFrome'] == "SP" && array_key_exists ( $value ['dispData'] ['strategy'] ['tempName'], $interfere )) {
						$data ['uiData'] ['asResult'] ['item'] [$key] ['dispData'] ['strategy'] ['tempName'] = $interfere [$value ['dispData'] ['strategy'] ['tempName']];
					}
					if ($value ['comeFrome'] == "AS" && array_key_exists ( $value ['dispData'] ['templateName'], $interfere )) {
						$data ['uiData'] ['asResult'] ['item'] [$key] ['dispData'] ['templateName'] = $interfere [$value ['dispData'] ['templateName']];
					}
				}
			}
			if (! empty ( $data ['uiData'] ['leftResult'] ['item'] ) && is_array ( $data ['uiData'] ['leftResult'] ['item'] )){
				foreach ( $data ['uiData'] ['leftResult'] ['item'] as $key => $value ) {
					if (array_key_exists ( $value ['dispData'] ['strategy'] ['tempName'], $interfere )) {
						$data ['uiData'] ['leftResult'] ['item'] [$key] ['dispData'] ['strategy'] ['tempName'] = $interfere [$value ['dispData'] ['strategy'] ['tempName']];
					}
				}
			}
		}
	}
}

// 针对模板过滤数据
function strategy_function_5(&$data, $index) {
	$arrTemplatesToFilter = $GLOBALS ['STRATEGY' . $index] ['TEMPLATE'];
	if (! empty ( $data ['uiData'] ['asResult'] ['item'] ) && is_array ( $data ['uiData'] ['asResult'] ['item'] )) {
		foreach ( $data ['uiData'] ['asResult'] ['item'] as $key => $value ) {
			if (in_array ( $value ['dispData'] ['strategy'] ['tempName'], $arrTemplatesToFilter )) {
				unset ( $data ['uiData'] ['asResult'] ['item'] [$key] );
				// 在总结果数中减掉
				if ($value ['comeFrome'] == 'SP' && $data ['uiData'] ['asResult'] ['spResutlNum'] > 0) {
					$data ['uiData'] ['asResult'] ['spResutlNum'] -=1;
				} else if ($value ['comeFrome'] == 'AS' && $data ['uiData'] ['asResult'] ['asResultNum'] > 0) {
					$data ['uiData'] ['asResult'] ['asResultNum'] -=1;
				}
			}
		}
	}
}

/*
 * * $data : 需要操作的原始数据 * $modifier : 需要操作的方 * - 0 删除 * - 1 增加 * $$modifierStr :
 * 需要增加或者删除�
 */

function modifyNewsIndex(&$data, $modifier, $modifierStr) {
	if (empty ( $data )) {
		return 0;
	}
	$dataInfo = explode ( ",", $data );
	$dataCountTmp = 0;
	$dataCount = count ( $dataInfo );
	
	while ( $dataCountTmp < $dataCount ) {
		if ($dataInfo [$dataCountTmp] === $modifierStr) {
			break;
		}
		$dataCountTmp = $dataCountTmp + 1;
	}
	
	if ($modifier == 0) {
		// 删除操作，首先需要找到位置，如果找到则删除；否则不做任何处理
		if ($dataCountTmp < $dataCount) {
			unset ( $dataInfo [$dataCountTmp] );
			$data = implode ( ",", $dataInfo );
		}
		return 0;
	} else {
		// 增加操作，需要判断是否存在，如果存在则不进行任何操作；
		
		// //如果不存在，如果当前的数据量小于3，那么放在最后；
		// //如果不存在，如果当前的数据量大于等于3，那么放在第三位置；
		if ($dataCountTmp >= $dataCount) {
			if ($dataCount < 3) {
				$data = $data . "," . $modifierStr;
			} else {
				array_splice ( $dataInfo, 2, 0, $modifierStr );
				$data = implode ( ",", $dataInfo );
			}
		}
	}
	return 0;
}

function strategy_function_2(&$data, $index) {
	$tempnames = array ();
	$flag = 0;
	$hasreplaceResult = 0;
	$hasRealPSResult = 0;
	$replaceLocation = - 1;
	$realResultPosiont = - 1;
	$fromStdstg = $GLOBALS ['STRATEGY' . $index] ['STRATEGY_CONF'] [1];
	$toStdstg = $GLOBALS ['STRATEGY' . $index] ['STRATEGY_CONF'] [0];
	$phptoBak = array ();
	
	if (empty ( $fromStdstg ) || empty ( $toStdstg )) {
		return 0;
	}
	
	// 19是时效性结果
	if (! empty ( $data ['uiData'] ['asResult'] ['item'] ) && is_array ( $data ['uiData'] ['asResult'] ['item'] )) {
		// 知心结果都在第一个位置，如果第一个位置不存在知心结果，那么不处理
		foreach ( $data ['uiData'] ['asResult'] ['item'] as $key => $value ) {
			if ($value ['comeFrome'] == "SP") {
				if (! empty ( $value ['dispData'] )) {
					if ($value ['dispData'] ['StdStg'] == $toStdstg) {
						$replaceLocation = $key;
						$hasreplaceResult = 1;
						break;
					}
				}
			}
		}
		if ($hasreplaceResult == 1) {
			foreach ( $data ['uiData'] ['asResult'] ['item'] as $key => &$value ) {
				if ($value ['comeFrome'] == "SP") {
					if (! empty ( $value ['dispData'] )) {
						if ($value ['dispData'] ['StdStg'] == $fromStdstg) {
							$hasRealPSResult = 1;
							$realResult = &$data ['uiData'] ['asResult'] ['item'] [$replaceLocation] ['dispData'] ['resultData'] ['tplData'] ['news'];
							$hasRealResult = 0;
							if (! empty ( $value ['offsetInfo'] ['urlEncoded'] )) {
								$realResult ['link'] = $value ['offsetInfo'] ['urlEncoded'];
							}
							$phptoBak = $realResult ['photo'];
							if (! empty ( $value ['dispData'] ['ThumURL0'] ) && ! empty ( $value ['dispData'] ['SubTitleUrl0'] )) {
								$phptoInfo = array ();
								$phptoInfo ['src'] = $value ['dispData'] ['ThumURL0'];
								$phptoInfo ['link'] = $value ['dispData'] ['SubTitleUrl0'];
								unset ( $realResult ['photo'] );
								$realResult ['photo'] [] = $phptoInfo;
								$realResult ['photo#num#baidu'] = 1;
							} else {
								unset ( $realResult ['photo'] );
							}
							$hasRealResult = 0;
							$realResultNum = 0;
							for($i = 0; $i < 10; $i ++) {
								$listResutl = array ();
								if (! empty ( $value ['dispData'] ['SubTitleUrl' . $i] )) {
									$listResutl ['link'] = $value ['dispData'] ['SubTitleUrl' . $i];
									$hasRealResult ++;
								}
								if (! empty ( $value ['dispData'] ['SubTitle' . $i] )) {
									$listResutl ['subject'] = $value ['dispData'] ['SubTitle' . $i];
									$hasRealResult ++;
								}
								if (! empty ( $value ['dispData'] ['SiteName' . $i] )) {
									$listResutl ['from'] = $value ['dispData'] ['SiteName' . $i];
									$hasRealResult ++;
								}
								if (! empty ( $value ['dispData'] ['PostTime' . $i] )) {
									$listResutl ['time'] = $value ['dispData'] ['PostTime' . $i];
									$hasRealResult ++;
								}
								if (! empty ( $value ['dispData'] ['SubAbs' . $i] )) {
									$listResutl ['text'] = $value ['dispData'] ['SubAbs' . $i];
								}
								if ($hasRealResult > 3) {
									if ($realResultNum == 0) {
										unset ( $realResult ['list'] );
									}
									$realResultNum = $realResultNum + 1;
									
									$realResult ['list'] [] = $listResutl;
									$hasRealResult = 0;
									// PM要求最大结果条数为三
									if ($realResultNum >= 3) {
										break;
									}
								} else {
									break;
								}
							}
							if ($realResultNum > 0) {
								$realResult ['list#num#baidu'] = $realResultNum;
							} else {
								$realResult ['photo'] = $phptoBak;
							}
							array_splice ( $data ['uiData'] ['asResult'] ['item'], $key, 1 );
							$data ['uiData'] ['asResult'] ['spResutlNum'] = $data ['uiData'] ['asResult'] ['spResutlNum'] - 1;
							// unset($data['uiData']['asResult']['item'][$key]);
							// unset($replaceLocation);
							// unset($data['uiData']['asResult']['item'][$replaceLocation]['resultData']['tplData']['news']);
							// $realResult =
							// $data['uiData']['asResult']['item'][$key];
							// array_splice($data['uiData']['asResult']['item'],
							// $key, 1);
							break;
						}
					}
				}
			}
			if ($hasRealPSResult == 0) {
				unset ( $data ['uiData'] ['asResult'] ['item'] [$replaceLocation] ['dispData'] ['resultData'] ['tplData'] ['news'] );
				modifyNewsIndex ( $data ['uiData'] ['asResult'] ['item'] [$replaceLocation] ['dispData'] ['resultData'] ['tplData'] ['index'], 0, "news" );
			} else {
				// 处理index
				modifyNewsIndex ( $data ['uiData'] ['asResult'] ['item'] [$replaceLocation] ['dispData'] ['resultData'] ['tplData'] ['index'], 1, "news" );
			}
		}
	
	}
}

function strategy_function_3(&$data, $index) {
	$tempnames = array ();
	$flag = 0;
	$hasreplaceResult = 0;
	$hasRealPSResult = 0;
	$replaceLocation = - 1;
	$realResultPosiont = - 1;
	$fromStdstg = $GLOBALS ['STRATEGY' . $index] ['STRATEGY_CONF'] [1];
	$toStdstg = $GLOBALS ['STRATEGY' . $index] ['STRATEGY_CONF'] [0];
	
	if (empty ( $fromStdstg ) || empty ( $toStdstg )) {
		return 0;
	}
	
	// 19是时效性结果
	if (! empty ( $data ['uiData'] ['asResult'] ['item'] ) && is_array ( $data ['uiData'] ['asResult'] ['item'] )) {
		// 知心结果都在第一个位置，如果第一个位置不存在知心结果，那么不处理
		foreach ( $data ['uiData'] ['asResult'] ['item'] as $key => $value ) {
			if ($value ['comeFrome'] == "SP") {
				if (! empty ( $value ['dispData'] )) {
					if ($value ['dispData'] ['StdStg'] == $toStdstg) {
						$replaceLocation = $key;
						$hasreplaceResult = 1;
						break;
					}
				}
			}
		}
		// $hasreplaceResult = 0;
		if ($hasreplaceResult == 1) {
			foreach ( $data ['uiData'] ['asResult'] ['item'] as $key => &$value ) {
				if ($value ['comeFrome'] == "SP") {
					if (! empty ( $value ['dispData'] )) {
						if ($value ['dispData'] ['StdStg'] == $fromStdstg) {
							$hasRealPSResult = 1;
							$realResult = &$data ['uiData'] ['asResult'] ['item'] [$replaceLocation] ['dispData'] ['resultData'] ['tplData'];
							$hasRealResult = 0;
							$realResultNum = 0;
							$hasPhoto = 0;
							
							if (empty ( $realResult ['newssubject'] )) {
								$subject = array ();
								$subjectArray = array ();
								$subjectArray ['subject'] = $data ['uiData'] ['queryInfo'] ['wordNoSyntax'] . "的最新相关消息";
								$subjectArray ['link'] = $value ['offsetInfo'] ['urlEncoded'];
							}
							$newsOld = $realResult ['news'];
							unset ( $realResult ['news'] );
							for($i = 0; $i < 10; $i ++) {
								CLog::debug ( "realResultNum $realResultNum" );
								$hasRealResult = 0;
								if ($realResultNum == 0 && ! empty ( $value ['dispData'] ['ThumURL' . $i] ) && ! empty ( $value ['dispData'] ['SubTitleUrl' . $i] )) {
									$realResult ['news'] [$realResultNum] ['photo'] = $value ['dispData'] ['ThumURL' . $i];
									$realResult ['news'] [$realResultNum] ['link'] = $value ['dispData'] ['SubTitleUrl' . $i];
									$realResultNum ++;
									$hasPhoto = 1;
								}
								if (! empty ( $value ['dispData'] ['SubTitleUrl' . $i] )) {
									$realResult ['news'] [$realResultNum] ['link'] = $value ['dispData'] ['SubTitleUrl' . $i];
									$hasRealResult ++;
								}
								if (! empty ( $value ['dispData'] ['SubTitle' . $i] )) {
									$realResult ['news'] [$realResultNum] ['subject'] = $value ['dispData'] ['SubTitle' . $i];
									$hasRealResult ++;
								}
								if (! empty ( $value ['dispData'] ['SiteName' . $i] )) {
									$realResult ['news'] [$realResultNum] ['from'] = $value ['dispData'] ['SiteName' . $i];
									$hasRealResult ++;
								}
								if (! empty ( $value ['dispData'] ['PostTime' . $i] )) {
									$realResult ['news'] [$realResultNum] ['time'] = $value ['dispData'] ['PostTime' . $i];
									$hasRealResult ++;
								}
								if (! empty ( $value ['dispData'] ['SubAbs' . $i] )) {
									$realResult ['news'] [$realResultNum] ['summary'] = $value ['dispData'] ['SubAbs' . $i];
								}
								if ($hasRealResult > 3) {
									$realResultNum ++;
									// PM要求最大结果条数为三
									if (($hasPhoto == 1 && $realResultNum >= 4) || ($hasPhoto == 0 && $realResultNum >= 3)) {
										break;
									}
								} else {
									if (($hasRealResult == 0 && $realResultNum == 0) || $hasRealResult != 0) {
										$realResult ['news'] = $newsOld;
										array_splice ( $data ['uiData'] ['asResult'] ['item'], $key, 1 );
										$data ['uiData'] ['asResult'] ['spResutlNum'] = $data ['uiData'] ['asResult'] ['spResutlNum'] - 1;
										break 2;
									}
									break;
								}
							}
							
							$realResult ['news#num#baidu'] = $realResultNum;
							// unset($data['uiData']['asResult']['item'][$key]);
							// unset($replaceLocation);
							// unset($data['uiData']['asResult']['item'][$replaceLocation]['resultData']['tplData']['news']);
							// $realResult =
							// $data['uiData']['asResult']['item'][$key];
							array_splice ( $data ['uiData'] ['asResult'] ['item'], $key, 1 );
							$data ['uiData'] ['asResult'] ['spResutlNum'] = $data ['uiData'] ['asResult'] ['spResutlNum'] - 1;
							break;
						}
					}
				}
			}
			if ($hasRealPSResult == 0) {
				unset ( $data ['uiData'] ['asResult'] ['item'] [$replaceLocation] ['dispData'] ['resultData'] ['tplData'] ['news'] );
				modifyNewsIndex ( $data ['uiData'] ['asResult'] ['item'] [$replaceLocation] ['dispData'] ['resultData'] ['tplData'] ['index'], 0, "news" );
			} else {
				// 对index进行处理
				modifyNewsIndex ( $data ['uiData'] ['asResult'] ['item'] [$replaceLocation] ['dispData'] ['resultData'] ['tplData'] ['index'], 1, "news" );
			}
		}
	
	}
}

/*
 * 同一位置出现的多个提示，按照优先级去重。只展示最高优先级的提示，如有多个最高优先级则同时展示
 * */
function strategy_function_6(&$data, $index)
{
    /*
     $queryHintLocation=array('Top','BoxBottom','AdvBottom','PagerTop','PagerBottom','PagerRight',
        'Result01','Result02','Result03','Result04','Result05','Result06','Result07','Result08','Result09');//页面级可能的提示位置
    $urlHintLocation=array('resultTop','titleBottom','titleRight','titleLeft','abstractLeft','abstractRight','abstractBottom',
        'siteLeft','cacheRight','resultBottom');//单条结果可能的提示位置
    */
    $HintLocation=array('Top','BoxBottom','AdvBottom','PagerTop','PagerBottom','PagerRight',
        'Result01','Result02','Result03','Result04','Result05','Result06','Result07','Result08','Result09',
        'resultTop','titleBottom','titleRight','titleLeft','abstractLeft','abstractRight','abstractBottom',
        'siteLeft','cacheRight','resultBottom','MostHigh');//所有可能的提示位置
    //query级别提示
	$hint_array = array();
	if( !empty($data['uiData']['queryInfo']['promptNode']) && is_array($data['uiData']['queryInfo']['promptNode']) ){
		foreach($data['uiData']['queryInfo']['promptNode'] as $index=>$hint){
			if( !empty($hint['promptContent']) ){
				$temp=json_decode($hint['promptContent'],true);
				if(!empty($temp['hints']) && is_array($temp['hints'])){
					foreach($temp['hints'] as $key=>$value){//当前$temp['hints']只有一个元素
                  		foreach($value as $key2=>$value2){
                            //add by songlei(songlei03@baidu.com) 2013-10-15 地域消保提示  
                            if(isset($value2['hintData']['region']) && isset($data['uiData']['queryInfo']['prompt_region'])){
                                if($value2['hintData']['region'] != $data['uiData']['queryInfo']['prompt_region']){
                                    unset($data['uiData']['queryInfo']['promptNode'][$index]);
                                    unset($temp['hints'][$key]);
                                    continue;
                                }
                            }
                	      $temp['hints'][$key][$key2]['index']=$index;//新加一个字段保存该提示在$data['uiData']['queryInfo']['promptNode']的index
                		}
                	}
                    $hint_array = array_merge_recursive($hint_array,$temp);//将所有提示信息merge成一个数组，同一提示位置的在一个子数组中
				}
			}
		}
	}
    $reserve_index=array();//所有保留的promptNode的index
    if(!empty($hint_array['hints']) && is_array($hint_array['hints'])){
	    foreach($hint_array['hints'] as $k1=>$v1){
	    	if (! is_array ( $v1 ))
				continue;
			$max_pri = 0; // 最大优先级
			foreach ( $v1 as $k2 => $v2 ) {
				if ($v2 ['priority'] > $max_pri) {
					$max_pri = $v2 ['priority'];
				}
			}
			foreach ( $v1 as $k2 => $v2 ) {
				if ($v2 ['priority'] == $max_pri) {
					$reserve_index [] = $v2 ['index'];
				}
			}
	    }
	    $hint_array=array();
	    foreach($reserve_index as $index){
	        $hint_array[]=$data['uiData']['queryInfo']['promptNode'][$index];//优先级去重后保存的promptNode
	    }
	    $data['uiData']['queryInfo']['promptNode']=$hint_array;
    }
    //URL级别提示
    if( !empty($data['uiData']['asResult']['item']) && is_array($data['uiData']['asResult']['item']) ){
        foreach($data['uiData']['asResult']['item'] as $itemKey=>$itemValue){//逐条处理AS结果
			$hint_array=array();
			$stationary_hints=array();//还有一些提示是通过ID写死在模板中，没有content字段
			$reserve_index=array();
            if( !empty($itemValue['dispData']['addSubArr']) && is_array($itemValue['dispData']['addSubArr']) ){//有URL级别提示信息
                $max_pri=0;
                foreach($itemValue['dispData']['addSubArr'] as $index=>$hint){
					if( !empty($hint['content']) ){
						$temp=json_decode($hint['content'],true);
						if(!empty($temp['hints']) && is_array($temp['hints'])){
							foreach($temp['hints'] as $key=>$value){//当前$temp['hints']只有一个元素
								foreach($value as $key2=>$value2){
								  $temp['hints'][$key][$key2]['index']=$index;//新加一个字段保存该提示在$data['uiData']['asResult']['item'][$itemKey]['dispData']['addSubArr']的index
								}
							}
							$hint_array = array_merge_recursive($hint_array,$temp);//将该条结果的所有提示信息merge成一个数组，同一提示位置的在一个子数组中
						}
					}//end of if( !empty($hint['promptContent']) )
					else
					{
						$stationary_hints[]=$hint;//这些写死的提示全部保留，不参与
					}
                }//end of foreach($v['dispData']['addSubArr'] as $index=>$hint)
                if(!empty($hint_array['hints']) && is_array($hint_array['hints'])){
					foreach($hint_array['hints'] as $k1=>$v1){
						if (! is_array ( $v1 ))
							continue;
						$max_pri = 0;
						foreach ( $v1 as $k2 => $v2 ) {
							if ($v2 ['priority'] > $max_pri) {
								$max_pri = $v2 ['priority'];
							}
						}
						foreach ( $v1 as $k2 => $v2 ) {
							if ($v2 ['priority'] == $max_pri) {
								$reserve_index [] = $v2 ['index'];
							}
						}
					}
					$hint_array=array();
					foreach($reserve_index as $index){
						$hint_array[]=$data['uiData']['asResult']['item'][$itemKey]['dispData']['addSubArr'][$index];
					}
					foreach($stationary_hints as $stationary_hint){
						$hint_array[]=$stationary_hint;
					}
					$data['uiData']['asResult']['item'][$itemKey]['dispData']['addSubArr']=$hint_array;
          		  }
				}
			} 
		}
}

/*
 * call strategy_functions according to the order of 'USE_STRTEGY' configured in
 * view-ui.conf
 */
function strategy(&$data) {
	if (! empty ( $GLOBALS ['STRATEGY'] ['USE_STRATEGY'] ) && is_array ( $GLOBALS ['STRATEGY'] ['USE_STRATEGY'] )) {
		foreach ( $GLOBALS ['STRATEGY'] ['USE_STRATEGY'] as $key => $value ) {
			$fn = $GLOBALS ['STRATEGY' . $value] ['STRATEGY_FUNCTION'];
			if (function_exists ( $fn )) {
				$fn ( $data, $value );
			} else {
				$status = $GLOBALS ['STATUS_CODE'] ['FUNCTION_NOT_EXIST'];
				CLog::warning ( $GLOBALS ['STATUS_MSG'] [$status] . " [$fn]", $status );
			}
		}
	}
}

/*
 * vim: set expandtab ts=4 sw=4 sts=4 tw=100:
 */
?>
