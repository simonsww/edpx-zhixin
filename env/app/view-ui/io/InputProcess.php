<?php
/**
 *
 * @desc 负责处理ui-nginx/ui输入信息的类，包括header的解析等
 * @auth chenjinsheng@baidu.com
 * @date 2014/04/01
 *
 */
class InputProcess {
    public $_data = array();
    
    public function get_ui_input($raw_data) {
        if (false === $raw_data) { // fail to read post data
            $status = $GLOBALS ['STATUS_CODE'] ['READ_FAIL'];
            throw new Exception($GLOBALS ['STATUS_MSG'] [$status], $status);
        }
        $raw_data_size = strlen($raw_data);
        if ($raw_data_size <= 0) {
            $status = $GLOBALS ['STATUS_CODE'] ['READ_FAIL'];
            throw new Exception($GLOBALS ['STATUS_MSG'] [$status] . ", raw data is empty", $status);
        }
        $GLOBALS ['logArr'] ['raw_data_size'] = $raw_data_size;
        // unpack post data from request
        $data = mc_pack_pack2array($raw_data);
        if (false === $data) {
            $status = $GLOBALS ['STATUS_CODE'] ['UNPACK_FAIL'];
            throw new Exception($GLOBALS ['STATUS_MSG'] [$status] . ", raw pack:" . urlencode($raw_data), $status);
        }

        return $data;
    }
    // 取header中的字段
    public function get_header($server) {
        $arrHeaders = array();
        if (empty($server)) {
            return $arrHeaders;
        }
        foreach ($server as $key => $value) {
            if ('HTTP_' == substr($key, 0, 5)) {
                $arrHeaders [str_replace('_', '-', substr($key, 5))] = $value;
            }
        }
        return $arrHeaders;
    }
    // 兼容代码
    public function compat_header($arrHeader) {
        $OldHttpHeader = array("TEMPLATESWITCH", "CONTROLPLATFORM", "ISPASSPORTUSERLOGIN", "PASSPORTENCODING", "PASSPORTUSERBDSTOKEN",
            "CONTROLTYPE", "CONTROLTEMPLATENAME", "CONTROLTEMPLATETYPE", "DATASESSIONDATA", "DATAOUTPUTENCODE", "DATAPERSONALDATA",
            "DATAURLCONFIGQID");
        
        foreach ($arrHeader as $key => $value) {
            if (in_array($key, $OldHttpHeader)) {
                $arrHeader['PS-' . $key] = $value;
            }
        }
        return $arrHeader;
    }
    // 转码部分字段 
    public function decode_header($arrHeader) {
        if($arrHeader['PS-HEADERENCODE']!='1') {
            return $arrHeader;
        }
        //部分字段需要urlencode之后传输，否则传递到ui-nginx解析header失败
        $arrFields_encode = array(
                'PS-WORDNOSYNTAX',
                'PS-QUERYWORD',
                'PS-QUERYWORDBAK',
                'PS-WORDNOSYNTAXENCODED',
                'PS-OTHERRESULTQUERY',
                'PS-PREQUERYWORD',
                'PS-WORDENC',
                'PS-ORIWORDENC',
                'PS-WORDNOPUNC',
                'PS-EXTRASTR',
                'PS-PQUERYMAP-NOPUNC',
                'PS-PQUERYMAP-NOPUNCENCODED',
                'PS-PQUERYMAP-SYNTAX',
                'PS-PQUERYMAP-SYNTAXENCODED',
                'PS-PQUERYMAP-UBS',
                'PS-PURLCONFIG-WORD',
                'PS-LONGQUERY',
                'PS-RAW-WORD',
                'PS-SITENAME',
                'PS-PASSPORTENCODING',
                'PS-PASSPORTUSERBDSTOKEN',
                'PS-PASSPORTUSERAGENTNAMEFULL',
                'PS-DATASESSIONDATA',
                'PS-DATAPERSONALDATA'
        );
        
        foreach ($arrFields_encode as $field) {
            if (isset($arrHeader[$field.'-ENCODE'])) {
                $arrHeader[$field] = urldecode($arrHeader[$field.'-ENCODE']);
            }
        }
        return $arrHeader;
    }
    
    //解析header中传入的session数据，对中文进行转码
    public function get_headersession($arrHeader) {
        $arrDataSessionData = array();
        if (empty($arrHeader ['PS-DATASESSIONDATA'])) {
            return $arrDataSessionData;
        }
        $arrDataSessionData = mc_pack_text2pack($arrHeader ['PS-DATASESSIONDATA']);
        $arrDataSessionData = empty($arrDataSessionData) ? $arrDataSessionData : mc_pack_pack2array($arrDataSessionData);
        if (!empty($arrDataSessionData)) {
            $strEncoding = empty($arrDataSessionData ['encoding']) ? 'gbk' : trim($arrDataSessionData ['encoding']);
            $strUname = iconv($strEncoding, 'utf-8', $arrDataSessionData ['uname']);
            $strDisplayName = iconv($strEncoding, 'utf-8', $arrDataSessionData ['displayname']);
            $arrDataSessionData ['uname'] = empty($strUname) ? '' : $strUname;
            $arrDataSessionData ['displayname'] = empty($strDisplayName) ? '' : $strDisplayName;
        } else {
            $status = $GLOBALS ['STATUS_CODE'] ['UNPACK_FAIL'];
            CLog::warning($GLOBALS ['STATUS_MSG'] [$status] . ",sessiondata raw pack:" . urlencode($arrHeader ['PS-DATASESSIONDATA']), $status, $GLOBALS ['logArr']);
        }
        return $arrDataSessionData;
    }
    
    // get pUrlConfig info from nginx
    public function get_urlconfig($arrHeader, $arrGet) {
        $arrUrlConfig = array(
            'lm' => '',
            'usm' => '',
            'cid' => '',
            'pn' => '',
            'rn' => '',
            'si' => '',
            'tn' => '',
            'z_type' => '',
            'ch' => '',
            'cl' => '',
            'intrSid' => '',
            'ct' => '',
            'f' => '',
            'ver' => '',
            'sts' => '',
            'ie' => 'utf-8',
            'z' => '',
            'qid' => '',
            'ck_seq'=> '0',
            'bd_ck'=>'1',
        );
        if (!empty($arrGet)) {
            foreach ($arrGet as $key => $value) {
                if (strlen($value) != 0){
                    $arrUrlConfig [$key] = $value;
                }
            }
        }
        
        //设置urlconfig中的默认值
        $arrUrlConfig['cid'] = '0';
        $arrUrlConfig['lm'] = empty($arrGet['lm']) ? '0' : $arrGet['lm'];
        $arrUrlConfig['lm'] = (intval($arrUrlConfig['lm']) < 0) ? '0' : $arrUrlConfig['lm'];
        $arrUrlConfig['si'] = empty($arrHeader['PS-SITENAME']) ? '' : $arrHeader['PS-SITENAME'];
        $arrUrlConfig['rn'] = empty($arrHeader['PS-RESNUM']) ? '' : $arrHeader['PS-RESNUM'];
        $arrUrlConfig['tn'] = empty($arrHeader['PS-ORIACCOUNTNAME']) ? $arrGet['tn'] : $arrHeader['PS-ORIACCOUNTNAME'];
        $arrUrlConfig['ie'] = empty($arrHeader['PS-INPUTENCODE']) ? '' : $arrHeader['PS-INPUTENCODE'];
        $arrUrlConfig['z_type'] = empty($arrHeader['PS-BEFOREURL'][0]) ? '0' : $arrHeader['PS-BEFOREURL'][0];
        $arrUrlConfig['z'] = empty($arrHeader['PS-BEFOREURL'][1]) ? '' : $arrHeader['PS-BEFOREURL'][1];
        $arrUrlConfig['cl'] = !isset($arrHeader['PS-CLUSTERMOD']) ? '' : $arrHeader['PS-CLUSTERMOD'];
        $arrUrlConfig['f'] = empty($arrHeader['PS-COMEFROM']) ? '0' : $arrHeader['PS-COMEFROM'];
        $arrUrlConfig['pn'] = empty($arrHeader['PS-PAGENUM']) ? '0' : $arrHeader['PS-PAGENUM'];
        $arrUrlConfig['ver'] = empty($arrHeader['PS-VER-TYPE']) ? '0' : $arrHeader['PS-VER-TYPE'];
        $arrUrlConfig['ct'] = empty($arrHeader['PS-ORIGINCODETYPE']) ? '0' : $arrHeader['PS-ORIGINCODETYPE'];
        $arrUrlConfig['ct'] = strval($arrUrlConfig['ct'] & (~(DICT_SEARCH_BIT | MON_BIT | NEWS_SEARCH_BIT | BAIDU_REFER_BIT)) );
        $arrUrlConfig['word'] = (isset($arrGet['word'])) ? $arrGet['word'] : '  ';
        if(!Util::isUTF8($arrUrlConfig['word'] )){
            $arrUrlConfig['word'] = iconv("GBK", "UTF-8//IGNORE", $arrUrlConfig['word']);
        }
        if( !empty($arrHeader['PS-PURLCONFIG-WORD']) )
        {
            $arrUrlConfig['word'] = $arrHeader['PS-PURLCONFIG-WORD'];
        }
        if(!empty($arrGet['oq'])) {
           $arrUrlConfig['oq'] =  $arrGet['oq'];
        }
        if(!empty($arrUrlConfig['oq']) && !Util::isUTF8($arrUrlConfig['oq'])){
            $arrUrlConfig['oq'] = iconv("GBK", "UTF-8//IGNORE", $arrUrlConfig['oq']);
        }
        $arrUrlConfig['sid'] = empty($arrHeader['PS-SAMPLINGID']) ? '' : $arrHeader['PS-SAMPLINGID'];
    
        if (!isset($arrHeader['PS-PQUERYMAP-FT'])) {
            if (isset($arrUrlConfig['ft'])) {
                unset($arrUrlConfig['ft']);
            }
        } else {
            $arrUrlConfig['ft'] = $arrHeader['PS-PQUERYMAP-FT'];
        }
    
        if (!empty($arrHeader['PS-DATAURLCONFIGQID'])) {
            $arrUrlConfig['qid'] = $arrHeader['PS-DATAURLCONFIGQID'];
            if ($arrUrlConfig['qid'][0] == '0' && ($arrUrlConfig['qid'][1] == 'x' || $arrUrlConfig['qid'][1] == 'X'))
            {
                $arrUrlConfig['qid'] = substr($arrUrlConfig['qid'], 2);
            }
        }
        return $arrUrlConfig;
    }
    // get uiControl info
    public function get_uicontrol($arrHeader, $arrUrlConfig) {
        $arrControl = array();
        // confused
        if (isset($arrHeader['PS-TEMPLATESWITCH']) && $arrHeader['PS-TEMPLATESWITCH'] == 2) {
            $arrControl['oriAccountName'] = $arrUrlConfig['tn'];
            $arrControl['oriTplName'] = "baidu";
        }
        //

        $arrUIControlFields = array(
            'type' => 'www',
            'templateName' => 'baidu',
            'templateType' => 'baidu',
            'templateSwitch' => 2,
            'language' => 'zh-CN',
            'platform' => 'pc',
            'oriAccountName' => 'baidu',
            'oriTplName' => 'baidu'
        );
    
        foreach ($arrUIControlFields as $field => $defValue) {
            $strKey = 'PS-' . strtoupper($field);
    
            if (empty($arrHeader[$strKey]) || strlen($arrHeader[$strKey]) == 0) {
                $arrControl[$field] = $defValue;
            } else {
                $arrControl[$field] = $arrHeader[$strKey];
            }
        }
    
        $arrControl['encKeyStr'] = $GLOBALS['ENC_KEY_STR'];
        $arrControl['maxEncWarningLen'] = intval($GLOBALS['MAX_ENC_WARNING_LEN']);
        $arrControl['maxRandomStrLen'] = intval($GLOBALS['MAX_RANDOM_STR_LEN']);
    
        //结果页
        if ($arrHeader ['PS-TEMPLATESWITCH'] == 1) {
            $arrControl['isNginxMainPage'] = 2;
        } else {
            //首页
            $arrControl['isNginxMainPage'] = 1;
        }
    
        $arrControl['type'] = empty($arrHeader ['PS-CONTROLTYPE']) ? 'www' : trim($arrHeader ['PS-CONTROLTYPE']);
        $arrControl['templateName'] = empty($arrHeader ['PS-CONTROLTEMPLATENAME']) ? 'baidu' : trim($arrHeader ['PS-CONTROLTEMPLATENAME']);
        $arrControl['templateType'] = empty($arrHeader ['PS-CONTROLTEMPLATETYPE']) ? 'baidu' : trim($arrHeader ['PS-CONTROLTEMPLATETYPE']);
        $arrControl['templateSwitch'] = intval($arrHeader ['PS-TEMPLATESWITCH']);
        $arrControl['platform'] = empty($arrHeader ['PS-CONTROLPLATFORM']) ? 'pc' : trim($arrHeader ['PS-CONTROLPLATFORM']);
        if($arrHeader['PS-INTERFLAG'] == 1){
            $arrControl['language'] = empty($arrHeader ['PS-INTERLANGUAGE']) ? $GLOBALS['DEFAULT_INTER_LANGUAGE'] : trim($arrHeader ['PS-INTERLANGUAGE']);
            $arrControl['queryLang'] = isset($arrHeader ['PS-QUERYLANG']) ? intval($arrHeader ['PS-QUERYLANG']) : 0;
        }else{
            $arrControl['language'] = empty($arrHeader ['PS-CONTROLLANGUAGE']) ? $GLOBALS['DEFAULT_LANGUAGE_zh'] : trim($arrHeader ['PS-CONTROLLANGUAGE']);
            $arrControl['queryLang'] = empty($arrHeader ['PS-QUERYLANG']) ? NULL : $arrHeader ['PS-QUERYLANG'];
        }
        
        return $arrControl;
    }
    
};
