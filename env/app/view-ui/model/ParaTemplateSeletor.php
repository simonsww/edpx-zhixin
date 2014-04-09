<?php

class ParaTemplateSelector {
	private static $instance = null;
	public $arrParaTemplateSelectorConf;
	
	public static function getInstance(){
		if (self::$instance === null) {
			self::$instance = new ParaTemplateSelector();
		}
		return self::$instance;
	}
	
	private function __construct(){
		$this->arrParaTemplateSelectorConf = Util::getConf ( '/template_choose', 'template_choose' );
	}
	/**
	 * 
	 * @param unknown_type $intStatus  状态码
	 * @param unknown_type $intRewrite  是否要跳转到同步页
	 * @param unknown_type $intCloseTime  预查询的关闭时间，0为不关闭
	 */
	/**tongyao 2014_1_15_17_54
    根据传下来的tnp去选择相应的模板
    */
    public function getParaTempSelector(&$arrData) {
        if (empty($arrData) || !is_array($arrData)) {
            CLog::warning("tpl param select is wrong, param err!");
            return false;
        }
        if(!isset($_GET ['tnp'])){
            return false;
        }
        $arrControlInfo = &$arrData ['uiControl'];
        if ($arrControlInfo ['templateSwitch'] == 2) {
            $arrTnp = $this->arrParaTemplateSelectorConf['FRONT_PAGE_INDEX'];
        } else {
            $arrTnp = $this->arrParaTemplateSelectorConf['RESULT_PAGE_INDEX'];
        }
        if (!is_array($arrTnp) || empty($arrTnp)) {
            CLog::warning("template_choose.conf  is null");
            return false;
        }
        $strTempName = "";
        foreach ($arrTnp ['Contexted'] as $arrTemp) {
            if ($_GET ['tnp'] == $arrTemp ['tnp']) {
                $strTempName = $arrTemp ['value'];
                break;
            }
        }
        if (empty($strTempName)) {
            CLog::warning("get null TemplateName by tnp, please check template_choose.conf and tnp value");
            return false;
        }
        $oriTempName = $arrControlInfo ['templateName'];
        $arrControlInfo ['templateName'] = $strTempName;

        $bolTemDir = $this->checkTemplateConfig($arrData);
        if ($bolTemDir == false) {
            CLog::warning("focus on function checkTemplateConfig to find out why return false");
            $arrControlInfo ['templateName'] = $oriTempName;
            return false;
        }
        return true;
    }

    // 获取模板配置信息
    public  function checkTemplateConfig(&$arrData){

        require VUI_TEMPLATE_PATH . PHP_TEMPLATES;
        if (!isset($arrTplTypes)) {
            CLog::warning("tpl param select is wrong, require tpl type err!");
            return false;
        }

        $arrQueryInfo = &$arrData ['uiData'] ['queryInfo'];
        $arrControlInfo = &$arrData ['uiControl'];
        $arrUrlConfig = $arrQueryInfo ['pUrlConfig'];
        
        $strType = $arrTplTypes[$arrControlInfo ['templateName']]['type'];
        $arrPlatForm = $arrTplTypes[$arrControlInfo ['templateName']]['platform'];
 
        // 平台检查
        if (!in_array($arrControlInfo ['platform'], $arrPlatForm)) {
            CLog::warning("tpl param select is not matching");
            return false;
        }

        //dsp参数处理
        if (count($arrPlatForm) == 1 && strcasecmp($arrControlInfo ['platform'], "pad") == 0) {
            if (empty($arrData ['uiData'] ['queryInfo'] ['dspName'])) {
                $arrData ['uiData'] ['queryInfo'] ['dspName'] = "ipad";
                CLog::warning("dspName is not ipad when using pad template.");
            }
        }

        $strTplPath = CSmarty::getTplFolderPath(VUI_TEMPLATE_PATH, $arrControlInfo ['platform'], $arrControlInfo ['language'], $strType) . $arrControlInfo ['templateName'];

        if (!file_exists($strTplPath)) {
            return false;
        }
        
    	$strTplConfigPath = CSmarty::getTplFolderPath ( VUI_TEMPLATE_PATH, $arrControlInfo ['platform'], $arrControlInfo ['language'], $strType ) . $arrControlInfo ['templateName'] . '/' . $arrControlInfo ['templateName'] . '.cfg.php';
        if (! file_exists ( $strTplConfigPath )) {
            $strTplConfigPath = CSmarty::getTplFolderPath ( VUI_TEMPLATE_PATH, $arrControlInfo ['platform'], $arrControlInfo ['language'], $strType ) . $strType . '.cfg.php';
    	}
        if(! file_exists ( $strTplConfigPath )) {
            CLog::warning ( "tpl cfg is not existed, tplname : " . $strTplName );
            return false;
        }
        $arrData ['uiControl'] ['tplSamplingPath'] = $strTplConfigPath;
        $arrControlInfo ['templateType'] = $strType;
        return true;
    }


}
