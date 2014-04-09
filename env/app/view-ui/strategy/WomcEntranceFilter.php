<?php
/**
 * 评价邀请入口展示条件
 * 1、网民登陆状态
 * 2、网民浏览过某站点N词以上,对搜索结果中无图的，直接显示，对搜索结果中右图的，如果域名小于指定位数，则显示；
 * 3.初期只在自然结果展示评价入口
 *
 * @author 崔燕(cuiyan01@baidu.com)
 *
 */

class WomcEntranceFilter extends Strategy {

    const COMT_ENTERANCE_1 = 1;
    const COMT_ENTERANCE_2 = 2;
    const SAMPLE_VARIABLE_KEY = 'WOMC_COMT_ENTRANCE';

    public function run(&$arrData, $arrConf) {
        if (empty ( $arrData ) || ! is_array ( $arrData )) {
            return false;
        }

        $personalSiteSign = array();
        if  (! empty ( $arrData ['uiData'] ['queryInfo'] ['personalData'] )) {
            //$personalSiteSign初始化为ups中站点列表
            $personalData = json_decode($arrData ['uiData'] ['queryInfo'] ['personalData'], true);
            if ( is_array ($personalData['click_site']) && ! empty ( $personalData['click_site']['value'] )) {
                $personalSiteSign = unserialize($personalData['click_site']['value']);
                $personalSiteSign = array_flip($personalSiteSign);	
            }
        }

        if (! empty ( $arrData ['uiData'] ['asResult'] ['item'] ) && is_array ( $arrData ['uiData'] ['asResult'] ['item'] )) {
            foreach ( $arrData ['uiData'] ['asResult'] ['item'] as $index => &$item ) {
                //只在自然结果出评价邀请入口
                if ( $item['comeFrome'] == 'AS' ) {
                    $item['dispData']['womcEntranceFilter'] = 0;
                    $item['dispData']['womcComtEntranceFilter1'] = 0;
                    $item['dispData']['womcComtEntranceFilter2'] = 0;
                    //取站点签名
                    $siteSign1 = empty ( $item['urls']['asUrls']['siteSign1'] ) ? 0 : $item['urls']['asUrls']['siteSign1'];
                    $siteSign2 = empty ( $item['urls']['asUrls']['mixSignSiteSign'] ) ? 0 : $item['urls']['asUrls']['mixSignSiteSign'];
                    $siteSign2 = $siteSign2 & 0x00FFFFFF;
                    $siteSign = $siteSign2 . '&' . $siteSign1; 
                    //判断站点签名是否相等，如果相等，判断是否有图
                    if ( array_key_exists ( $siteSign, $personalSiteSign )) {
                        if ( intval ( $item['dispData']['img'] == 0 )) {
                            $item['dispData']['womcEntranceFilter'] = 1;
                        }
                    }

                    //没出评价邀请入口的情况下, 判断是否有图, 如果没图, 判断选择哪个实验组
                    if ( $item['dispData']['womcEntranceFilter'] == 0 ) {
                        // 判断是否有图, 如果不出图, 判断选择实验组1还是2
                        if ( intval ( $item['dispData']['img'] == 0 )) {
                            $sample_variable = $this->get_sample_variable($arrData, self::SAMPLE_VARIABLE_KEY);
                            //选择实验组
                            if ( $sample_variable == self::COMT_ENTERANCE_1 ){
                                $item['dispData']['womcComtEntranceFilter1'] = 1;
                            }else if ( $sample_variable == self::COMT_ENTERANCE_2 ){
                                $item['dispData']['womcComtEntranceFilter2'] = 1;
                            }
                        }
                    }
                }
            }
        }
        return true;
    }

    /**
     *  根据采样ID返回采样结果
     *  @param array $arrData
     *  @param string $exp_name
     *
     * @return value 如果没有查到, 返回0
     */
    public function get_sample_variable($arrData, $exp_name) {

        $sample_variable = 0;
        //for small flow
        $arrSample = Util::getConf('/sample_variable', 'sample_variable/' . $exp_name);
        //判断arrData中是否存在samplingId
        if (is_array($arrData ['uiData'] ['queryInfo'] ['samplingId']) && !empty($arrData ['uiData'] ['queryInfo'] ['samplingId']) && is_array($arrSample) && !empty($arrSample)) {
            $arrSids = $arrData ['uiData'] ['queryInfo'] ['samplingId'];
            $arrSids = array_flip($arrSids);
            //判断samplingId是否存在sampv_variable.conf中exp_name配置项内, 如果存在, 返回value。不存在, 返回0
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
}
