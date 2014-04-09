<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * $Id: String.php,v 1.2 2010/03/09 12:05:29 liushi Exp $ 
 * $Id: String.php,v 1.3 2011/03/02 16:30:00 chenqiuwu Inf $ 
 * 
 **************************************************************************/
 
/**
 * @file String.php
 * @author zhujt(zhujianting@baidu.com)
 * @date 2009/03/15 14:26:45
 * @version $Revision: 1.2 $ 
 * @brief 
 *  
 **/

class Bd_String
{
    /*
     * @brief 子字符串在字符串中，第N次出现的位置
     * @example:
	 * Bd_String::bdstrpos('a-b-c-d-', '-', 2);  
     * '_'第2次在'a-b-c-d-'中出现的返回值为：4
     *
     * Bd_String::bdstrpos('a-b-c-d-', '-', 3);  
     * '_'第3次在'a-b-c-d-'中出现的返回值为：6
     *
	 * @author chenqiuwu(chenqiuwu@baidu.com)
     */
    public static function bdstrpos($string, $substr, $time = 1) {
        $len = strlen($substr);
        $return  = 0;
        for($i = 0; $i < $time; $i++){
            $pos = strpos($string, $substr) + $len;
            $string = substr($string, $pos);
            $return += $pos;
        }
        return $return;
    }

    /*
     *
     * @brief 截取两个子字符串之间的字符串
	 *
     * @example:
     * Bd_String::substring('abca/need/asdfas', '/');  
     * 返回 'need', 两个'/'之间的字符串
	 *
     * Bd_String::substring('ab!before!need===', '!', '===')
     * 返回 'before!need'之间的字符串
	 *
     * Bd_String::substring('ab!before!need===', '!', '===', 1)
	 * 返回 'need',  === 之前最近一个!号间的字
	 *
	 * @author chenqiuwu(chenqiuwu@baidu.com)
     */
	public static function substring($string, $begin, $end = '', $nearEnd = 0){
		if($nearEnd){
			$before = substr($string, 0, strpos($string, $end));
			$beginPos = strrpos($before, $begin) + strlen($begin);
			return substr($before, $beginPos);
		} else {
			$start = strpos($string, $begin);
			$after = substr($string, $start + strlen($begin));
			$stop = $end ? strpos($after, $end) : strpos($after, $begin);
			return substr($after, 0, $stop);
		}
	}

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
    
    /*
     *
     * @brief 截取某个字符串前几位字符
     * @examle echo Bd_String::cutBefore('ab!before!need===', '===', 4); //返回 need
     *
	 * @author chenqiuwu(chenqiuwu@baidu.com)
     */

	public static function cutBefore($string, $needle, $length){
		if($length === 0) {
			return false;
		}
		$pos = strpos($string, $needle);
		if($pos === 0){
			return '';
		}
		$before = substr($string, 0, $pos);
		return substr($before, -$length);
	}

	/**
	 * @brief 按$length指定的实际页面宽度，来截取字符串, 支持gbk, utf8, 需要在配置里设置页面字符集
	 *
	 * @param [in] string $string	the string to cut
	 * @param [in] int $length   the length want to cut
	 * @param [in] string $dot suffix symbols 
	 * @return cutted string 
     *
     */
	public static function cutString($string, $length, $dot = ' ...', $charset = 'gbk') {
		if(strlen($string) <= $length) {
			return $string;
		}

		$pre = '{%';
		$end = '%}';
		$string = str_replace(array('&amp;', '&quot;', '&lt;', '&gt;'), array($pre.'&'.$end, $pre.'"'.$end, $pre.'<'.$end, $pre.'>'.$end), $string);

		$strcut = '';
		if(strtolower($charset == 'utf-8')) {

			$n = $tn = $noc = 0;
			while($n < strlen($string)) {

				$t = ord($string[$n]);
				if($t == 9 || $t == 10 || (32 <= $t && $t <= 126)) {
					$tn = 1; $n++; $noc++;
				} elseif(194 <= $t && $t <= 223) {
					$tn = 2; $n += 2; $noc += 2;
				} elseif(224 <= $t && $t <= 239) {
					$tn = 3; $n += 3; $noc += 2;
				} elseif(240 <= $t && $t <= 247) {
					$tn = 4; $n += 4; $noc += 2;
				} elseif(248 <= $t && $t <= 251) {
					$tn = 5; $n += 5; $noc += 2;
				} elseif($t == 252 || $t == 253) {
					$tn = 6; $n += 6; $noc += 2;
				} else {
					$n++;
				}

				if($noc >= $length) {
					break;
				}

			}
			if($noc > $length) {
				$n -= $tn;
			}

			$strcut = substr($string, 0, $n);

		} else {
			for($i = 0; $i < $length; $i++) {
				$strcut .= ord($string[$i]) > 127 ? $string[$i].$string[++$i] : $string[$i];
			}
		}
		$strcut = str_replace(array($pre.'&'.$end, $pre.'"'.$end, $pre.'<'.$end, $pre.'>'.$end), array('&amp;', '&quot;', '&lt;', '&gt;'), $strcut);
		return $strcut.$dot;
	}

	/**
	 * @brief whether needle exist in string
	 *
	 * @param [in] string $string the string to search 
	 * @param [in] string $needle the sub string to match 
	 * @return true or false
     *
     */
    public static function exist($string, $substr){
        return !(strpos($string, $substr) === FALSE);
    }

    public static function padString($str, $len, $bolCut, $ch = "\0"){
        if (strlen($str) >= $len) {
            $str = $bolCut ? substr($str, 0, $len-1) . $ch : substr($str, 0, $len);
        } else {
            $str = str_pad($str, $len, $ch);
        }
        return $str;
    }


	/**
	 * @brief check if the first arg starts with the second arg
	 *
	 * @param [in] string $str	the string to search in
	 * @param [in] string $needle	the string to be searched
	 * @return bool	true or false
	 * @retval true or false
	 * @see 
	 * @note 
	 * @author zhujt
	 * @date 2009/03/16 12:17:09
	**/
	public static function is_starts_with($str, $needle)
	{
		return stripos($str, $needle) === 0;
	}

	

	/**
	 * @brief check if the first arg ends with the second arg
	 *
	 * @param [in] string $str	the string to search in
	 * @param [in] string $needle	the string to be searched
	 * @return bool	true or false
	 * @retval true or false
	 * @see 
	 * @note 
	 * @author zhujt
	 * @date 2009/03/16 12:17:09
	**/
	public static function is_ends_with($str, $needle)
	{
		$pos = strrpos($str, $needle);
		if( $pos === false ) return false;
		return ($pos + strlen($needle) == strlen($str));
	}

	/**
	 * @brief undoes any magic quote slashing from an array, like the $_GET, $_POST, $_COOKIE
	 *
	 * @param [in] array	$val	Array to be noslashing
	 * @return array The array with all of the values in it noslashed
	 * @retval The array with all of the values in it noslashed
	 * @see 
	 * @note 
	 * @author zhujt
	 * @date 2009/03/16 12:17:09
	**/
	public static function noslashes_recursive($val)
	{
		if( get_magic_quotes_gpc() )
		{
			$val = self::stripslashes_recursive($val);
		}
		return $val;
	}

	private static function stripslashes_recursive($var)
	{
		if( is_array($var) )
		{
			$rvar = array();
			foreach( $var as $key => $val )
			{
				$rvar[$key] = self::stripslashes_recursive($val);
			}
			return $rvar;
		}
		elseif( is_object($var) )
		{
			$rvar = null;
			foreach( $var as $key => $val )
			{
				$rvar->{$key} = self::stripslashes_recursive($val);
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
	 * @brief Convert string or array to requested character encoding
	 *
	 * @param mix $var	variable to be converted
	 * @param string $in_charset	The input charset.
	 * @param string $out_charset	The output charset
	 * @return mix	The array with all of the values in it noslashed
	 * @retval The array with all of the values in it noslashed
	 * @see http://cn2.php.net/manual/en/function.iconv.php
	 * @note 
	 * @author zhujt
	 * @date 2009/03/16 12:17:09
	**/
	public static function iconv_recursive($var, $in_charset = 'UTF-8', $out_charset = 'GBK')
	{
		if( is_array($var) )
		{
			$rvar = array();
			foreach( $var as $key => $val )
			{
				$rvar[$key] = self::iconv_recursive($val, $in_charset, $out_charset);
			}
			return $rvar;
		}
		elseif( is_object($var) )
		{
			$rvar = null;
			foreach( $var as $key => $val )
			{
				$rvar->{$key} = self::iconv_recursive($val, $in_charset, $out_charset);
			}
			return $rvar;
		}
		elseif( is_string($var) )
		{
			return iconv($in_charset, $out_charset, $var);
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
	**/
	public static function urlencode_recursive($var)
	{
		if( is_array($var) )
		{
			$rvar = array();
			foreach( $var as $key => $val )
			{
				$rvar[$key] = self::urlencode_recursive($val);
			}
			return $rvar;
		}
		elseif( is_object($var) )
		{
			$rvar = null;
			foreach( $var as $key => $val )
			{
				$rvar->{$key} = self::urlencode_recursive($val);
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
	**/
	public static function urldecode_recursive($var)
	{
		if( is_array($var) )
		{
			$rvar = array();
			foreach( $var as $key => $val )
			{
				$rvar[$key] = self::urldecode_recursive($val);
			}
			return $rvar;
		}
		elseif( is_object($var) )
		{
			$rvar = null;
			foreach( $var as $key => $val )
			{
				$rvar->{$key} = self::urldecode_recursive($val);
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
	**/
	public static function base64_encode_recursive($var)
	{
		if( is_array($var) )
		{
			$rvar = array();
			foreach( $var as $key => $val )
			{
				$rvar[$key] = self::base64_encode_recursive($val);
			}
			return $rvar;
		}
		elseif( is_object($var) )
		{
			$rvar = null;
			foreach( $var as $key => $val )
			{
				$rvar->{$key} = self::base64_encode_recursive($val);
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
	**/
	public static function base64_decode_recursive($var)
	{
		if( is_array($var) )
		{
			$rvar = array();
			foreach( $var as $key => $val )
			{
				$rvar[$key] = self::base64_decode_recursive($val);
			}
			return $rvar;
		}
		elseif( is_object($var) )
		{
			$rvar = null;
			foreach( $var as $key => $val )
			{
				$rvar->{$key} = self::base64_decode_recursive($val);
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
	 * @brief Encode the GBK format var into json format.
	 *
	 * @param [in] mixed $var	The value being encoded. Can be any type except a resource.
	 * @return json format string.
	 * @retval   
	 * @see 
	 * @note The standard json_encode & json_decode needs all strings be in ASCII or UTF-8 format,
	 * but most of the time, we use GBK format strings and the standard ones will not work properly,
	 * by base64_encoded the strings we can change them to ASCII format and let the json_encode &
	 * json_decode functions work.
	 * @author zhujt
	 * @date 2009/06/01 13:56:12
	**/
	public static function json_encode($var)
	{
		return json_encode(self::base64_encode_recursive($var));
	}

	/**
	 * @brief Decode the GBK format var from json format.
	 *
	 * @param [in] string $json	json formated string
	 * @param [in] bool $assoc	When TRUE, returned objects will be converted into associative arrays.
	 * @return mixed, associated array with values be urldecoded
	 * @retval   
	 * @see 
	 * @note The standard json_encode & json_decode needs all strings be in ASCII or UTF-8 format,
	 * but most of the time, we use GBK format strings and the standard ones will not work properly,
	 * by base64_encoded the strings we can change them to ASCII format and let the json_encode &
	 * json_decode functions work.
	 * @author zhujt
	 * @date 2009/06/01 13:56:12
	**/
	public static function json_decode($json, $assoc = false)
	{
		return self::base64_decode_recursive(json_decode($json, $assoc));
	}


	/**
	 * @brief check if the text is gbk encoding
	 *
	 * @param [in] string $str	text to be check
	 * @return bool 
	 * @retval true or false
	 * @see 
	 * @note 
	 * @author zhujt
	 * @date 2009/03/16 12:14:12
	**/
	public static function is_gbk($str)
	{
		//return preg_match('%^(?:[\x81-\xFE]([\x40-\x7E]|[\x80-\xFE]))*$%xs', $str);
		return 1 == preg_match('%^(?:[\x81-\xFE][\x40-\x7E]' .
						'| [\x81-\xFE][\x80-\xFE]' .
						'| [\x00-\x80])*$%xs', $str);
	}

	/**
	 * @brief check if the text is utf8 encoding
	 *
	 * @param [in] string $str	text to be check
	 * @return bool 
	 * @retval true or false
	 * @see 
	 * @note 
	 * @author zhujt
	 * @date 2009/03/16 12:15:53
	**/
	public static function is_utf8($str)
	{
		return 1 == preg_match('%^(?:[\x09\x0A\x0D\x20-\x7E]'.	// ASCII
					'| [\xC2-\xDF][\x80-\xBF]'.				//non-overlong 2-byte
					'| \xE0[\xA0-\xBF][\x80-\xBF]'.			//excluding overlongs
					'| [\xE1-\xEC\xEE\xEF][\x80-\xBF]{2}'.	//straight 3-byte
					'| \xED[\x80-\x9F][\x80-\xBF]'.			//excluding surrogates
					'| \xF0[\x90-\xBF][\x80-\xBF]{2}'.		//planes 1-3
					'| [\xF1-\xF3][\x80-\xBF]{3}'.			//planes 4-15
					'| \xF4[\x80-\x8F][\x80-\xBF]{2}'.		//plane 16
					')*$%xs', $str);
	}

	/**
	 * @brief Escapes text to make it safe to use with Javascript
	 *
	 * It is usable as, e.g.:
	 *  echo '<script>alert(\'begin'.escape_js_quotes($mid_part).'end\');</script>';
	 * OR
	 *  echo '<tag onclick="alert(\'begin'.escape_js_quotes($mid_part).'end\');">';
	 * Notice that this function happily works in both cases; i.e. you don't need:
	 *  echo '<tag onclick="alert(\'begin'.txt2html_old(escape_js_quotes($mid_part)).'end\');">';
	 * That would also work but is not necessary.
	 *
	 * @param [in] string $str	text to be escaped
	 * @param [in] bool $quotes	whether should wrap in quotes
	 * @return string	escaped string in gbk
	 * @retval string
	 * @see 
	 * @note
	 * @author zhujt
	 * @date 2009/03/16 12:25:40
	**/
	public static function escape_js_quotes($str, $quotes = false)
	{
		$str = strtr($str, array('\\'	=> '\\\\',
								 "\n"	=> '\\n',
								 "\r"	=> '\\r',
								 '"'	=> '\\x22',
								 '\''	=> '\\\'',
								 '<'	=> '\\x3c',
								 '>'	=> '\\x3e',
								 '&'	=> '\\x26'));

		return $quotes ? '"'. $str . '"' : $str;
	}

	public static function escape_js_in_quotes($str, $quotes = false)
	{
		$str = strtr($str, array('\\"'	=> '\\&quot;',
								 '"'	=> '\'',
								 '\''	=> '\\\'',
								));

		return $quotes ? '"'. $str . '"' : $str;
	}

	/**
	 * @brief converts charactors in the string to upper case
	 *
	 * @param [in] string $str string to be convert
	 * @return string
	 * @retval   
	 * @see 
	 * @note 
	 * @author zhujt
	 * @date 2009/03/16 13:22:13
	**/
	public static function strtoupper($str)
	{
		$uppers =
			array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
		$lowers =
			array('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'); 
		return str_replace($lowers, $uppers, $str);
	}

	/**
	 * @brief converts charactors in the string to lower case
	 *
	 * @param [in] string $str	string to be convert
	 * @return string
	 * @retval   
	 * @see 
	 * @note 
	 * @author zhujt
	 * @date 2009/03/16 13:31:38
	**/
	public static function strtolower($str)
	{
		$uppers =
			array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
		$lowers =
			array('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'); 
		return str_replace($uppers, $lowers, $str);
	}

	/**
	 * @brief check if the two bytes are a chinese charactor
	 *
	 * @param [in] char $lower_chr	lower bytes of the charactor
	 * @param [in] char $higher_chr	higher bytes of the charactor
	 * @return bool
	 * @retval true if it's a chinese charactor, false otherwise
	 * @see 
	 * @note 
	 * @author liaohuiqin
	 * @date 2009/05/16 13:30:03
	**/
	public static function is_cjk($lower_chr, $higher_chr)
	{
		if( ($lower_chr >= 0xb0 && $lower_chr <= 0xf7 && $higher_chr >= 0xa1 && $higher_chr <= 0xfe) ||
			($lower_chr >= 0x81 && $lower_chr <= 0xa0 && $higher_chr >= 0x40 && $higher_chr<=0xfe) ||
			($lower_chr >= 0xaa && $lower_chr <= 0xfe && $higher_chr >= 0x40 && $higher_chr <=0xa0) )
		{
			return true;
		}
		return false;
	}

	/**
	 * @brief 检查一个字符是否是gbk图形字符
	 *
	 * @param [in] char $lower_chr	lower bytes of the charactor
	 * @param [in] char $higher_chr	higher bytes of the charactor
	 * @return bool
	 * @retval true if it's a chinese graph charactor, false otherwise
	 * @see 
	 * @note 
	 * @author liaohuiqin 
	 * @date 2009/05/16 13:30:03
	**/
	public static function is_gbk_graph($lower_chr, $higher_chr)
	{
		if( ($lower_chr >= 0xa1 && $lower_chr <= 0xa9 && $higher_chr >= 0xa1 && $higher_chr <= 0xfe) ||
			($lower_chr >= 0xa8 && $lower_chr <= 0xa9 && $higher_chr >= 0x40 && $higher_chr <= 0xa0) )
		{
			return true;
		}
		return false;
	}

	/**
	 * @brief	检查字符串中每个字符是否是gbk范围内可见字符，包括图形字符和汉字, 
	 *			半个汉字将导致检查失败, ascii范围内不可见字符允许
	 *
	 * @param [in] string $str string to be checked
	 * @return  bool
	 * @retval  true : 都是gbk可见字符 false:包含不可见字符; 
	 * @see
	 * @note 默认$str是gbk字符串,如果是其他编码可能会失败; 
	 * @author liaohq
	 * @date 2009/05/08 14:34:32
	**/
	public static function ctype_gbk_print($str)
	{
		$len = strlen($str);
		$chr_value = 0;

		for( $i = 0; $i < $len; $i++ )
		{
			$chr_value = ord($str[$i]);
			if( $chr_value < 0x80 )
			{
				continue;
			}
			elseif( $chr_value === 0x80 )
			{
				//欧元字符;
				return false;
			}
			else
			{
				if( $i+1 >= $len )
				{
					//半个汉字;
					return false;
				}
				if( !self::is_cjk(ord($str[$i]), ord($str[$i+1])) &&
					!self::is_gbk_graph(ord($str[$i]), ord($str[$i+1])) )
				{
					return false;
				}
			}
			$i++;
		}
		return true;
	}

	/**
	 * @brief 检查字符串是否是gbk汉字; 
	 *
	 * @return  bool 
	 * @retval  true/false 
	 * @see 
	 * @note 默认字符串的编码格式是gbk; 
	 * @author liaohq
	 * @date 2009/05/08 16:08:28
	**/
	public function ctype_cjk($str)
	{
		$len = strlen($str);
		$chr_value = 0;

		for( $i = 0; $i < $len; $i++ )
		{
			$chr_value = ord($str[$i]);
			if( $chr_value <= 0x80 )
			{
				return false;
			}
			else
			{
				if( $i+1 >= $len )
				{
					//半个汉字;
					return false;
				}
				if( !self::is_cjk(ord($str[$i]), ord($str[$i+1])) )
				{
					return false;
				}
				$i++;
			}
		}
		return true;
	}

	/**
	 * @brief  检查$str是否由汉字/字母/数字/下划线/.组成;
	 *
	 * @param [in] string $str string to be checked
	 * @return  bool 
	 * @retval  true : 合格;false: 含有不合法字符; 
	 * @see 
	 * @note  默认$str是gbk编码;
	 * @author liaohq
	 * @date 2009/05/08 15:11:53
	**/
	public function ctype_cjkalnum($str)
	{
		$len = strlen($str);
		$chr_value = 0;

		for( $i = 0; $i < $len; $i++ )
		{
			$chr_value = ord($str[$i]);
			if( $chr_value < 0x80 )
			{
				if( !ctype_alnum($str[$i]) && $str[$i] != '_' && $str[$i] != '.' )
				{
					return false;
				}
			}
			elseif( $chr_value === 0x80 )
			{
				//欧元字符;
				return false;
			}
			else
			{
				if( $i+1 >= $len )
				{
					//半个汉字;
					return false;
				}
				if( !self::is_cjk(ord($str[$i]), ord($str[$i+1])) )
				{
					return false;
				}
				$i++;
			}
		}
		return true;
	}
}
/* vim: set ts=4 sw=4 sts=4 tw=100 noet: */
