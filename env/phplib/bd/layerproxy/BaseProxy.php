<?php
/***************************************************************************
 * 
 * Copyright (c) 2010 Baidu.com, Inc. All Rights Reserved
 * $Id$:BaseProxy.php,2010/05/28 10:34:52 
 * 
 **************************************************************************/
 
 
 
/**
 * @file BaseProxy.php
 * @author huqingping(huqingping@baidu.com)
 * @date 2010/05/28 10:34:52
 * @version 1.0 
 * @brief 
 *  
 **/

interface IProxy 
{
	function getMod();
	function init($conf,$params);
	function call($name,$args);
}

abstract class Bd_Layerproxy_BaseProxy implements IProxy
{
	private $mod = null;

	function __construct($mod)
	{
		$this->mod = $mod;
	}
	//$params为目标类构造函数参数
	//对HTTPRPC/PHP有效
	function init($conf,$params) {}
	function call($name,$args) {return null;}

	function getMod()
	{
		return $this->mod;
	}
}

/*
 * Local variables:
 * tab-width: 4
 * c-basic-offset: 4
 * End:
 * vim600: noet sw=4 ts=4 fdm=marker
 * vim<600: noet sw=4 ts=4
 */
?>
