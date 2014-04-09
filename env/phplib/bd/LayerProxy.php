<?php
/***************************************************************************
 *
 * Copyright (c) 2010 Baidu.com, Inc. All Rights Reserved
 * $Id$:ApiProxy.php,2010/05/10 15:21:38
 *
 **************************************************************************/



/**
 * @file LayerProxy.php
 * @author huqingping(huqingping@baidu.com)
 * @date 2010/05/10 15:21:38
 * @version 1.0
 * @brief
 *
 **/

//需要定义APP_ROOT来标示应用模块代码位置
final class Bd_LayerProxy 
{
	private $caller = null;
	private static $conf =	array();

	public static $is_ut = false;
	public static $ut_proxy_arr = array();

	private function __construct(IProxy $proxy)
	{
		$this->caller = $proxy;
	}

	static function init($conf)
	{
		self::$conf = $conf;
	}

	static function getProxy($mod,$param=null)
	{
		if (self::$is_ut) {
			return self::$ut_proxy_arr[$mod];  
		}
		$proxy = new Bd_Layerproxy_PHPProxy($mod);
		$proxy->init(self::$conf, $param);
		$api = new Bd_LayerProxy($proxy);
		return $api;
	}

	static function registerProxy($key, $obj) {
		if (!$key) {
			return false;
		}
		self::$ut_proxy_arr[$key] = $obj;

		return true;
	}

	static function clearProxy() {
		self::$ut_proxy_arr = array();	
	}

	function __call($name,$args)
	{
		try {
			$ret = $this->caller->call($name,$args);
			return $ret;
		}catch(Exception $ex) {
			throw $ex;
		}
	}
}

/* vim: set ts=4 sw=4 sts=4 tw=100 noet: */
