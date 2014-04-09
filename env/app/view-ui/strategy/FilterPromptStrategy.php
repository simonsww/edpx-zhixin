<?php
/**
 * 针对没有命中抽样的请求，根据模版名过滤掉通用提示（配置通过抽样平台分发）
 * @author jiachunxin
 *
 */
class FilterPromptStrategy extends Strategy {
    // 提取命中的抽样，解析配置
    public function getHintSampleVariables($arrSample, $arrSids) {
        $hint_sample = array();
        foreach ($arrSample ['Contexted'] as $arrTemp) {
            if (isset($arrSids [$arrTemp ['sampling_id']])) {
                if(empty($arrTemp ['value'])) {
                    continue;
                }
                $arrKvs = explode(';', $arrTemp ['value']);
                foreach ($arrKvs as $val) {
                    list($strAction, $strArgs) = split( "=", $val);
                    if(empty($strAction) || empty($strArgs)) {
                        continue;
                    }
                    $hint_sample[$strAction][$strArgs] = 1;
                }
            }
        }
        return $hint_sample;
    }

    //没有命中抽样的提示
    public function getFilterSampleVariables($arrSample, $arrSids) {
        $filter_sample = array();
    	foreach ($arrSample ['Contexted'] as $arrTemp) {
			if (!isset($arrSids [$arrTemp ['sampling_id']])) {
                if(empty($arrTemp ['value'])) {
					continue;
				}
                $arrKvs = explode(';', $arrTemp ['value']);
                foreach ($arrKvs as $val) {
                    list($strAction, $strArgs) = split( "=", $val);
                    if(empty($strAction) || empty($strArgs)) {
	    			    continue;
		    		}
			    	$filter_sample[$strAction][$strArgs] = 1;
                }
			}
		}
        return $filter_sample;
	}

	public function run(&$arrData, $arrConf) {
		if (empty ( $arrData ) || ! is_array ( $arrData )) {
			return false;
		}
        $arrSids = array();
		$arrSample = Util::getConf('/sample_variable', 'sample_variable/FILTER_PROMPT');
        $filter_sample = array();
        $hint_sample = array();
		//获取过滤条件
        if (is_array($arrData ['uiData'] ['queryInfo'] ['samplingId']) && !empty($arrData ['uiData'] ['queryInfo'] ['samplingId']) && is_array($arrSample) && !empty($arrSample)) {
            $arrSids = $arrData ['uiData'] ['queryInfo'] ['samplingId'];
			$arrSids = array_flip($arrSids);
            $filter_sample = $this->getFilterSampleVariables($arrSample, $arrSids);
            $hint_sample = $this->getHintSampleVariables($arrSample, $arrSids);
		}
		//过滤条件为空，直接返回
		if(empty($filter_sample) && empty($hint_sample))
		{
			return true;
		}
		$arrPromtId = array();
		if (isset ( $arrData ['uiData'] ['queryInfo'] ['promptNode'] ) && is_array ( $arrData ['uiData'] ['queryInfo'] ['promptNode'] )) {
			//通过过滤条件收集需要删除的提示
			foreach ( $arrData ['uiData'] ['queryInfo'] ['promptNode'] as $intKey => &$arrOnePromptNode ) {
				if (! empty ( $arrOnePromptNode ['promptContent'] )) {
					$arrPromptContent = json_decode ( $arrOnePromptNode ['promptContent'], true );
                    $arrPositionTmp = array();
					if(!empty($arrPromptContent['hints']) && is_array($arrPromptContent['hints'])){
						foreach($arrPromptContent['hints'] as $strPosition => $arrOnePositionPromptContent){
                            //首先按id过滤
                            if (!empty($hint_sample["prompt_id"]) && empty($hint_sample["prompt_id"][$arrOnePositionPromptContent[0] ['id']])) {
                                $arrPromtId[]=$intKey;
                            }
                            //按模板过滤
							if(empty($hint_sample["prompt_id"][$arrOnePositionPromptContent[0] ['id']]) && !empty($filter_sample["template"][$arrOnePositionPromptContent[0]['templateName']])){
								$arrPromtId[]=$intKey;
							}
						}
					}
				}
			}
			//删除对应的提示
			foreach ($arrPromtId as $key)
			{
				unset($arrData ['uiData'] ['queryInfo'] ['promptNode'][$key]);
			}
		}
		return true;
	}
}
