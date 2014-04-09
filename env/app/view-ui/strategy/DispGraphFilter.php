<?php

// function debug_log() {
//     if (false) {
//         return;
//     }
//     static $fp = 0;
//     if ($fp === 0) {
//         $logpath = '/home/work/search/view-ui/log/disp_graph_filter.log';//日志名称
//         $fp = fopen($logpath, 'a');
//     } 
//     $traces = debug_backtrace();
//     $trace = count($traces) > 1 ? $traces[1] : $traces[0];
//     $log_msg = date('Y-m-d H:i:s') . ': [' . $trace['function'] . ' '. basename($trace['file']) . ' ' .$trace['line'] . ']';
//     foreach(func_get_args() as $arg) {
//         if (is_string($arg)) {
//             $log_msg .= $arg . ' ';
//         } else {
//             $log_msg .= var_dump($arg) . ' ';
//         }
//     }
//     fwrite($fp, $log_msg . "\n");
// }
/**
 * 
 * @desc General出图策略
 * @author chenhuailiang@baidu.com
 *
 */
class DispGraphFilter extends Strategy {
    const HIT_IMAGE_SEARCH_ALADIN = 1;      //< 图片搜索阿拉丁
    const HIT_VIDEO_SEARCH_ALADIN = 2;      //< 视频搜索阿拉丁
    const HIT_OTHER_IMAGE_ALADIN = 3;       //< 其他带图的阿拉丁

    //< 出图时不再展现图文标
    private function disable_general_pic(&$item) {
        if (isset($item['dispData']['general_pic']['url'])) {
            unset($item['dispData']['general_pic']['hasPicType']);
        }
        // debug_log('disable_general_pic');
        return true;
    }
    //< 不出图. 小流量实验, 对比组加上tag
    private function disable_general_image(&$arrItem, $add_tag, $reason="unspecified") {
        if (isset($arrItem ['dispData'] ['backup_template']) && !empty($arrItem ['dispData'] ['backup_template'])) {
            $arrItem ['dispData'] ['templateName'] = trim($arrItem ['dispData'] ['backup_template']);
        }
        // } else {
        //     $arrItem ['dispData'] ['templateName'] = $arrFilterConfs ['defaultTplName'];
        // }
        if (isset($arrItem['dispData']['general_pic']['url']) ) {
            unset($arrItem['dispData']['general_pic']['url']);
        }
        if($add_tag === true) {
            $arrItem ['dispData'] ['fake_imge_show'] = "fake_imge_show";
        }
        // debug_log('disable_general_image.' . ($add_tag ? "no_tag" : "add_tag") . ' reason:' . $reason);
        return true;
    }
    //< 获取不同位置(左上, 左下, 右边)广告展现的数目
    //< 广告id决定了展现位置, 对应关系参考
    //< https://svn.baidu.com/ps/se/trunk/fe/tpl/www/src/page/baidu/baidu/page.tpl
    public function get_ads_count($ecresult) {
        $ads = array("left_top" => 0, "left_bottom" => 0, "right" => 0);
        if(!is_array($ecresult['ecResultItem']) || empty($ecresult['ecResultItem']) ) {
            return $ads;
        }
        $left_top_ids = array(119 => 1, 204 => 1, 656 => 1, 213 => 1, 664 => 1);
        $left_bottom_ids = array(217 => 1);
        $right_ids = array(120 => 1, 542 => 1, 657 => 1, 1 => 1, 2 => 1, 14 => 1, 91 => 1);
        foreach ( $ecresult['ecResultItem'] as $index => $item) {
            if(isset($left_top_ids[$item["id"] ] ) ) {
                $ads["left_top"]++;
                continue;
            }
            if(isset($left_bottom_ids[$item["id"] ] ) ) {
                $ads["left_bottom"]++;
                continue;
            }
            if(isset($right_ids[$item["id"] ]) ) {
                $ads["right"]++;
                continue;
            }
        }
        return $ads;
    }

    //< 全流量出图限制
    private function default_strategy($index, $ads, $aladin, $no_img_if_ad) {
        $keep_img = array('keep' => true, 'add_tag' => false, 'reason' => 'default');
        // //< 避让左上广告
        if ( $ads["left_top"] > 0 && $no_img_if_ad == 1) {
            $keep_img['keep'] = false;
            $keep_img['reason'] = 'left-top advertisement';
            return $keep_img;
        }
        //< 避让出图阿拉丁
        $img_aladin_cnt = 0;
        foreach ($aladin as $res => $pos) {
            foreach($pos as $ind => $type) {
                if($type === "kefu") {
                    $img_aladin_cnt = $img_aladin_cnt + 1;
                }
            }
        }
        if ($img_aladin_cnt > 0) {
            $keep_img['keep'] = false;
            $keep_img['reason'] = 'img_aladin=' . $img_aladin_cnt;
            return $keep_img;
        }
        //< 2-4 不出图
        if ($index == 1 || ( $index >= 5 && $index <= 10)) {
            $keep_img['keep'] = true;
            $keep_img['reason'] = 'position=' . $index;
            return $keep_img;
        } else {
            $keep_img['keep'] = false;
            $keep_img['reason'] = 'position=' . $index;
            return $keep_img;
        }
    }


    public function keep_url_image($sample_variable, $index, $ads, $aladin, $no_img_if_ad) {
        $keep_img = array('keep' => true, 'add_tag' => false, 'reason' => 'default');
        //< 全放开
        if($sample_variable == 1) {
            $keep_img['reason'] = "all_easy as sample_variable=" .$sample_variable;  
            return $keep_img;
        }

        //< 严格控制
        if($sample_variable == 2) {
            //< 2-4 不出图
            if ($index >= 2 && $index <= 4) {
                $keep_img['keep'] = false;
                $keep_img['reason'] = 'position=' . $index . ' sample_variable:' . $sample_variable;
                return $keep_img;
            }

            //< 避让广告
            if ($ads['left_top'] > 0) {
                $keep_img['keep'] = false;
                $keep_img['reason'] = 'left-top advertisement' . ' sample_variable:' . $sample_variable;
                return $keep_img;
            }

            //< 避让阿拉丁
            $img_aladin_cnt = 0;
            foreach ($aladin as $res => $pos) {
                $img_aladin_cnt += count($pos);
            }
            if($img_aladin_cnt > 0) {
                $keep_img['keep'] = false;
                $keep_img['reason'] = 'img_aladin=' . $img_aladin_cnt;
                return $keep_img;
            }
        }

        return $this->default_strategy($index, $ads, $aladin, $no_img_if_ad);
    }

    //< 获取出图的阿拉丁
    public function get_image_aladin($arrData, $arrFilterConfs) {
        $aladin = array();

        $arrFilterResult = explode(',', $arrFilterConfs ['filter_result']);
        $arrFilterResult = array_flip($arrFilterResult);
        
        // // debug_log('filter:' . var_export($arrFilterResult, true) );
        $arrSrcIds = $arrFilterConfs ['SRCID'];
        $intCurCount = 0;
        $intTotalCount = isset($arrFilterConfs ['count']) ? intval($arrFilterConfs ['count']) : 10;
        $intTopCount = isset($arrFilterConfs ['top_count']) ? intval($arrFilterConfs ['top_count']) : 5;
        $intMidCount = isset($arrFilterConfs ['mid_count']) ? intval($arrFilterConfs ['mid_count']) : 3;

        $meet_image_aladin = false;     ///< 是否扫描到带图阿拉丁

        //避让策略，asResult,leftResult
        foreach ($GLOBALS ['RESULT'] as $res) {
            // // debug_log('res : ' . $res);
            if (isset($arrFilterResult [$res]) && is_array($arrData ['uiData'] [$res] ['item']) && !empty($arrData ['uiData'] [$res] ['item'])) {
                $aladin[$res] = array();
                $intFilterCurCount = 0;
                foreach ($arrData ['uiData'] [$res] ['item'] as $intItemIndex => $arrItemInfo) {
                    $intFilterCurCount++;
                    if ($intFilterCurCount > $intTotalCount) {
                        break;
                    }
                    //出图策略
                    $intStdStg = isset($arrItemInfo ['dispData'] ['StdStg']) ? intval($arrItemInfo ['dispData'] ['StdStg']) : intval($arrItemInfo ['dispData'] ['SrcId']);
                    // // debug_log('stdstg:' . $intStdStg . ' picture_sid:' . $arrFilterConfs['picture_sid'] . ' video_sid:' . $arrFilterConfs['video_sid'] );
                    foreach ($arrSrcIds as $intSid => $arrInfo) {
                        if ($arrInfo['location'] > 0 && $intFilterCurCount > $arrInfo['location']) {
                            continue;
                        }
                        // // debug_log('stdstg:' . $intStdStg . ' intsid:' . $intSid  . ' => info:' . var_export($arrInfo, true) );
                        if ($intSid == $intStdStg) {
                            //图片的策略
                            if ($intSid == $arrFilterConfs['picture_sid']) {
                                if ((isset($arrItemInfo ['dispData'] ['StdStl']) && intval($arrItemInfo ['dispData'] ['StdStl']) == 1) || empty($arrItemInfo ['dispData'] ['ImageAladdinResult']) || count($arrItemInfo ['dispData'] ['ImageAladdinResult']) == 0) {
                                    continue;
                                } else {
                                    // $aladin[$res][$intItemIndex] = HIT_IMAGE_SEARCH_ALADIN;
                                    $aladin[$res][$intItemIndex] = $arrInfo['type'];
                                    $meet_image_aladin = true;
                                    // debug_log('stdstg:' . $intSid .' hit picture_sid');
                                    break;
                                }
                            //视频的策略
                            } else if ($intSid == $arrFilterConfs['video_sid']) {
                                if (intval($arrItemInfo ['dispData'] ['StdStl']) != 11) {
                                    // $aladin[$res][$intItemIndex] = HIT_VIDEO_SEARCH_ALADIN;
                                    $aladin[$res][$intItemIndex] = $arrInfo['type'];
                                    $meet_image_aladin = true;
                                    // debug_log('stdstg:' . $intSid . 'hit video_sid');
                                    break;
                                }
                            } else {
                                // $aladin[$res][$intItemIndex] = HIT_OTHER_IMAGE_ALADIN;
                                $aladin[$res][$intItemIndex] = $arrInfo['type'];
                                $meet_image_aladin = true;
                                // debug_log('stdstg:' . $intSid . 'hit something else');
                                break;
                            }
                        }
                        $intMax = isset($arrInfo['maxNum']) ? intval($arrInfo['maxNum']) : 0;
                        if ($intMax > 0 && $intStdStg > $intSid && $intStdStg <= $intMax) {
                            // $aladin[$res][$intItemIndex] = HIT_OTHER_IMAGE_ALADIN;
                            $aladin[$res][$intItemIndex] = $arrInfo['type'];
                            $meet_image_aladin = true;
                            break;
                        }
                    }
                    if ($meet_image_aladin === true) {
                        break;
                    }
                }
                //< 如果需要扫描所有带图阿拉丁, 注释这部分逻辑
                if ($meet_image_aladin === true) {
                    break;
                }
            }
        }
        // debug_log('meet_image_aladin:' . ($meet_image_aladin ? 'true' : 'false') );
        return $aladin; 
    }

    const FROM_ALADIN = 0;
    const FROM_AC      = 1;

    private function keep_single_image_baike(&$arrData)
    {
        $image_baike = array();
 
        $strResult = 'asResult';
        $aladin_image_baike = false;

        if (is_array($arrData ['uiData'] [$strResult] ['item']) && !empty($arrData ['uiData'] [$strResult] ['item'])) {
            foreach ($arrData ['uiData'] [$strResult] ['item'] as $index => &$item) {
                //< 阿拉丁出图百科资源号81
                $stdstg = isset($item['dispData'] ['StdStg']) ? intval($item['dispData'] ['StdStg']) : 0;
                if($stdstg == 81) {
                    // debug_log('index:' . $index . ' image_baike');
                    $image_baike[$index] = FROM_ALADIN;
                    $aladin_image_baike = true;
                    continue;
                }
		if (isset($item['dispData'] ['templateName'])
		    &&($item['dispData']['templateName'] === 'se_st_image_baike'
		    || $item['dispData'] ['templateName'] === 'baikeperson') ) {
			// debug_log('index:' . $index . ' image_baike');
			$image_baike[$index] = FROM_AC;
			continue;
                }
            }
        }
        // debug_log('image_bake:' . var_export($image_baike, true) );
        if(count($image_baike) < 2) {
            return;
        }
        // debug_log('count:'. count($image_baike), ($aladin_image_baike ? ' aladin_image_baike' : 'no aladin_image_baike') );

        //< 有阿拉丁结果, 自然百科结果不出图
        //< 无阿拉丁结果, 保留第一个出图结果
        if($aladin_image_baike == true) {
            foreach ( $image_baike as $index => $from) {
                // debug_log('index:' . $index . ' from:' . $from);
                if($from == FROM_AC) {
                    // debug_log('diable image_baike. index:' . $index);
                    $item = &$arrData ['uiData'][$strResult]['item'][$index];
                    $item['dispData'] ['templateName'] = 'se_st_default';
                }
            }
        } else {
            $first = true;
            foreach ( $image_baike as $index => $from ) {
                if($first == true) {
                    $first = false;
                    continue;
                }
                // debug_log('diable image_baike. index:' . $index);
                $item = &$arrData ['uiData'][$strResult]['item'][$index];
                $item['dispData'] ['templateName'] = 'se_st_default';
            }
        }

        return;
    }

    public function get_sample_variable($arrData, $exp_name) {
        $sample_variable = 0;
        //for small flow
        $arrSample = Util::getConf('/sample_variable', 'sample_variable/' . $exp_name);
        if (is_array($arrData ['uiData'] ['queryInfo'] ['samplingId']) && !empty($arrData ['uiData'] ['queryInfo'] ['samplingId']) && is_array($arrSample) && !empty($arrSample)) {
            $arrSids = $arrData ['uiData'] ['queryInfo'] ['samplingId'];
            $arrSids = array_flip($arrSids);
            foreach ($arrSample ['Contexted'] as $arrTemp) {
                if (isset($arrSids [$arrTemp ['sampling_id']])) {
                    if ($arrTemp ['value'] >= 1 && $arrTemp ['value'] <= 10000) {
                        $sample_variable = $arrTemp ['value'];
                        break;
                    }
                }
            }
        }
        return $sample_variable;
    }

    private function get_group($arrData, $strResult, &$group)
    {
        if (!( is_array($arrData ['uiData'] [$strResult] ['item']) && !empty($arrData ['uiData'] [$strResult] ['item'] ) ) ) {
            return;
        }

        foreach ($arrData ['uiData'] [$strResult] ['item'] as $intIndex => &$arrItem) {
            $group_flag = isset($arrItem ['burstFlag']) ?  intval($arrItem ['burstFlag']) : 0;
            if($group_flag == 0) {
                continue;
            }
            $SrcId = isset($arrItem['dispData']['SrcId']) ? intval($arrItem['dispData']['SrcId']) : 0;
            array_push($group, array('from' => $strResult, 'index' => $intIndex, 'SrcId' => $SrcId));
            if($group_flag == 3) {
                break;
            }
        }
        return;
    }

    //< 加框出图策略
    private function group_results_proc(&$arrData) {
        //< 获取加框结果
        $group = array();
        $this->get_group($arrData, 'leftResult', $group);
        $this->get_group($arrData, 'asResult',   $group);

        if(count($group) == 0) {
            return;
        }
        // debug_log('group' . var_export($group, true) );

        $first_src_id = $group[key($group)]['SrcId'];
        $hit_category = NULL;

        $conf = Util::getConf('/graph_filter', 'GROUP_RESULT_IMAGE_FILTER');
        foreach( $conf['category'] as $name => $category ) {
            $src_ids = array_flip( explode(',', $category['src_id']) );
            if( isset($src_ids[$first_src_id] ) ) {
                $hit_category = $category;
                break;
            }
        }
        if(is_null( $hit_category) ) {
            return;
        }
        foreach($group as $id => $item) {
            $from = $item['from'];
            $index = $item['index'];
            $src_id = $item['SrcId'];

            if(isset($hit_category[$src_id] ) ) {
                foreach ( explode(',', $hit_category[$src_id]['disable_key']) as $key) {
                    $this->disable_key($arrData['uiData'][$from]['item'][$index], $key);
                }
            }
        }

        if(!isset($hit_category['disable_burst']) || empty($hit_category['disable_burst']) || $hit_category['disable_burst'] === 'none' ) {
            return;
        } else {
            $sample_variable = $this->get_sample_variable($arrData, 'ZHIXIN_ADD_BLOCK_VUI');
            $variables = array_flip( explode(',', $hit_category['disable_burst']) );
            if(isset($variables[$sample_variable]) ) {
                $this->disable_burst($arrData, $group);
            }
            return;
        }

        return;
    }
    private function disable_burst(&$arrData, $group) {
        foreach($group as $id => $item) {
            $from = $item['from'];
            $index = $item['index'];
            unset($arrData['uiData'][$from]['item'][$index]['burstFlag']);
        }
    }

    //<
    private function disable_key(&$item, $conf_key) {
        $keys = explode (".", $conf_key);
        if(count($keys) == 0) {
            return false;
        }
        $value = &$item;
        foreach ( $keys as $key) {
            if(! isset($value[$key]) ) {
                return false;
            }
            $value = &$value[$key];
        }
        $value = "";
        return true;
    }

    public function run(&$arrData, $arrConf) {
        $time_start = Volatile::microtime(true) * 1000;
        if (empty($arrData) || !is_array($arrData)) {
            return false;
        }
        $arrFilterConfs = Util::getConf('/graph_filter', 'GRAPH_FILTER');
        if (!is_array($arrFilterConfs) || empty($arrFilterConfs) || empty($arrFilterConfs ['result']) || empty($arrFilterConfs ['SRCID']) || empty($arrFilterConfs ['defaultTplName']) || empty($arrFilterConfs ['check_aladin']) || empty($arrFilterConfs ['filter_result'])) {
            return false;
        }

        $sample_variable = $this->get_sample_variable($arrData, 'GENERAL_IMAGE_VUI');

        $aladin = $this->get_image_aladin($arrData, $arrFilterConfs);

        $ads = $this->get_ads_count($arrData['uiData']['ecResult']);

        $strResult = $arrFilterConfs ['result'];
        $intTotalCount = isset($arrFilterConfs ['count']) ? intval($arrFilterConfs ['count']) : 10;

        $no_img_if_ad = isset($arrFilterConfs ['no_img_if_ad']) ? intval($arrFilterConfs ['no_img_if_ad']) : 1;
        $default_st   = isset($arrFilterConfs ['default_st']) ? intval($arrFilterConfs ['default_st']) : 0;

        //< 不中抽样使用默认策略分支
        if($sample_variable == 0) {
            $sample_variable = $default_st;
        }

        //< 获取所有结果
        $results = $this->get_all_results($arrData);
        // debug_log("results:" . var_export($results, true) );

        //< 新分支
        if($sample_variable != 3) {
        //处理AS结果队列
        if (is_array($arrData ['uiData'] [$strResult] ['item']) && !empty($arrData ['uiData'] [$strResult] ['item'])) {
            $intCurCount = 0;
            foreach ($arrData ['uiData'] [$strResult] ['item'] as $intIndex => &$arrItem) {
                // 处理每条结果
                $intCurCount++;
                if ($intCurCount > $intTotalCount) {
                    return true;
                }
                if (isset($arrItem ['dispData'] ['disp_image']) ) {
                    switch ($arrItem ['dispData'] ['disp_image']) {
                        case 'disp_image':
                            // if ($ads["left_top"] > 0) {
                            //     $this->disable_general_image($arrItem, false, "advertisement" );
                            // } else {
                            //     $this->disable_general_pic($arrItem);
                            // }
                            // break;
                        case 'check_aladin':                
                            $keep_img = $this->keep_url_image($sample_variable, $intIndex + 1, $ads, $aladin, $no_img_if_ad);
                            if(!$keep_img['keep']) {
                                $this->disable_general_image($arrItem, $keep_img['add_tag'], $keep_img['reason']);
                            } else {
                                $this->disable_general_pic($arrItem);
                            }
                            break;
                        case 'no_image':
                        default:
                            $this->disable_general_image($arrItem, false, "unknown disp_image : " . $arrItem ['dispData'] ['disp_image']);
                            break;
                    }
                }
                $has_image = isset($arrItem['dispData']['general_pic']['url']) && !empty($arrItem['dispData']['general_pic']['url']);
                if($has_image == true) {
                    $arrItem ['dispData'] ['img'] = 1;
                }
            }
        }
        } else {

            //< 判断出图位置
            $disable_pos = $this->calc_disp_image_pos($results);
            // debug_log("disable_pos:" . var_export($disable_pos, true) );

            //< 去掉指定位置的图片
            $this->disable_specify_pos($arrData, $results, $disable_pos);
            //< 出图与图文标不共存
            $this->disable_general_pic_if_image($arrData);
        }

        // $this->add_preload($arrData, $results);

        $keep_single_image_baike = isset($arrFilterConfs ['keep_single_image_baike']) ? intval($arrFilterConfs ['keep_single_image_baike']) : 0;
        if($keep_single_image_baike == 1) {
            $this->keep_single_image_baike($arrData);
        }
        $this->group_results_proc($arrData);
        return true;
    }

    private function is_xunzhi($item) {
        $xunzhi = false;
        $src_id = $item['src_id'];
        // 寻址阿拉丁
        if($item['queue'] == 'asResult' && $item['from'] == 'SP' && ($src_id == 10789 || $src_id == 15883 || $src_id ==  14515) ) {
            $xunzhi = true;
        }
        // 自然结果取寻址策略位和模板判断
        if($item['queue'] == 'asResult' && $item['from'] == 'AS') {
            //< 寻址队列
            if( $this->get_strategy_bit($item['strategy'], self::$XUNZHI_STRATEGY['id'], self::$XUNZHI_STRATEGY['bit']) ) {
                $xunzhi = true;
            }
            if( $this->get_strategy_bit($item['strategy'], self::$XUNZHI_ALADIN['id'], self::$XUNZHI_ALADIN['bit']) ) {
                $xunzhi = true;
            }
            if( $item['template'] == 'se_st_guanwang' ) {
                $xunzhi = true;
            }
        }
        return $xunzhi;
    }

    // 寻址需求第一条URL预加载
    private function add_preload(&$arrData, $results) {
        foreach($results as $id => $item) {
            $xunzhi = $this->is_xunzhi($item);
            if($xunzhi) {
                $arrItem = &$arrData['uiData'][$item['queue']]['item'][$item['index']];
				if($item['from'] === 'SP') {
					$arrItem['dispData']['resultData']['tplData']['comm_preload'] = 1;
				} else {
					$arrItem['dispData']['comm_preload'] = 1;
				}
            }
            break;
        }
    }

    //< 获取结果的模板名
    private function get_item_template($item) {

        if(isset($item['dispData']['strategy']['tempName']) && !empty($item['dispData']['strategy']['tempName']) ) {
            return $item['dispData']['strategy']['tempName'];
        } else if(isset($item['dispData']['templateName']) && !empty($item['dispData']['templateName']) ) {
            return $item['dispData']['templateName'];
        } else {
            return "unknown";
        }
    }

    //< 获取结果的策略位
    private function get_item_strategy_bits($item) {
        return isset($item['urls']['asUrls']['strategys']) ? $item['urls']['asUrls']['strategys'] : "";
    }

    //< 获取策略位
    private function get_strategy_bit($strategy_bits, $id, $bit)
    {
        if(!isset($strategy_bits[$id]) ) {
            return false;
        }
        $bits = str_pad(decbin(intval($strategy_bits[$id])), 32, "0", STR_PAD_LEFT);
        return $bits[31 - $bit] === "1";
    }

    //< 策略位
    //< @refer http://wiki.babel.baidu.com/twiki/bin/view/Ps/Searcher/%E7%AD%96%E7%95%A5%E4%BD%8D%E4%BD%BF%E7%94%A8%E7%BB%9F%E8%AE%A1
    private static $XUNZHI_STRATEGY = array("id" => 2, "bit" => 31);
    private static $XUNZHI_ALADIN   = array("id" => 4, "bit" => 6);
    // private static $DISP_AS_IMAGE   = array("id" => 0, "bit" => 16 );
    private static $DISP_AS_IMAGE   = array("id" => 4, "bit" => 8 );

    private function get_all_results($arrData) {
        $results = array();
        $strResults = array(1 => "leftResult", 2 => "asResult");
        $pos = 1;

        foreach($strResults as $strResult) { 
            if (is_array($arrData ['uiData'] [$strResult] ['item']) && !empty($arrData ['uiData'] [$strResult] ['item'])) {
                foreach ($arrData ['uiData'] [$strResult] ['item'] as $index => &$item) {
                    $from = $item['comeFrome'];
                    $url = isset( $item['offsetInfo']['url'] ) ?  $item['offsetInfo']['url'] : $item['itemUrl'];
                    $src_id = isset($item ['dispData'] ['StdStg']) ? intval($item ['dispData'] ['StdStg']) : intval($item ['dispData'] ['SrcId']);
                    $template = $this->get_item_template($item);
                    $strategy_bits = $this->get_item_strategy_bits($item);
                    $img = isset($item['dispData']['general_pic']['url']);

                    array_push($results, array('queue' => $strResult,
                                               'from' => $from,
                                               'index' => $index,
                                               'pos' => $pos,
                                               'url' => $url,
                                               'src_id' => $src_id,
                                               'template' => $template,
                                               'strategy' => $strategy_bits,
                                               'img' => $img));

                    $pos = $pos + 1;
               }
            }
        }
        return $results;
    }
    //< 计算哪些位置出图
    private function calc_disp_image_pos($results) {
        $disable_pos = array();

        $xunzhi = false;
        $zhixin_cnt = 0;

        //< 对不同位置的模板加权打分
        $pos_wei = array(1 => 3, 2 => 2, 3 => 1, 4 => 1);
        $pos_pun = array(1 => 3, 2 => 2, 3 => 2, 4 => -3);
        $templates = array(
            "se_st_single_video_zhanzhang" => 1,
            "se_st_image_baike" => 1,
            "se_st_gallery" => 2,
            "vd_tamasha" => 2,
            "baikeperson" => 1,
            "sp_realtime" => 2,
            "sp_img" => 3,
            "vd_mininewest" => 2,
            "zx_tv_video" => 3,
            "tieba2" => 2,
            "sp_weibo" => 3,
            "zx_news" => 2,
            "movievideo" => 4,
            "digital_series" => 2,
            "zx_image" => 2,
            "cartoon" => 3,
            "ecl_game_download" => 2,
            "view_pic" => 2,
            "vd_sitcom" => 3,
            "ecl_ec_weigou_b" => 3,
            "car_mini" => 2,
            "exactqa" => 2,
            "videoidea" => 4,
            "ecl_health_knowledge_pic" => 2,
            "vd_comic" => 4,
            "caiputest1" => 2,
            "zx_tamasha" => 2,
            "tour_spot" => 2,
            "nbaseason" => 2,
            "ecl_health_mix_page" => 2,
            "zx_tv_video" => 3,
            "ecl_ec_food_filter" => 2,
            "zx_tv_video" => 2,
            "dianqidaogou01" => 2,
            "trickimage" => 2,
            "gamegear2" => 2,
            "5pics" => 2,
            "ecl_health_mix" => 2,
            "ecl_house" => 2,
            "gamehero" => 2,
            "ag_live04" => 2,
            "weather4_twoicon" => 3,
            "digital_base_jgh" => 2,
            "digital_comment" => 2,
            "ecl_edu_abroad_info" => 1);

        $view_score = 0;
        $view_pun   = 0;

        foreach($results as $id => $item) {
            if($item['queue'] == 'leftResult') {
                $zhixin_cnt += 1;
            }

            $src_id = $item['src_id'];
            if($item['queue'] == 'asResult' && $item['from'] == 'SP' && ($src_id == 10789 || $src_id == 15883 || $src_id ==  14515) && $id <= 3) {
                $xunzhi = true;
            }

            if($item['queue'] == 'asResult' && $item['from'] == 'AS') {
                if( $item['template'] == 'se_st_guanwang' && $id <= 3) {
                    $xunzhi = true;
                }
                if( $id == 0 && $this->get_strategy_bit($item['strategy'], self::$XUNZHI_STRATEGY['id'], self::$XUNZHI_STRATEGY['bit']) ) {
                    $xunzhi = true;
                }
                if($item['pos'] <= 4) {
                    array_push($disable_pos, array('id' => $id, 'keep' => true, 'reason' => 'default') );
                }
            }
            if(isset($pos_wei[$item['pos']] ) && isset($templates[$item['template']]) ) { 
                $view_score += ($pos_wei[$item['pos']] * $templates[$item['template']]);
                $view_pun   += ($pos_pun[$item['pos']] * $templates[$item['template']]);
            } else if($item['img'] && isset($pos_pun[$item['pos']])) {
                $view_pun   += $pos_pun[$item['pos']];
            }
        }

        // debug_log('zhixin:' . $zhixin_cnt . ' view_score:' . $view_score . ' view_pun:' . $view_pun);

        //< 有知心全出
        if($zhixin_cnt > 0) {
            foreach($disable_pos as $id => &$pos) {
                $pos['keep'] = true;
                $pos['reason'] = 'zhixin';
            }
            return $disable_pos;
        }

        if(count($disable_pos) < 1) {
            return $disable_pos;
        }

        //< 寻址全不出图
        if($xunzhi) {
            foreach($disable_pos as $id => &$pos) {
                $pos['keep'] = false;
                $pos['reason'] = 'xunzhi';
            }
            return $disable_pos;
        }

        //< 强展现
        if( $view_score >= 5) {
            foreach($disable_pos as $id => &$pos) {
                $pos['keep'] = true;
                $pos['reason'] = 'high';
            }
            return $disable_pos;
        }

        //< 相关性判断
        foreach($disable_pos as $id => &$pos) {
            $item = $results[$pos['id']];
            //< 保留第一位自然结果的图片
            if($id == 0) {
                $pos['keep'] = true;
                $pos['reason'] = 'keep_top_as_image';
                continue;
            }
            $disp_image = $this->get_strategy_bit($item['strategy'], self::$DISP_AS_IMAGE['id'], self::$DISP_AS_IMAGE['bit']);

            if(!$disp_image) {
                $pos['keep'] = false;
                $pos['reason'] = 'low_relevance';
            } 
        }
        return $disable_pos;
    }

    //< 出图文标不出图
    private function disable_general_pic_if_image(&$arrData)
    {
        $res = 'asResult';
        foreach ($arrData ['uiData'] [$res] ['item'] as $intItemIndex => &$arrItem) {
            $this->disable_general_pic($arrItem);

            $has_image = isset($arrItem['dispData']['general_pic']['url']) && !empty($arrItem['dispData']['general_pic']['url']);
            if($has_image == true) {
                $arrItem ['dispData'] ['img'] = 1;
            }
        }
    }

    //< 根据 $pos['keep'] 保留or去掉图片
    private function disable_specify_pos(&$arrData, $results, $disable_pos)
    {
        foreach($disable_pos as $id => $pos) {
            $item = $results[$pos['id']];
            $arrItem = &$arrData['uiData'][$item['queue']]['item'][$item['index']];

            if (isset($arrItem ['dispData'] ['disp_image']) ) {
                switch ($arrItem ['dispData'] ['disp_image']) {
                    case 'disp_image':
                    case 'check_aladin':                
                        if($pos['keep']) {
                            $this->disable_general_pic($arrItem);
                        } else {
                            $this->disable_general_image($arrItem, false, $pos['reason']);
                        }
                        break;
                    case 'no_image':
                        $this->disable_general_image($arrItem, false, 'no_image');
                        break;
                }
            }
        }
    }
}
