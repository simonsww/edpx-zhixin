<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
/**
 * @file Bd/Passport/Wappass.php
 * @author fanmengzhe(com@baidu.com)
 * @date 2011/05/23 21:43:49
 * @brief 
 *  
 **/

/**
 * @brief	Bd_Passport Wappass服务交互实现
 */
class Bd_Passport_Wappass implements Bd_Passport_IError {
	
	protected static $_instance = null;
	
	protected static $_serv_ip	= null;
	protected static $_serv_port= 8000;
	protected static $_serv_ctimeout = null;
	protected static $_serv_rtimeout = null;
	protected static $_serv_wtimeout = null;
	

	protected static $_errno	= 0;
	protected static $_errmsg	= '';

	/** implemention of IError*/
	public function isError() {
		return self::$_errno === 0 ? false : true;
	}
	
	public function getCode() {
		return self::$_errno;
	}

	public function getMessage() {
		if (isset(self::$errmsgMap[self::$_errno])) {
			self::$_errmsg = self::$errmsgMap[self::$_errno];
		} else {
			self::$_errmsg = 'Unknown Error';
		}
		return self::$_errmsg;
	}

	
	protected function __construct() {
		if (!defined('LOG_ID')) {
			define('LOG_ID' , Bd_Passport_Util::getLogId());
		}
		
		if (!defined('CLIENT_IP')) {
			define('CLIENT_IP' , Bd_Passport_Util::getClientIp());
		}
	}
	
	public static function getInstance() {
		if (is_null(self::$_instance)) {
			self::$_instance = new self();
		} 

		return self::$_instance;
	}
	
	protected function _getServer($strServer) {
		$arrServConf = Bd_Passport_Conf::getConf('server');
		if (isset($arrServConf['cur_idc'])) {
			$cur_idc = $arrServConf['cur_idc'];
		} else {
			Bd_Passport_Log::warning("[Wappass][_getServer]cur_idc not exists", -1);
			return false;
		}       
		
		if (isset($arrServConf[$strServer])) {
			$port      = $arrServConf[$strServer]['service_port'];
			$timeout_c = $arrServConf[$strServer]['service_ctimeout'];
			$timeout_r = $arrServConf[$strServer]['service_rtimeout'];
			$timeout_w = $arrServConf[$strServer]['service_wtimeout'];
		}       

		$ip_cnt = count($arrServConf[$strServer][$cur_idc]);
		$ip_idx = rand() % $ip_cnt;
		$ip     = $arrServConf[$strServer][$cur_idc][$ip_idx]['ip'];

		$arrRet = array(
			'ip'    => $ip, 
			'port'  => $port,
			'timeout_c' => $timeout_c,
			'timeout_w' => $timeout_w,
			'timeout_r' => $timeout_r,
		);
		
		foreach($arrRet as $key => $val) {
			if (is_null($val)) {
				Bd_Passport_Log::warning("[Wappass][_getServer]$key not exists", -1);
				return false;
			}
		}
		return $arrRet;
	}
	
	public function getBDUSSBySSIDWithCURL($ssid) {
		$arrServer = $this->_getServer('wappass');
		if (!is_array($arrServer)) {
			return false;
		}

		$serv_ip	= $arrServer['ip'];
		$serv_port	= $arrServer['port'];
		$serv_ctime	= $arrServer['timeout_c'];
		$serv_rtime = $arrServer['timeout_r'];
	
		$url = "http://$serv_ip:$serv_port/passport/?get_sid&ssid=$ssid&plain=&version=2";

		$ch = curl_init();
		if (!(is_resource($ch))) {
			return false;
		}

		curl_setopt($ch, CURLOPT_URL,				$url);
		curl_setopt($ch, CURLOPT_HEADER,			0);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER,	1);
		curl_setopt($ch, CURLOPT_CONNECTTIMEOUT_MS, $serv_ctime);
		curl_setopt($ch, CURLOPT_TIMEOUT_MS,		$serv_rtime);

		$res = curl_exec($ch);
		curl_close($ch);

		if ($res == null) {
			self::$_errno = curl_errno($ch);
			self::$_errmsg = "[Wappass][get_sid]CURL $url failed. errmsg:".curl_error($ch);
			Bd_Passport_Log :: warning(self::$_errmsg, -1);
			return false;
		} else {
			$res = json_decode($res);
			if (!$res) {
				self::$_errno = -2;
				self::$_errmsg = "[Wappass][get_sid]Result json_decode failed.";
				Bd_Passport_Log :: warning(self::$_errmsg , -1);
				return false;
			}
			self::$_errno	= 0;
			self::$_errmsg	= '';
		}

		return $res;
	}

	public function getBDUSSBySSIDWithRAL($ssid) {
		ral_set_logid(LOG_ID);
		ral_set_pathinfo('passport/get_sid');
		ral_set_querystring("ssid=$ssid&plain=&version=2");
		$res = ral('wappass', 'get', array(), 1);
		if ($res != null) {
			$res = json_decode($res, true);
			self::$_errno	= (!$res) ? -1 : 0;
			self::$_errmsg	= (!$res) ? "[Wappass][get_sid]Result json_decode failed." : "";
			if (!$res) {
				Bd_Passport_Log :: warning(self::$_errmsg, -1);
			}
			return is_array($res) ? $res : false;
		} else {
			self::$_errno	= ral_get_errno();
			self::$_errmsg	= "[Wappass][get_sid]Talk with server failed. errmsg:".ral_get_error();
			Bd_Passport_Log :: warning(self::$_errmsg, -1);
			return false;
		}
	}
	
}



/* vim: set expandtab ts=4 sw=4 sts=4 tw=100 */
?>
