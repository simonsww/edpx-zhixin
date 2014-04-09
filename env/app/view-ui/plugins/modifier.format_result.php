<?php

/* * *****************************************************************************
 *
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 * 
 * **************************************************************************** */

/**
 *
 *
 * @file modifier.format_result.php
 * @brief 将结构化结果和格式统一成阿拉丁结果形式
 * @package plugins
 * @author fengfei02@baidu.com
 * @date 2012-11-12 10:47
 */
function smarty_modifier_format_result($data) {
    $logArr['smarty_modifier'] = "modifier_format_result";
    $default_result = array();

    if (empty($data) || !is_array($data)) {
        $logArr['format_data'] = json_encode($data);
        CLog::warning("data is empty", -1, $logArr, 1);
        return $default_result;
    }

    if (empty($data['dispData']) || !is_array($data['dispData'])) {
        $logArr['format_dispData'] = json_encode($data['dispData']);
        CLog::warning("dispData is empty", -1, $logArr, 1);
        return $default_result;
    }

    if (empty($data['offsetInfo']) || !is_array($data['offsetInfo'])) {
        $logArr['format_offsetInfo'] = json_encode($data['offsetInfo']);
        CLog::warning("offsetInfo is empty", -1, $logArr, 1);
        return $default_result;
    }


    if (empty($data['dispData']['templateName'])) {
        CLog::warning("templateName is empty", -1, $logArr, 1);
        return $default_result;
    }

    //保存原有dispData数据
    $resData = $data['dispData'];

    //保存原有offsetInfo数据
    $offsetData = $data['offsetInfo'];

    //获取模板名
    //$tempName = $data['dispData']['templateName'];
    $tempName = $data['dispData']['strategy']['tempName']?$data['dispData']['strategy']['tempName']:$data['dispData']['templateName'];

    //从原有数据结构中，删除dispData，offsetInfo
    //这俩数据已经保存为 resData 和 offsetData
    unset($data['dispData']);
    unset($data['offsetInfo']);

    //新建classicInfo，保存搜索结果中的经典数据：标题、摘要等等
    //包含两块内容
    //1、原有offsetInfo中的信息：标题、摘要、url、时间戳等
    //2、原有res下面的信息：ui模块直接拼在结果里的数据
    //此时的data里面已经没有offsetInfo和dispData
    $resData['classicInfo'] = array_merge($data, $offsetData);

    //将ac结果的数据结构拼装成aladdin结果的数据结构形式
    foreach ($resData as $k => $v) {
        //用于extData
        if (in_array($k, $GLOBALS['ALADDIN_FIELD'])) {
            if (empty($resData['resultData']) || !array_key_exists($k, $resData['resultData'])) {
                $resData['resultData'][$k] = $v;
            }
        } else {
            if (empty($resData['resultData']['tplData']) || !array_key_exists($k, $resData['resultData']['tplData'])) {
                $resData['resultData']['tplData'][$k] = $v;
            }
        }
        unset($resData[$k]);
    }

    //将模板名的设置设置为aladdin结果保持统一
    $resData['strategy']['tempName'] = $tempName;
    
    //模板中需要统一判断的
    $resData['burstFlag'] = $resData['resultData']['tplData']['classicInfo']['burstFlag'];
    $resData['comeFrome'] = $resData['resultData']['tplData']['classicInfo']['comeFrome'];
    $resData['itemIdEncry'] = $resData['resultData']['tplData']['classicInfo']['itemIdEncry'];

    return $resData;
}

/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
