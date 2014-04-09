<?php
/**
 * 
 * @desc 通用展现策略，广告和知心结果pk，暂只支持按id做pk
 * @author chenhuailiang@baidu.com
 *
 */
class DispArchitecture extends Strategy {
	
	public function run(&$arrData, $arrConf) {
		if (empty ( $arrData ) || ! is_array ( $arrData )) {
			return false;
		}
		$arrDispConfs = Util::getConf ( '/advertise', 'DISP_STRATEGY' );
		$arrProductConfs = isset ( $arrDispConfs ['PRODUCT'] ) ? $arrDispConfs ['PRODUCT'] : array ();
		$arrGeneralConfs = isset ( $arrDispConfs ['GENERAL'] ) ? $arrDispConfs ['GENERAL'] : array ();
		$arrFilterConfs = isset ( $arrDispConfs ['FILTER'] ) ? $arrDispConfs ['FILTER'] : array ();
		$arrSampleConfs = isset ( $arrDispConfs ['SAMPLE'] ) ? $arrDispConfs ['SAMPLE'] : array ();
		
		// 抽样流量策略
		$bolSampleFlag = false;
		$strEcResultKey = 'ecResult';
		$arrLogZhiIds = array ();
		if (isset ( $arrFilterConfs ['sample_ids'] ) && ! empty ( $arrFilterConfs ['sample_ids'] ) && is_array ( $arrSampleConfs ['EC'] ) && ! empty ( $arrSampleConfs ['EC'] )) {
			$arrFilterConfs ['sample_ids'] = explode ( ',', $arrFilterConfs ['sample_ids'] );
			$arrFilterConfs ['sample_ids'] = array_flip ( $arrFilterConfs ['sample_ids'] );
			$bolSampleExist = false;
			if (is_array ( $arrData ['uiData'] ['queryInfo'] ['samplingId'] ) && ! empty ( $arrData ['uiData'] ['queryInfo'] ['samplingId'] )) {
				foreach ( $arrData ['uiData'] ['queryInfo'] ['samplingId'] as $intSamId ) {
					if (isset ( $arrFilterConfs ['sample_ids'] [$intSamId] )) {
						$bolSampleExist = true;
						break;
					}
				}
			}
			if ($bolSampleExist === true && is_array ( $arrData ['uiData'] [$strEcResultKey] ['ecResultItem'] ) && ! empty ( $arrData ['uiData'] [$strEcResultKey] ['ecResultItem'] )) {
				// 遍历广告队列结果
				foreach ( $arrData ['uiData'] [$strEcResultKey] ['ecResultItem'] as $intEcIndex => $arrEcItem ) {
					if (isset ( $arrSampleConfs ['EC'] [$arrEcItem ['id']] )) {
						$bolSampleFlag = true;
						$arrTempConfs = $arrSampleConfs ['EC'] [$arrEcItem ['id']];
						foreach ( $arrTempConfs as $intSrcIndex => $arrSrcInfo ) {
							// check抽样id
							if (isset ( $arrSrcInfo ['sample_ids'] ) && ! empty ( $arrSrcInfo ['sample_ids'] )) { 
								$arrSrcInfo ['sample_ids'] = explode ( ',', $arrSrcInfo ['sample_ids'] );
								$arrSrcInfo ['sample_ids'] = array_flip ( $arrSrcInfo ['sample_ids'] );
								$bolSampleExist = false;
								if (is_array ( $arrData ['uiData'] ['queryInfo'] ['samplingId'] ) && ! empty ( $arrData ['uiData'] ['queryInfo'] ['samplingId'] )) {
									foreach ( $arrData ['uiData'] ['queryInfo'] ['samplingId'] as $intSamId ) {
										if (isset ( $arrSrcInfo ['sample_ids'] [$intSamId] )) {
											$bolSampleExist = true;
											break;
										}
									}
								}
								if ($bolSampleExist === false) {
									continue;
								}
							} else {
								continue;
							}
							// 'src_ids' =>
							// 'id1,leftResult;id2,rightResult;id3-id6,rightResult',
							// 解析src_ids串
							$arrSrcInfo ['src_ids'] = explode ( ';', $arrSrcInfo ['src_ids'] );
							$arrSrcInfoTemp = array ();
							$arrMinMaxInfo = array (); // 保存范围id，key为min_id,max_id,result
							foreach ( $arrSrcInfo ['src_ids'] as $intTemp => $strInfo ) {
								$strInfo = explode ( ',', $strInfo );
								if (strpos ( $strInfo [0], '-' ) === false) {
									$arrSrcInfoTemp [$strInfo [0]] = $strInfo [1];
								} else {
									$arrTemp = explode ( '-', $strInfo [0] );
									$arrMinMaxInfo [$arrTemp [0]] = array ('min_id' => intval ( $arrTemp [0] ), 'max_id' => intval ( $arrTemp [1] ), 'result' => $strInfo [1] );
									unset ( $arrTemp );
								}
							}
							$arrSrcInfo ['src_ids'] = $arrSrcInfoTemp;
							unset ( $arrSrcInfoTemp );
							
							// 找知心结果且flag为1，pk掉
							// 循环处理leftResult,rightResult,topResult
							foreach ( $GLOBALS ['RESULT'] as $res ) {
								if (is_array ( $arrData ['uiData'] [$res] ['item'] ) && ! empty ( $arrData ['uiData'] [$res] ['item'] )) {
									$intTotalCount = isset ( $arrFilterConfs [$res] ) ? intval ( $arrFilterConfs [$res] ) : 0;
									$intCurCount = 0;
									// 遍历知心队列结果，执行pk策略
									foreach ( $arrData ['uiData'] [$res] ['item'] as $intIndex => $arrItem ) {
										if ($intTotalCount > 0 && $intCurCount >= $intTotalCount) {
											break;
										}
										$intCurCount ++;
										if (isset ( $arrSrcInfo ['src_ids'] [$arrItem ['dispData'] ['StdStg']] ) && trim ( $arrSrcInfo ['src_ids'] [$arrItem ['dispData'] ['StdStg']] ) == trim ( $res ) && 1 == intval ( $arrSrcInfo ['flag'] )) {
											unset ( $arrData ['uiData'] [$res] ['item'] [$intIndex] );
											$arrLogZhiIds [$arrItem ['dispData'] ['StdStg']] = $arrItem ['dispData'] ['StdStg'];
											// $bolFlag = true;
										}
										foreach ( $arrMinMaxInfo as $intMinId => $arrMinInfo ) {
											if (intval ( $arrItem ['dispData'] ['StdStg'] ) >= $intMinId && intval ( $arrItem ['dispData'] ['StdStg'] ) <= intval ( $arrMinInfo ['max_id'] ) && trim ( $arrMinInfo ['result'] ) == trim ( $res ) && 1 == intval ( $arrSrcInfo ['flag'] )) {
												unset ( $arrData ['uiData'] [$res] ['item'] [$intIndex] );
												$arrLogZhiIds [$arrItem ['dispData'] ['StdStg']] = $arrItem ['dispData'] ['StdStg'];
												// $bolFlag = true;
											}
										}
									}
								}
							}
							unset ( $arrMinMaxInfo );
						}
						unset ( $arrTempConfs );
					}
				}
			}
		}
		
		// check是否有知心资源id在强需求配置中
		$bolFilterFlag = false;
		if ($bolSampleFlag === false && isset ( $arrFilterConfs ['src_ids'] ) && ! empty ( $arrFilterConfs ['src_ids'] )) {
			$arrFilterConfs ['src_ids'] = explode ( ',', $arrFilterConfs ['src_ids'] );
			$arrFilterConfs ['src_ids'] = array_flip ( $arrFilterConfs ['src_ids'] );
			foreach ( $GLOBALS ['RESULT'] as $res ) {
				if (is_array ( $arrData ['uiData'] [$res] ['item'] ) && ! empty ( $arrData ['uiData'] [$res] ['item'] )) {
					$intTotalCount = isset ( $arrFilterConfs [$res] ) ? intval ( $arrFilterConfs [$res] ) : 0;
					$intCurCount = 0;
					foreach ( $arrData ['uiData'] [$res] ['item'] as $intIndex => $arrItemInfo ) {
						if ($intTotalCount > 0 && $intCurCount >= $intTotalCount) {
							break;
						}
						$intCurCount ++;
						if (isset ( $arrFilterConfs ['src_ids'] [$arrItemInfo ['dispData'] ['StdStg']] )) {
							$bolFilterFlag = true;
							break;
						}
					}
				}
				if ($bolFilterFlag === true) {
					break;
				}
			}
		}
		
		// $bolFlag = false;
		// $strEcResultKey = 'ecResult';
		// 处理强需求策略
		// 先处理知心屏蔽广告策略
		$arrLogEcIds = array ();
		// $arrLogZhiIds = array ();
		if ($bolFilterFlag === true && is_array ( $arrProductConfs ['ZHIXIN'] ) && ! empty ( $arrProductConfs ['ZHIXIN'] ) && is_array ( $arrData ['uiData'] [$strEcResultKey] ['ecResultItem'] ) && ! empty ( $arrData ['uiData'] [$strEcResultKey] ['ecResultItem'] )) {
			// 循环处理leftResult,rightResult,topResult
			foreach ( $GLOBALS ['RESULT'] as $res ) {
				if (isset ( $arrProductConfs ['ZHIXIN'] [$res] ) && ! empty ( $arrProductConfs ['ZHIXIN'] [$res] ) && is_array ( $arrData ['uiData'] [$res] ['item'] ) && ! empty ( $arrData ['uiData'] [$res] ['item'] )) {
					// 处理结果队列的每条结果
					$intTotalCount = isset ( $arrFilterConfs [$res] ) ? intval ( $arrFilterConfs [$res] ) : 0;
					$intCurCount = 0;
					foreach ( $arrData ['uiData'] [$res] ['item'] as $intIndex => $arrItemInfo ) {
						if ($intTotalCount > 0 && $intCurCount >= $intTotalCount) {
							break;
						}
						$intCurCount ++;
						if (isset ( $arrProductConfs ['ZHIXIN'] [$res] [$arrItemInfo ['dispData'] ['StdStg']] )) {
							$arrTempConfs = $arrProductConfs ['ZHIXIN'] [$res] [$arrItemInfo ['dispData'] ['StdStg']];
							// 遍历广告队列结果，执行屏蔽策略
							foreach ( $arrData ['uiData'] [$strEcResultKey] ['ecResultItem'] as $intEcIndex => $arrEcItem ) {
								foreach ( $arrTempConfs as $intSrcIndex => $arrSrcInfo ) {
									// check抽样id
									if (isset ( $arrSrcInfo ['sample_ids'] ) && ! empty ( $arrSrcInfo ['sample_ids'] )) {
										$arrSrcInfo ['sample_ids'] = explode ( ',', $arrSrcInfo ['sample_ids'] );
										$arrSrcInfo ['sample_ids'] = array_flip ( $arrSrcInfo ['sample_ids'] );
										$bolSampleExist = false;
										if (is_array ( $arrData ['uiData'] ['queryInfo'] ['samplingId'] ) && ! empty ( $arrData ['uiData'] ['queryInfo'] ['samplingId'] )) {
											foreach ( $arrData ['uiData'] ['queryInfo'] ['samplingId'] as $intSamId ) {
												if (isset ( $arrSrcInfo ['sample_ids'] [$intSamId] )) {
													$bolSampleExist = true;
													break;
												}
											}
										}
										if ($bolSampleExist === false) {
											continue;
										}
									}
									$arrSrcInfo ['ec_ids'] = explode ( ',', $arrSrcInfo ['ec_ids'] );
									$arrSrcInfo ['ec_ids'] = array_flip ( $arrSrcInfo ['ec_ids'] );
									// 找到广告且flag为1，pk掉
									if (isset ( $arrSrcInfo ['ec_ids'] [$arrEcItem ['id']] ) && 1 == intval ( $arrSrcInfo ['flag'] )) {
										unset ( $arrData ['uiData'] [$strEcResultKey] ['ecResultItem'] [$intEcIndex] );
										$arrLogEcIds [$arrEcItem ['id']] = $arrEcItem ['id'];
										// $bolFlag = true;
									}
								}
							}
							unset ( $arrTempConfs );
						}
					}
				}
			}
		}
		
		// 处理广告pk知心策略
		if ($bolFilterFlag === true && is_array ( $arrProductConfs ['EC'] ) && ! empty ( $arrProductConfs ['EC'] ) && is_array ( $arrData ['uiData'] [$strEcResultKey] ['ecResultItem'] ) && ! empty ( $arrData ['uiData'] [$strEcResultKey] ['ecResultItem'] )) {
			// 遍历广告队列结果
			foreach ( $arrData ['uiData'] [$strEcResultKey] ['ecResultItem'] as $intEcIndex => $arrEcItem ) {
				if (isset ( $arrProductConfs ['EC'] [$arrEcItem ['id']] )) {
					$arrTempConfs = $arrProductConfs ['EC'] [$arrEcItem ['id']];
					foreach ( $arrTempConfs as $intSrcIndex => $arrSrcInfo ) {
						// check抽样id
						if (isset ( $arrSrcInfo ['sample_ids'] ) && ! empty ( $arrSrcInfo ['sample_ids'] )) {
							$arrSrcInfo ['sample_ids'] = explode ( ',', $arrSrcInfo ['sample_ids'] );
							$arrSrcInfo ['sample_ids'] = array_flip ( $arrSrcInfo ['sample_ids'] );
							$bolSampleExist = false;
							if (is_array ( $arrData ['uiData'] ['queryInfo'] ['samplingId'] ) && ! empty ( $arrData ['uiData'] ['queryInfo'] ['samplingId'] )) {
								foreach ( $arrData ['uiData'] ['queryInfo'] ['samplingId'] as $intSamId ) {
									if (isset ( $arrSrcInfo ['sample_ids'] [$intSamId] )) {
										$bolSampleExist = true;
										break;
									}
								}
							}
							if ($bolSampleExist === false) {
								continue;
							}
						}
						// 'src_ids' =>
						// 'id1,leftResult;id2,rightResult;id3-id6,rightResult',
						// 解析src_ids串
						$arrSrcInfo ['src_ids'] = explode ( ';', $arrSrcInfo ['src_ids'] );
						$arrSrcInfoTemp = array ();
						$arrMinMaxInfo = array (); // 保存范围id，key为min_id,max_id,result
						foreach ( $arrSrcInfo ['src_ids'] as $intTemp => $strInfo ) {
							$strInfo = explode ( ',', $strInfo );
							if (strpos ( $strInfo [0], '-' ) === false) {
								$arrSrcInfoTemp [$strInfo [0]] = $strInfo [1];
							} else {
								$arrTemp = explode ( '-', $strInfo [0] );
								$arrMinMaxInfo [$arrTemp [0]] = array ('min_id' => intval ( $arrTemp [0] ), 'max_id' => intval ( $arrTemp [1] ), 'result' => $strInfo [1] );
								unset ( $arrTemp );
							}
						}
						$arrSrcInfo ['src_ids'] = $arrSrcInfoTemp;
						unset ( $arrSrcInfoTemp );
						
						// 找知心结果且flag为1，pk掉
						// 循环处理leftResult,rightResult,topResult
						foreach ( $GLOBALS ['RESULT'] as $res ) {
							if (is_array ( $arrData ['uiData'] [$res] ['item'] ) && ! empty ( $arrData ['uiData'] [$res] ['item'] )) {
								$intTotalCount = isset ( $arrFilterConfs [$res] ) ? intval ( $arrFilterConfs [$res] ) : 0;
								$intCurCount = 0;
								// 遍历知心队列结果，执行pk策略
								foreach ( $arrData ['uiData'] [$res] ['item'] as $intIndex => $arrItem ) {
									if ($intTotalCount > 0 && $intCurCount >= $intTotalCount) {
										break;
									}
									$intCurCount ++;
									if (isset ( $arrSrcInfo ['src_ids'] [$arrItem ['dispData'] ['StdStg']] ) && trim ( $arrSrcInfo ['src_ids'] [$arrItem ['dispData'] ['StdStg']] ) == trim ( $res ) && 1 == intval ( $arrSrcInfo ['flag'] )) {
										unset ( $arrData ['uiData'] [$res] ['item'] [$intIndex] );
										$arrLogZhiIds [$arrItem ['dispData'] ['StdStg']] = $arrItem ['dispData'] ['StdStg'];
										// $bolFlag = true;
									}
									foreach ( $arrMinMaxInfo as $intMinId => $arrMinInfo ) {
										if (intval ( $arrItem ['dispData'] ['StdStg'] ) >= $intMinId && intval ( $arrItem ['dispData'] ['StdStg'] ) <= intval ( $arrMinInfo ['max_id'] ) && trim ( $arrMinInfo ['result'] ) == trim ( $res ) && 1 == intval ( $arrSrcInfo ['flag'] )) {
											unset ( $arrData ['uiData'] [$res] ['item'] [$intIndex] );
											$arrLogZhiIds [$arrItem ['dispData'] ['StdStg']] = $arrItem ['dispData'] ['StdStg'];
											// $bolFlag = true;
										}
									}
								}
							
							}
						}
						unset ( $arrMinMaxInfo );
					}
					unset ( $arrTempConfs );
				}
			}
		}
		
		// 处理通用PK策略
		// 处理知心pk广告
		if (is_array ( $arrGeneralConfs ['ZHIXIN'] ) && ! empty ( $arrGeneralConfs ['ZHIXIN'] ) && is_array ( $arrData ['uiData'] [$strEcResultKey] ['ecResultItem'] ) && ! empty ( $arrData ['uiData'] [$strEcResultKey] ['ecResultItem'] )) {
			foreach ( $arrGeneralConfs ['ZHIXIN'] as $intIndex => $arrEcInfos ) {
				$bolDelFlag = false;
				$bolExcFlag = false;
				if (is_array ( $arrData ['uiData'] [$arrEcInfos ['result']] ['item'] ) && ! empty ( $arrData ['uiData'] [$arrEcInfos ['result']] ['item'] )) {
					$arrEcInfos ['ec_ids'] = explode ( ',', $arrEcInfos ['ec_ids'] );
					$arrEcInfos ['except_ids'] = explode ( ',', $arrEcInfos ['except_ids'] );
					$arrEcInfos ['ec_ids'] = array_flip ( $arrEcInfos ['ec_ids'] );
					$arrEcInfos ['except_ids'] = array_flip ( $arrEcInfos ['except_ids'] );
					// pk广告
					foreach ( $arrData ['uiData'] [$strEcResultKey] ['ecResultItem'] as $intEcIndex => $arrEcItem ) {
						if (isset ( $arrEcInfos ['ec_ids'] [$arrEcItem ['id']] )) {
							$bolDelFlag = true;
						}
						if (isset ( $arrEcInfos ['except_ids'] [$arrEcItem ['id']] )) {
							$bolExcFlag = true;
						}
					}
					if ($bolDelFlag === true && $bolExcFlag === false) {
						foreach ( $arrData ['uiData'] [$strEcResultKey] ['ecResultItem'] as $intEcIndex => $arrEcItem ) {
							if (isset ( $arrEcInfos ['ec_ids'] [$arrEcItem ['id']] )) {
								unset ( $arrData ['uiData'] [$strEcResultKey] ['ecResultItem'] [$intEcIndex] );
								$arrLogEcIds [$arrEcItem ['id']] = $arrEcItem ['id'];
							}
						}
					}
				}
			}
		}
		if ($bolFilterFlag === false && $bolSampleFlag === false) {
			// 处理广告pk知心
			if (is_array ( $arrGeneralConfs ['EC'] ) && ! empty ( $arrGeneralConfs ['EC'] ) && is_array ( $arrData ['uiData'] [$strEcResultKey] ['ecResultItem'] ) && ! empty ( $arrData ['uiData'] [$strEcResultKey] ['ecResultItem'] )) {
				foreach ( $arrGeneralConfs ['EC'] as $intIndex => $arrConfInfo ) {
					if (is_array ( $arrData ['uiData'] [$arrConfInfo ['result']] ['item'] ) && ! empty ( $arrData ['uiData'] [$arrConfInfo ['result']] ['item'] )) {
						$arrConfInfo ['ec_ids'] = explode ( ',', $arrConfInfo ['ec_ids'] );
						$arrConfInfo ['ec_ids'] = array_flip ( $arrConfInfo ['ec_ids'] );
						// pk知心
						foreach ( $arrData ['uiData'] [$strEcResultKey] ['ecResultItem'] as $intEcIndex => $arrEcItem ) {
							if (isset ( $arrConfInfo ['ec_ids'] [$arrEcItem ['id']] )) {
								unset ( $arrData ['uiData'] [$arrConfInfo ['result']] );
								$arrLogZhiIds [$arrConfInfo ['result']] = $arrConfInfo ['result'];
							}
						}
					}
				}
			}
		}
		if (! empty ( $arrLogEcIds )) {
			$GLOBALS ['logArr'] ['advertise_filtered'] = implode ( ',', $arrLogEcIds );
		}
		if (! empty ( $arrLogZhiIds )) {
			$GLOBALS ['logArr'] ['zhixin_filtered'] = implode ( ',', $arrLogZhiIds );
		}
		return true;
	}
}