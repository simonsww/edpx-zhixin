<?php
/*
 *  折叠策略
 */
class ItemFoldSelect extends Strategy{
    public function run(&$arrData,$arrConf){
        if(empty($arrData) || !is_array($arrData)){
            return false;
        }
        $is_fold = false;
        $promptNode = &$arrData['uiData']['queryInfo']['promptNode'];
        $promptInfo = array();
        if(!empty($promptNode) && is_array($promptNode)){
            foreach($promptNode as $key=> &$val){
                if($val['id'] == 1002 || $val['id'] == 1003){
                    $promptInfo = &$val;
                    $is_fold = true;
                    $unsetKey = $key;
                    break;
                }
            }
        }
        if($is_fold){
            $sp_secureNum = 0;
            $as_secureNum = 0;
            $asResultItems = $arrData['uiData']['asResult']['item'];
            foreach($asResultItems as $item){
                if($item['comeFrome'] == 'SP'){
                    $sp_secureNum++;
                }elseif($item['comeFrome'] == 'AS' &&  ($item['urls']['asUrls']['strategys']['4'] & 0x10) ){
                    $as_secureNum++;
                }
                else{
                    break;
                }
            }
            $securePos = $sp_secureNum + $as_secureNum;
            if($sp_secureNum == 0 && $as_secureNum < 2 ){
                unset($promptNode[$unsetKey]);
            }else{
                $promptContent = json_decode($promptInfo['promptContent'],true);
                $itemName = "";
                foreach($promptContent['hints'] as $key => $val){
                    $itemName = $key;
                }
                $modifyKey = sprintf("%02d",$securePos);
                $modifyPromptContent['hints']['Result'.$modifyKey] = $promptContent['hints'][$key];
                $promptInfo['promptContent'] = json_encode($modifyPromptContent);
            } 
        }
        return true;
    }
}
?>
