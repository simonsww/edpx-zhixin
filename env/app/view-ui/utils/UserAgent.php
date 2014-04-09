<?php

class UserAgent {
	private static $_instance = null;
	private static $_exact_dict = array();
	private static $_rough_dict = array();
	
	protected function __construct($extract_ualist, $rough_ualist) {
		$this->loadExactly($extract_ualist);
		$this->loadRoughly($rough_ualist);
	}
	/**
	 * 加载精确的ua词典和字段匹配的ua词典
	 * @param string $extract_ualist
	 * @param string $rough_ualist
	 */
	public static function getInstance($extract_ualist='', $rough_ualist='') {
		if (self::$_instance === null) {
			self::$_instance = new UserAgent($extract_ualist, $rough_ualist);
		}
		return self::$_instance;
	}
	
	private function loadRoughly($ualist) {
		if (empty($ualist) || !file_exists($ualist)) {
			return false;
		}
		
		return true;
	}
	/**
	 * 精确的UA词典，每一行的第一项是完整ua字符串的md5值
	 * @param string $ualist（文件名）
	 * @return boolean
	 */
	private function loadExactly($ualist) {
		if (empty($ualist) || !file_exists($ualist)) {
			return false;
		}
		
		$arr = explode("\n", file_get_contents($ualist));
		// ua词典的字段可配置，利于扩展
		$arrFields = Bd_Conf::getConf('tpl_uaadaptation/UA_DICT_FIELDS');
		if (empty($arrFields)) {
			// 默认字段
			$arrFields = array('ua', 'os', 'os_version', 'vender', 'modal', 'browser', 'browser_version', 'resolution', 'measure');
		} else {
			$arrFields = array_keys($arrFields);
		}
		
		foreach ($arr as $line) {
			if (trim($line) === '') continue;
			
			$arrItem = array();
			$arrUA = @explode("\t", $line);
			if (!empty($arrUA)) {
				foreach ($arrUA as $k => $v) {
					$arrItem[$arrFields[$k]] = trim($v);
				}
			}
			$ua = array_shift($arrItem);
			self::$_exact_dict[$ua] = $arrItem;
		}
		return true;
	}
	/**
	 * 查询从UA能获取到的全部字段
	 * @param string $ua
	 * @return mixed
	 */
	public function getFieldsFromUA($ua) {
		$default = array();
        $id = md5($ua);
        // 精确词典
		$nua_pattern = '/Mozilla\/\S+ \((iPad); CPU OS (\S+) like Mac OS X\) AppleWebKit\/\S+ \(KHTML, like Gecko\) BaiduHD\/(\S+) Mobile\/\S+ Safari\/\S+/';
        if (isset(self::$_exact_dict[$id])) {
            return self::$_exact_dict[$id];
        }elseif(preg_match($nua_pattern,$ua,$output)){
                $default['os'] = 'iOS';
                $default['os_version'] = $output[2];
                $default['vendor'] = 'Apple';
                $default['modal'] = $output[1];
                $default['browser'] = 'BaiduHD';
                $default['browser_version'] = $output[3];
                $default['resolution'] = '2048x1536';
                $default['measure'] = '9.7';
        	return $default;
        }else{               
        	return $default;
		}
	}
}
