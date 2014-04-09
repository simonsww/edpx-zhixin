<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file function.widget.php
 * @package plugins
 * @author liyudong@baidu.com
 * @date 2011-11-03 10:47
 */

function smarty_function_widget($params, Smarty_Internal_Template  $template)
{
    $logArr['smarty_function'] = "function_widget";
    $name = $params['name'];
    $tpl_path = $params['path'];
    $fn = 'smarty_template_function_'.$name;
    $type = $template->smarty->getTemplateVars('_TEMPLATE_TYPE');
    $logArr['widget_name'] = $name;
    $logArr['widget_type'] = $type;
    $logArr['widget_path'] = $tpl_path;
    if(!function_exists($fn)){ 
        //$tpl_path = CSmarty::getWidgetPath($type, $name);
        if( !$template->smarty->templateExists($tpl_path) ) {
            $log_str = "widget not found :{$tpl_path}";
            CSmarty::addError($log_str);
            CLog::warning($log_str, -1, $logArr, 1);
            return false;
        }
        $template->smarty->fetch($tpl_path);
    }
    if(!function_exists($fn)){ 
        $log_str = "template function $fn not found";
        CSmarty::addError($log_str);
        CLog::warning($log_str, -1, $logArr, 1);
        return false;
    }else {
        $result = $fn($template, $params);
    }
    return $result;
}




/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
