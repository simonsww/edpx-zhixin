<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * $Id: Str.php,v 1.0 2011/10/24 11:21:29 hanshinan Exp $
 * 
 **************************************************************************/
 
/**
 * @file Str.php
 * hanshinan(hanshinan@baidu.com)
 * @date 2011/10/24 11:21:29
 * @version $Revision: 1.0 $ 
 * @brief 
 *  
 **/

class Bd_Str extends Bd_Str_Base
{
    /*
     * @brief 根据字节自动计算KB, MB, GB
     * @example:
	 * Bd_String::size(1024);  
     * 1KB
     *
	 * @author chenqiuwu(chenqiuwu@baidu.com)
     */
	public static function size($byteInt, $round = 1, $unit = array(' B', ' KB', ' MB', ' GB')) {
		return $byteInt >= 1073741824 ? round($byteInt/1073741824, $round).$unit[3]
			: ($byteInt >= 1048576 ? round($byteInt/1048576, $round).$unit[2]
			: ($byteInt >= 1024 ? round($byteInt/1024, $round).$unit[1] : $byteInt.$unit[0]));
	}

	/**
	 * @brief whether needle exist in string,调用扩展实现
	 *
	 * @param [in] string $string the string to search 
	 * @param [in] string $needle the sub string to match 
	 * @return true or false
     */
    public static function exist($string, $substr){
        return !(strpos($string, $substr) === FALSE);
    }

	/** 
	 * @brief 去除字符串中的转义符，支持数组递归
	 * @author hanshinan
	 */
	public static function stripslashes($var)
	{
		if( is_array($var) )
		{
			$rvar = array();
			foreach( $var as $key => $val )
			{
				$rvar[$key] = Bd_Str::stripslashes($val);
			}
			return $rvar;
		}
		elseif( is_object($var) )
		{
			$rvar = null;
			foreach( $var as $key => $val )
			{
				$rvar->{$key} = Bd_Str::stripslashes($val);
			}
			return $rvar;
		}
		elseif( is_string($var) )
		{
			return stripslashes($var);
		}
		else
		{
			return $var;
		}
	}

	/**
	 * @brief urlencode a variable recursively, array keys and object property names will not be
	 * encoded, so you would better use ASCII to define the array key name or object property name.
	 *
	 * @param [in] mixed $var
	 * @return  mixed, with the same variable type
	 * @retval   
	 * @see 
	 * @note 
	 * @author zhujt
	 * @date 2009/06/01 14:33:21
	 *
	**/
	public static function urlencode($var)
	{
		if( is_array($var) )
		{
			$rvar = array();
			foreach( $var as $key => $val )
			{
				$rvar[$key] = Bd_Str::urlencode($val);
			}
			return $rvar;
		}
		elseif( is_object($var) )
		{
			$rvar = null;
			foreach( $var as $key => $val )
			{
				$rvar->{$key} = Bd_Str::urlencode($val);
			}
			return $rvar;
		}
		elseif( is_string($var) )
		{
			return urlencode($var);
		}
		else
		{
			return $var;
		}
	}

	/**
	 * @brief urldecode a variable recursively, array keys and object property names will not be
	 * decoded, so you would better use ASCII to define the array key name or object property name.
	 *
	 * @param [in] mixed $var
	 * @return  mixed, with the same variable type
	 * @retval   
	 * @see 
	 * @note 
	 * @author zhujt
	 * @date 2009/06/03 11:32:33
	 *
	**/
	public static function urldecode($var)
	{
		if( is_array($var) )
		{
			$rvar = array();
			foreach( $var as $key => $val )
			{
				$rvar[$key] = Bd_Str::urldecode($val);
			}
			return $rvar;
		}
		elseif( is_object($var) )
		{
			$rvar = null;
			foreach( $var as $key => $val )
			{
				$rvar->{$key} = Bd_Str::urldecode($val);
			}
			return $rvar;
		}
		elseif( is_string($var) )
		{
			return urldecode($var);
		}
		else
		{
			return $var;
		}
	}

	/**
	 * @brief base64_encode a variable recursively, array keys and object property names will not be
	 * encoded, so you would better use ASCII to define the array key name or object property name.
	 *
	 * @param [in] mixed $var
	 * @return  mixed, with the same variable type
	 * @retval   
	 * @see 
	 * @note 
	 * @author zhujt
	 * @date 2009/06/01 14:33:21
	 *
	**/
	public static function base64encode($var)
	{
		if( is_array($var) )
		{
			$rvar = array();
			foreach( $var as $key => $val )
			{
				$rvar[$key] = Bd_Str::base64encode($val);
			}
			return $rvar;
		}
		elseif( is_object($var) )
		{
			$rvar = null;
			foreach( $var as $key => $val )
			{
				$rvar->{$key} = Bd_Str::base64encode($val);
			}
			return $rvar;
		}
		elseif( is_string($var) )
		{
			return base64_encode($var);
		}
		else
		{
			return $var;
		}
	}

	/**
	 * @brief base64_decode a variable recursively, array keys and object property names will not be
	 * decoded, so you would better use ASCII to define the array key name or object property name.
	 *
	 * @param [in] mixed $var
	 * @return  mixed, with the same variable type
	 * @retval   
	 * @see 
	 * @note 
	 * @author zhujt
	 * @date 2009/06/03 11:32:33
	 *
	**/
	public static function base64decode($var)
	{
		if( is_array($var) )
		{
			$rvar = array();
			foreach( $var as $key => $val )
			{
				$rvar[$key] = Bd_Str::base64decode($val);
			}
			return $rvar;
		}
		elseif( is_object($var) )
		{
			$rvar = null;
			foreach( $var as $key => $val )
			{
				$rvar->{$key} = Bd_Str::base64decode($val);
			}
			return $rvar;
		}
		elseif( is_string($var) )
		{
			return base64_decode($var);
		}
		else
		{
			return $var;
		}
	}

	/**
	 * @brief 添加字符转义，支持数组递归
	 * 
	 * @param str 待处理字符串
	 *        charlist 需要转义的字符
	 *
	 * @return 处理后的字符串
	 * @author hanshinan
	 */
	public static function addslashes($str, $charlist){
		$ret_str = $str;
		if(is_array($charlist)){
			foreach($charlist as $key => $val){
				$ret_str = Bd_Str::multiReplace($ret_str,$val,'\\'.$val);
			}
		}else if(is_object($charlist)){
			foreach( $charlist as $key => $val ){
				$ret_str = Bd_Str::multiReplace($ret_str,$val,'\\'.$val);   
			}	
		}else{
			$slashes = explode(",", $charlist);
			$s_count = count($slashes);
			for($i = 0;$i <= $s_count - 1;$i++)
			{
				$needle = trim($slashes[$i]);
				$ret_str = Bd_Str::multiReplace($ret_str,$needle,'\\'.$needle);
			}
		}
		return $ret_str;
	}
}
/* vim: set ts=4 sw=4 sts=4 tw=100 noet: */
