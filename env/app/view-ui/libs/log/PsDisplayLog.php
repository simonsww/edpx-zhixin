<?php
class ProductID {
    const PS = 0;
    const TIEBA = 1;
    const IKNOW = 2;
    const MAP = 3;
    const WISE = 4;
    const VOICE_ASSISTANT = 5;
    const VOICE_SEARCH = 6;
    const VOICE_INPUT = 7;
    const SUMERU_ENGINE = 8;
    const UUCUN = 9;
    const ONEKEY_ROOT = 10;
    const PSS = 11;
    const dx_os = 12;
    const FAVO = 13;
    const LC = 14;
    const WISE_SUOPING = 15;
    const DX_FRONT = 16;
    const XCLOUD = 17;
    const BFE = 18;
    const PUSH = 19;
    const DT = 20;
    const DIANXIN_MASTER = 21;
    const JIA_SU_LE = 22;
    const FRONTIA = 23;
    const NOVA = 24;
    const SEARCHBOX_APP = 25;
    const APPSEARCH = 26;
    const MEDIA_CLOUD = 27;
    const MOBILE_IME = 28;
    const WISE_BOOKSTORE = 29;
    const MOBILE_BROWSER_KERNEL = 30;
    const MOBILE_BROWSER = 31;
}
class UrlID {
    const AS_ID = 0;
    const SP_ID = 1;
    const PP_ID = 2;
    const PPIM_ID = 3;
    const LEFT_ZX_ID = 4;
    const UNKNOW_ID = 5;
}
class ResultID {
    const TOPZHIXINRESULT = 0;
    const LEFTZHIXINRESULT = 1;
    const RIGHTZHIXINRESULT = 2;
    const ASPRESULT = 3;
}
class BaiduLog {
    public $mini_message;
    public function __construct($mini_message = null) {
        if ($mini_message != null) {
            $this->mini_message = $mini_message;
        } else {
            $this->mini_message = new PbMiniMessage(44);
            $this->mini_message->setAttributes("0 1 14 2\n1 2 4 2\n2 3 4 2\n3 4 9 1\n4 8 7 1\n5 14 9 1\n6 129 9 1\n7 130 13 1\n8 131 13 1\n9 132 13 1\n10 133 9 1\n11 134 13 1\n12 135 4 1\n13 136 13 1\n14 137 11 3\n15 138 9 3\n16 139 9 1\n17 140 13 1\n18 141 13 1\n19 142 13 1\n20 143 13 1\n21 144 13 3\n22 145 11 3\n23 146 13 1\n24 147 13 1\n25 148 13 1\n26 149 13 1\n27 150 13 1\n28 151 13 1\n29 152 13 1\n30 153 13 1\n31 154 9 1\n32 155 9 1\n33 156 13 3\n34 157 9 1\n35 158 9 1\n36 159 9 1\n37 160 9 1\n38 161 9 1\n39 162 11 3\n40 163 11 3\n41 164 5 1\n42 165 8 1\n43 166 11 1\n");
        }
    }
    
    public function serialize() {
        return $this->mini_message->serialize();
    }
    
    public function clear() {
        return $this->mini_message->clear();
    }
    public function json2PbById($value) {
        return $this->mini_message->Json2PbById($value);
    }
    public function hasProduct() {
        return ($this->getProduct() != null);
    }

    public function getProduct() {
        return $this->mini_message
                    ->getValue(0, 14);
    }

    public function setProduct($value) {
        return $this->mini_message
                    ->setValue(0, 14, $value);
    }

    public function hasTimestamp() {
        return ($this->getTimestamp() != null);
    }

    public function getTimestamp() {
        return $this->mini_message
                    ->getValue(1, 4);
    }

    public function setTimestamp($value) {
        return $this->mini_message
                    ->setValue(1, 4, $value);
    }

    public function hasLogid() {
        return ($this->getLogid() != null);
    }

    public function getLogid() {
        return $this->mini_message
                    ->getValue(2, 4);
    }

    public function setLogid($value) {
        return $this->mini_message
                    ->setValue(2, 4, $value);
    }

    public function hasBaiduid() {
        return ($this->getBaiduid() != null);
    }

    public function getBaiduid() {
        return $this->mini_message
                    ->getValue(3, 9);
    }

    public function setBaiduid($value) {
        return $this->mini_message
                    ->setValue(3, 9, $value);
    }

    public function hasUserIp() {
        return ($this->getUserIp() != null);
    }

    public function getUserIp() {
        return $this->mini_message
                    ->getValue(4, 7);
    }

    public function setUserIp($value) {
        return $this->mini_message
                    ->setValue(4, 7, $value);
    }

    public function hasQuery() {
        return ($this->getQuery() != null);
    }

    public function getQuery() {
        return $this->mini_message
                    ->getValue(5, 9);
    }

    public function setQuery($value) {
        return $this->mini_message
                    ->setValue(5, 9, $value);
    }

    public function hasQueryId() {
        return ($this->getQueryId() != null);
    }

    public function getQueryId() {
        return $this->mini_message
                    ->getValue(6, 9);
    }

    public function setQueryId($value) {
        return $this->mini_message
                    ->setValue(6, 9, $value);
    }

    public function hasPageNo() {
        return ($this->getPageNo() != null);
    }

    public function getPageNo() {
        return $this->mini_message
                    ->getValue(7, 13);
    }

    public function setPageNo($value) {
        return $this->mini_message
                    ->setValue(7, 13, $value);
    }

    public function hasAsNum() {
        return ($this->getAsNum() != null);
    }

    public function getAsNum() {
        return $this->mini_message
                    ->getValue(8, 13);
    }

    public function setAsNum($value) {
        return $this->mini_message
                    ->setValue(8, 13, $value);
    }

    public function hasUserUintIp() {
        return ($this->getUserUintIp() != null);
    }

    public function getUserUintIp() {
        return $this->mini_message
                    ->getValue(9, 13);
    }

    public function setUserUintIp($value) {
        return $this->mini_message
                    ->setValue(9, 13, $value);
    }

    public function hasAccountName() {
        return ($this->getAccountName() != null);
    }

    public function getAccountName() {
        return $this->mini_message
                    ->getValue(10, 9);
    }

    public function setAccountName($value) {
        return $this->mini_message
                    ->setValue(10, 9, $value);
    }

    public function hasNeedSp() {
        return ($this->getNeedSp() != null);
    }

    public function getNeedSp() {
        return $this->mini_message
                    ->getValue(11, 13);
    }

    public function setNeedSp($value) {
        return $this->mini_message
                    ->setValue(11, 13, $value);
    }

    public function hasAsDatadispNum() {
        return ($this->getAsDatadispNum() != null);
    }

    public function getAsDatadispNum() {
        return $this->mini_message
                    ->getValue(12, 4);
    }

    public function setAsDatadispNum($value) {
        return $this->mini_message
                    ->setValue(12, 4, $value);
    }

    public function hasAsDatalistNum() {
        return ($this->getAsDatalistNum() != null);
    }

    public function getAsDatalistNum() {
        return $this->mini_message
                    ->getValue(13, 13);
    }

    public function setAsDatalistNum($value) {
        return $this->mini_message
                    ->setValue(13, 13, $value);
    }

    public function hasRsPhrase() {
        return (count($this->getRsPhraseList()) > 0);
    }

    public function getRsPhrase($idx) {
        $mini_msg = $this->mini_message
                         ->getRepeatedValue(14, $idx, 11);
        return ($mini_msg == null) ? null : new RsPhrase($mini_msg);
    }
    
    public function getRsPhraseList() {
        $size = $this->mini_message->getArraySize(14);
        $res = array();
        for ($i = 0; $i < $size; ++ $i) {
            $res[] = $this->getRsPhrase($i);
        }
        return $res;
    }

    public function setRsPhrase($idx, $value) {
        return $this->mini_message
                    ->setRepeatedValue(14, $idx, 11, $value->mini_message);
    }
    
    public function setRsPhraseList($value) {
        $size = count($value);
        $ret = true;
        for ($i = 0; $i < $size; ++ $i) {
            $ret = $this->mini_message
                        ->addValue(14, 11, $value[$i]->mini_message);
            if (!$ret) return $ret;
        }
        return $ret;
    }
    
    public function addRsPhrase($value) {
        return $this->mini_message
                    ->addValue(14, 11, $value->mini_message);
    }
    
    private function setRsPhraseAttributes($value) {
        return $this->mini_message
                    ->setRepMsgAttributes(14, 11, $value->mini_message);
    }
    

    public function hasSeWord() {
        return (count($this->getSeWordList()) > 0);
    }

    public function getSeWord($idx) {
        return $this->mini_message
                    ->getRepeatedValue(15, $idx, 9);
    }
    
    public function getSeWordList() {
        $size = $this->mini_message->getArraySize(15);
        $res = array();
        for ($i = 0; $i < $size; ++ $i) {
            $res[] = $this->getSeWord($i);
        }
        return $res;
    }

    public function setSeWord($idx, $value) {
        return $this->mini_message
                    ->setRepeatedValue(15, $idx, 9, $value);
    }
    
    public function setSeWordList($value) {
        $size = count($value);
        $ret = true;
        for ($i = 0; $i < $size; ++ $i) {
            $ret = $this->mini_message
                        ->addValue(15, 9, $value[$i]);
            if (!$ret) return $ret;
        }
        return $ret;
    }
    
    public function addSeWord($value) {
        return $this->mini_message
                    ->addValue(15, 9, $value);
    }
    

    public function hasUrlParam() {
        return ($this->getUrlParam() != null);
    }

    public function getUrlParam() {
        return $this->mini_message
                    ->getValue(16, 9);
    }

    public function setUrlParam($value) {
        return $this->mini_message
                    ->setValue(16, 9, $value);
    }

    public function hasAdJpNum() {
        return ($this->getAdJpNum() != null);
    }

    public function getAdJpNum() {
        return $this->mini_message
                    ->getValue(17, 13);
    }

    public function setAdJpNum($value) {
        return $this->mini_message
                    ->setValue(17, 13, $value);
    }

    public function hasIsSeInfo() {
        return ($this->getIsSeInfo() != null);
    }

    public function getIsSeInfo() {
        return $this->mini_message
                    ->getValue(18, 13);
    }

    public function setIsSeInfo($value) {
        return $this->mini_message
                    ->setValue(18, 13, $value);
    }

    public function hasAppListNum() {
        return ($this->getAppListNum() != null);
    }

    public function getAppListNum() {
        return $this->mini_message
                    ->getValue(19, 13);
    }

    public function setAppListNum($value) {
        return $this->mini_message
                    ->setValue(19, 13, $value);
    }

    public function hasFavoItemNum() {
        return ($this->getFavoItemNum() != null);
    }

    public function getFavoItemNum() {
        return $this->mini_message
                    ->getValue(20, 13);
    }

    public function setFavoItemNum($value) {
        return $this->mini_message
                    ->setValue(20, 13, $value);
    }

    public function hasSamplingId() {
        return (count($this->getSamplingIdList()) > 0);
    }

    public function getSamplingId($idx) {
        return $this->mini_message
                    ->getRepeatedValue(21, $idx, 13);
    }
    
    public function getSamplingIdList() {
        $size = $this->mini_message->getArraySize(21);
        $res = array();
        for ($i = 0; $i < $size; ++ $i) {
            $res[] = $this->getSamplingId($i);
        }
        return $res;
    }

    public function setSamplingId($idx, $value) {
        return $this->mini_message
                    ->setRepeatedValue(21, $idx, 13, $value);
    }
    
    public function setSamplingIdList($value) {
        $size = count($value);
        $ret = true;
        for ($i = 0; $i < $size; ++ $i) {
            $ret = $this->mini_message
                        ->addValue(21, 13, $value[$i]);
            if (!$ret) return $ret;
        }
        return $ret;
    }
    
    public function addSamplingId($value) {
        return $this->mini_message
                    ->addValue(21, 13, $value);
    }
    

    public function hasGSampleLog() {
        return (count($this->getGSampleLogList()) > 0);
    }

    public function getGSampleLog($idx) {
        $mini_msg = $this->mini_message
                         ->getRepeatedValue(22, $idx, 11);
        return ($mini_msg == null) ? null : new DispData($mini_msg);
    }
    
    public function getGSampleLogList() {
        $size = $this->mini_message->getArraySize(22);
        $res = array();
        for ($i = 0; $i < $size; ++ $i) {
            $res[] = $this->getGSampleLog($i);
        }
        return $res;
    }

    public function setGSampleLog($idx, $value) {
        return $this->mini_message
                    ->setRepeatedValue(22, $idx, 11, $value->mini_message);
    }
    
    public function setGSampleLogList($value) {
        $size = count($value);
        $ret = true;
        for ($i = 0; $i < $size; ++ $i) {
            $ret = $this->mini_message
                        ->addValue(22, 11, $value[$i]->mini_message);
            if (!$ret) return $ret;
        }
        return $ret;
    }
    
    public function addGSampleLog($value) {
        return $this->mini_message
                    ->addValue(22, 11, $value->mini_message);
    }
    
    private function setGSampleLogAttributes($value) {
        return $this->mini_message
                    ->setRepMsgAttributes(22, 11, $value->mini_message);
    }
    

    public function hasTopResultNum() {
        return ($this->getTopResultNum() != null);
    }

    public function getTopResultNum() {
        return $this->mini_message
                    ->getValue(23, 13);
    }

    public function setTopResultNum($value) {
        return $this->mini_message
                    ->setValue(23, 13, $value);
    }

    public function hasRightResultNum() {
        return ($this->getRightResultNum() != null);
    }

    public function getRightResultNum() {
        return $this->mini_message
                    ->getValue(24, 13);
    }

    public function setRightResultNum($value) {
        return $this->mini_message
                    ->setValue(24, 13, $value);
    }

    public function hasAdRightOld() {
        return ($this->getAdRightOld() != null);
    }

    public function getAdRightOld() {
        return $this->mini_message
                    ->getValue(25, 13);
    }

    public function setAdRightOld($value) {
        return $this->mini_message
                    ->setValue(25, 13, $value);
    }

    public function hasAdRightNew() {
        return ($this->getAdRightNew() != null);
    }

    public function getAdRightNew() {
        return $this->mini_message
                    ->getValue(26, 13);
    }

    public function setAdRightNew($value) {
        return $this->mini_message
                    ->setValue(26, 13, $value);
    }

    public function hasAdvStrategyV1() {
        return ($this->getAdvStrategyV1() != null);
    }

    public function getAdvStrategyV1() {
        return $this->mini_message
                    ->getValue(27, 13);
    }

    public function setAdvStrategyV1($value) {
        return $this->mini_message
                    ->setValue(27, 13, $value);
    }

    public function hasAdvStrategyV2() {
        return ($this->getAdvStrategyV2() != null);
    }

    public function getAdvStrategyV2() {
        return $this->mini_message
                    ->getValue(28, 13);
    }

    public function setAdvStrategyV2($value) {
        return $this->mini_message
                    ->setValue(28, 13, $value);
    }

    public function hasAdSecurityPlanTip() {
        return ($this->getAdSecurityPlanTip() != null);
    }

    public function getAdSecurityPlanTip() {
        return $this->mini_message
                    ->getValue(29, 13);
    }

    public function setAdSecurityPlanTip($value) {
        return $this->mini_message
                    ->setValue(29, 13, $value);
    }

    public function hasRightPromptStra() {
        return ($this->getRightPromptStra() != null);
    }

    public function getRightPromptStra() {
        return $this->mini_message
                    ->getValue(30, 13);
    }

    public function setRightPromptStra($value) {
        return $this->mini_message
                    ->setValue(30, 13, $value);
    }

    public function hasInterClickLog() {
        return ($this->getInterClickLog() != null);
    }

    public function getInterClickLog() {
        return $this->mini_message
                    ->getValue(31, 9);
    }

    public function setInterClickLog($value) {
        return $this->mini_message
                    ->setValue(31, 9, $value);
    }

    public function hasBqid() {
        return ($this->getBqid() != null);
    }

    public function getBqid() {
        return $this->mini_message
                    ->getValue(32, 9);
    }

    public function setBqid($value) {
        return $this->mini_message
                    ->setValue(32, 9, $value);
    }

    public function hasPromptNode() {
        return (count($this->getPromptNodeList()) > 0);
    }

    public function getPromptNode($idx) {
        return $this->mini_message
                    ->getRepeatedValue(33, $idx, 13);
    }
    
    public function getPromptNodeList() {
        $size = $this->mini_message->getArraySize(33);
        $res = array();
        for ($i = 0; $i < $size; ++ $i) {
            $res[] = $this->getPromptNode($i);
        }
        return $res;
    }

    public function setPromptNode($idx, $value) {
        return $this->mini_message
                    ->setRepeatedValue(33, $idx, 13, $value);
    }
    
    public function setPromptNodeList($value) {
        $size = count($value);
        $ret = true;
        for ($i = 0; $i < $size; ++ $i) {
            $ret = $this->mini_message
                        ->addValue(33, 13, $value[$i]);
            if (!$ret) return $ret;
        }
        return $ret;
    }
    
    public function addPromptNode($value) {
        return $this->mini_message
                    ->addValue(33, 13, $value);
    }
    

    public function hasCq() {
        return ($this->getCq() != null);
    }

    public function getCq() {
        return $this->mini_message
                    ->getValue(34, 9);
    }

    public function setCq($value) {
        return $this->mini_message
                    ->setValue(34, 9, $value);
    }

    public function hasDispl() {
        return ($this->getDispl() != null);
    }

    public function getDispl() {
        return $this->mini_message
                    ->getValue(35, 9);
    }

    public function setDispl($value) {
        return $this->mini_message
                    ->setValue(35, 9, $value);
    }

    public function hasLa() {
        return ($this->getLa() != null);
    }

    public function getLa() {
        return $this->mini_message
                    ->getValue(36, 9);
    }

    public function setLa($value) {
        return $this->mini_message
                    ->setValue(36, 9, $value);
    }

    public function hasDatetime() {
        return ($this->getDatetime() != null);
    }

    public function getDatetime() {
        return $this->mini_message
                    ->getValue(37, 9);
    }

    public function setDatetime($value) {
        return $this->mini_message
                    ->setValue(37, 9, $value);
    }

    public function hasBufTempLog() {
        return ($this->getBufTempLog() != null);
    }

    public function getBufTempLog() {
        return $this->mini_message
                    ->getValue(38, 9);
    }

    public function setBufTempLog($value) {
        return $this->mini_message
                    ->setValue(38, 9, $value);
    }

    public function hasUrlInfo() {
        return (count($this->getUrlInfoList()) > 0);
    }

    public function getUrlInfo($idx) {
        $mini_msg = $this->mini_message
                         ->getRepeatedValue(39, $idx, 11);
        return ($mini_msg == null) ? null : new UrlInfo($mini_msg);
    }
    
    public function getUrlInfoList() {
        $size = $this->mini_message->getArraySize(39);
        $res = array();
        for ($i = 0; $i < $size; ++ $i) {
            $res[] = $this->getUrlInfo($i);
        }
        return $res;
    }

    public function setUrlInfo($idx, $value) {
        return $this->mini_message
                    ->setRepeatedValue(39, $idx, 11, $value->mini_message);
    }
    
    public function setUrlInfoList($value) {
        $size = count($value);
        $ret = true;
        for ($i = 0; $i < $size; ++ $i) {
            $ret = $this->mini_message
                        ->addValue(39, 11, $value[$i]->mini_message);
            if (!$ret) return $ret;
        }
        return $ret;
    }
    
    public function addUrlInfo($value) {
        return $this->mini_message
                    ->addValue(39, 11, $value->mini_message);
    }
    
    private function setUrlInfoAttributes($value) {
        return $this->mini_message
                    ->setRepMsgAttributes(39, 11, $value->mini_message);
    }
    

    public function hasResultInfo() {
        return (count($this->getResultInfoList()) > 0);
    }

    public function getResultInfo($idx) {
        $mini_msg = $this->mini_message
                         ->getRepeatedValue(40, $idx, 11);
        return ($mini_msg == null) ? null : new ResultInfo($mini_msg);
    }
    
    public function getResultInfoList() {
        $size = $this->mini_message->getArraySize(40);
        $res = array();
        for ($i = 0; $i < $size; ++ $i) {
            $res[] = $this->getResultInfo($i);
        }
        return $res;
    }

    public function setResultInfo($idx, $value) {
        return $this->mini_message
                    ->setRepeatedValue(40, $idx, 11, $value->mini_message);
    }
    
    public function setResultInfoList($value) {
        $size = count($value);
        $ret = true;
        for ($i = 0; $i < $size; ++ $i) {
            $ret = $this->mini_message
                        ->addValue(40, 11, $value[$i]->mini_message);
            if (!$ret) return $ret;
        }
        return $ret;
    }
    
    public function addResultInfo($value) {
        return $this->mini_message
                    ->addValue(40, 11, $value->mini_message);
    }
    
    private function setResultInfoAttributes($value) {
        return $this->mini_message
                    ->setRepMsgAttributes(40, 11, $value->mini_message);
    }
    

    public function hasQryl() {
        return ($this->getQryl() != null);
    }

    public function getQryl() {
        return $this->mini_message
                    ->getValue(41, 5);
    }

    public function setQryl($value) {
        return $this->mini_message
                    ->setValue(41, 5, $value);
    }

    public function hasSse() {
        return ($this->getSse() != null);
    }

    public function getSse() {
        return $this->mini_message
                    ->getValue(42, 8);
    }

    public function setSse($value) {
        return $this->mini_message
                    ->setValue(42, 8, $value);
    }

    public function hasBaiduis() {
        return ($this->getBaiduis() != null);
    }

    public function getBaiduis() {
        $mini_msg = $this->mini_message
                         ->getValue(43, 11);
        return ($mini_msg == null) ? null : new BaiduIs($mini_msg);
    }

    public function setBaiduis($value) {
        return $this->mini_message
                    ->setValue(43, 11, $value->mini_message);
    }

}
class BaiduIs {
    public $mini_message;
    public function __construct($mini_message = null) {
        if ($mini_message != null) {
            $this->mini_message = $mini_message;
        } else {
            $this->mini_message = new PbMiniMessage(6);
            $this->mini_message->setAttributes("0 1 13 1\n1 2 9 1\n2 3 9 1\n3 4 9 1\n4 5 5 1\n5 6 5 1\n");
        }
    }
    
    public function serialize() {
        return $this->mini_message->serialize();
    }
    
    public function clear() {
        return $this->mini_message->clear();
    }
    public function json2PbById($value) {
        return $this->mini_message->Json2PbById($value);
    }
    public function hasMod() {
        return ($this->getMod() != null);
    }

    public function getMod() {
        return $this->mini_message
                    ->getValue(0, 13);
    }

    public function setMod($value) {
        return $this->mini_message
                    ->setValue(0, 13, $value);
    }

    public function hasCqid() {
        return ($this->getCqid() != null);
    }

    public function getCqid() {
        return $this->mini_message
                    ->getValue(1, 9);
    }

    public function setCqid($value) {
        return $this->mini_message
                    ->setValue(1, 9, $value);
    }

    public function hasIsid() {
        return ($this->getIsid() != null);
    }

    public function getIsid() {
        return $this->mini_message
                    ->getValue(2, 9);
    }

    public function setIsid($value) {
        return $this->mini_message
                    ->setValue(2, 9, $value);
    }

    public function hasChk() {
        return ($this->getChk() != null);
    }

    public function getChk() {
        return $this->mini_message
                    ->getValue(3, 9);
    }

    public function setChk($value) {
        return $this->mini_message
                    ->setValue(3, 9, $value);
    }

    public function hasIsbd() {
        return ($this->getIsbd() != null);
    }

    public function getIsbd() {
        return $this->mini_message
                    ->getValue(4, 5);
    }

    public function setIsbd($value) {
        return $this->mini_message
                    ->setValue(4, 5, $value);
    }

    public function hasCsq() {
        return ($this->getCsq() != null);
    }

    public function getCsq() {
        return $this->mini_message
                    ->getValue(5, 5);
    }

    public function setCsq($value) {
        return $this->mini_message
                    ->setValue(5, 5, $value);
    }

}
class RsPhrase {
    public $mini_message;
    public function __construct($mini_message = null) {
        if ($mini_message != null) {
            $this->mini_message = $mini_message;
        } else {
            $this->mini_message = new PbMiniMessage(2);
            $this->mini_message->setAttributes("0 1 9 1\n1 2 9 1\n");
        }
    }
    
    public function serialize() {
        return $this->mini_message->serialize();
    }
    
    public function clear() {
        return $this->mini_message->clear();
    }
    public function json2PbById($value) {
        return $this->mini_message->Json2PbById($value);
    }
    public function hasPhrase() {
        return ($this->getPhrase() != null);
    }

    public function getPhrase() {
        return $this->mini_message
                    ->getValue(0, 9);
    }

    public function setPhrase($value) {
        return $this->mini_message
                    ->setValue(0, 9, $value);
    }

    public function hasRsComefrom() {
        return ($this->getRsComefrom() != null);
    }

    public function getRsComefrom() {
        return $this->mini_message
                    ->getValue(1, 9);
    }

    public function setRsComefrom($value) {
        return $this->mini_message
                    ->setValue(1, 9, $value);
    }

}
class DispData {
    public $mini_message;
    public function __construct($mini_message = null) {
        if ($mini_message != null) {
            $this->mini_message = $mini_message;
        } else {
            $this->mini_message = new PbMiniMessage(2);
            $this->mini_message->setAttributes("0 1 9 1\n1 2 9 1\n");
        }
    }
    
    public function serialize() {
        return $this->mini_message->serialize();
    }
    
    public function clear() {
        return $this->mini_message->clear();
    }
    public function json2PbById($value) {
        return $this->mini_message->Json2PbById($value);
    }
    public function hasKey() {
        return ($this->getKey() != null);
    }

    public function getKey() {
        return $this->mini_message
                    ->getValue(0, 9);
    }

    public function setKey($value) {
        return $this->mini_message
                    ->setValue(0, 9, $value);
    }

    public function hasVal() {
        return ($this->getVal() != null);
    }

    public function getVal() {
        return $this->mini_message
                    ->getValue(1, 9);
    }

    public function setVal($value) {
        return $this->mini_message
                    ->setValue(1, 9, $value);
    }

}
class SubUrlInfo {
    public $mini_message;
    public function __construct($mini_message = null) {
        if ($mini_message != null) {
            $this->mini_message = $mini_message;
        } else {
            $this->mini_message = new PbMiniMessage(2);
            $this->mini_message->setAttributes("0 1 9 1\n1 2 13 1\n");
        }
    }
    
    public function serialize() {
        return $this->mini_message->serialize();
    }
    
    public function clear() {
        return $this->mini_message->clear();
    }
    public function json2PbById($value) {
        return $this->mini_message->Json2PbById($value);
    }
    public function hasSubUrl() {
        return ($this->getSubUrl() != null);
    }

    public function getSubUrl() {
        return $this->mini_message
                    ->getValue(0, 9);
    }

    public function setSubUrl($value) {
        return $this->mini_message
                    ->setValue(0, 9, $value);
    }

    public function hasSubSiteId() {
        return ($this->getSubSiteId() != null);
    }

    public function getSubSiteId() {
        return $this->mini_message
                    ->getValue(1, 13);
    }

    public function setSubSiteId($value) {
        return $this->mini_message
                    ->setValue(1, 13, $value);
    }

}
class ItemUriInfo {
    public $mini_message;
    public function __construct($mini_message = null) {
        if ($mini_message != null) {
            $this->mini_message = $mini_message;
        } else {
            $this->mini_message = new PbMiniMessage(3);
            $this->mini_message->setAttributes("0 1 9 3\n1 2 9 1\n2 3 9 1\n");
        }
    }
    
    public function serialize() {
        return $this->mini_message->serialize();
    }
    
    public function clear() {
        return $this->mini_message->clear();
    }
    public function json2PbById($value) {
        return $this->mini_message->Json2PbById($value);
    }
    public function hasUri() {
        return (count($this->getUriList()) > 0);
    }

    public function getUri($idx) {
        return $this->mini_message
                    ->getRepeatedValue(0, $idx, 9);
    }
    
    public function getUriList() {
        $size = $this->mini_message->getArraySize(0);
        $res = array();
        for ($i = 0; $i < $size; ++ $i) {
            $res[] = $this->getUri($i);
        }
        return $res;
    }

    public function setUri($idx, $value) {
        return $this->mini_message
                    ->setRepeatedValue(0, $idx, 9, $value);
    }
    
    public function setUriList($value) {
        $size = count($value);
        $ret = true;
        for ($i = 0; $i < $size; ++ $i) {
            $ret = $this->mini_message
                        ->addValue(0, 9, $value[$i]);
            if (!$ret) return $ret;
        }
        return $ret;
    }
    
    public function addUri($value) {
        return $this->mini_message
                    ->addValue(0, 9, $value);
    }
    

    public function hasDrsv() {
        return ($this->getDrsv() != null);
    }

    public function getDrsv() {
        return $this->mini_message
                    ->getValue(1, 9);
    }

    public function setDrsv($value) {
        return $this->mini_message
                    ->setValue(1, 9, $value);
    }

    public function hasCardid() {
        return ($this->getCardid() != null);
    }

    public function getCardid() {
        return $this->mini_message
                    ->getValue(2, 9);
    }

    public function setCardid($value) {
        return $this->mini_message
                    ->setValue(2, 9, $value);
    }

}
class UrlInfo {
    public $mini_message;
    public function __construct($mini_message = null) {
        if ($mini_message != null) {
            $this->mini_message = $mini_message;
        } else {
            $this->mini_message = new PbMiniMessage(8);
            $this->mini_message->setAttributes("0 1 13 1\n1 2 9 1\n2 3 14 1\n3 4 11 1\n4 5 11 1\n5 6 11 1\n6 7 11 1\n7 8 11 1\n");
        }
    }
    
    public function serialize() {
        return $this->mini_message->serialize();
    }
    
    public function clear() {
        return $this->mini_message->clear();
    }
    public function json2PbById($value) {
        return $this->mini_message->Json2PbById($value);
    }
    public function hasIndex() {
        return ($this->getIndex() != null);
    }

    public function getIndex() {
        return $this->mini_message
                    ->getValue(0, 13);
    }

    public function setIndex($value) {
        return $this->mini_message
                    ->setValue(0, 13, $value);
    }

    public function hasUrl() {
        return ($this->getUrl() != null);
    }

    public function getUrl() {
        return $this->mini_message
                    ->getValue(1, 9);
    }

    public function setUrl($value) {
        return $this->mini_message
                    ->setValue(1, 9, $value);
    }

    public function hasUrlType() {
        return ($this->getUrlType() != null);
    }

    public function getUrlType() {
        return $this->mini_message
                    ->getValue(2, 14);
    }

    public function setUrlType($value) {
        return $this->mini_message
                    ->setValue(2, 14, $value);
    }

    public function hasAsLog() {
        return ($this->getAsLog() != null);
    }

    public function getAsLog() {
        $mini_msg = $this->mini_message
                         ->getValue(3, 11);
        return ($mini_msg == null) ? null : new AsUrlInfoLog($mini_msg);
    }

    public function setAsLog($value) {
        return $this->mini_message
                    ->setValue(3, 11, $value->mini_message);
    }

    public function hasSpLog() {
        return ($this->getSpLog() != null);
    }

    public function getSpLog() {
        $mini_msg = $this->mini_message
                         ->getValue(4, 11);
        return ($mini_msg == null) ? null : new SpUrlInfoLog($mini_msg);
    }

    public function setSpLog($value) {
        return $this->mini_message
                    ->setValue(4, 11, $value->mini_message);
    }

    public function hasPpLog() {
        return ($this->getPpLog() != null);
    }

    public function getPpLog() {
        $mini_msg = $this->mini_message
                         ->getValue(5, 11);
        return ($mini_msg == null) ? null : new PPInfoLog($mini_msg);
    }

    public function setPpLog($value) {
        return $this->mini_message
                    ->setValue(5, 11, $value->mini_message);
    }

    public function hasPpimLog() {
        return ($this->getPpimLog() != null);
    }

    public function getPpimLog() {
        $mini_msg = $this->mini_message
                         ->getValue(6, 11);
        return ($mini_msg == null) ? null : new PPimInfoLog($mini_msg);
    }

    public function setPpimLog($value) {
        return $this->mini_message
                    ->setValue(6, 11, $value->mini_message);
    }

    public function hasLeftZxLog() {
        return ($this->getLeftZxLog() != null);
    }

    public function getLeftZxLog() {
        $mini_msg = $this->mini_message
                         ->getValue(7, 11);
        return ($mini_msg == null) ? null : new LeftZXUrlInfoLog($mini_msg);
    }

    public function setLeftZxLog($value) {
        return $this->mini_message
                    ->setValue(7, 11, $value->mini_message);
    }

}
class ResultInfo {
    public $mini_message;
    public function __construct($mini_message = null) {
        if ($mini_message != null) {
            $this->mini_message = $mini_message;
        } else {
            $this->mini_message = new PbMiniMessage(5);
            $this->mini_message->setAttributes("0 1 13 1\n1 2 9 1\n2 3 14 1\n3 4 11 1\n4 5 11 1\n");
        }
    }
    
    public function serialize() {
        return $this->mini_message->serialize();
    }
    
    public function clear() {
        return $this->mini_message->clear();
    }
    public function json2PbById($value) {
        return $this->mini_message->Json2PbById($value);
    }
    public function hasIndex() {
        return ($this->getIndex() != null);
    }

    public function getIndex() {
        return $this->mini_message
                    ->getValue(0, 13);
    }

    public function setIndex($value) {
        return $this->mini_message
                    ->setValue(0, 13, $value);
    }

    public function hasUrl() {
        return ($this->getUrl() != null);
    }

    public function getUrl() {
        return $this->mini_message
                    ->getValue(1, 9);
    }

    public function setUrl($value) {
        return $this->mini_message
                    ->setValue(1, 9, $value);
    }

    public function hasResultType() {
        return ($this->getResultType() != null);
    }

    public function getResultType() {
        return $this->mini_message
                    ->getValue(2, 14);
    }

    public function setResultType($value) {
        return $this->mini_message
                    ->setValue(2, 14, $value);
    }

    public function hasZxResult() {
        return ($this->getZxResult() != null);
    }

    public function getZxResult() {
        $mini_msg = $this->mini_message
                         ->getValue(3, 11);
        return ($mini_msg == null) ? null : new ZhiXinResult($mini_msg);
    }

    public function setZxResult($value) {
        return $this->mini_message
                    ->setValue(3, 11, $value->mini_message);
    }

    public function hasAdResult() {
        return ($this->getAdResult() != null);
    }

    public function getAdResult() {
        $mini_msg = $this->mini_message
                         ->getValue(4, 11);
        return ($mini_msg == null) ? null : new AspResult($mini_msg);
    }

    public function setAdResult($value) {
        return $this->mini_message
                    ->setValue(4, 11, $value->mini_message);
    }

}
class LeftZXUrlInfoLog {
    public $mini_message;
    public function __construct($mini_message = null) {
        if ($mini_message != null) {
            $this->mini_message = $mini_message;
        } else {
            $this->mini_message = new PbMiniMessage(14);
            $this->mini_message->setAttributes("0 1 13 1\n1 2 13 1\n2 3 13 1\n3 4 9 1\n4 5 13 3\n5 6 4 1\n6 7 13 1\n7 8 9 1\n8 9 9 1\n9 10 9 1\n10 11 11 1\n11 12 9 1\n12 13 5 1\n13 14 11 3\n");
        }
    }
    
    public function serialize() {
        return $this->mini_message->serialize();
    }
    
    public function clear() {
        return $this->mini_message->clear();
    }
    public function json2PbById($value) {
        return $this->mini_message->Json2PbById($value);
    }
    public function hasIsClAs() {
        return ($this->getIsClAs() != null);
    }

    public function getIsClAs() {
        return $this->mini_message
                    ->getValue(0, 13);
    }

    public function setIsClAs($value) {
        return $this->mini_message
                    ->setValue(0, 13, $value);
    }

    public function hasStdStg() {
        return ($this->getStdStg() != null);
    }

    public function getStdStg() {
        return $this->mini_message
                    ->getValue(1, 13);
    }

    public function setStdStg($value) {
        return $this->mini_message
                    ->setValue(1, 13, $value);
    }

    public function hasStdStl() {
        return ($this->getStdStl() != null);
    }

    public function getStdStl() {
        return $this->mini_message
                    ->getValue(2, 13);
    }

    public function setStdStl($value) {
        return $this->mini_message
                    ->setValue(2, 13, $value);
    }

    public function hasUrlJiucuoFlag() {
        return ($this->getUrlJiucuoFlag() != null);
    }

    public function getUrlJiucuoFlag() {
        return $this->mini_message
                    ->getValue(3, 9);
    }

    public function setUrlJiucuoFlag($value) {
        return $this->mini_message
                    ->setValue(3, 9, $value);
    }

    public function hasStrategys() {
        return (count($this->getStrategysList()) > 0);
    }

    public function getStrategys($idx) {
        return $this->mini_message
                    ->getRepeatedValue(4, $idx, 13);
    }
    
    public function getStrategysList() {
        $size = $this->mini_message->getArraySize(4);
        $res = array();
        for ($i = 0; $i < $size; ++ $i) {
            $res[] = $this->getStrategys($i);
        }
        return $res;
    }

    public function setStrategys($idx, $value) {
        return $this->mini_message
                    ->setRepeatedValue(4, $idx, 13, $value);
    }
    
    public function setStrategysList($value) {
        $size = count($value);
        $ret = true;
        for ($i = 0; $i < $size; ++ $i) {
            $ret = $this->mini_message
                        ->addValue(4, 13, $value[$i]);
            if (!$ret) return $ret;
        }
        return $ret;
    }
    
    public function addStrategys($value) {
        return $this->mini_message
                    ->addValue(4, 13, $value);
    }
    

    public function hasCategoryId() {
        return ($this->getCategoryId() != null);
    }

    public function getCategoryId() {
        return $this->mini_message
                    ->getValue(5, 4);
    }

    public function setCategoryId($value) {
        return $this->mini_message
                    ->setValue(5, 4, $value);
    }

    public function hasCardId() {
        return ($this->getCardId() != null);
    }

    public function getCardId() {
        return $this->mini_message
                    ->getValue(6, 13);
    }

    public function setCardId($value) {
        return $this->mini_message
                    ->setValue(6, 13, $value);
    }

    public function hasEntityName() {
        return ($this->getEntityName() != null);
    }

    public function getEntityName() {
        return $this->mini_message
                    ->getValue(7, 9);
    }

    public function setEntityName($value) {
        return $this->mini_message
                    ->setValue(7, 9, $value);
    }

    public function hasUri() {
        return ($this->getUri() != null);
    }

    public function getUri() {
        return $this->mini_message
                    ->getValue(8, 9);
    }

    public function setUri($value) {
        return $this->mini_message
                    ->setValue(8, 9, $value);
    }

    public function hasTempName() {
        return ($this->getTempName() != null);
    }

    public function getTempName() {
        return $this->mini_message
                    ->getValue(9, 9);
    }

    public function setTempName($value) {
        return $this->mini_message
                    ->setValue(9, 9, $value);
    }

    public function hasItemUriInfo() {
        return ($this->getItemUriInfo() != null);
    }

    public function getItemUriInfo() {
        $mini_msg = $this->mini_message
                         ->getValue(10, 11);
        return ($mini_msg == null) ? null : new ItemUriInfo($mini_msg);
    }

    public function setItemUriInfo($value) {
        return $this->mini_message
                    ->setValue(10, 11, $value->mini_message);
    }

    public function hasTitle() {
        return ($this->getTitle() != null);
    }

    public function getTitle() {
        return $this->mini_message
                    ->getValue(11, 9);
    }

    public function setTitle($value) {
        return $this->mini_message
                    ->setValue(11, 9, $value);
    }

    public function hasBurstFlag() {
        return ($this->getBurstFlag() != null);
    }

    public function getBurstFlag() {
        return $this->mini_message
                    ->getValue(12, 5);
    }

    public function setBurstFlag($value) {
        return $this->mini_message
                    ->setValue(12, 5, $value);
    }

    public function hasGSampleLog() {
        return (count($this->getGSampleLogList()) > 0);
    }

    public function getGSampleLog($idx) {
        $mini_msg = $this->mini_message
                         ->getRepeatedValue(13, $idx, 11);
        return ($mini_msg == null) ? null : new DispData($mini_msg);
    }
    
    public function getGSampleLogList() {
        $size = $this->mini_message->getArraySize(13);
        $res = array();
        for ($i = 0; $i < $size; ++ $i) {
            $res[] = $this->getGSampleLog($i);
        }
        return $res;
    }

    public function setGSampleLog($idx, $value) {
        return $this->mini_message
                    ->setRepeatedValue(13, $idx, 11, $value->mini_message);
    }
    
    public function setGSampleLogList($value) {
        $size = count($value);
        $ret = true;
        for ($i = 0; $i < $size; ++ $i) {
            $ret = $this->mini_message
                        ->addValue(13, 11, $value[$i]->mini_message);
            if (!$ret) return $ret;
        }
        return $ret;
    }
    
    public function addGSampleLog($value) {
        return $this->mini_message
                    ->addValue(13, 11, $value->mini_message);
    }
    
    private function setGSampleLogAttributes($value) {
        return $this->mini_message
                    ->setRepMsgAttributes(13, 11, $value->mini_message);
    }
    

}
class AsUrlInfoLog {
    public $mini_message;
    public function __construct($mini_message = null) {
        if ($mini_message != null) {
            $this->mini_message = $mini_message;
        } else {
            $this->mini_message = new PbMiniMessage(35);
            $this->mini_message->setAttributes("0 1 13 1\n1 2 13 1\n2 3 13 1\n3 4 13 1\n4 5 13 1\n5 6 13 1\n6 7 13 1\n7 8 13 1\n8 9 13 1\n9 11 5 1\n10 12 13 3\n11 13 9 1\n12 14 9 1\n13 15 9 1\n14 16 9 1\n15 17 13 1\n16 18 13 1\n17 19 11 3\n18 20 9 3\n19 21 9 1\n20 22 9 1\n21 23 9 1\n22 24 9 1\n23 25 5 1\n24 26 9 1\n25 27 9 1\n26 28 9 1\n27 29 9 1\n28 30 13 1\n29 31 9 1\n30 32 9 1\n31 33 11 1\n32 34 9 1\n33 35 9 1\n34 36 8 1\n");
        }
    }
    
    public function serialize() {
        return $this->mini_message->serialize();
    }
    
    public function clear() {
        return $this->mini_message->clear();
    }
    public function json2PbById($value) {
        return $this->mini_message->Json2PbById($value);
    }
    public function hasWeight() {
        return ($this->getWeight() != null);
    }

    public function getWeight() {
        return $this->mini_message
                    ->getValue(0, 13);
    }

    public function setWeight($value) {
        return $this->mini_message
                    ->setValue(0, 13, $value);
    }

    public function hasUrlNo() {
        return ($this->getUrlNo() != null);
    }

    public function getUrlNo() {
        return $this->mini_message
                    ->getValue(1, 13);
    }

    public function setUrlNo($value) {
        return $this->mini_message
                    ->setValue(1, 13, $value);
    }

    public function hasSuburlSign() {
        return ($this->getSuburlSign() != null);
    }

    public function getSuburlSign() {
        return $this->mini_message
                    ->getValue(2, 13);
    }

    public function setSuburlSign($value) {
        return $this->mini_message
                    ->setValue(2, 13, $value);
    }

    public function hasSiteSign1() {
        return ($this->getSiteSign1() != null);
    }

    public function getSiteSign1() {
        return $this->mini_message
                    ->getValue(3, 13);
    }

    public function setSiteSign1($value) {
        return $this->mini_message
                    ->setValue(3, 13, $value);
    }

    public function hasMixSignsitesign() {
        return ($this->getMixSignsitesign() != null);
    }

    public function getMixSignsitesign() {
        return $this->mini_message
                    ->getValue(4, 13);
    }

    public function setMixSignsitesign($value) {
        return $this->mini_message
                    ->setValue(4, 13, $value);
    }

    public function hasMixSignSex() {
        return ($this->getMixSignSex() != null);
    }

    public function getMixSignSex() {
        return $this->mini_message
                    ->getValue(5, 13);
    }

    public function setMixSignSex($value) {
        return $this->mini_message
                    ->setValue(5, 13, $value);
    }

    public function hasMixSignPol() {
        return ($this->getMixSignPol() != null);
    }

    public function getMixSignPol() {
        return $this->mini_message
                    ->getValue(6, 13);
    }

    public function setMixSignPol($value) {
        return $this->mini_message
                    ->setValue(6, 13, $value);
    }

    public function hasContSign() {
        return ($this->getContSign() != null);
    }

    public function getContSign() {
        return $this->mini_message
                    ->getValue(7, 13);
    }

    public function setContSign($value) {
        return $this->mini_message
                    ->setValue(7, 13, $value);
    }

    public function hasMatchProp() {
        return ($this->getMatchProp() != null);
    }

    public function getMatchProp() {
        return $this->mini_message
                    ->getValue(8, 13);
    }

    public function setMatchProp($value) {
        return $this->mini_message
                    ->setValue(8, 13, $value);
    }

    public function hasInfo() {
        return ($this->getInfo() != null);
    }

    public function getInfo() {
        return $this->mini_message
                    ->getValue(9, 5);
    }

    public function setInfo($value) {
        return $this->mini_message
                    ->setValue(9, 5, $value);
    }

    public function hasStrategys() {
        return (count($this->getStrategysList()) > 0);
    }

    public function getStrategys($idx) {
        return $this->mini_message
                    ->getRepeatedValue(10, $idx, 13);
    }
    
    public function getStrategysList() {
        $size = $this->mini_message->getArraySize(10);
        $res = array();
        for ($i = 0; $i < $size; ++ $i) {
            $res[] = $this->getStrategys($i);
        }
        return $res;
    }

    public function setStrategys($idx, $value) {
        return $this->mini_message
                    ->setRepeatedValue(10, $idx, 13, $value);
    }
    
    public function setStrategysList($value) {
        $size = count($value);
        $ret = true;
        for ($i = 0; $i < $size; ++ $i) {
            $ret = $this->mini_message
                        ->addValue(10, 13, $value[$i]);
            if (!$ret) return $ret;
        }
        return $ret;
    }
    
    public function addStrategys($value) {
        return $this->mini_message
                    ->addValue(10, 13, $value);
    }
    

    public function hasAuthWeight() {
        return ($this->getAuthWeight() != null);
    }

    public function getAuthWeight() {
        return $this->mini_message
                    ->getValue(11, 9);
    }

    public function setAuthWeight($value) {
        return $this->mini_message
                    ->setValue(11, 9, $value);
    }

    public function hasTimeFactor() {
        return ($this->getTimeFactor() != null);
    }

    public function getTimeFactor() {
        return $this->mini_message
                    ->getValue(12, 9);
    }

    public function setTimeFactor($value) {
        return $this->mini_message
                    ->setValue(12, 9, $value);
    }

    public function hasPageType() {
        return ($this->getPageType() != null);
    }

    public function getPageType() {
        return $this->mini_message
                    ->getValue(13, 9);
    }

    public function setPageType($value) {
        return $this->mini_message
                    ->setValue(13, 9, $value);
    }

    public function hasField() {
        return ($this->getField() != null);
    }

    public function getField() {
        return $this->mini_message
                    ->getValue(14, 9);
    }

    public function setField($value) {
        return $this->mini_message
                    ->setValue(14, 9, $value);
    }

    public function hasStdStg() {
        return ($this->getStdStg() != null);
    }

    public function getStdStg() {
        return $this->mini_message
                    ->getValue(15, 13);
    }

    public function setStdStg($value) {
        return $this->mini_message
                    ->setValue(15, 13, $value);
    }

    public function hasStdStl() {
        return ($this->getStdStl() != null);
    }

    public function getStdStl() {
        return $this->mini_message
                    ->getValue(16, 13);
    }

    public function setStdStl($value) {
        return $this->mini_message
                    ->setValue(16, 13, $value);
    }

    public function hasGSampleLog() {
        return (count($this->getGSampleLogList()) > 0);
    }

    public function getGSampleLog($idx) {
        $mini_msg = $this->mini_message
                         ->getRepeatedValue(17, $idx, 11);
        return ($mini_msg == null) ? null : new DispData($mini_msg);
    }
    
    public function getGSampleLogList() {
        $size = $this->mini_message->getArraySize(17);
        $res = array();
        for ($i = 0; $i < $size; ++ $i) {
            $res[] = $this->getGSampleLog($i);
        }
        return $res;
    }

    public function setGSampleLog($idx, $value) {
        return $this->mini_message
                    ->setRepeatedValue(17, $idx, 11, $value->mini_message);
    }
    
    public function setGSampleLogList($value) {
        $size = count($value);
        $ret = true;
        for ($i = 0; $i < $size; ++ $i) {
            $ret = $this->mini_message
                        ->addValue(17, 11, $value[$i]->mini_message);
            if (!$ret) return $ret;
        }
        return $ret;
    }
    
    public function addGSampleLog($value) {
        return $this->mini_message
                    ->addValue(17, 11, $value->mini_message);
    }
    
    private function setGSampleLogAttributes($value) {
        return $this->mini_message
                    ->setRepMsgAttributes(17, 11, $value->mini_message);
    }
    

    public function hasItemSecureId() {
        return (count($this->getItemSecureIdList()) > 0);
    }

    public function getItemSecureId($idx) {
        return $this->mini_message
                    ->getRepeatedValue(18, $idx, 9);
    }
    
    public function getItemSecureIdList() {
        $size = $this->mini_message->getArraySize(18);
        $res = array();
        for ($i = 0; $i < $size; ++ $i) {
            $res[] = $this->getItemSecureId($i);
        }
        return $res;
    }

    public function setItemSecureId($idx, $value) {
        return $this->mini_message
                    ->setRepeatedValue(18, $idx, 9, $value);
    }
    
    public function setItemSecureIdList($value) {
        $size = count($value);
        $ret = true;
        for ($i = 0; $i < $size; ++ $i) {
            $ret = $this->mini_message
                        ->addValue(18, 9, $value[$i]);
            if (!$ret) return $ret;
        }
        return $ret;
    }
    
    public function addItemSecureId($value) {
        return $this->mini_message
                    ->addValue(18, 9, $value);
    }
    

    public function hasFakeImageShow() {
        return ($this->getFakeImageShow() != null);
    }

    public function getFakeImageShow() {
        return $this->mini_message
                    ->getValue(19, 9);
    }

    public function setFakeImageShow($value) {
        return $this->mini_message
                    ->setValue(19, 9, $value);
    }

    public function hasTitle() {
        return ($this->getTitle() != null);
    }

    public function getTitle() {
        return $this->mini_message
                    ->getValue(20, 9);
    }

    public function setTitle($value) {
        return $this->mini_message
                    ->setValue(20, 9, $value);
    }

    public function hasShowTime() {
        return ($this->getShowTime() != null);
    }

    public function getShowTime() {
        return $this->mini_message
                    ->getValue(21, 9);
    }

    public function setShowTime($value) {
        return $this->mini_message
                    ->setValue(21, 9, $value);
    }

    public function hasNewTimeFactor() {
        return ($this->getNewTimeFactor() != null);
    }

    public function getNewTimeFactor() {
        return $this->mini_message
                    ->getValue(22, 9);
    }

    public function setNewTimeFactor($value) {
        return $this->mini_message
                    ->setValue(22, 9, $value);
    }

    public function hasBurstFlag() {
        return ($this->getBurstFlag() != null);
    }

    public function getBurstFlag() {
        return $this->mini_message
                    ->getValue(23, 5);
    }

    public function setBurstFlag($value) {
        return $this->mini_message
                    ->setValue(23, 5, $value);
    }

    public function hasSafeUnion() {
        return ($this->getSafeUnion() != null);
    }

    public function getSafeUnion() {
        return $this->mini_message
                    ->getValue(24, 9);
    }

    public function setSafeUnion($value) {
        return $this->mini_message
                    ->setValue(24, 9, $value);
    }

    public function hasEVcard() {
        return ($this->getEVcard() != null);
    }

    public function getEVcard() {
        return $this->mini_message
                    ->getValue(25, 9);
    }

    public function setEVcard($value) {
        return $this->mini_message
                    ->setValue(25, 9, $value);
    }

    public function hasIsMain() {
        return ($this->getIsMain() != null);
    }

    public function getIsMain() {
        return $this->mini_message
                    ->getValue(26, 9);
    }

    public function setIsMain($value) {
        return $this->mini_message
                    ->setValue(26, 9, $value);
    }

    public function hasAsUrl() {
        return ($this->getAsUrl() != null);
    }

    public function getAsUrl() {
        return $this->mini_message
                    ->getValue(27, 9);
    }

    public function setAsUrl($value) {
        return $this->mini_message
                    ->setValue(27, 9, $value);
    }

    public function hasClickWeight() {
        return ($this->getClickWeight() != null);
    }

    public function getClickWeight() {
        return $this->mini_message
                    ->getValue(28, 13);
    }

    public function setClickWeight($value) {
        return $this->mini_message
                    ->setValue(28, 13, $value);
    }

    public function hasTemplateName() {
        return ($this->getTemplateName() != null);
    }

    public function getTemplateName() {
        return $this->mini_message
                    ->getValue(29, 9);
    }

    public function setTemplateName($value) {
        return $this->mini_message
                    ->setValue(29, 9, $value);
    }

    public function hasFavUrl() {
        return ($this->getFavUrl() != null);
    }

    public function getFavUrl() {
        return $this->mini_message
                    ->getValue(30, 9);
    }

    public function setFavUrl($value) {
        return $this->mini_message
                    ->setValue(30, 9, $value);
    }

    public function hasItemUriInfo() {
        return ($this->getItemUriInfo() != null);
    }

    public function getItemUriInfo() {
        $mini_msg = $this->mini_message
                         ->getValue(31, 11);
        return ($mini_msg == null) ? null : new ItemUriInfo($mini_msg);
    }

    public function setItemUriInfo($value) {
        return $this->mini_message
                    ->setValue(31, 11, $value->mini_message);
    }

    public function hasAbstractTxt() {
        return ($this->getAbstractTxt() != null);
    }

    public function getAbstractTxt() {
        return $this->mini_message
                    ->getValue(32, 9);
    }

    public function setAbstractTxt($value) {
        return $this->mini_message
                    ->setValue(32, 9, $value);
    }

    public function hasSrcId() {
        return ($this->getSrcId() != null);
    }

    public function getSrcId() {
        return $this->mini_message
                    ->getValue(33, 9);
    }

    public function setSrcId($value) {
        return $this->mini_message
                    ->setValue(33, 9, $value);
    }

    public function hasImg() {
        return ($this->getImg() != null);
    }

    public function getImg() {
        return $this->mini_message
                    ->getValue(34, 8);
    }

    public function setImg($value) {
        return $this->mini_message
                    ->setValue(34, 8, $value);
    }

}
class SpUrlInfoLog {
    public $mini_message;
    public function __construct($mini_message = null) {
        if ($mini_message != null) {
            $this->mini_message = $mini_message;
        } else {
            $this->mini_message = new PbMiniMessage(11);
            $this->mini_message->setAttributes("0 1 13 1\n1 2 9 1\n2 3 13 3\n3 4 11 3\n4 5 9 1\n5 6 5 1\n6 7 11 3\n7 8 11 1\n8 9 9 1\n9 10 9 1\n10 34 9 1\n");
        }
    }
    
    public function serialize() {
        return $this->mini_message->serialize();
    }
    
    public function clear() {
        return $this->mini_message->clear();
    }
    public function json2PbById($value) {
        return $this->mini_message->Json2PbById($value);
    }
    public function hasIsClAs() {
        return ($this->getIsClAs() != null);
    }

    public function getIsClAs() {
        return $this->mini_message
                    ->getValue(0, 13);
    }

    public function setIsClAs($value) {
        return $this->mini_message
                    ->setValue(0, 13, $value);
    }

    public function hasDispLog() {
        return ($this->getDispLog() != null);
    }

    public function getDispLog() {
        return $this->mini_message
                    ->getValue(1, 9);
    }

    public function setDispLog($value) {
        return $this->mini_message
                    ->setValue(1, 9, $value);
    }

    public function hasStrategys() {
        return (count($this->getStrategysList()) > 0);
    }

    public function getStrategys($idx) {
        return $this->mini_message
                    ->getRepeatedValue(2, $idx, 13);
    }
    
    public function getStrategysList() {
        $size = $this->mini_message->getArraySize(2);
        $res = array();
        for ($i = 0; $i < $size; ++ $i) {
            $res[] = $this->getStrategys($i);
        }
        return $res;
    }

    public function setStrategys($idx, $value) {
        return $this->mini_message
                    ->setRepeatedValue(2, $idx, 13, $value);
    }
    
    public function setStrategysList($value) {
        $size = count($value);
        $ret = true;
        for ($i = 0; $i < $size; ++ $i) {
            $ret = $this->mini_message
                        ->addValue(2, 13, $value[$i]);
            if (!$ret) return $ret;
        }
        return $ret;
    }
    
    public function addStrategys($value) {
        return $this->mini_message
                    ->addValue(2, 13, $value);
    }
    

    public function hasGSampleLog() {
        return (count($this->getGSampleLogList()) > 0);
    }

    public function getGSampleLog($idx) {
        $mini_msg = $this->mini_message
                         ->getRepeatedValue(3, $idx, 11);
        return ($mini_msg == null) ? null : new DispData($mini_msg);
    }
    
    public function getGSampleLogList() {
        $size = $this->mini_message->getArraySize(3);
        $res = array();
        for ($i = 0; $i < $size; ++ $i) {
            $res[] = $this->getGSampleLog($i);
        }
        return $res;
    }

    public function setGSampleLog($idx, $value) {
        return $this->mini_message
                    ->setRepeatedValue(3, $idx, 11, $value->mini_message);
    }
    
    public function setGSampleLogList($value) {
        $size = count($value);
        $ret = true;
        for ($i = 0; $i < $size; ++ $i) {
            $ret = $this->mini_message
                        ->addValue(3, 11, $value[$i]->mini_message);
            if (!$ret) return $ret;
        }
        return $ret;
    }
    
    public function addGSampleLog($value) {
        return $this->mini_message
                    ->addValue(3, 11, $value->mini_message);
    }
    
    private function setGSampleLogAttributes($value) {
        return $this->mini_message
                    ->setRepMsgAttributes(3, 11, $value->mini_message);
    }
    

    public function hasFakeImageShow() {
        return ($this->getFakeImageShow() != null);
    }

    public function getFakeImageShow() {
        return $this->mini_message
                    ->getValue(4, 9);
    }

    public function setFakeImageShow($value) {
        return $this->mini_message
                    ->setValue(4, 9, $value);
    }

    public function hasBurstFlag() {
        return ($this->getBurstFlag() != null);
    }

    public function getBurstFlag() {
        return $this->mini_message
                    ->getValue(5, 5);
    }

    public function setBurstFlag($value) {
        return $this->mini_message
                    ->setValue(5, 5, $value);
    }

    public function hasSubUrlInfo() {
        return (count($this->getSubUrlInfoList()) > 0);
    }

    public function getSubUrlInfo($idx) {
        $mini_msg = $this->mini_message
                         ->getRepeatedValue(6, $idx, 11);
        return ($mini_msg == null) ? null : new SubUrlInfo($mini_msg);
    }
    
    public function getSubUrlInfoList() {
        $size = $this->mini_message->getArraySize(6);
        $res = array();
        for ($i = 0; $i < $size; ++ $i) {
            $res[] = $this->getSubUrlInfo($i);
        }
        return $res;
    }

    public function setSubUrlInfo($idx, $value) {
        return $this->mini_message
                    ->setRepeatedValue(6, $idx, 11, $value->mini_message);
    }
    
    public function setSubUrlInfoList($value) {
        $size = count($value);
        $ret = true;
        for ($i = 0; $i < $size; ++ $i) {
            $ret = $this->mini_message
                        ->addValue(6, 11, $value[$i]->mini_message);
            if (!$ret) return $ret;
        }
        return $ret;
    }
    
    public function addSubUrlInfo($value) {
        return $this->mini_message
                    ->addValue(6, 11, $value->mini_message);
    }
    
    private function setSubUrlInfoAttributes($value) {
        return $this->mini_message
                    ->setRepMsgAttributes(6, 11, $value->mini_message);
    }
    

    public function hasItemUriInfo() {
        return ($this->getItemUriInfo() != null);
    }

    public function getItemUriInfo() {
        $mini_msg = $this->mini_message
                         ->getValue(7, 11);
        return ($mini_msg == null) ? null : new ItemUriInfo($mini_msg);
    }

    public function setItemUriInfo($value) {
        return $this->mini_message
                    ->setValue(7, 11, $value->mini_message);
    }

    public function hasTitle() {
        return ($this->getTitle() != null);
    }

    public function getTitle() {
        return $this->mini_message
                    ->getValue(8, 9);
    }

    public function setTitle($value) {
        return $this->mini_message
                    ->setValue(8, 9, $value);
    }

    public function hasTempName() {
        return ($this->getTempName() != null);
    }

    public function getTempName() {
        return $this->mini_message
                    ->getValue(9, 9);
    }

    public function setTempName($value) {
        return $this->mini_message
                    ->setValue(9, 9, $value);
    }

    public function hasAbstractTxt() {
        return ($this->getAbstractTxt() != null);
    }

    public function getAbstractTxt() {
        return $this->mini_message
                    ->getValue(10, 9);
    }

    public function setAbstractTxt($value) {
        return $this->mini_message
                    ->setValue(10, 9, $value);
    }

}
class PPInfoLog {
    public $mini_message;
    public function __construct($mini_message = null) {
        if ($mini_message != null) {
            $this->mini_message = $mini_message;
        } else {
            $this->mini_message = new PbMiniMessage(1);
            $this->mini_message->setAttributes("0 1 13 1\n");
        }
    }
    
    public function serialize() {
        return $this->mini_message->serialize();
    }
    
    public function clear() {
        return $this->mini_message->clear();
    }
    public function json2PbById($value) {
        return $this->mini_message->Json2PbById($value);
    }
    public function hasAdNum() {
        return ($this->getAdNum() != null);
    }

    public function getAdNum() {
        return $this->mini_message
                    ->getValue(0, 13);
    }

    public function setAdNum($value) {
        return $this->mini_message
                    ->setValue(0, 13, $value);
    }

}
class PPimInfoLog {
    public $mini_message;
    public function __construct($mini_message = null) {
        if ($mini_message != null) {
            $this->mini_message = $mini_message;
        } else {
            $this->mini_message = new PbMiniMessage(2);
            $this->mini_message->setAttributes("0 1 13 1\n1 2 9 1\n");
        }
    }
    
    public function serialize() {
        return $this->mini_message->serialize();
    }
    
    public function clear() {
        return $this->mini_message->clear();
    }
    public function json2PbById($value) {
        return $this->mini_message->Json2PbById($value);
    }
    public function hasAdNum() {
        return ($this->getAdNum() != null);
    }

    public function getAdNum() {
        return $this->mini_message
                    ->getValue(0, 13);
    }

    public function setAdNum($value) {
        return $this->mini_message
                    ->setValue(0, 13, $value);
    }

    public function hasAspUid() {
        return ($this->getAspUid() != null);
    }

    public function getAspUid() {
        return $this->mini_message
                    ->getValue(1, 9);
    }

    public function setAspUid($value) {
        return $this->mini_message
                    ->setValue(1, 9, $value);
    }

}
class ZhiXinResult {
    public $mini_message;
    public function __construct($mini_message = null) {
        if ($mini_message != null) {
            $this->mini_message = $mini_message;
        } else {
            $this->mini_message = new PbMiniMessage(13);
            $this->mini_message->setAttributes("0 1 13 1\n1 2 13 1\n2 3 13 1\n3 4 9 1\n4 5 13 3\n5 6 4 1\n6 7 13 1\n7 8 9 1\n8 9 9 1\n9 10 9 1\n10 11 11 1\n11 12 11 3\n12 13 9 1\n");
        }
    }
    
    public function serialize() {
        return $this->mini_message->serialize();
    }
    
    public function clear() {
        return $this->mini_message->clear();
    }
    public function json2PbById($value) {
        return $this->mini_message->Json2PbById($value);
    }
    public function hasIsClAs() {
        return ($this->getIsClAs() != null);
    }

    public function getIsClAs() {
        return $this->mini_message
                    ->getValue(0, 13);
    }

    public function setIsClAs($value) {
        return $this->mini_message
                    ->setValue(0, 13, $value);
    }

    public function hasStdStg() {
        return ($this->getStdStg() != null);
    }

    public function getStdStg() {
        return $this->mini_message
                    ->getValue(1, 13);
    }

    public function setStdStg($value) {
        return $this->mini_message
                    ->setValue(1, 13, $value);
    }

    public function hasStdStl() {
        return ($this->getStdStl() != null);
    }

    public function getStdStl() {
        return $this->mini_message
                    ->getValue(2, 13);
    }

    public function setStdStl($value) {
        return $this->mini_message
                    ->setValue(2, 13, $value);
    }

    public function hasUrlJiucuoFlag() {
        return ($this->getUrlJiucuoFlag() != null);
    }

    public function getUrlJiucuoFlag() {
        return $this->mini_message
                    ->getValue(3, 9);
    }

    public function setUrlJiucuoFlag($value) {
        return $this->mini_message
                    ->setValue(3, 9, $value);
    }

    public function hasStrategys() {
        return (count($this->getStrategysList()) > 0);
    }

    public function getStrategys($idx) {
        return $this->mini_message
                    ->getRepeatedValue(4, $idx, 13);
    }
    
    public function getStrategysList() {
        $size = $this->mini_message->getArraySize(4);
        $res = array();
        for ($i = 0; $i < $size; ++ $i) {
            $res[] = $this->getStrategys($i);
        }
        return $res;
    }

    public function setStrategys($idx, $value) {
        return $this->mini_message
                    ->setRepeatedValue(4, $idx, 13, $value);
    }
    
    public function setStrategysList($value) {
        $size = count($value);
        $ret = true;
        for ($i = 0; $i < $size; ++ $i) {
            $ret = $this->mini_message
                        ->addValue(4, 13, $value[$i]);
            if (!$ret) return $ret;
        }
        return $ret;
    }
    
    public function addStrategys($value) {
        return $this->mini_message
                    ->addValue(4, 13, $value);
    }
    

    public function hasCategoryId() {
        return ($this->getCategoryId() != null);
    }

    public function getCategoryId() {
        return $this->mini_message
                    ->getValue(5, 4);
    }

    public function setCategoryId($value) {
        return $this->mini_message
                    ->setValue(5, 4, $value);
    }

    public function hasCardId() {
        return ($this->getCardId() != null);
    }

    public function getCardId() {
        return $this->mini_message
                    ->getValue(6, 13);
    }

    public function setCardId($value) {
        return $this->mini_message
                    ->setValue(6, 13, $value);
    }

    public function hasEntityName() {
        return ($this->getEntityName() != null);
    }

    public function getEntityName() {
        return $this->mini_message
                    ->getValue(7, 9);
    }

    public function setEntityName($value) {
        return $this->mini_message
                    ->setValue(7, 9, $value);
    }

    public function hasUri() {
        return ($this->getUri() != null);
    }

    public function getUri() {
        return $this->mini_message
                    ->getValue(8, 9);
    }

    public function setUri($value) {
        return $this->mini_message
                    ->setValue(8, 9, $value);
    }

    public function hasTempName() {
        return ($this->getTempName() != null);
    }

    public function getTempName() {
        return $this->mini_message
                    ->getValue(9, 9);
    }

    public function setTempName($value) {
        return $this->mini_message
                    ->setValue(9, 9, $value);
    }

    public function hasItemUriInfo() {
        return ($this->getItemUriInfo() != null);
    }

    public function getItemUriInfo() {
        $mini_msg = $this->mini_message
                         ->getValue(10, 11);
        return ($mini_msg == null) ? null : new ItemUriInfo($mini_msg);
    }

    public function setItemUriInfo($value) {
        return $this->mini_message
                    ->setValue(10, 11, $value->mini_message);
    }

    public function hasGSampleLog() {
        return (count($this->getGSampleLogList()) > 0);
    }

    public function getGSampleLog($idx) {
        $mini_msg = $this->mini_message
                         ->getRepeatedValue(11, $idx, 11);
        return ($mini_msg == null) ? null : new DispData($mini_msg);
    }
    
    public function getGSampleLogList() {
        $size = $this->mini_message->getArraySize(11);
        $res = array();
        for ($i = 0; $i < $size; ++ $i) {
            $res[] = $this->getGSampleLog($i);
        }
        return $res;
    }

    public function setGSampleLog($idx, $value) {
        return $this->mini_message
                    ->setRepeatedValue(11, $idx, 11, $value->mini_message);
    }
    
    public function setGSampleLogList($value) {
        $size = count($value);
        $ret = true;
        for ($i = 0; $i < $size; ++ $i) {
            $ret = $this->mini_message
                        ->addValue(11, 11, $value[$i]->mini_message);
            if (!$ret) return $ret;
        }
        return $ret;
    }
    
    public function addGSampleLog($value) {
        return $this->mini_message
                    ->addValue(11, 11, $value->mini_message);
    }
    
    private function setGSampleLogAttributes($value) {
        return $this->mini_message
                    ->setRepMsgAttributes(11, 11, $value->mini_message);
    }
    

    public function hasTitle() {
        return ($this->getTitle() != null);
    }

    public function getTitle() {
        return $this->mini_message
                    ->getValue(12, 9);
    }

    public function setTitle($value) {
        return $this->mini_message
                    ->setValue(12, 9, $value);
    }

}
class AspResult {
    public $mini_message;
    public function __construct($mini_message = null) {
        if ($mini_message != null) {
            $this->mini_message = $mini_message;
        } else {
            $this->mini_message = new PbMiniMessage(4);
            $this->mini_message->setAttributes("0 1 9 1\n1 2 4 1\n2 3 4 1\n3 4 11 1\n");
        }
    }
    
    public function serialize() {
        return $this->mini_message->serialize();
    }
    
    public function clear() {
        return $this->mini_message->clear();
    }
    public function json2PbById($value) {
        return $this->mini_message->Json2PbById($value);
    }
    public function hasAspUid() {
        return ($this->getAspUid() != null);
    }

    public function getAspUid() {
        return $this->mini_message
                    ->getValue(0, 9);
    }

    public function setAspUid($value) {
        return $this->mini_message
                    ->setValue(0, 9, $value);
    }

    public function hasAspSrcId() {
        return ($this->getAspSrcId() != null);
    }

    public function getAspSrcId() {
        return $this->mini_message
                    ->getValue(1, 4);
    }

    public function setAspSrcId($value) {
        return $this->mini_message
                    ->setValue(1, 4, $value);
    }

    public function hasNumber() {
        return ($this->getNumber() != null);
    }

    public function getNumber() {
        return $this->mini_message
                    ->getValue(2, 4);
    }

    public function setNumber($value) {
        return $this->mini_message
                    ->setValue(2, 4, $value);
    }

    public function hasItemUriInfo() {
        return ($this->getItemUriInfo() != null);
    }

    public function getItemUriInfo() {
        $mini_msg = $this->mini_message
                         ->getValue(3, 11);
        return ($mini_msg == null) ? null : new ItemUriInfo($mini_msg);
    }

    public function setItemUriInfo($value) {
        return $this->mini_message
                    ->setValue(3, 11, $value->mini_message);
    }

}
