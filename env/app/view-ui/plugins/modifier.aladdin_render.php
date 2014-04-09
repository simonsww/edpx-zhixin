<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file modifier.real.php
 * @package plugins
 * @author liyudong@baidu.com
 * @date 2011-11-03 10:47
 */

function smarty_modifier_aladdin_render($data, $templateName, $curr_sort=false)
{
    $time_start = Volatile::microtime(true)*1000;
    $logArr['smarty_modifier'] = "modifier_aladdin_render";
    /**
     * render config
     */
    $conf = CSmarty::getConf();
    /**
     * template type
     * @var string 
     */
    $type = VUI_TEMPLATE_ALADDIN_TEMPLATE_TYPE;
    $language = $conf['language'];
    $platform = $conf['platform'];
    
    $logArr['template_type'] = $type;
    $logArr['template_name'] = $templateName;
    $logArr['language'] = $language;
    $logArr['platform'] = $platform;
    $log_key = $data['StdStg'].'_'.$templateName;
    /**
     * template type cannot be empty
     */
    if( strlen($type) == 0 ) {
        CLog::warning("template type is empty", -1, $logArr, 1);
        return false;
    }

    /**
     * template name cannot be empty
     */
    if( empty($templateName) ) {
        CLog::warning("template name is empty", -1, $logArr, 1);
        return false;
    }

    /**
     * aladdin's tplData 
     */
    if( empty($data['resultData']['tplData']) || !is_array($data['resultData']['tplData']) ) {
        CLog::warning("tplData is empty", -1, $logArr, 1);
        return false;
    }
 
    /**
     * set queryInfo
     */
    $data['resultData']['queryInfo'] = CSmarty::getQueryInfo();
                
    /**
     * set templateConfig
     */
    $data['resultData']['templateConfig'] = CSmarty::getTemplateConfig();
    
    /**
     * set result current sort of result page
     */
    if( $curr_sort === false ) { 
        $curr_sort = 0;
    } else {
        $curr_sort += 1;
    }   
    $data['resultData']['extData']['curr_sort'] = $curr_sort;
    
    

    /**
     * page renderer 
     * @var Smarty
     */
    $smarty = CSmarty::getInstance(
            array('language'=>$language, 'type'=>$type, 'platform'=>$platform)
                );
    if( false === $smarty ) {
        $status = -1;
        $errors = CSmarty::getError();
        $errors_str = implode(";", $errors);
        $logArr['ala_smarty_error'] = $errors_str;
        CLog::warning("fail to get instance of smarty, type: $type", 
                            $status, $logArr, 1);
        return false;
    }
    
    /**
     * encrypt page's url
     */
    backend_encrypt_url( $data, $platform, $language, $type, $templateName );
    
    /**
     * render aladdin's page
     */
    $page = $smarty->do_render($data, $templateName, 1);
    if( $page === false ) {
        $status = -1;
        $errors = CSmarty::getError();
        $errors_str = implode(";", $errors);
        CLog::warning("fail to render aladdin's page, errors[$errors_str]", $status, $logArr, 1);
        return false;
    }
    if( strlen($page) == 0 ) {
        $status = -1;
        CLog::warning("aladdin's page is empty", $status, $logArr, 1);
        return false;
    }
    
    $GLOBALS['logArr']["aladdin_page_size_{$log_key}"] = strlen($page);
    $GLOBALS['logArr']["time_aladdin_{$log_key}"] =
        round(Volatile::microtime(true)*1000 - $time_start,2);
    return $page;
}











/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
