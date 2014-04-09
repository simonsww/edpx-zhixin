<?php

/**
 * 
 * @desc 通过us上传的各种参数计算是否需要提示，需要何种提示。
 *       当一种提示计算成功后，不进行后续提示类别的计算
 *       提示类别优先级顺序排列如下:
 *
 * SUPER_SE_HINT    0x10000高可信度se
 * LONG_HINT        0x1
 * SE_HINT          0x4
 * QUOTATION_HINT   0x8000引号
 * BOOKNAME_HINT    0x8书名号
 * SITE_SEARCH_HINT 0x2000
 *
 * @author wanglei12@baidu.com
 *
 */

#SUPER_SE_HINT 0x10000高可信度se
#LONG_HINT 0x1
#SE_HINT 0x4
#QUOTATION_HINT 0x8000引号
#BOOKNAME_HINT 0x8书名号
#SITE_SEARCH_HINT 0x2000

class HintFlag extends Strategy
{
    /**
     * @desc 判断site语法提示是否需要避让site语法阿拉丁
     **/
    public function aladdin_pk_siteHint (&$arrData, $arrConf)
    {
        if (empty ( $arrData ) || ! is_array ( $arrData ))
        {
            return false;
        }

        $arrAlaPkSiteHintConfs = Util::getConf ( '/aladdin_pk_siteHint', 'ALADDIN_PK_SITEHINT' );
        if (! is_array ( $arrAlaPkSiteHintConfs ) || empty ( $arrAlaPkSiteHintConfs ))
        {
            return false;
        }
        foreach ( $GLOBALS ['RESULT'] as $res )
        {
            if (isset ( $arrAlaPkSiteHintConfs [$res] ) && ! empty ( $arrAlaPkSiteHintConfs [$res] ['src_ids'] ))
            {
                $arrAlaPkSiteHintConfs [$res] ['src_ids'] = explode ( ',', $arrAlaPkSiteHintConfs [$res] ['src_ids'] );
                foreach ( $arrData ['uiData'] [$res] ['item'] as $arrItem )
                {
                    if (in_array ( $arrItem ['dispData'] ['StdStg'], $arrAlaPkSiteHintConfs [$res] ['src_ids'] ))
                    {
                        return true;
                    }
                }
            }
        }

        return false;
    }

    public function run(&$arrData, $arrConf)
    {
        if (empty($arrData) || !is_array($arrData))
    	{
            return false;
        }

        //初始化提示标记位
        $arrData ['uiData']['asResult']['topHint'] = 0;

        //超级SE提示
        if($arrData ['uiData']['queryInfo']['super_se_flag'] == 1)
        {
            $arrData ['uiData']['asResult']['topHint'] = 0x10000;
            return true;
        }

        //一些首页提示的判断
        if($arrData ['uiData']['queryInfo']['pageNo'] == 1 || $arrData ['uiData']['queryInfo']['tPageNo'] == 0)
        {
            //长串提示
            if($arrData ['uiData']['queryInfo']['is_extraStr'] == 1)
            {
                $arrData ['uiData']['asResult']['topHint']  = 0x1;
                return true;
            }
            //SE
            $nojc = $arrData ['uiData']['queryInfo']['nojc'];//取消SE提示的标识
            $final_se_strategy = $arrData ['uiData']['queryInfo']['final_se_strategy'];//SE策略位
            $has_jc_result = $arrData ['uiData']['queryInfo']['is_jc_result'];//有纠错串
            if($nojc <= 0 && ($final_se_strategy || $has_jc_result))
            {
                $arrData ['uiData']['asResult']['topHint']  = 0x4;
                return true;
            }
            //特殊符号
            $disp_num = $arrData ['uiData']['queryInfo']['disp_num'];
            $isContainPunc = $arrData ['uiData']['queryInfo']['isContainPunc'];
            $wordNoPuncIsNull = $arrData ['uiData']['queryInfo']['wordNoPuncIsNull'];
            if($disp_num < 10000 && $wordNoPuncIsNull == 0)
            {
                //引号
                if($isContainPunc & 0x1)
                {
                    $arrData ['uiData']['asResult']['topHint']  = 0x8000;
                    return true;
                }
                //书名号
                if($isContainPunc & 0x2)
                {
                    $arrData ['uiData']['asResult']['topHint']  = 0x8;
                    return true;
                }
            }
        }
        //site语法提示
        if(($arrData ['uiData']['queryInfo']['is_site_search'] != 0) && (! $this->aladdin_pk_siteHint($arrData, $arrConf)))
        {
            $arrData ['uiData']['asResult']['topHint']  = 0x2000;
            return true;
        }

        return true;
    }

}
