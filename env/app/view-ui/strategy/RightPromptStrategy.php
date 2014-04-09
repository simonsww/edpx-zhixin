<?php
/**
 *
 * @desc 1. 所有知心(除下述三种外)存在、品专、地标时，不出右侧提示
 * 2. 攻略知心和右侧提示可以同时存在
 * 3. 当有右侧提示时，删掉右侧百科知心和右侧模糊推右的知心
 * @author tangting01@baidu.com
 *
 */
class RightPromptStrategy extends Strategy {
	public function run(&$arrData, $arrConf) {
		if (empty ( $arrData ) || ! is_array ( $arrData )) {
			return false;
		}
		$arrRightPromptStrategyConf = Util::getConf ( '/rightprompt', 'RIGHTPROMPT_STRATEGY' );
		
		$bolFlagFeature = (Util::getConf('/feature', 'FEATURE_LIST/ADLEVEL/TURN') === 'ON') ? true : false;
		
		//避让策略时，广告标识(品专、地标)
		$arrCollisionEcIds = $arrRightPromptStrategyConf ['COLLISION'] ['EC'];
		//共存策略时，知心资源号(攻略)
		$arrCoexistZhixinIds = $arrRightPromptStrategyConf ['COEXIST'] ['ZHIXIN'];
		//PK策略时，知心资源号(百科、模糊推右)
		$arrPkZhixinIds = $arrRightPromptStrategyConf ['PK'] ['ZHIXIN'];
		
		//命中pk策略标记
		$bolPkStrategy = false;
		//命中共存策略标记
		$bolCoexistStrategy = false;
		//命中避让策略标记
		$bolCollisionStrategy = false;
		
		//判断是否存在右侧提示，若存在则记录其位置
		$arrRightPromptIds = array ();
		if (isset ( $arrData ['uiData'] ['queryInfo'] ['promptNode'] ) && is_array ( $arrData ['uiData'] ['queryInfo'] ['promptNode'] )) {
			foreach ( $arrData ['uiData'] ['queryInfo'] ['promptNode'] as $intKey => $arrOnePromptNode ) {
				if (! empty ( $arrOnePromptNode ['promptContent'] )) {
					$arrPromptContent = json_decode ( $arrOnePromptNode ['promptContent'], true );
					if (! empty ( $arrPromptContent ) && ! empty ( $arrPromptContent ['hints'] ['RightTop'] )) {
						$arrRightPromptIds [] = $intKey;
					}
				}
			}
		}
		
		//如果存在右侧提示，才进行策略PK,共存，避让
		if (! empty ( $arrRightPromptIds )) {
			//如果后端有传广告标记，则按照后端标记来判断是否避让
			if ($bolFlagFeature && isset ( $arrData ['uiData'] ['ecResult'] ['adlevel'] )) {
				$intFlag = ($arrData ['uiData'] ['ecResult'] ['adlevel'] >>1) & 0x1;
				if($intFlag != 0){
					$bolCollisionStrategy = true;
				}
			} else {
				// 查找是否存在品专和地标
				if (! $bolCollisionStrategy && ! empty ( $arrCollisionEcIds ) && isset ( $arrData ['uiData'] ['ecResult'] ['ecResultItem'] ) && is_array ( $arrData ['uiData'] ['ecResult'] ['ecResultItem'] )) {
					foreach ( $arrData ['uiData'] ['ecResult'] ['ecResultItem'] as $arrOneEcItem ) {
						if (! empty ( $arrOneEcItem ['id'] ) && in_array ( $arrOneEcItem ['id'], $arrCollisionEcIds )) {
							$bolCollisionStrategy = true;
							break;
						}
					}
				}
			}
			
			//未命中PK策略时，查找右侧知心
			$arrPkZhixinIndexs = array ();
			if (!$bolCollisionStrategy && isset ( $arrData ['uiData'] ['rightResult'] ['item'] ) && is_array ( $arrData ['uiData'] ['rightResult'] ['item'] )) {
				foreach ( $arrData ['uiData'] ['rightResult'] ['item'] as $intKey => $arrOneRightResultItem ) {
					if (! empty ( $arrOneRightResultItem ['dispData'] ['StdStg'] )) {
						if (! empty ( $arrPkZhixinIds ) && in_array ( $arrOneRightResultItem ['dispData'] ['StdStg'], $arrPkZhixinIds )) {
							$bolPkStrategy = true;
							$arrPkZhixinIndexs [] = $intKey;
						} elseif (! empty ( $arrCoexistZhixinIds ) && in_array ( $arrOneRightResultItem ['dispData'] ['StdStg'], $arrCoexistZhixinIds )) {
							$bolCoexistStrategy = true;
						} else {
							$bolCollisionStrategy = true;
						}
					}
				}
			}
			
			//命中避让策略时，删除右侧提示
			if ($bolCollisionStrategy && ! empty ( $arrRightPromptIds )) {
				foreach ( $arrRightPromptIds as $intKey ) {
					unset ( $arrData ['uiData'] ['queryInfo'] ['promptNode'] [$intKey] );
				}
				$arrData ['uiData'] ['queryInfo']['rightPromptStraFlag'] = 1;
				return true;
			}
			
			//命中共存策略时，直接返回
			if ($bolCoexistStrategy) {
				$arrData ['uiData'] ['queryInfo']['rightPromptStraFlag'] = 2;
                //右侧提示的展示样式（0:窄；1：宽；2:自适应）
                $arrData ['uiData']['queryInfo']['promptStyle']['RightTop']['width'] = 2;
				return true;
			}
			
			//命中PK策略时，删除右侧百科知心和右侧模糊推右的知心
			if ($bolPkStrategy && ! empty ( $arrPkZhixinIndexs )) {
				foreach ( $arrPkZhixinIndexs as $intKey ) {
					unset ( $arrData ['uiData']['rightResult']['item'][$intKey]);
				}
				$arrData ['uiData'] ['queryInfo']['rightPromptStraFlag'] = 4;
				return true;
			}
		}
		return true;
	}
}
