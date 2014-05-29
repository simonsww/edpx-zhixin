<?php

function smarty_block_lsCache($params, $content, &$smarty, &$repeat){
    $id = $params['id'];

    // 是否有前缀配置
    $prefix = $smarty->getTemplateVars('lsCache_prefix');
    if (!empty($prefix) && empty($params['ignore_prefix'])){
        $usePrefix = true;
        $id = $prefix . '_' . $id;
    }
    $key = $id; // 一般情况，key就用id来做
    $version = $params['version'];
    
    // 当配置了group时，优先使用group里的version号
    $groupConfig = $smarty->getTemplateVars('lsCache_group');
    $group = $params['group'];
    if (!empty($group) && !empty($groupConfig[$group])){
        $useGroup = true;
        $version = $groupConfig[$group];

        if ($usePrefix){
            $group = $prefix . '_' . $group;
        }
        $key = $group; // 按组分key的情况
    }

    $type = $params['type'];

    if ($repeat){
        // $repeat为true时，是输出头部（第一次调用），此时$content为空
        return "";
    }else{
        // $repeat为false时，是输出尾部（第二次调用），此时$content已经经过smarty处理了

        // 检查是否有缓存
        if ($_GET['noscript'] == '1'){
            // noscript跳转，固定为false
            $hasCache = false;
        }else if ($_COOKIE['lssp'] == 'no'){
            // localStorage不可用，固定为false
            $hasCache = false;
        }else if (empty($_COOKIE[$key])){
            // cookie不存在
            $hasCache = false;
        }else if ($version == $_COOKIE[$key]){
            // cookie中版本号于当前版本相同
            $hasCache = true;
        }else{
            $hasCache = false;
        }

        if ($hasCache){
            $ret = '';
            switch($type){
            case 'CSS':
                $ret = '';
                break;
            case 'JS':
                $ret = '<script type="text/javascript" id='.$id.'></script>';
                break;
            case 'HTML':
                $ret = '<div id="'.$id.'"></div>';
                break;
            }
            $ret .= '<script type="text/javascript" id="'.$id.'_load">wise.lsCache.load("'.$type.'", "'.$id.'");</script>';
            return $ret;
        }else{
            $ret = '';
            switch($type){
            case 'CSS':
                $ret = '<style type="text/css" id="'.$id.'">'.$content.'</style>';
                break;
            case 'JS':
                $ret = '<script type="text/javascript" id="'.$id.'">'.$content.'</script>';
                break;
            case 'HTML':
                $ret = '<div id="'.$id.'">'.$content.'</div>';
                break;
            }
            $ret .= '<script type="text/javascript" id="'.$id.'_save">wise.lsCache.save("'.$type.'", "'.$id.'", "'.$key.'", "'.$version.'");</script>';
            return $ret;
        }
    }
}

