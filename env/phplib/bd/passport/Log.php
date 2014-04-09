<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file	Bd/Passport/Log.php
 * @author	fanmengzhe(com@baidu.com)
 * @date	2011/05/23 21:49:14
 * @brief	Bd_Passport 日志库
 *  
 **/

/**
 * @brief   Bd_Passport 日志库
 * 			ODP 环境强制使用Bd_Log库打印日志;
			非ODP环境支持自定义日志回调函数。
 * @TODO    自定义回调
 */
class Bd_Passport_Log {
	protected static $_isInit	= false;
	/**
	 * log callback
	 */
  	protected static $_cbLogNotice  = 'trigger_error';
    protected static $_cbLogWarning = 'trigger_error';
    protected static $_cbLogDebug   = 'trigger_error';
    protected static $_cbLogFatal   = 'trigger_error';


	public static function notice($strLog, $errno) {
		if (!self::$_isInit) {
			self::_initLog();
		}

		if (self::$_cbLogFatal == 'trigger_error') {
			$strLog = "[Errno: $errno]". $strLog;
			$errno  = E_USER_NOTICE;
		}

		call_user_func_array(self::$_cbLogNotice, array($strLog, $errno));
	}

	public static function warning($strLog, $errno) {
		if (!self::$_isInit) {
			self::_initLog();
		}

		if (self::$_cbLogFatal == 'trigger_error') {
			$strLog = "[Errno: $errno]". $strLog;
			$errno  = E_USER_WARNING;
		}

		call_user_func_array(self::$_cbLogWarning, array($strLog, $errno));
	}

	public static function debug($strLog, $errno) {
		if (!self::$_isInit) {
			self::_initLog();
		}

		if (self::$_cbLogWarning == 'trigger_error') {
			$strLog = "[Errno: $errno]". $strLog;
			$errno  = E_USER_NOTICE;
		}

		call_user_func_array(self::$_cbLogWarning, array($strLog, $errno));
	}

	public static function fatal($strLog, $errno) {
		if (!self::$_isInit) {
			self::_initLog();
		}

		if (self::$_cbLogFatal == 'trigger_error') {
			$strLog = "[Errno: $errno]". $strLog;
			$errno  = E_USER_ERROR;
		}

		call_user_func_array(self::$_cbLogFatal, array($strLog, $errno));
	}

	protected static function _initLog() {
		if (defined('IS_ODP') && true === IS_ODP) {
			self::$_cbLogNotice		= array('Bd_Log', 'notice');
			self::$_cbLogWarning	= array('Bd_Log', 'warning'); 
			self::$_cbLogDebug		= array('Bd_Log', 'debug');
			self::$_cbLogFatal		= array('Bd_Log', 'fatal');
		} else {
			/*非ODP环境日志回调函数*/
		}
		self::$_isInit = true;
	}
}



/* vim: set expandtab ts=4 sw=4 sts=4 tw=100 */
?>
