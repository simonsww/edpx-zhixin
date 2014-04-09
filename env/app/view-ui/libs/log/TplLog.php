<?php

/**
 * 收集tpl中的数据和打印
 * @author jiachunxin
 *
 */
class TplLog {

    private $strLogFile;
    private $bolSwitch;
    private $arrData = array();
    private $arrNewData = array();
    private static $instance = null;

    public static function getInstance() {
        if (empty(self::$instance)) {
            self::$instance = new TplLog ();
        }
        return self::$instance;
    }

    private function __construct() {
        $this->strLogFile = $GLOBALS ['TplLOG'] ['log_file'];
        $this->bolSwitch = $GLOBALS ['TplLOG'] ['log_switch'];
    }

    /**
     * 收集数据
     *
     * @param $strTpl unknown_type       	
     * @param $strKey unknown_type       	
     * @param $strValue unknown_type       	
     */
    public function addTplData($strTpl, $strKey, $strValue) {
        if ($this->bolSwitch) {
            $arr = array('tpl' => $strTpl, 'key' => $strKey, 'value' => $strValue);
            $this->arrData [] = $arr;
        }
    }

    public function addNewTplData($strTpl, $strKey, $strValue) {
        if ($this->bolSwitch) {
            $arr = array('tpl' => $strTpl, 'smarty' => $strKey, 'value' => $strValue);
            $this->arrNewData [] = $arr;
        }
    }

    public function log() {
        if ($this->bolSwitch == 1) {
            $strLogFile = VUI_LOG_PATH . '/' . $this->strLogFile;
            file_put_contents($strLogFile, json_encode($this->arrData), FILE_APPEND);
        } else if ($this->bolSwitch == 2) {
            $tplSign = md5($this->arrNewData[0]['value']['queryInfo']['urlParam']);
            $strLogFile = VUI_LOG_PATH . '/'.$tplSign.'_' . $this->strLogFile;
            $this->arrNewData[] = $GLOBALS;
            file_put_contents($strLogFile, serialize($this->arrNewData), FILE_APPEND);
        }
    }

    public function getTplData() {
        return $this->arrData;
    }

    public function setTplData($arrData) {
        if ($this->bolSwitch) {
            $this->arrData = $arrData;
        }
    }
}