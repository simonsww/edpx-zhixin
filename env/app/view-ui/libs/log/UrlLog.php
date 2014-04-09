<?php

/**
 * 展现日志。详情参考http://wiki.babel.baidu.com/twiki/bin/view/Ps/Searcher/DisllayLogFomat
 * @author 贾春鑫(jiachunxin@baidu.com)
 *
 */
class UrlLog {

    private $strLogFile;
    private $bolAutoRotate;
    private $strQuery;
    private $strQueryInfo;
    private $arrUrlInfos = array();
    private $strExtra;
    private $strLog;

    public function __construct() {
        $this->bolAutoRotate = $GLOBALS ['URLLOG'] ['auto_rotate'] == '1';
        $this->strLogFile = $GLOBALS ['URLLOG'] ['log_file'];
    }

    public function log($arrData) {
        if (empty($arrData) || $arrData ['uiControl'] ['type'] != 'www') {
            return;
        }
        $arrQueryInfo = $arrData ['uiData'] ['queryInfo'];
        $arrResult = $arrData ['uiData'] ['asResult'];
        // Consider midpage displayed 20 result per page as default,Here we set
        // the threshold from PB_PAGESIZE to PB_PAGESIZE*2

        if ($arrQueryInfo ['resNum'] > 2 * $GLOBALS ['URLLOG'] ['PB_PAGESIZE'] || $arrQueryInfo ['pageNo'] > 2 || $arrResult ['asResultNum'] < 0) {
            return;
        }
        // 高可信se置换后，日志里仍然打印原始query
        if ($arrQueryInfo ['superSeFlag'] == 1) {
            $this->strQuery = $arrQueryInfo ['queryWordBak'];
        } else {
            $this->strQuery = $arrQueryInfo ['queryWord'];
        }
        // 生成queryInfo部分
        $this->addQueryInfo($arrData);
        // 生成UrlInfo部分
        $this->addUrlInfos($arrData);
        // 生成extra部分
        $this->strExtra = $arrQueryInfo ['bufTempLog'];
        // 格式化成一条
        $this->formatUrlLog();
        // 写到文件中
        $this->write();
    }

    // 生成UrlInfo部分
    private function addUrlInfos($arrData) {
        if (empty($arrData)) {
            return;
        }
        $ecResult = $arrData ['uiData'] ['ecResult'];
        $arrResult = $arrData ['uiData'] ['asResult'];
        $topResult = $arrData ['uiData'] ['topResult'];
        $leftResult = $arrData ['uiData'] ['leftResult'];
        $rightResult = $arrData ['uiData'] ['rightResult'];
        $arrQueryInfo = $arrData ['uiData'] ['queryInfo'];
        $intI = 0;
        // ec队列
        foreach ($ecResult ['ecResultItem'] as $result) {
            // 这个队列不是所有的数据都需要log
            $strInfo = '';
            if ($result ['source'] == SRC_PPIM) {
                $intI++;
                $intIndex = $this->addUrlInfo();
                $strInfo = sprintf('%d:PPIM:%d', $intI, $result ['adNum'] + $intI - 1);
                $strInfo .= ':' . $arrData ['uiData'] ['ecResult'] ['aspuid'];
                $this->addUrlInfoItem($intIndex, $strInfo);
            } else if ($result ['source'] == SRC_NEWPP) {
                $intI++;
                $intIndex = $this->addUrlInfo();
                $strInfo = sprintf('%d:PP:%d', $intI, $result ['adNum']);
                $this->addUrlInfoItem($intIndex, $strInfo);
            }
        }
        // 左侧队列
        foreach ($leftResult ['item'] as $result) {
            $intI++;
            $intIndex = $this->addUrlInfo(trim($result ['itemUrl']));
            $strInfo = sprintf('%d:SP:%d', $intI, $result ['isClAs']);
            $strInfo .= sprintf(':%d:%d:0:0-0-0-0::::::catid=%d&cardid=%d&ename=%s&uri=%s&tpl=%s&title=%s', $result ['dispData'] ['StdStg'], $result ['dispData'] ['StdStl'], $result ['dispData'] ['category_id'], $result ['dispData'] ['card_id'], urlencode($result ['dispData'] ['entityname']), urlencode($result ['dispData'] ['uri']), $result ['dispData'] ['strategy']['tempName'],urlencode($result['dispData']['resultData']['tplData']['title']));
            if (isset($result['burstFlag']) && !empty($result['burstFlag'])) {
            	$strInfo .= '&burstFlag=' . intval($result['burstFlag']);
            }
            $this->addItemUriInfo($result, $strInfo);
            $this->addUrlInfoItem($intIndex, $strInfo);
        }
        // as队列
        foreach ($arrResult ['item'] as $result) {
            $strInfo = '';
            $intI++;
            if ($result ['source'] == SRC_AS) {
                $intIndex = $this->addUrlInfo(trim($result ['offsetInfo'] ['url']));
                $strInfo = sprintf('%d:AS:%u', $intI, $result ['urls'] ['asUrls'] ['weight']);
                $strInfo .= sprintf(':%u', $result ['urls'] ['asUrls'] ['urlno']);
                $strInfo .= sprintf(':%u', $result ['urls'] ['asUrls'] ['suburlSign']);
                $strInfo .= sprintf(':%u', $result ['urls'] ['asUrls'] ['siteSign1']);
                $strInfo .= sprintf(':%u', $result ['urls'] ['asUrls'] ['mixSignSiteSign']);
                $strInfo .= sprintf(':%u', $result ['urls'] ['asUrls'] ['mixSignSex']);
                $strInfo .= sprintf(':%u', $result ['urls'] ['asUrls'] ['mixSignPol']);
                $strInfo .= sprintf(':%u', $result ['urls'] ['asUrls'] ['contSign']);
                $strInfo .= sprintf(':%u', $result ['urls'] ['asUrls'] ['matchProp']);
                $arrStrategys = $result ['urls'] ['asUrls'] ['strategys'];
                $strInfo .= sprintf(':%u-%u-%u-%u-%u-%u-%u-%u-%u-%u-%u-%u-%u-%u-%u-%u',$arrStrategys [0], $arrStrategys [1], $arrStrategys [2], $arrStrategys [3], $arrStrategys [4], $arrStrategys [5] ,$arrStrategys[6] ,$arrStrategys[7],$arrStrategys[8],$arrStrategys[9],$arrStrategys[10],$arrStrategys[11],$arrStrategys[12],$arrStrategys[13],$arrStrategys[14],$arrStrategys[15]);
                $strInfo .= sprintf(':%d', $result ['info']);
                // 第3字节表示ac原来的序号
                $oriIndex = ($result ['info'] & 0x00ff0000) >> 16;
                if (0 < $oriIndex && $oriIndex <= $GLOBALS ['URLLOG'] ['MAX_PB_PAGESIZE']) {
                    $strInfo .= ':' . $result ['authWeight'];
                    $strInfo .= ':' . $result ['timeFactor'];
                    $strInfo .= ':' . $result ['pageType'];
                    $strInfo .= ':' . $result ['field'];
                }
                $strInfo .= sprintf(':%u', $result ['dispData'] ['StdStg']);
                $strInfo .= sprintf(':%u', $result ['dispData'] ['StdStl']);
                $strDispInfo = $this->getExtendDispInfoLog($result ['gSampleLog']);
                // 通用提示
                $strPromot = '';
				if (!empty($result ['dispData'] ['addSubArr'])) {
					foreach ($result ['dispData'] ['addSubArr'] as $arrPromot) {
						if (!empty($strPromot)) {
							$strPromot .= '_';
						}
						$strPromot .= $arrPromot ['typeID'];
					}
				}
                if (!empty($strDispInfo) && !empty($strPromot)) {
                    $strDispInfo .= '&item_secure_id=' . $strPromot;
                }
                if (isset($result ['dispData'] ['as_struct_exp']) && !empty($result ['dispData'] ['as_struct_exp'])) {
                    $strDispInfo .= '&as_struct_exp=' . $result ['dispData'] ['as_struct_exp'];
                }
                //< 自然结果的资源号列表以及是否出图
                if (isset($result['dispData'] ['src_id']) && !empty($result['dispData'] ['src_id']) ) {
                    $strDispInfo .= '&src_id=' . $result['dispData'] ['src_id'];
                }
                if (isset($result['dispData'] ['img']) && !empty($result['dispData'] ['img']) ) {
                    $strDispInfo .= '&img=' . intval($result['dispData'] ['img']);
                }
                // 国际化favicon展现统计
                if (isset($result['dispData']['FavURL']) && !empty($result['dispData']['FavURL'])) {
                    $strDispInfo .= '&FavURL=1';
                }
                //打印title和showTime
                $strDispInfo .= '&title=' . urlencode($result ['offsetInfo'] ['title']) . '&timeShow=' . $result ['timeShow'] . '&newTimeFactor=' . $result['dispData']['newTimeFactor'];
                if (isset($result['burstFlag']) && !empty($result['burstFlag'])) {
                    $strDispInfo .= '&burstFlag=' . intval($result['burstFlag']);
                }
                //大V包括安全联盟和百度身份认证两部分
                if (!empty($result['dispData'] ['safeUnion'])) {
                    $strDispInfo .= '&safeUnion=1';
                }
                if (!empty($result['dispData'] ['eVcard'])) {
                    $strDispInfo .= '&eVcard=1';
                }
                //官网标记
                if (!empty($result['dispData'] ['sublink']['is_main'])) {
                    $strDispInfo .= '&is_main=1';
                }
                //邀您点评
                if( !empty($result['dispData']['womcEntranceFilter'])){
                    $strDispInfo .= '&pjzx_show=1'; 
                }
                $strInfo .= ':' . $strDispInfo;
                if (empty($result ['dispData'] ['ASURL'])) {
                    $strInfo .= ':0';
                } else {
                    $strInfo .= ':1';
                }
                $strInfo .= ':' . $result ['clickWeight'];
                $strInfo .= ':' . $result ['dispData'] ['templateName'];
                $this->addItemUriInfo($result, $strInfo);
                $this->addUrlInfoItem($intIndex, $strInfo);
            } else if ($result ['source'] == SRC_SP) {
                $intIndex = $this->addUrlInfo(trim($result ['resUrl']));
                $strInfo = sprintf('%d:SP:%d', $intI, $result ['isClAs']);
                $strInfo .= ':' . $result ['dispLog'];
                $arrStrategys = $result ['strategyS'];
                $strInfo .= sprintf(':%u-%u-%u-%u', $arrStrategys [0], $arrStrategys [1], $arrStrategys [2], $arrStrategys [3]);
                $strInfo .= ':' . $this->getExtendDispInfoLog($result ['gSampleLog']);

                if (isset($result ['dispData'] ['as_struct_exp']) && !empty($result ['dispData'] ['as_struct_exp'])) {
                    $strInfo .= '&as_struct_exp=' . $result ['dispData'] ['as_struct_exp'];
                }
                //< 
                if (isset($result['burstFlag']) && !empty($result['burstFlag'])) {
                    $strInfo .= '&burstFlag=' . intval($result['burstFlag']);
                }
                if (isset($result['dispData']['resultData']['tplData']['title']) && !empty($result['dispData']['resultData']['tplData'][''])){
                    $strInfo .= '&title='.urlencode($result['dispData']['resultData']['tplData']['title']);
                }
                if(isset($result['clickWeightMerge']) && !empty($result['clickWeightMerge'])){
                    $strInfo .= '&clickweightmerge='.$result['clickWeightMerge'];
                }
                $strTmp = '';
                foreach ($result ['subUrlInfo'] as $arrUrlInfo) {
                    if (!empty($strTmp)) {
                        $strTmp .= "{\\a}";
                    }
                    $strTmp .= $arrUrlInfo ['subUrl'] . "{\\a}" . $arrUrlInfo ['subSiteId'];
                }
                $strInfo .= ':';
                if (!empty($strTmp)) {
                    $strInfo .= '(' . $strTmp . ')';
                }

                $this->addItemUriInfo($result, $strInfo);
                $this->addUrlInfoItem($intIndex, $strInfo);
            } else if ($result ['source'] == SRC_ADJ) {
                $intIndex = $this->addUrlInfo(trim($result ['offsetInfo'] ['url']));
                $strInfo = sprintf('%d:ADJ:%u', $intI, $result ['urls'] ['adjUrls'] ['weight']);
                $strInfo .= sprintf(':%u', $result ['urls'] ['adjUrls'] ['urlno']);
                $strInfo .= sprintf(':%u', $result ['urls'] ['adjUrls'] ['suburlSign']);
                $strInfo .= sprintf(':%u', $result ['urls'] ['adjUrls'] ['siteSign1']);
                $strInfo .= sprintf(':%u', $result ['urls'] ['adjUrls'] ['siteSign2']);
                $strInfo .= sprintf(':%u', $result ['urls'] ['adjUrls'] ['contSign']);
                $strInfo .= sprintf(':%u', $result ['urls'] ['adjUrls'] ['matchProp']);
                $strInfo .= sprintf(':%d', $result ['info']);
                $this->addUrlInfoItem($intIndex, $strInfo);
            } else {
                $intIndex = $this->addUrlInfo();
                $strInfo = sprintf('%d:Unknown', $intI);
                $this->addItemUriInfo($result, $strInfo);
                $this->addUrlInfoItem($intIndex, $strInfo);
            }
        }
        $intI = 0;
        // 上侧队列
        foreach ($topResult ['item'] as $result) {
            $intI++;
            $intIndex = $this->addUrlInfo(trim($result ['itemUrl']));
            $strInfo = sprintf('%d:SP:TOP:::%d:%d::catid=%d&cardid=%d&ename=%s&uri=%s&tpl=%s', $intI, $result ['dispData'] ['StdStg'], $result ['dispData'] ['StdStl'], $result ['dispData'] ['category_id'], $result ['dispData'] ['card_id'], urlencode($result ['dispData'] ['entityname']), urlencode($result ['dispData'] ['uri']), $result ['dispData'] ['strategy']['tempName']);
            $this->addItemUriInfo($result, $strInfo);
            $this->addUrlInfoItem($intIndex, $strInfo);
        }
        $intI = 0;
        // 右侧队列
        foreach ($rightResult ['item'] as $result) {
            $intI++;
            $intIndex = $this->addUrlInfo(trim($result ['itemUrl']));
            $strInfo = sprintf('%d:SP:RIGHT:::%d:%d::catid=%d&cardid=%d&ename=%s&uri=%s&tpl=%s', $intI, $result ['dispData'] ['StdStg'], $result ['dispData'] ['StdStl'], $result ['dispData'] ['category_id'], $result ['dispData'] ['card_id'], urlencode($result ['dispData'] ['entityname']), urlencode($result ['dispData'] ['uri']), $result ['dispData'] ['strategy']['tempName']);
            $this->addItemUriInfo($result, $strInfo);
            $this->addUrlInfoItem($intIndex, $strInfo);
        }

        $intI = 0;
        // ec队列
        // 先计算之和并打印
        $intNum = 0;
        foreach ($ecResult ['ecResultItem'] as $result) {
            $intNum += $result ['adNum'];
        }
        // ec队列不为空时才处理
        if ($intNum) {
            $intI++;
            $intIndex = $this->addUrlInfo();
            // id为0
            $strInfo = sprintf('%u:ASP:%s:%u:%u', $intI, $arrData ['uiData'] ['ecResult'] ['aspuid'], 0, $intNum);
            $this->addUrlInfoItem($intIndex, $strInfo);
            // 打印每一条
            foreach ($ecResult ['ecResultItem'] as $result) {
                $intI++;
                $intIndex = $this->addUrlInfo();
                $strInfo = sprintf('%u:ASP:%s:%u:%u', $intI, $arrData ['uiData'] ['ecResult'] ['aspuid'], $result ['id'], $result ['adNum']);
                $this->addItemUriInfo($result, $strInfo);
                $this->addUrlInfoItem($intIndex, $strInfo);
            }
        }
    }

    // 生成queryInfo部分
    private function addQueryInfo($arrData) {
        if (empty($arrData)) {
            return;
        }
        $arrQueryInfo = $arrData ['uiData'] ['queryInfo'];
        $arrResult = $arrData ['uiData'] ['asResult'];
        $rsseResult = $arrData ['uiData'] ['rsseResult'];
        $appResult = $arrData ['uiData'] ['appResult'];
        $favoResult = $arrData ['uiData'] ['favoResult'];
        $topResult = $arrData ['uiData'] ['topResult'];
        $rightResult = $arrData ['uiData'] ['rightResult'];
        $disableFlag = $arrData ['uiData'] ['disableFlag'];
        $ecResult = $arrData ['uiData'] ['ecResult'];

        $this->addQueryInfoItem($arrQueryInfo ['queryId']);
        $this->addQueryInfoItem($arrQueryInfo ['pageNo']);
        // 页面所有结果数，包括广告
        // ec队列
        $intAsNum = $arrResult ['asResultNum'] + $arrResult ['spResutlNum'] + $arrResult ['adjResultNum'];
        foreach ($ecResult ['ecResultItem'] as $result) {
            if ($result ['source'] == SRC_PPIM || $result ['source'] == SRC_NEWPP) {
                $intAsNum += $result ['adNum'];
            }
        }

        $this->addQueryInfoItem($intAsNum);
        $this->addQueryInfoItem($arrQueryInfo ['sampleId']);
        $this->addQueryInfoItem($arrQueryInfo ['ip']);
        $this->addQueryInfoItem($arrQueryInfo ['baiduId']);
        $this->addQueryInfoItem($arrQueryInfo ['accountName']);
        $this->addQueryInfoItem($arrQueryInfo ['needSp']);
        $this->addQueryInfoItem($arrResult ['asDataDispNum']);
        $this->addQueryInfoItem($arrResult ['asDataListNum']);

        $strTmp = '';
        foreach ($rsseResult ['rsphrase'] as $arrPhrase) {
            if (!empty($strTmp)) {
                $strTmp .= '-';
            }
            $strTmp .= $arrPhrase ['phrase'] . '|' . $arrPhrase ['rsComeFrom'];
        }
        $this->addQueryInfoItem($strTmp);

        //发生纠错全替换时,普通se不会展现,只会展现全替换query.因此展现日志也只打印全替换query
        $strTmp = '';
        if( !empty($arrData['uiData']['queryInfo']['superSeFlag']) &&  $arrData['uiData']['queryInfo']['superSeFlag'] == 1) {
        	$strTmp = $arrData['uiData']['queryInfo']['wordNoSyntax'];
        }
        else {    
	        foreach ($rsseResult ['seword'] as $strWord) {
	            if (!empty($strTmp)) {
	                $strTmp .= '-';
	            }
	            $strTmp .= $strWord;
	        }
        }
        $this->addQueryInfoItem($strTmp);

        $this->addQueryInfoItem(urlencode($arrQueryInfo ['urlParam']));
        // for ad-jp num
        $this->addQueryInfoItem($arrQueryInfo ['extResCount']);
        $intSeInfo = $arrQueryInfo ['seInfo'] > 0 ? 1 : 0;
        $this->addQueryInfoItem($intSeInfo);
        $intListNum = $appResult ['listNum'] > 0 ? $appResult ['listNum'] : 0;
        $this->addQueryInfoItem($intListNum);
        $intFavoNum = is_array($favoResult ['items']) ? count($favoResult ['items']) : 0;
        $this->addQueryInfoItem($intFavoNum);

        $strTmp = "0";
        foreach ($arrQueryInfo ['samplingId'] as $intSamplingId) {
            if (!empty($strTmp)) {
                $strTmp .= '-';
            } else {
                $strTmp = "";
            }
            $strTmp .= $intSamplingId;
        }
        $this->addQueryInfoItem($strTmp);

        $strTmp = "";
        $arrGSampleLog = mc_pack_pack2array($arrQueryInfo ['gSampleLog']);
        if (false != $arrGSampleLog) {
            foreach ($arrGSampleLog as $key => $value) {
                if (!empty($strTmp)) {
                    $strTmp .= '&';
                }
                $strTmp .= $key . '=' . $value;
            }
        }
        if (!empty($strTmp)) {
            $strTmp .= '&';
        }
        $intTopNum = is_array($topResult ['item']) ? count($topResult ['item']) : 0;
        $intRightNum = is_array($rightResult ['item']) ? count($rightResult ['item']) : 0;
        $strTmp .= "topLine=" . $intTopNum . "&rightRes=" . $intRightNum;
        $strTmp .= "&adRightOld=" . $disableFlag ['adRight'] . "&adRightNew=" . ($ecResult ['advRightNum'] > 1 ? 0 : 1);
        $strTmp .= "&advV1=" . $ecResult ['advStrategyV1'] . "&advV2=" . $ecResult ['advStrategyV2'];
        $strTmp .= "&adSecurityPlanTip=" . $ecResult ['securityPlanTip'];
        $strTmp .= "&rightPromptStra=" . (empty($arrData ['uiData'] ['queryInfo']['rightPromptStraFlag']) ? 0 : $arrData ['uiData'] ['queryInfo']['rightPromptStraFlag']);
        $strTmp .= "&sse=" . ( empty($arrData['uiData']['queryInfo']['superSeFlag']) ? 0 : $arrData['uiData']['queryInfo']['superSeFlag'] );
        $this->addQueryInfoItem($strTmp);

        $this->addQueryInfoItem($arrData ['uiData'] ['interClickLog']);
        $this->addQueryInfoItem($arrQueryInfo ['bqid']);

        $strTmp = "";
        foreach ($arrQueryInfo ['promptNode'] as $arrPromptNode) {
            if (!empty($strTmp)) {
                $strTmp .= '_';
            } else {
                $strTmp = "";
            }
            $strTmp .= $arrPromptNode ['id'];
        }
        $strTmp = "secure_id=" . $strTmp;
        $this->addQueryInfoItem($strTmp);

        $this->addQueryInfoItem('cq=[' . $arrQueryInfo ['otherResultQuery'] . ']');
        // 标记版本号，在view-ui中是1，在ui中是0
        $this->addQueryInfoItem(2);


        // 国际化语言和la参数
        $this->addQueryInfoItem('displ=' . $arrQueryInfo ['language']);
        $this->addQueryInfoItem('la=' . $arrQueryInfo ['resultLang']);
        $this->addQueryInfoItem('qryl=' . $arrQueryInfo ['query_lang']);
    }

    // 新增queryInfo项，以:分割
    private function addQueryInfoItem($strItem) {
        if (empty($this->strQueryInfo)) {
            $this->strQueryInfo = $strItem;
        } else {
            $this->strQueryInfo .= ':' . $strItem;
        }
    }

    // 新增UrlInfo
    private function addUrlInfo($strUrl = '-', $strItem = '') {
        $arrUrlInfo = array();
        $arrUrlInfo ['url'] = $strUrl;
        $arrUrlInfo ['info'] = $strItem;
        $this->arrUrlInfos [] = $arrUrlInfo;
        return count($this->arrUrlInfos) - 1;
    }

    // 新增UrlInfo项
    private function addUrlInfoItem($intIndex, $strItem) {
        if (empty($this->arrUrlInfos [$intIndex])) {
            return;
        }
        if (empty($this->arrUrlInfos [$intIndex] ['info'])) {
            $this->arrUrlInfos [$intIndex] ['info'] = $strItem;
        } else {
            $this->arrUrlInfos [$intIndex] ['info'] .= ':' . $strItem;
        }
    }

    // 格式化query、uqeryInfo和urlInfo成一条日志
    private function formatUrlLog() {
        // 前置格式
        $this->strLog = 'URL: ' . date('Y-m-d H:i:s:');
        // 加入query和queryInfo
        $this->strLog .= ' ' . $this->strQuery . "\t" . $this->strQueryInfo;
        // 加入url和urlInfo
        foreach ($this->arrUrlInfos as $arrUrlInfo) {
            $this->strLog .= "\t" . $arrUrlInfo ['url'] . "\t" . $arrUrlInfo ['info'];
        }
        if (!empty($this->strExtra)) {
            $this->strLog .= "\t{\\c}" . $this->strExtra;
        }
        $this->strLog .= "\n";
    }

    // 追加到文件中
    private function write() {
        $strLogFile = VUI_LOG_PATH . '/' . $this->strLogFile;
        if ($this->bolAutoRotate) {
            $strLogFile .= '.' . date('YmdH');
        }
        return file_put_contents($strLogFile, $this->strLog, FILE_APPEND);
    }

    private function getExtendDispInfoLog($strLog) {
        $arrInfo = mc_pack_pack2array($strLog);
        $strTmp = '';
        if (false != $arrInfo) {
            foreach ($arrInfo as $key => $value) {
                if (!empty($strTmp)) {
                    $strTmp .= '&';
                }
                $strTmp .= $key . '=' . $value;
            }
        }
        return $strTmp;
    }

    //添加item的uri信息到展现日志
    private function addItemUriInfo(&$result, &$strInfo) {
        if (isset($result['dispData']['resultData']['tplData']['list']) &&
                is_array($result['dispData']['resultData']['tplData']['list'])) {
            $strInfo .= "&itemuri=";
            foreach ($result['dispData']['resultData']['tplData']['list'] as $k => $v) {
                if (isset($v['uri'])) {
                    $strInfo .= sprintf('%s{\\a}', urlencode($v['uri']));
                }
            }
            if (isset($result['dispData']['resultData']['tplData']['drsv'])) {
                $strInfo .= sprintf('&drsv=%s', $result['dispData']['resultData']['tplData']['drsv']);
            }
            if (isset($result['dispData']['resultData']['tplData']['cardid'])) {
                $strInfo .= sprintf('&cardmd5=%s', $result['dispData']['resultData']['tplData']['cardid']);
            }
        }
    }

}
