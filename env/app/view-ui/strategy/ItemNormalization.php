<?php
/**
 * 数据打平，即将AS中数据格式打平为SP
 * @author 贾春鑫(jiachunxin@baidu.com)
 *
 */
class ItemNormalization extends Strategy {
	public function run(&$arrData, $arrConf) {
		if (empty ( $arrData ) || ! is_array ( $arrData )) {
			return false;
		}
		if (empty ( $arrConf ['SRC_ID'] )) {
			$arrSrcIds = array ();
		} else {
			$arrSrcIds = split ( ',', $arrConf ['SRC_ID'] );
		}
		if (empty ( $arrConf ['RESULT'] )) {
			$arrResults = array ();
		} else {
			$arrResults = split ( ',', $arrConf ['RESULT'] );
		}
		foreach ( $GLOBALS ['RESULT'] as $res ) {
			if (! in_array ( $res, $arrResults )) {
				continue;
			}
			if (! empty ( $arrData ['uiData'] [$res] ['item'] ) && is_array ( $arrData ['uiData'] [$res] ['item'] )) {
				foreach ( $arrData ['uiData'] [$res] ['item'] as $index => &$item ) {
					if (! in_array ( $item ['dispData'] ['StdStg'], $arrSrcIds )) {
						continue;
					}
					$this->normalizeItem ( $item ,$arrData);
				}
				unset ( $item );
			}
		}
		return true;
	}
	
	public function normalizeItem(&$arrItem,$arrData) {
		if (empty ( $arrItem ) || empty($arrData)) {
			return false;
		}

        $originQuery = "";
        $originQueryEnc = "";
        if(isset($arrData['uiData']['queryInfo']['queryWord'])){
            $originQuery = $arrData['uiData']['queryInfo']['queryWord'];
        }
        if(isset($arrData['uiData']['queryInfo']['oriWordEnc'])){
            $originQueryEnc = $arrData['uiData']['queryInfo']['oriWordEnc'];  
        }
		$arrItem_tmp = $arrItem;
		// 保存原有dispData数据
		$resData = $arrItem_tmp ['dispData'];
		// 保存原有offsetInfo数据
		$offsetData = $arrItem_tmp ['offsetInfo'];
		// 获取模板名
		$tempName = $arrItem_tmp ['dispData'] ['templateName'];
		// 从原有数据结构中，删除dispData，offsetInfo
		// 这俩数据已经保存为 resData 和 offsetData
		unset ( $arrItem_tmp ['dispData'] );
		unset ( $arrItem_tmp ['offsetInfo'] );
		// 新建classicInfo，保存搜索结果中的经典数据：标题、摘要等等
		// 包含两块内容
		// 1、原有offsetInfo中的信息：标题、摘要、url、时间戳等
		// 2、原有res下面的信息：ui模块直接拼在结果里的数据
		// 此时的data里面已经没有offsetInfo和dispData
		if (empty ( $offsetData )) {
			$resData ['classicInfo'] = $arrItem_tmp;
		} else {
			$resData ['classicInfo'] = array_merge ( $arrItem_tmp, $offsetData );
		}
		// 将ac结果的数据结构拼装成aladdin结果的数据结构形式
		foreach ( $resData as $k => $v ) {
			// 用于extData
			if (in_array ( $k, $GLOBALS ['ALADDIN_FIELD'] )) {
				if (! array_key_exists ( $k, $resData ['resultData'] )) {
					$resData ['resultData'] [$k] = $v;
				}
			} else {
				if (! array_key_exists ( $k, $resData ['resultData'] ['tplData'] )) {
					$resData ['resultData'] ['tplData'] [$k] = $v;
				}
			}
			// unset ( $resData [$k] );
		}
		// 将模板名的设置设置为aladdin结果保持统一
		$resData ['strategy'] ['tempName'] = $arrItem ['dispData'] ['templateName'];
		$resData ['strategy'] ['ctplOrPhp'] = 1;
		$resData ['resultData'] ['extData'] ['resourceid'] = $arrItem ['dispData'] ['StdStg'];
        $resData ['resultData']['extData']['OriginQuery'] = $originQuery;
        $resData ['resultData']['extData']['OriginQueryEnc'] = $originQueryEnc;
		$arrItem ['dispData'] = $resData;
	}
}
