<?php

function smarty_block_fis_widget($params, $content, Smarty_Internal_Template $template, &$repeat){
    if(!$repeat){
        if(isset($params['extends'])){
            $path = $params['extends'];
            unset($params['extends']);

            foreach($params as $key => $v){
                if($template->getTemplateVars($key)){
                    $params[$key]=  $template->getTemplateVars($key);
                }
            }

            return $content = $template->getSubTemplate($path, $template->cache_id, $template->compile_id, null, null, $params, Smarty::SCOPE_LOCAL);
        }else{
            return $content;
        }
    }else{
        if(isset($params['extends'])){
            unset($params['extends']);
        }

        foreach($params as $key => $v){
            $value = $template->getTemplateVars($key);
            if($value === null){
                $template->assign($key, $v, true);
            }
        }
    }
}
