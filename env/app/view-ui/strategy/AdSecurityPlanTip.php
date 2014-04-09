<?php
/**
 * 出提示的条件
 * 1、当出现某些广告时而没有出现另一些广告时
 * 2、某些队列存在时也不出
 * 
 * @author 贾春鑫(jiachunxin@baidu.com)
 *
 */
class AdSecurityPlanTip extends Strategy {
	public function run(&$arrData, $arrConf) {
		if (empty ( $arrData ) || ! is_array ( $arrData )) {
			return false;
		}
		
		$bolFlagFeature = (Util::getConf('/feature', 'FEATURE_LIST/ADLEVEL/TURN') === 'ON') ? true : false;
		if ($bolFlagFeature) {
			// 右侧安全提示存在，且后端传入的adlevel最低位为1时，展现消保提示
			$bolRightPromptExist = false;
			if (isset ( $arrData ['uiData'] ['queryInfo'] ['promptNode'] ) && is_array ( $arrData ['uiData'] ['queryInfo'] ['promptNode'] )) {
				foreach ( $arrData ['uiData'] ['queryInfo'] ['promptNode'] as $intKey => $arrOnePromptNode ) {
					if (! empty ( $arrOnePromptNode ['promptContent'] )) {
						$arrPromptContent = json_decode ( $arrOnePromptNode ['promptContent'], true );
						if (! empty ( $arrPromptContent ) && ! empty ( $arrPromptContent ['hints'] ['RightTop'] )) {
							$bolRightPromptExist = true;
							break;
						}
					}
				}
			}
			if ($bolRightPromptExist && isset ( $arrData ['uiData'] ['ecResult'] ['adlevel'] )) {
				$intFlag = $arrData ['uiData'] ['ecResult'] ['adlevel'] & 0x01; 
				$intPinzhuanFlag = ($arrData ['uiData'] ['ecResult'] ['adlevel'] >> 2) & 0x1;
				if ($intFlag === 1 && $intPinzhuanFlag == 0) {
					$arrData ['uiData'] ['ecResult'] ['securityPlanTip'] = 1;
				}
				return true;
			}
		}
		
		// 有知心右侧队列时不出提示
		if (! empty ( $arrData ['uiData'] ['rightResult'] ['item'] )) {
			return true;
		}
		//如果后端有传标识，则按照标识来判断是否出消保提示
// 		$bolFlagFeature = (Util::getConf('/feature', 'FEATURE_LIST/ADLEVEL/TURN') === 'ON') ? true : false;
		if($bolFlagFeature && isset ( $arrData ['uiData'] ['ecResult'] ['adlevel'] )){
			$intFlag = $arrData ['uiData'] ['ecResult'] ['adlevel'] & 0x01;
			$intPinzhuanFlag = ($arrData ['uiData'] ['ecResult'] ['adlevel'] >> 2) & 0x1;
			if ($intFlag === 1 && $intPinzhuanFlag == 0) {
				$arrData ['uiData'] ['ecResult'] ['securityPlanTip'] = 1;
			}
		}else{
			$arrHitIds = array (EC_FC_PP, EC_FC_PPIM_UL );
			$arrExcludeIds = array (EC_PP_ZQ, EC_PP_DB,EC_PP_DB_2, EC_PP_QTZ );
			$bolHit = false;
			$bolExclude = false;
			foreach ( $arrData ['uiData'] ['ecResult'] ['ecResultItem'] as $item ) {
				if ($bolHit === false && in_array ( $item ['id'], $arrHitIds )) {
					// 存在这些广告时需要出提示
					$bolHit = true;
				} else if ($bolExclude === false && in_array ( $item ['id'], $arrExcludeIds )) {
					// 存在这些广告时不出提示
					$bolExclude = true;
				}
			}
			if ($bolHit === true && $bolExclude === false) {
				// 存在凤巢广告但不存在品牌广告时
				$arrData ['uiData'] ['ecResult'] ['securityPlanTip'] = 1;
			}
		}
		
		
		return true;
	}
}
