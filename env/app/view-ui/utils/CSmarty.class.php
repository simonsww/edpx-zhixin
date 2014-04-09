<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/
if (!defined('SMARTY_RESOURCE_CHAR_SET')) {
    define('SMARTY_RESOURCE_CHAR_SET', 'UTF-8');
}


/**
 *
 *
 * @file CSmarty.class.php
 * @package Smarty
 * @author liyudong@baidu.com
 * @date 2011-08-02 11:50
 */
/**
 * exception handler
 * @param exception
 * @return
 */
function template_exception_handler($exception) {
    $logStr  = $exception->getTraceAsString() . "\n" . $exception->getMessage() . "\n";
    $logStr .= "[file]:" . $exception->getFile() . "\n";
    $logStr .= "[line]:" . $exception->getLine() . "\n";

    $logArr['exception_trace'] =  urlencode($exception->getTraceAsString());
    $logArr['exception_message'] =  urlencode($exception->getMessage());
    $logArr['exception_file'] =  $exception->getFile();
    $logArr['exception_line'] =  $exception->getLine();


    CSmarty::addError($logArr);


}

/**
 * error handler
 * @param code
 * @param message 
 * @param file 
 * @param line
 * @return
 */
function template_error_handler($code, $message, $file, $line) { 
    $logStr  = "[error code]:" . $code . "\n";
    $logStr .= "[message]:" . $message . "\n";
    $logStr .= "[file]:" . $file . "\n";
    $logStr .= "[line]:" . $line . "\n";

    $logArr['error_code'] =  $code;
    $logArr['error_message'] =  urlencode($message);
    $logArr['error_file'] =  $file;
    $logArr['error_line'] =  $line;

    CSmarty::addError($logArr);
}


class CSmarty
{
    /**
     * all types of smarty object
     * @var array
     */
    protected static $instances = NULL;
    protected static $config = array('platform'=>"", 'type'=>"", 'language'=>"");
    private $_smarty = NULL;
    /**
     * template language
     * @var string
     */
    private $_language = "";
    /**
     * template type
     * @var string
     */
    private $_type = "";
    /**
     * platform
     * @var string
     */
    private $_platform = "";
    /**
    /**
     * page dir
     * @var string
     */
    private $_page_dir = "";
    /**
     * widget dir
     * @var string
     */
    private $_widget_dir = "";
    /**
     *  hilight word
     * @var string
     */
    private static $_hi_word = "";
    /**
     * hilight info
     * @var array
     */
    private static $_hilight_info = NULL;
    /**
     * config
     * @var array
     */
    private static $_conf = NULL;
    /**
     * render error
     * @var array
     */
    private static $_errors = array();
    
    /**
     * user query info
     * @var array
     */
    private static $_queryInfo = NULL;
    
    /**
     * template config info
     * @var array
     */
    private static $_templateConfig = NULL;
    
    /**
     * encryptUrl 0/1
     * @var int
     */
    private static $_URLEncryption = 1;
    
   
   /**
    * encryptUrl prefix string
    * @var string
    */ 
    private static $_encryptionPrefix = "";
    /**
     * encryptUrl key string
     * @var string
     */
    private static $_encKeyStr = "";
    
    private static $_encIvecStr = "";
    /**
     * encryptUrl random string length
     * @var long
     */
    private static $_maxRandomStrLen = 0;
    
    /**
     * encryptUrl warning url length
     * @var log
     */
    private static $_maxEncWarningLen = 0;
    
    /**
     * encryptUrl enc url max length
     * @var long
     */
    private static $_urlEncMaxLen = 0;
    
    /**
     * encryptUrl  key seed
     * @var long
     */
    private static $_randState = 0;
    
    /**
     * encryptUrl flag: 0(old version)、1(new version)
     * @var long
     */
    private static $_flag = 1;
    
   
    /**
     * result_render statistics
     */
    private static $_struct_tpl_render_num_count = 0;
    private static $_struct_tpl_render_time_count = 0;
    
    private static $_result_tpl_render_tm = array();

    public static function getStructTplRenderNumCount() {
    	return self::$_struct_tpl_render_num_count;
    }
    
    public static function addStructTplRenderNumCount($struct_tpl_render_num_count = 1) {
    	self::$_struct_tpl_render_num_count += $struct_tpl_render_num_count;
    }
    
    public static function getStructTplRenderTimeCount() {
    	return self::$_struct_tpl_render_time_count;
    }
    
    public static function addStructTplRenderTimeCount($struct_tpl_render_time_count) {
    	self::$_struct_tpl_render_time_count += $struct_tpl_render_time_count;
    }
    
    public static function recordResultTplRenderTime($tm) {
    	self::$_result_tpl_render_tm[] = $tm;
    }
    
    public static function getResultTplRenderTime() {
    	return self::$_result_tpl_render_tm;
    }
 
    /**
     * get instance of smarty, according to template type
     * @param string [in] type
     */
    public static function getInstance($config)
    {
        if( !defined('VUI_TEMPLATE_PATH') || !defined('VUI_TEMPLATE_PLUGIN_PATH') ||
                //!defined('VUI_TEMPLATE_PLATFORM') ||
                //!defined('VUI_TEMPLATE_LANGUAGE') || 
                !defined('VUI_TEMPLATE_ALADDIN_TEMPLATE_TYPE') ) {
            CSmarty::addError("VUI_TEMPLATE_PATH or " . 
                "VUI_TEMPLATE_PLUGIN_PATH or " . 
                //"VUI_TEMPLATE_LANGUAGE or " .
                //"VUI_TEMPLATE_PLATFORM or " .
                "VUI_TEMPLATE_ALADDIN_TEMPLATE_TYPE is not defined");
            return false;
        }
        if( empty($config['platform']) ) {
            CSmarty::addError("platform is empty");
            return false;
        }
        if( empty($config['language']) ) {
            CSmarty::addError("language is empty");
            return false;
        }
        if( empty($config['type']) ) {
            CSmarty::addError("type is empty");
            return false;
        }
        $key = $config['type'];
        if(self::$instances[$key] == NULL){
            self::$instances[$key] = new CSmarty($config);
        }
        return self::$instances[$key];
    }
    /**
     * store render error
     * @param string [in] error
     */
    public static function addError($error) {
        self::$_errors[] = $error;
    }
    /**
     * get render error
     * @return array
     */
    public static function getError() {
        return self::$_errors; 
    }
    /**
     * clear render error
     */
    public static function clearError() {
        self::$_errors = array(); 
    }
    /**
     * set hilight info
     * @param array hi_info
     */
    public static function setHilightInfo($hi_info){
        self::$_hilight_info = $hi_info;
    }
    /**
     * get hilight info
     * @return array 
     */
    public static function getHilightInfo() {
        return self::$_hilight_info;
    }
    public static function getConf() {
        return self::$_conf;
    }
    public static function setConf($conf) {
        self::$_conf = $conf;
    }
    public static function getHiWord() {
        return self::$_hi_word;
    }
    
    public static function getQueryInfo(){
    	return self::$_queryInfo;
    }
    
    public static function setQueryInfo($queryInfo){
    	self::$_queryInfo = $queryInfo;
    }
    
    public static function getTemplateConfig(){
    	return self::$_templateConfig;
    }
    
    public static function setTemplateConfig($templateConfig){
    	self::$_templateConfig = $templateConfig;
    }
    
    public static function setURLEncryption($URLEncryption){
    	self::$_URLEncryption = $URLEncryption;
    }
    public static function getURLEncryption(){
    	return self::$_URLEncryption;
    }
    
    public static function setEncryptionPrefix($encryptionPrefix){
    	self::$_encryptionPrefix = $encryptionPrefix;
    }
    public static function getEncryptionPrefix(){
    	return self::$_encryptionPrefix;
    }
    
    public static function setEncKeyStr($encKeyStr){
    	self::$_encKeyStr = $encKeyStr;
    }
    public static function getEncKeyStr(){
    	return self::$_encKeyStr;
    }
    public static function setEncIvecStr($encIvecStr){
    	self::$_encIvecStr = $encIvecStr;
    }
    public static function getEncIvecStr(){
    	return self::$_encIvecStr;
    }
    public static function setMaxRandomStrLen($maxRandomStrLen){
    	self::$_maxRandomStrLen = $maxRandomStrLen;
    }
    public static function getMaxRandomStrLen(){
    	return self::$_maxRandomStrLen;
    }
    public static function setMaxEncWarningLen( $maxEncWarningLen ) {
    	self::$_maxEncWarningLen = $maxEncWarningLen;
    }
    public static function getMaxEncWarningLen(){
    	return self::$_maxEncWarningLen;
    }
    public static function setUrlEncMaxLen($urlEncMaxLen ) {
    	self::$_urlEncMaxLen = $urlEncMaxLen;
    }
    public static function getUrlEncMaxLen(){
    	return self::$_urlEncMaxLen;
    }
    
    public static function setRandState($randState){
    	self::$_randState = $randState;
    }
    public static function getRandState(){
    	return self::$_randState;
    }
    public static function setFlag($flag){
    	self::$_flag = $flag;
    }
    public static function getFlag(){
    	return self::$_flag;
    }
    public static function getTplFolderPath($template_path, $platform, $language, $type) {
        $path = $template_path . "/view/" . $platform . "/" . $language . "/page/" . $type . "/" ;
        return $path;
    }
    public static function getTplPath($type, $template_name, $templateSwitch, $tempalteVersion='')
    {
    	$tpl_path = "$template_name/page.tpl";
    	switch( $templateSwitch ) {
    		case 0:
    			$tpl_path = "$template_name/none.tpl";
                if(!empty($tempalteVersion)) {
                    $tpl_path = "$template_name/{$tempalteVersion}";
                }
    			break;
    		case 1:
    			$tpl_path = "$template_name/page.tpl";
    			// 假如参数中选择了版本并且是普通页面模板，使用带版本的文件名
    			if (!empty($tempalteVersion)) {
    				$tpl_path = "$template_name/{$tempalteVersion}";
    			}
    			break;
    		case 2:
    			$tpl_path = "$template_name/index.tpl";
    			if (!empty($tempalteVersion)) {
    				$tpl_path = "$template_name/{$tempalteVersion}";
    			}
    			break;
    		default:
    			$tpl_path = "$template_name/page.tpl";
    			break;
    	}
        
        return $tpl_path;
    }
    // 头部css、尾部js合并的文件路径
    public static function getHeadCssFootJsPath($template_path, $platform, $language, $type, $template_name) {
        // 改个名字
    	return self::getTplFolderPath($template_path, $platform, $language, $type)."/$template_name/res.php";
    }
    // 模板公用的CSS组件头文件路径
    public static function getCommonUiIncludePath($template_path, $platform, $language, $type) {
        return self::getTplFolderPath($template_path, $platform, $language, $type)."/../../common/cssui.php";
    }
    
    public static function getWidgetPath($type, $widget_name)
    {
        $tpl_path = "{$widget_name}/{$widget_name}.tpl";
        return $tpl_path;
    }
    public static function templateExists($template_path, $platform, $language, 
                                $type, $template_name, $templateSwitch, $templateVersion='') {
        $path = self::getTplFolderPath($template_path, $platform, $language, $type) .
                self::getTplPath($type, $template_name, $templateSwitch, $templateVersion);
        return file_exists($path);
    }

    /*
     * for test, turn smarty obj to array
     * add by liujie10
     */
     private function getThisSmarty($obj) {
        $_array = is_object($obj) ? get_object_vars($obj) : $obj;
        foreach ($_array as $key => $value) {
            if ($key != "_smarty" && get_class($value) == "Smarty") {
                $value = "*recursion*";
            }
            $value = (is_array($value) || is_object($value)) ? self::getThisSmarty($value) : $value;
            $array[$key] = $value;
        }
        return $array;
    }
    
    /**
     * smarty constructor
     * @params type
     */
    function __construct($config)
    {
        $this->_type = $config['type'];
        $this->_language = $config['language'];
        $this->_platform = $config['platform'];

        $root_path = VUI_TEMPLATE_PATH . "/view/{$this->_platform}/{$this->_language}";
        $page_path = $root_path . "/page/{$this->_type}/"; 
        $widget_path = $root_path . "/"; 
        $this->_page_dir = $page_path;
        $this->_widget_dir = $widget_path;
        $this->_smarty = new Smarty();
        $this->_smarty->template_dir = array();
        $this->_smarty->template_dir[] = realpath($page_path);
        if( file_exists($widget_path) ) {
            $this->_smarty->template_dir[] = realpath($widget_path);
        }

        $this->_smarty->compile_dir = VUI_TEMPLATE_PATH . "/compile/{$this->_platform}/{$this->_language}/{$this->_type}/";

        $this->_smarty->caching = 0;
        $this->_smarty->cache_lifetime = 0;
        $this->_smarty->cache_dir = VUI_TEMPLATE_PATH . "/cache/"; 

        $this->_smarty->plugins_dir[] = VUI_TEMPLATE_PLUGIN_PATH;
        $this->_smarty->plugins_dir[] = VUI_TEMPLATE_PATH . "/plugins/";

        //for global video, use FIS 2.0
        $this->_smarty->plugins_dir[] = VUI_TEMPLATE_PATH . "/fis2_plugins/";
        $this->_smarty->config_dir = (array)$this->_smarty->config_dir;
        $this->_smarty->config_dir[]  = VUI_TEMPLATE_PATH . "/fis2_config/";

		//$intConf_compileCheck=Util::getConf ( '/smarty', 'group1/compile_check' );
        $intConf_compileCheck = $GLOBALS['globalConf']['compileCheck'];
        $this->_smarty->compile_check = ($intConf_compileCheck == 1);

        $this->_smarty->left_delimiter  =  "{%";
        $this->_smarty->right_delimiter =  "%}";

        $this->_smarty->debugging = false;
    }
    function set_template_dir($path)
    {
        $this->_smarty->template_dir = realpath($path);
    }
    
    /**
     * do rendering
     * @params array data
     * @params string template_name
     * @params int templateSwitch
     */
    function do_render($data, $template_name, $templateSwitch=1, $templateVersion='')
    {
        $this->_errors = array();
        $tpl_path = self::getTplPath($this->_type, $template_name, $templateSwitch, $templateVersion); 
        if( !$this->_smarty->templateExists($tpl_path) ) {
        	$tpl_not_found = true;
        	//首页兼容,如果找不到首页,就用baidu模板下的首页
        	if( $templateSwitch == 2 ) {
        		$template_name = $GLOBALS['DEFAULT_TEMPLATE_NAME'];
                $tpl_path = self::getTplPath($this->_type, $template_name, $templateSwitch);
                if( !$this->_smarty->templateExists($tpl_path) ){
        	        //首页兼容,如果找不到首页,就用baidu type下的baidu模板下的首页
                    $this->_type = $GLOBALS['DEFAULT_TEMPLATE_TYPE'];
                    $page_path = self::getTplFolderPath(VUI_TEMPLATE_PATH,$this->_platform,$this->_language,$this->_type);
                    $this->set_template_dir(realpath($page_path));
                    $tpl_path = self::getTplPath($this->_type, $template_name, $templateSwitch);
                }
        		if( $this->_smarty->templateExists($tpl_path) ) {
        		    $tpl_not_found = false;
        		}
        	}
        	if( $tpl_not_found == true ) {
                $td_path = $this->_page_dir . ":" . $this->_widget_dir . ":";
                CSmarty::addError("template not found :{$td_path}/{$tpl_path}");
                return false;
        	}
        }
        /**
         * set exception/error handler
         */
        $objTplLog=TplLog::getInstance();
        //set_exception_handler("template_exception_handler");
        //set_error_handler("template_error_handler", error_reporting());
        $this->_smarty->clearAllAssign();
        $this->_smarty->assign('_TEMPLATE_TYPE', $this->_type);
        $tplData_tpl_path = $this->_platform.'/'.$this->_language.'/'.$this->_type.'/'. $tpl_path;
        if( $this->_type == VUI_TEMPLATE_ALADDIN_TEMPLATE_TYPE ||
            $this->_type == $GLOBALS['STRUCT_TEMPLATE_TYPE'] || 
        		$this->_type == $GLOBALS['ECOM_TEMPLATE_TYPE']) {
            self::$_hi_word = $data['strategy']['hilightWord'];
            foreach($data['resultData'] as $k => $v) {
                $this->_smarty->assign($k, $v);
            }
        }else {
            $this->_smarty->assign('tplData', $data);
            $objTplLog->addNewTplData($tpl_path,$this->getThisSmarty($this) ,$data);
        }
        try {
            $result = $this->_smarty->fetch($tpl_path);
        }catch(Exception $e) {
            CSmarty::addError("fail to render template :{$e->getMessage()}");
            return false;
        }
        $this->_smarty->clearAllAssign();
        return $result;
    }
    public function clearCompiledTemplate() 
    {
        $this->_smarty->clearCompiledTemplate();
    }
    public function compileAllTemplates()
    {
        $this->_smarty->compileAllTemplates();
    }
    
}














/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
