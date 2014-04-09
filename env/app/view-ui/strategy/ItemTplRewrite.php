<?php
/**
 * 根据资源号影响另一个资源的展现
 * 
 * @author 贾春鑫(jiachunxin@baidu.com)
 *
 */
class ItemTplRewrite extends Strategy {
	public function run(&$arrData, $arrConf) {
		if (empty ( $arrData ) || ! is_array ( $arrData )) {
			return false;
		}
		$arrChallengerConf = Util::getConf ( '/tpl_rewrite', 'TPL_REWRITE' );
		// file_put_contents
		// ('/home/work/search/view-ui/data/data_ItemTplRewrite_conf',
		// serialize($arrTplConfs) );
		// 防御者配置
		$arrDefanderConf = array ();
		// 找出挑战者
		foreach ( $GLOBALS ['RESULT'] as $res ) {
			if (! empty ( $arrData ['uiData'] [$res] ['item'] ) && is_array ( $arrData ['uiData'] [$res] ['item'] )) {
				// 添加队列Pk条件
				$arrDefanderConf ['Challenger_' . $res] = $arrChallengerConf ['RESULT_PK'] ['Challenger_' . $res];
				foreach ( $arrData ['uiData'] [$res] ['item'] as $item ) {
					$intStdStg = $item ['dispData'] ['StdStg'];
					$intStdStl = $item ['dispData'] ['StdStl'];
					$strTpl = empty ( $item ['dispData'] ['strategy'] ['tempName'] ) ? $item ['dispData'] ['templateName'] : $item ['dispData'] ['strategy'] ['tempName'];
					// 根据StdStg搜索
					$arrChallengerConf_item = $arrChallengerConf ['ITEM_PK'] ['Challenger_' . $intStdStg];
					if (empty ( $arrChallengerConf_item )) {
						// 根据templateName搜索
						$arrChallengerConf_item = $arrChallengerConf ['ITEM_PK'] ['Challenger_' . $strTpl];
					}
					if (empty ( $arrChallengerConf_item )) {
						// 没搜索到相关的配置
						continue;
					}
					if (! empty ( $arrChallengerConf_item ['tpl'] ) && $strTpl !== $arrChallengerConf_item ['tpl']) {
						// 模板不匹配
						continue;
					}
					if (! empty ( $arrChallengerConf_item ['stdstg'] ) && $intStdStg !== $arrChallengerConf_item ['stdstg']) {
						// stdstg不匹配
						continue;
					}
					if (! empty ( $arrChallengerConf_item ['stdstl'] ) && $intStdStl !== $arrChallengerConf_item ['stdstl']) {
						// stdstl不匹配
						continue;
					}
					$arrResults = explode ( ',', $arrChallengerConf_item ['result'] );
					if (! empty ( $arrChallengerConf_item ['result'] ) && ! empty ( $arrResults ) && ! in_array ( $res, $arrResults )) {
						// 队列不匹配
						continue;
					}
					// 收集单条Pk条件
					if (empty ( $arrDefanderConf ['Challenger_item'] )) {
						$arrDefanderConf ['Challenger_item'] = $arrChallengerConf_item ['Defander'];
					} else {
						$arrDefanderConf ['Challenger_item'] = array_merge ( $arrDefanderConf ['Challenger_item'], $arrChallengerConf_item ['Defander'] );
					}
				}
			}
		}
		// 对防御者进行惩罚
		foreach ( $GLOBALS ['RESULT'] as $res ) {
			if (! empty ( $arrData ['uiData'] [$res] ['item'] ) && is_array ( $arrData ['uiData'] [$res] ['item'] )) {
				foreach ( $arrData ['uiData'] [$res] ['item'] as &$item ) {
					$intStdStg = $item ['dispData'] ['StdStg'];
					$intStdStl = $item ['dispData'] ['StdStl'];
					$strTpl = empty ( $item ['dispData'] ['strategy'] ['tempName'] ) ? $item ['dispData'] ['templateName'] : $item ['dispData'] ['strategy'] ['tempName'];
					$arrDefanderConf_item = array ();
					// 根据队列PK策略找到防御者进行惩罚
					foreach ( $GLOBALS ['RESULT'] as $res_tmp ) {
						// 根据StdStg搜索
						$arrDefanderConf_item = $arrDefanderConf ['Challenger_' . $res_tmp] ['Defander_' . $intStdStg];
						if (empty ( $arrDefanderConf_item )) {
							// 根据templateName搜索
							$arrDefanderConf_item = $arrDefanderConf ['Challenger_' . $res_tmp] ['Defander_' . $strTpl];
						}
						if (! empty ( $arrDefanderConf_item )) {
							// 找到了
							break;
						}
					}
					// 根据单条PK策略找到防御者进行惩罚
					if (empty ( $arrDefanderConf_item )) {
						// 根据StdStg搜索
						$arrDefanderConf_item = $arrDefanderConf ['Challenger_item'] ['Defander_' . $intStdStg];
						if (empty ( $arrDefanderConf_item )) {
							// 根据templateName搜索
							$arrDefanderConf_item = $arrDefanderConf ['Challenger_item'] ['Defander_' . $strTpl];
						}
					}
					if (empty ( $arrDefanderConf_item )) {
						// 没搜索到防御者惩罚配置
						continue;
					}
					if (! empty ( $arrDefanderConf_item ['tpl'] ) && $strTpl !== $arrDefanderConf_item ['tpl']) {
						continue;
					}
					if (! empty ( $arrChallengerConf_item ['stdstg'] ) && $intStdStg !== $arrChallengerConf_item ['stdstg']) {
						// stdstg不匹配
						continue;
					}
					if (! empty ( $arrDefanderConf_item ['stdstl'] ) && $arrDefanderConf_item ['stdstl'] != $intStdStl) {
						continue;
					}
					$arrResults = explode ( ',', $arrDefanderConf_item ['result'] );
					if (! empty ( $arrDefanderConf_item ['result'] ) && ! empty ( $arrResults ) && ! in_array ( $res, $arrResults )) {
						continue;
					}
					// 对防御者进行惩罚——修改对应的模板
					if (isset ( $item ['dispData'] ['strategy'] ['tempName'] )) {
						$item ['dispData'] ['strategy'] ['tempName'] = $arrDefanderConf_item ['PunitiveAction'] ['tpl'];
					} else {
						$item ['dispData'] ['templateName'] = $arrDefanderConf_item ['PunitiveAction'] ['tpl'];
					}
				}
			}
		}
		return true;
	}
}