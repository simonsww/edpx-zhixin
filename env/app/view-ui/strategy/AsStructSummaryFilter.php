<?php

/**
 * 
 * @desc 自然结果避让阿拉丁策略
 * @author yuguihui@baidu.com
 *
 */
class AsStructSummaryFilter extends Strategy {

    public function disable_struct_summary(&$arrData, $struct_summary, $reason) {
        $item = &$arrData['uiData'][$struct_summary['result']]['item'][$struct_summary['index']];

        if(isset($item['dispData']['backup_templateName']) ) {
            $item['dispData']['templateName'] = $item['dispData']['backup_templateName'];
        }
        if(isset($item['dispData']['backup_StdStg_new']) ) {
            $item['dispData']['StdStg_new'] = $item['dispData']['backup_StdStg_new'];
        }

        $item['dispData']['as_struct_exp'] = $reason;

        return true;
    }


    public function get_as_struct_summary($arrData, $template, $stdstg) {

        $struct_summary = NULL;
        $strResult = "asResult";

        if (is_array($arrData ['uiData'] [$strResult] ['item']) && !empty($arrData ['uiData'] [$strResult] ['item'])) {
            foreach ($arrData ['uiData'] [$strResult] ['item'] as $intIndex => $arrItem) {
                if($arrItem['comeFrome'] === 'AS' && ($arrItem['dispData']['templateName'] === $template || $arrItem['dispData']['StdStg_new'] === $stdstg) ) {
                    $struct_summary = array('result' => $strResult, 'from' => 'AS', 'index' => $intIndex);
                    break;
                }
            }
        }
        return $struct_summary;
    }

    //< 是否保留最佳答案
    public function keep_top1_as_struct_summary($arrData, $struct_summary, &$keep) {
        $strResult = "leftResult";
        //< 避让知心结果
        if (is_array($arrData ['uiData'] [$strResult] ['item']) && !empty($arrData ['uiData'] [$strResult] ['item'])) {
            $keep = false;
            return $keep;
        }
        if($struct_summary['index'] != 0) {
            $keep = false;
            return $keep;
        }
        $keep = true;
        return $keep;
    }

    public function check_struct_summary(&$arrData,
                                            $template,
                                            $stdstg,
                                            $keep_as_struct_summary_func,
                                            $sample_var) {
        //< 根据模板名orstdstg_new 取第一条结果
        $struct_summary = $this->get_as_struct_summary($arrData, $template, $stdstg);
        if(is_null($struct_summary) ) {
            return;
        }

        //< 根据自定义函数判断是否保留结构化摘要
        $keep = false;
        call_user_func(array("AsStructSummaryFilter", $keep_as_struct_summary_func), $arrData, $struct_summary, &$keep);

        //< 如果不保留, 回退
        if($keep == false) {
            $this->disable_struct_summary($arrData, $struct_summary, "disabled");
            return;
        }

        //< 命中抽样实验后不保留
        if($sample_var !== 'keep') {
            $this->disable_struct_summary($arrData, $struct_summary, $sample_var);
            return;
        }

        //< 保留
        return;
    }

    public function run(&$arrData, $arrConf) {
        //< 最佳答案
        $this->check_struct_summary($arrData, 'ala_best_answer', 1532, 'keep_top1_as_struct_summary', 'keep');

        //< 通用聚合
        $sample_var = $this->get_sample_variable($arrData, 'VUI_ENABLE_AGGREGATE_QA', 'keep');
        $this->check_struct_summary($arrData, 'ala_generalqa',     1536, 'keep_top1_as_struct_summary', $sample_var);

        return true;
    }

    //< 获取
    public function get_sample_variable($arrData, $exp_name, $default) {
        $sample_variable = $default;
        //for small flow
        $arrSample = Util::getConf('/sample_variable', 'sample_variable/' . $exp_name);
        if (is_array($arrData ['uiData'] ['queryInfo'] ['samplingId']) && !empty($arrData ['uiData'] ['queryInfo'] ['samplingId']) && is_array($arrSample) && !empty($arrSample)) {
            $arrSids = $arrData ['uiData'] ['queryInfo'] ['samplingId'];
            $arrSids = array_flip($arrSids);
            foreach ($arrSample ['Contexted'] as $arrTemp) {
                if (isset($arrSids [$arrTemp ['sampling_id']])) {
                    $sample_variable = $arrTemp ['value'];
                    break;
                }
            }
        }
        return $sample_variable;
    }
}
