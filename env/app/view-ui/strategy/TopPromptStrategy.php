<?php
/**
 * 顶部提示去重
**/
class TopPromptStrategy extends Strategy {
	public function run(&$arrData, $arrConf) {
		if (empty ( $arrData ) || ! is_array ( $arrData )) {
			return false;
		}
		
		$arrMaxSrcInfo = array();
		$arrPositions = array('MostHigh','BoxBottom');
		if (isset ( $arrData ['uiData'] ['queryInfo'] ['promptNode'] ) && is_array ( $arrData ['uiData'] ['queryInfo'] ['promptNode'] )) {
			foreach ( $arrData ['uiData'] ['queryInfo'] ['promptNode'] as $intKey => &$arrOnePromptNode ) {
				if (! empty ( $arrOnePromptNode ['promptContent'] )) {
					$arrOnePromptNode ['promptContent'] = json_decode ( $arrOnePromptNode ['promptContent'], true );
					if(!empty($arrOnePromptNode ['promptContent']) && !empty($arrOnePromptNode ['promptContent']['hints']) && is_array($arrOnePromptNode ['promptContent']['hints'])){
						foreach($arrOnePromptNode ['promptContent']['hints'] as $strPosition => $arrOnePositionPromptContent){
							if(in_array($strPosition,$arrPositions)){
								$intCurSrcId = intval($arrOnePromptNode['id']);
								if(!isset($arrMaxSrcInfo[$strPosition])){
									$arrMaxSrcInfo[$strPosition]['maxSrcId'] = intval($arrOnePromptNode['id']);
									$arrMaxSrcInfo[$strPosition]['maxSrcIndex'] = $intKey;
								}elseif($intCurSrcId <= intval($arrMaxSrcInfo[$strPosition]['maxSrcId'])){
									unset($arrOnePromptNode ['promptContent']['hints'][$strPosition]);
									$arrData ['uiData'] ['queryInfo'] ['promptNode'][$intKey]['changed'] = 1;
								}else{
									unset($arrData ['uiData'] ['queryInfo'] ['promptNode'][$arrMaxSrcInfo[$strPosition]['maxSrcIndex']]['promptContent']['hints'][$strPosition]);
									$arrData ['uiData'] ['queryInfo'] ['promptNode'][$arrMaxSrcInfo[$strPosition]['maxSrcIndex']]['changed'] = 1;
									$arrMaxSrcInfo[$strPosition]['maxSrcId'] = intval($arrOnePromptNode['id']);
									$arrMaxSrcInfo[$strPosition]['maxSrcIndex'] = $intKey;
								}
							}
						}
					}
				}
			}
			
			foreach ( $arrData ['uiData'] ['queryInfo'] ['promptNode'] as $intKey => &$arrOnePromptNode ) {
				if(empty($arrOnePromptNode['promptContent']['hints']) && $arrOnePromptNode['changed'] === 1){
					unset($arrData ['uiData'] ['queryInfo'] ['promptNode'][$intKey]);
				}else{
					unset($arrOnePromptNode['changed']);
					$arrData ['uiData'] ['queryInfo'] ['promptNode'][$intKey]['promptContent'] = json_encode($arrData ['uiData'] ['queryInfo'] ['promptNode'][$intKey]['promptContent']);
				}
			}
		}
		//CLog::warning(var_export($arrData ['uiData'] ['queryInfo'] ['promptNode'],true));
		return true;
	}
}
