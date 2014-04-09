<?php
/*******************************************************************************
 *
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file modifier.render.php
 * @package plugins
 * @author fengfei02@baidu.com
 * @date 2012-10-29 10:47
 */

function smarty_modifier_render( $data , $templateName, $curr_sort = false )
{
    $logArr['smarty_modifier'] = "modifier_render";
    /**
     * render config
     */
    $conf = CSmarty::getConf();
    /**
     * template type
     * @var string 
     */
    $type = $GLOBALS['STRUCT_TEMPLATE_TYPE'];
    $language = $conf['language'];
    $platform = $conf['platform'];

    
    $logArr['template_name'] = $templateName;
    $logArr['template_type'] = $type;
    $logArr['language'] = $language;
    $logArr['platform'] = $platform;
    

    
    /**
     * template type cannot be empty
     * 
     * 模板是否修改类型的目录?
     * 
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
     * ac's data 
     */
    if( empty($data) || !is_array($data) || empty( $data['resultData'] ) ) {
        CLog::warning("data or resultData is empty", -1, $logArr, 1);
        return false;
    }
    
    /**
     * set queryInfo,这个字段在baidu的global变量和函数有用,迁移时有用
     */
    $data['resultData']['queryInfo'] = CSmarty::getQueryInfo();
                
    /**
     * set templateConfig,同queryInfo
     */
    $data['resultData']['templateConfig'] = CSmarty::getTemplateConfig();
    
    /**
     * set result current sort of result page，同queryInfo
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
        $logArr['ac_smarty_error'] = $errors_str;
        CLog::warning("fail to get instance of smarty, type: $type", 
                            $status, $logArr, 1);
        return false;
    }
    
    
    /**
     * render ac's page
     */
    $page = $smarty->do_render($data, $templateName, 1);
    if( $page === false ) {
        $status = -1;
        $errors = CSmarty::getError();
        $errors_str = implode(";", $errors);
        //CLog::warning("fail to render ac's page, errors[$errors_str]", $status, $logArr, 1);
        CLog::warning("fail to render ac's page", $status, $logArr, 1);
        return false;
    }
    if( strlen($page) == 0 ) {
        $status = -1;
        CLog::warning("ac's page is empty", $status, $logArr, 1);
        return false;
    }
    return $page;
}











/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
