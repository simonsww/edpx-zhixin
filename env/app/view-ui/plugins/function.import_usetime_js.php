<?php
/***************************************************************************
 * 
 * Copyright (c) 2014 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file function.import_usetime_js.php
 * @author search(com@baidu.com)
 * @date 2014/01/16 15:16:03
 * @brief 
 *  
 **/

function smarty_function_import_usetime_js($params, $template){
    $tplData=$template->getTemplateVars("tplData");
    if(!empty($tplData['queryInfo']['viewConfig']['start_time']) && isset($tplData['queryInfo']['viewConfig']['start_time'])){
        $start_time = $tplData['queryInfo']['viewConfig']['start_time'];
        $nginxUseTime = 15; // nginx消耗时间
        $timeUse = round( Volatile::microtime(true)*1000 - $start_time,2)+$nginxUseTime;
        return '<script type="text/javascript">_WWW_SRV_T ='.$timeUse.';</script>';
    }else{
        return '';
    }
}

/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
