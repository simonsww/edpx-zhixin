<?php

/**
 * 
 * @desc 将click_data中的数据merge成字符串并写入disp_data
 *       格式采用key为click_data_str，value为多个click_data内部k-v以'|'分割
 * @author wanglei12@baidu.com
 *
 */
class ClickDataStrategy extends Strategy
{

    public function run(&$arrData, $arrConf)
    {
        if (empty($arrData) || !is_array($arrData))
	{
            return false;
        }
        // 查找对应资源
        foreach ($GLOBALS ['RESULT'] as $res)
	{
            foreach ($arrData ['uiData'] [$res] ['item'] as $intIndex => &$arrItem)
	    {
                if (empty($arrItem['dispData']['click_data']))
		{
                    Clog::debug("ClickDataStrategy click_data is empty");
                    continue;
                }
                //对所有click_data字段进行组装
		$string_value = '';
		$firstflag = true;
            	foreach ($arrItem['dispData']['click_data'] as $key => $value)
		{
			if($firstflag == true)
			{
				$string_value = $string_value.$key.':'.$value;
				$firstflag = false;
			}
			else
			{
				$string_value = $string_value.'|';
				$string_value = $string_value.$key.':'.$value;
			}
		}
		if(strlen($string_value) != 0)
		{
			//与FE约定加入串的名字为click_data_str与click_data平级
	    		$arrItem['dispData']['click_data_str'] = $string_value;
		}
            }
        }

        return true;
    }

}
