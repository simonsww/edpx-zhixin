<?php

/**
 * 
 * @desc 按配置文件中的资源和us返回的信息进行uri屏蔽
 * @author qiupengfei@baidu.com
 *
 */
class ItemHideStrategy extends Strategy {

    public function run(&$arrData, $arrConf) {
        if (empty($arrData) || !is_array($arrData)) {
            return false;
        }
        // 查找对应资源
        foreach ($GLOBALS ['RESULT'] as $res) {
            foreach ($arrData ['uiData'] [$res] ['item'] as $intIndex => $arrItem) {
                $hide_path_list = $arrItem['hideItemPath'];
                if (!isset($hide_path_list) || !is_array($hide_path_list)) {
                    Clog::debug("ItemHideStrategy hide_path_list is empty");
                    continue;
                }
                if (empty($arrItem['dispData']['resultData']['tplData'])) {
                    Clog::debug("ItemHideStrategy tplData is empty");
                    continue;
                }
                //解析屏蔽path列表
                foreach ($hide_path_list as $path){
                    //样式 result.list[0], 方括号内为数字
                    Clog::debug($path . "need to hide");
                    $tmp = explode(".", $path);
                    $path_array = array();
                    foreach ($tmp as $fd)
                    {
                        Clog::debug($fd);
                        $length = strlen($fd);
                        if ($length == 0)
                        {
                            continue;
                        }
                        $fields = explode("[", $fd);
                        //提取出数字索引
                        if (count($fields) == 2)
                        {
                            $path_array[] = $fields[0];
                            $path_array[] = intval(trim($fields[1], "]"));
                        }
                        else if (count($fields) == 1)
                        {
                            $path_array[] = $fd;
                        }
                        else
                        {
                            continue;
                        }
                    }
                    $tpl_data = &$arrData ['uiData'] [$res] ['item'][$intIndex]['dispData']['resultData']['tplData'];
                    Clog::debug("path_array count=" . count($path_array));
                    //删除item的内容
                    switch (count($path_array))
                    {
                        case 0:
                            break;
                        case 1:
                            if (isset($tpl_data[$path_array[0]]))
                            {
                                unset($tpl_data[$path_array[0]]); 
                            }
                            break;
                        case 2:
                            if (isset($tpl_data[$path_array[0]][$path_array[1]]))
                            {
                                unset($tpl_data[$path_array[0]][$path_array[1]]); 
                            }
                            break;
                        case 3:
                            if (isset($tpl_data[$path_array[0]][$path_array[1]][$path_array[2]]))
                            {
                                unset($tpl_data[$path_array[0]][$path_array[1]][$path_array[2]]); 
                            }
                            break;
                        case 4:
                            if (isset($tpl_data[$path_array[0]][$path_array[1]][$path_array[2]][$path_array[3]]))
                            {
                                unset($tpl_data[$path_array[0]][$path_array[1]][$path_array[2]][$path_array[3]]); 
                            }
                            break;
                        case 5:
                            if (isset($tpl_data[$path_array[0]][$path_array[1]][$path_array[2]][$path_array[3]][$path_array[4]]))
                            {
                                unset($tpl_data[$path_array[0]][$path_array[1]][$path_array[2]][$path_array[3]][$path_array[4]]); 
                            }
                        default:
                            Clog::warning("hide path illegal");
                            break;
                    }
                }
            }
        }

        return true;
    }

}
