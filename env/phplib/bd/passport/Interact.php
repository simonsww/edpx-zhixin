<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file bd/passport/Interact.php
 * @author fanmengzhe(com@baidu.com)
 * @date 2011/05/23 21:48:09
 * @brief 
 *  
 **/

/**
 * @brief	Bd_Passport 交互引擎工厂类，ODP环境强制使用ral
 */
final class Bd_Passport_Interact {
	public static function getEngine($strEngine = 'Ral') {
			
		if (defined('IS_ODP') && true === IS_ODP) {
			$strClassName = "Bd_Passport_Interact_Ral";
		} else {
			$engine = Bd_Passport_Conf::getConfEx('engine', 'Ral');
			$strEngine = ucfirst(strtolower($engine));
			$strClassName = "Bd_Passport_Interact_$strEngine";
			$filename = dirname(__FILE__). "/interact/".$strEngine.".php";
			if (file_exists($filename)) {
				require_once($filename);
			} else {
				Bd_Passport_Log::warning("$filename doesn't exist!", E_USER_ERROR);
			}
		}

		if (class_exists($strClassName)) {
			$instance = new $strClassName();
			if (!($instance instanceof Bd_Passport_Interact_IEngine)) {
				Bd_Passport_Log::warning("$strClassName isn't instanceof Bd_Passport_Interact_IEngine", E_USER_WARNING);
			}
			return $instance;
		} else {
			Bd_Passport_Log::warning("$strClassName Not Found!" , E_USER_WARNING);
		}
		
	}
}



/* vim: set expandtab ts=4 sw=4 sts=4 tw=100 */
?>
