<?php
/**
消保提示展现策略
左侧上方展现pp/ppim，右侧即展现消保提示
 
消保提示展现位置
  右侧无品专/地标/知心时，消保提示展现在右侧上方
  右侧展现品专/地标/知心时，消保提示与之共存，消保提示展现在下方，位置仅高于IM
  右侧同时展现有安全提示时，消保提示与之共存，与安全提示滚动展现在右侧上方
 
消保提示展现样式
  右侧无品专/地标/知心时，消保提示展现为原样式
  右侧展现品专/地标/知心时，消保提示展现为缩略样式
  右侧同时展现有安全提示时，消保提示展现为原样式
 * 
 * @author 唐颋(tangting01@baidu.com)
 *
 */
class NewAdSecurityPlanTip extends Strategy {
	public function run(&$arrData, $arrConf) {
		if (empty ( $arrData ) || ! is_array ( $arrData )) {
			return false;
		}
		
		//PP/PPIM是否存在
		$intPPFlag = 0;
		//右侧是否有品专/地标/知心
		$intPinzhuanFlag = 0;
		//是否存在右侧安全提示
		$intRightPromptFlag = 0;
		$bolFlagFeature = (Util::getConf('/feature', 'FEATURE_LIST/ADLEVEL/TURN') === 'ON') ? true : false;
		if ($bolFlagFeature && isset ( $arrData ['uiData'] ['ecResult'] ['adlevel']) ){
			$intPPFlag = $arrData ['uiData'] ['ecResult'] ['adlevel'] & 0x01;
			$intPinzhuanFlag = ($arrData ['uiData'] ['ecResult'] ['adlevel'] >> 2) & 0x1;
		}else{
			$arrPPIds = array(EC_FC_PP,EC_FC_PPIM_UL);
			$arrPinzhuanIds = array(EC_PP_ZQ,EC_PP_QTZ,EC_PP_DB,EC_PP_DB_2);
			foreach ( $arrData ['uiData'] ['ecResult'] ['ecResultItem'] as $item ) {
				if ($intPPFlag === 0 && in_array ( $item ['id'], $arrPPIds )) {
					$intPPFlag = 1;
				}
				if ($intPinzhuanFlag === 0 && in_array ( $item ['id'], $arrPinzhuanIds )) {
					$intPinzhuanFlag = 1;
				}
			}
		}
		if($intPinzhuanFlag === 0){
			$intPinzhuanFlag = empty ( $arrData ['uiData'] ['rightResult'] ['item'] ) ? 0 : 1;
		}
		$intRightPromptFlag = $this->bolExistRightPrompt($arrData) ? 1 : 0;
		
		if($intPPFlag === 1){
			$arrPromptContent = array();
			//安全提示展现位置：RightTop-右上方  RightBottom-右下方
			$strPosition = ($intRightPromptFlag === 1) ? 'RightTop' : (($intPinzhuanFlag === 1) ? 'RightBottom' : 'RightTop' );
			$arrPositionContent = array();
			//安全提示展现是否的模板
			$arrPositionContent['templateName'] = 'hint_securityplan';
			//安全提示展现的样式：0-普通版  1-缩略版
			$arrPositionContent['style'] =  ($intRightPromptFlag === 1) ? 0 : (($intPinzhuanFlag === 1) ? 1 : 0 );
			$arrPromptContent[$strPosition][] = $arrPositionContent;
			$arrData ['uiData'] ['queryInfo'] ['promptNode'][] =  array('id'=>-1,'promptContent'=>json_encode(array('hints'=>$arrPromptContent)));
		}
		return true;
	}
	
	private function bolExistRightPrompt($arrData){
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
		return $bolRightPromptExist;
	}
}
