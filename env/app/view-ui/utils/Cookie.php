<?php
/**
 * 
 * cookie相关处理
 * @author jiachunxin
 *
 */

class Cookie {
	//过期时间为30年
	private static $intExpire_30years=946080000;
	
	/**
	 * 写cookie给浏览器
	 *
	 * @return array 
	 */
	public static function setCookie($key, $value) {
		if(strlen($key) == 0 || strlen($value) == 0)
		{
			return false;
		}
		return setcookie($key, $value, Volatile::time()+Cookie::$intExpire_30years);
	}
	
}
