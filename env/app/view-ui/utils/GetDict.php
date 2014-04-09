<?php
/**
* GetDict
* ningbaofeng@baidu.com
* 获取 tpl_time.php 并行渲染需要模板时间
*/
class GetDict {
        private static $Dict ;
	
        public function init($tplTimeDictIncludeFile) {
		if (file_exists("$tplTimeDictIncludeFile")) {
	                require $tplTimeDictIncludeFile;
                        if (! isset ( $arrDictTplTime ) || empty ( $arrDictTplTime ) || ! is_array ( $arrDictTplTime )) {
                        	CLog::warning ( "get multi_render tplname dict is wrong, require tpl time err!" );
                        	return false;
	                }
			if (empty ( self::$Dict )) {
		                self::$Dict=$arrDictTplTime;
        		        return true;
		        }
		} else {
		     	self::$Dict=array (); 
			CLog::warning ( "get multi_render tplname dict is wrong, dict[$tplTimeDictIncludeFile] is not exist!" );
		        return false;
		}
        }
	//获取模板渲染时间
        public function getValueFromDict($dictTplName) {
		return self::$Dict[$dictTplName];
        }

}
?>
