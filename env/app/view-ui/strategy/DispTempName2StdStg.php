<?php
/***************************************************************************
 * 
 * Copyright (c) 2013 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file DispTempName2StdStg.php
 * @author search(com@baidu.com)
 * @date 2013/12/11 15:19:17
 * @brief 将Disp的模板名转换为stdstg_new (短线策略满足) 
 *  
 **/

class DispTempName2StdStg extends Strategy{
    public function run(&$arrData, $arrConf) {
        if (empty ( $arrData ) || ! is_array ( $arrData )) {
            return false;
        }   
        $tempNameInfo = Util::getConf('/tempname2stdstg', 'DispTempName');
        if(empty ( $tempNameInfo ) || ! is_array ( $tempNameInfo )){
            return false;
        }
        $asResultItem = &$arrData ['uiData'] ['asResult'] ['item'];
        foreach($asResultItem as $key => &$item){
            if($item['comeFrome'] === 'AS'){
                if(!isset($item['dispData']['templateName']) || empty($item['dispData']['templateName'])){
                    continue;
                }
                $templateName = $item['dispData']['templateName'];
                if(isset($tempNameInfo[$templateName]['stdstg']) && !empty($tempNameInfo[$templateName]['stdstg'])){
                    $item['dispData']['StdStg_new'] = intval($tempNameInfo[$templateName]['stdstg']);
                }
            }
        }
    }
}
/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
