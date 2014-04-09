<?php
class TplStyleSelect extends Strategy{

	public function run(&$arrData,$arrConf){
		if(empty($arrData) || !is_array($arrData)){
			return false;
		}
        $ecResult = $arrData['uiData']['ecResult'];
        $arrTplConfs = Util::getConf ( '/tpl_style', 'STYLE_TEMPLATE');
        $ecResultItem = $arrData['uiData']['ecResult']['ecResultItem'];
        $resultArr = array();
        $tmpArr = array();
        
        foreach($arrTplConfs as $key => $val){
            $resultArr[$key]['result'] = $val['result']; 
            $resultArr[$key]['tpl_style'] = $val['tpl_style']; 
        }
        if(!empty($ecResultItem) && is_array($ecResultItem)){
            foreach($ecResultItem as $item){
                if(is_array($item)){
                    $src_id = 'SRCID_'.$item['id'];
                    if(!empty($arrTplConfs[$src_id]) && is_array($arrTplConfs[$src_id])){
                        if(!isset($tmpArr[$arrTplConfs[$src_id]['result']])){
                            $this->selectTplStyle($arrData,$item,$resultArr);
                            $tmpArr[$arrTplConfs[$src_id]['result']] = true; 
                        }
                    }
                }
            }
        }
        return true;
	}
    private function selectTplStyle(&$arrData,$item,$resultArr){
        $src_id = 'SRCID_'.$item['id'];
        $resultName = $resultArr[$src_id]['result'];
        $tpl_style = $resultArr[$src_id]['tpl_style'];
        
        if(!isset($resultName) || !isset($tpl_style)){
            return false;
        }
        $result = &$arrData['uiData'][$resultName]['item'];
        foreach($result as $k => &$v){
            $v['dispData']['resultData']['extData']['tpl_style'] = $tpl_style;
        }
        return true;
    }
}
?>
