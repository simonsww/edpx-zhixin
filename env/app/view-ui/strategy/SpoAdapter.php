<?php
/**
 * 
 *
 * 6714数据适配
 * @author 马天驰(matianchi@baidu.com)
 *
 */
class SpoAdapter extends Strategy {
	public function run(&$arrData, $arrConf) {
		if (empty ( $arrData ) || ! is_array ( $arrData )) {
			return false;
        }
        return true;
		if (! empty ( $arrData ['uiData'] ['asResult'] ['item'] ) && is_array ( $arrData ['uiData'] ['asResult'] ['item'] )) {
			foreach ( $arrData ['uiData'] ['asResult'] ['item'] as $index => &$item ) {
				self::beforeDisplay($item);
			}
		}
		return true;
	}
	public function beforeDisplay(&$item)
	{
		if($item['dispData']['StdStg'] == 6714){
			if(count($item['dispData']['resultData']['tplData']['result'])== 1){
				$one_result = $item['dispData']['resultData']['tplData']['result'][0];
				$id = $one_result['searchpid'];
				$item['dispData']['resultData']['tplData']['result'][0]['attrquery'] = $one_result[$id];
				$item['dispData']['resultData']['tplData']['result'][0]['entity'] = $one_result['ename'];
				$item['dispData']['resultData']['tplData']['result'][0]['attrdisp'] = $one_result['searchp'];
				if(!empty($item['dispData']['resultData']['tplData']['lastpname']) && !empty($item['dispData']['resultData']['tplData']['sname']) && empty($one_result['searchp'])){
					$item['dispData']['resultData']['tplData']['result'][0]['attrquery'] = $one_result['ename'];
					$item['dispData']['resultData']['tplData']['result'][0]['entity'] = $item['dispData']['resultData']['tplData']['sname'];
					$item['dispData']['resultData']['tplData']['result'][0]['attrdisp'] = $item['dispData']['resultData']['tplData']['lastpname'];
				}
				//默认使用结果ename
				$item['dispData']['resultData']['tplData']['QueryAnalyse']['ENTITY'] = $one_result['ename'];
				//sp查询，类似刘德华老婆
				if(!empty($item['dispData']['resultData']['tplData']['lastpname']) && !empty($item['dispData']['resultData']['tplData']['sname']) && empty($one_result['searchp'])){
					$item['dispData']['resultData']['tplData']['QueryAnalyse']['ENTITY'] = $item['dispData']['resultData']['tplData']['sname'];
					unset($item['dispData']['resultData']['tplData']['result'][0]['appendinfo']);
					$item['dispData']['resultData']['tplData']['result'][0]['appendinfo'] = $item['dispData']['resultData']['tplData']['sname_appendinfo'];
				}
				//spp多次查询，且不存在查询属性，刘德华老婆的丈夫
				if(!empty($item['dispData']['resultData']['tplData']['lastpname']) && !empty($item['dispData']['resultData']['tplData']['uppers']) && count($item['dispData']['resultData']['tplData']['uppers']) == 1 && empty($item['dispData']['resultData']['tplData']['search_property'])){
					$item['dispData']['resultData']['tplData']['QueryAnalyse']['ENTITY'] = $item['dispData']['resultData']['tplData']['uppers'][0]['ename'];
					$item['dispData']['resultData']['tplData']['result'][0]['attrdisp'] = $item['dispData']['resultData']['tplData']['lastpname'];
					$item['dispData']['resultData']['tplData']['result'][0]['attrquery'] = $one_result['ename'];
					unset($item['dispData']['resultData']['tplData']['result'][0]['appendinfo']);
					$item['dispData']['resultData']['tplData']['result'][0]['appendinfo'] = $item['dispData']['resultData']['tplData']['uppers'][0]['appendinfo'];
				}
				
				//复杂查询，无法解析数 s和p
				if(empty($item['dispData']['resultData']['tplData']['lastpname']) && empty($item['dispData']['resultData']['tplData']['search_property'])){
					unset($item['dispData']['resultData']['tplData']['QueryAnalyse']['ENTITY']);
					$item['dispData']['resultData']['tplData']['result'][0]['attrquery'] = $one_result['ename'];
					unset($item['dispData']['resultData']['tplData']['result'][0]['attrdisp']);
				}
				//entity和attrdisp为空，只展现摘要
				if(empty($item['dispData']['resultData']['tplData']['result'][0]['entity']) || empty($item['dispData']['resultData']['tplData']['result'][0]['attrdisp'])){
					unset($item['dispData']['resultData']['tplData']['result'][0]['entity']);
					unset($item['dispData']['resultData']['tplData']['result'][0]['attrdisp']);
					unset($item['dispData']['resultData']['tplData']['QueryAnalyse']['ENTITY']);
					$item['dispData']['resultData']['tplData']['result'][0]['attrquery'] = $one_result['ename'];
					$muti_res[0]['attrquery'] = $one_result['ename'];
					$muti_res[0]['normalpic'] = $one_result['normalpic'];
					$muti_res[0]['bigpic'] = $one_result['bigpic'];
					$muti_res[0]['broadpic'] = $one_result['broadpic'];
					$muti_res[0]['normalpic_new'] = $one_result['normalpic_new'];
					$muti_res[0]['bigpic_new'] = $one_result['bigpic_new'];
					$muti_res[0]['broadpic_new'] = $one_result['broadpic_new'];
					$muti_res[0]['selpic'] = $one_result['selpic'];
					$muti_res[0]['statctl'] = $one_result['statctl'];
					$muti_res[0]['sourcelink'] = $one_result['sourcelink'];
					$muti_res[0]['sourcename'] = $one_result['sourcename'];
					$muti_res[0]['summary'] = $one_result['summary'];
					foreach($item['dispData']['resultData']['tplData']['attr_di'] as $attr_di){
						$muti_res[0][$attr_di] = $one_result[$attr_di];
					}
					$item['dispData']['resultData']['tplData']['result'][0]['item'] = $muti_res;
				}

			} else if (count($item['dispData']['resultData']['tplData']['result']) > 1){
				$first_res = array();
				$first_res[0] = $item['dispData']['resultData']['tplData']['result'][0];
				$muti_res = array();
				foreach($item['dispData']['resultData']['tplData']['result'] as $key => $one_result){
					$muti_res[$key]['attrquery'] = $one_result['ename'];
					$muti_res[$key]['normalpic'] = $one_result['normalpic'];
					$muti_res[$key]['bigpic'] = $one_result['bigpic'];
					$muti_res[$key]['broadpic'] = $one_result['broadpic'];
					$muti_res[$key]['normalpic_new'] = $one_result['normalpic_new'];
					$muti_res[$key]['bigpic_new'] = $one_result['bigpic_new'];
					$muti_res[$key]['broadpic_new'] = $one_result['broadpic_new'];
					$muti_res[$key]['jumplink'] = $one_result['jumplink'];
					$muti_res[$key]['selpic'] = $one_result['selpic'];
					$muti_res[$key]['statctl'] = $one_result['statctl'];
					$muti_res[$key]['sourcelink'] = $one_result['sourcelink'];
					$muti_res[$key]['sourcename'] = $one_result['sourcename'];
					$muti_res[$key]['summary'] = $one_result['summary'];
					foreach($item['dispData']['resultData']['tplData']['attr_di'] as $attr_di){
						$muti_res[$key][$attr_di] = $one_result[$attr_di];
					}
					if(!empty($one_result['searchpid'])){
						$muti_res[$key]['additional'] = $one_result[$one_result['searchpid']];
						$muti_res[$key]['attrquery'] = $one_result['ename'];
					} else if (!empty($item['dispData']['resultData']['tplData']['cmpbrief'])){
						$muti_res[$key]['attrquery'] = $one_result['ename'];
						$briefvalue = array();
						foreach($item['dispData']['resultData']['tplData']['cmpbrief'] as $cmpbrief){
							$briefvalue[] = $one_result[$cmpbrief];
						}
						$str = implode("，", $briefvalue);
						$muti_res[$key]['additional'] = $str;
					} else if (!empty($one_result['additional'])){
						$muti_res[$key]['additional'] = $one_result['additional'];
					} else if (!empty($one_result['remark'])) {
						$muti_res[$key]['additional'] = $one_result['remark'];
					}
				}
				$first_res[0]['item'] = $muti_res;
				$item['dispData']['resultData']['tplData']['result'] = $first_res;
			}// if(count($item['dispData']['resultData']['tplData']['result'])== 1)
			//往下是hard code，被PM逼的
			$stat_array =json_decode($item['dispData']['resultData']['tplData']['otherinfo'], true);
			if(!empty($stat_array['stat0'])){
				$have_other = false;
				foreach($stat_array['stat0'] as $k => $one_stat){
					if($have_other == true)
					{
						$stat_array['stat0'][$k - 1] = $stat_array['stat0'][$k];
						continue;
					}
					if($one_stat['sa'] == "其它")
					{
						$other_stat = $one_stat;
						$have_other = true;
					}
				}
				if($have_other == true)
				{
					$stat0_count = count($stat_array['stat0']);
					$stat_array['stat0'][$stat0_count - 1] = $other_stat;
				}
			}
			if(!empty($stat_array['stat1'])){
				$have_other = false;
				foreach($stat_array['stat1'] as $k => $one_stat){
					if($have_other == true)
					{
						$stat_array['stat1'][$k - 1] = $stat_array['stat1'][$k];
						continue;
					}
					if($one_stat['sa'] == "其它")
					{
						$other_stat = $one_stat;
						$have_other = true;
					}
				}
				if($have_other == true)
				{
					$stat1_count = count($stat_array['stat1']);
					$stat_array['stat1'][$stat1_count - 1] = $other_stat;
				}
			}
			/*if(!empty($stat_array['stat2'])){
				$sort_key = array();
				foreach($stat_array['stat2'] as $k => $one_stat){
					$sort_key[] = $one_stat['sa'];
				}
				array_multisort($stat_array['stat2'], SORT_DESC, $sort_key, SORT_DESC);
            }*/
			if(!empty($stat_array['stat2'])){
				$have_other = false;
				$other_stat;
				foreach($stat_array['stat2'] as $k => $one_stat){
					if($have_other == true)
					{
						$stat_array['stat2'][$k - 1] = $stat_array['stat2'][$k];
						continue;
					}
					if($one_stat['sa'] == "其它")
					{
						$other_stat = $one_stat;
						$have_other = true;
					}
				}
				if($have_other == true)
				{
					$stat2_count = count($stat_array['stat2']);
					$stat_array['stat2'][$stat2_count - 1] = $other_stat;
				}
			}
			$item['dispData']['resultData']['tplData']['otherinfo'] = json_encode($stat_array);
		}//if $item['dispData']['StdStg'] == 6714
		return true;
	}
}
