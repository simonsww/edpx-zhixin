<?php
/***************************************************************************
 *
 * Copyright (c) 2010 Baidu.com, Inc. All Rights Reserved
 * $Id$:PHPProxy.php,2010/05/10 16:00:31
 *
 **************************************************************************/



/**
 * @file PHPProxy.php
 * @author huqingping(huqingping@baidu.com)
 * @date 2010/05/10 16:00:31
 * @version 1.0
 * @brief
 *
 **/

class Bd_Layerproxy_PHPProxy extends Bd_Layerproxy_BaseProxy
{
	private $srcCaller = null;
	private $upperLayer = null;
	private $upperLayerIndex = 0;
	private $lowerLayer = null;
	private $hooker	    =  null;

	function __construct($mod)
	{
		parent::__construct($mod);
	}
		

	function init($conf,$params)
	{
		//hook name
		if(isset($conf['hook_name']))
		{
			if(!class_exists($conf['hook_name']))
			{
				throw new Exception("class {$conf['hook_name']} not exists in /conf/layerproxy.conf, check to init conf before use layerproxy");
			}
			$this->hooker = new $conf['hook_name']();
			if (!($this->hooker instanceof Bd_Layerproxy_IHook) ) {
				throw new Exception("class {$conf['hook_name']} must extends from Bd_Layerproxy_IHook.");
			}
		}else{
			$this->hooker = null;
		}

		$class = $this->getMod();
		$layers = $conf['layers'];
		if (empty($layers)) {
			throw new Exception("layers conf is empty in /conf/layerproxy.conf, check to init conf before use layerproxy");
		}

		//add api call allow/deny controll
		$arrT  = debug_backtrace();
		$owner_info = $arrT[2];
		$this->upperLayer = $owner_info['class'];

		if (is_null($this->upperLayer)) {
			throw new Exception("layerproxy must used in class {action | service_page | serivce_data | dao}");
		}
		$this->lowerLayer = $class;

		foreach($layers as $index => $layer) {
			if (preg_match("/$layer/", $owner_info['class'])) {//发起调用的class 
				$this->upperLayerIndex = $index;
				if(( !preg_match( "/{$layers[$index+1]}/", $class))) {
					//否则需要限制调用方类的开头合法性
					//TODO 修改错误号 
					throw new Exception("invalid call from {$owner_info['class']} to $class as /{$layers[$index+1]}/");
				}
			}
		}

		if (class_exists($class)) {//don't autoload
			if($this->hooker !== null) {
				$this->hooker->initHook($this->upperLayerIndex, $this->upperLayer, $this->lowerLayer);
			}
			$UseCache = Bd_Conf::getConf('layerproxy/UseCache');
			if($UseCache === 'true') {
				$this->srcCaller = new Saf_Cache_CacheProxy(new $class($params));
			} else {
				$this->srcCaller = new $class($params);
			}
		} else {
			throw new Exception('Bd_Layerproxy_PHPProxy class '.$class.' not exists');
		}
	}

	function call($name,$args)
	{
		if($this->hooker !== null) {
			$this->hooker->beforeCallHook($this->upperLayerIndex, $this->upperLayer,$this->lowerLayer, $name, $args);
		}
		if(false === is_callable(array($this->srcCaller,$name), true)) {
			throw new Exception('Bd_Layerproxy_PHPProxy err : call to '.  $name.' method not callable. please check your code');
		}

		//afterHook可以继续执行
		$exp = null;

		try {
			$ret = call_user_func_array(array($this->srcCaller,$name),$args);
		} catch (Exception $e) {
			$exp = $e;
		}

		if($this->hooker !== null) {
			$this->hooker->afterCallHook($this->upperLayerIndex, $this->upperLayer,$this->lowerLayer, $name, $args, $ret);
		}

		if ($exp !== null) {
			throw $exp;
		}
		
		return $ret;
	}
}
/*
 * Local variables:
 * tab-width: 4
 * c-basic-offset: 4
 * End:
 * vim600: noet sw=4 ts=4 fdm=marker
 * vim>600: noet sw=4 ts=4 fdm=marker
 * vim<600: noet sw=4 ts=4
 */
?>
