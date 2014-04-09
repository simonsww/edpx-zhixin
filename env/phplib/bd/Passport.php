<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * $Id: Passport.php,v1.0.6 2012/09/12 12:05:28 fanmengzhe $ 
 * 
 **************************************************************************/
 
/**
 * @file Passport.php
 * @author fanmengzhe(fanmengzhe@baidu.com)
 * @date 2011/12/26 11:35:23
 * @version 1.0.6.0
 * @brief 先申请权限，然后确定tpl, appid(session), aid(uinfo)
 *  
 **/

/**
 * @brief	Bd_Passport 基础库对外接口类
 */
class Bd_Passport {
    protected static $_errno 	= 0;
	protected static $_errmsg 	= '';
	
	
	/**
     * @brief	[Passgate]根据uid获取用户信息
	 * @param	var		$varUserID	用户UID[整型|整型数组]
	 * @param	array	$arrFields	指定获取的字段
     * @return	用户不存在或交互失败返回false，否则返回关联数组
     * @note 
     * @author fanmengzhe 
     * @date 2011/06/06 14:20:35
    **/
	public static function getInfoByuid($varUserID, $arrFields) {
		$ins = Bd_Passport_Passgate::getInstance();
		$ret = $ins->getUserInfoByUid($varUserID, $arrFields);
		if ($ins->isError()) {
			self::$_errno	= $ins->getCode();
			self::$_errmsg	= $ins->getMessage();
			return false;
		} else {
			return $ret;	
		}
	}

	/**
     * @brief	[Passgate]根据uname获取用户信息
	 * @param	var		$varUserName	用户名[字符串|字符串数组]
	 * @param	array	$arrFields		指定获取的字段
     * @return	用户不存在或交互失败返回false，否则返回关联数组
     * @note 
     * @author fanmengzhe 
     * @date 2011/06/06 14:20:35
    **/
	public static function getInfoByun($varUserName, $arrFields) {
		$ins = Bd_Passport_Passgate::getInstance();
		$ret = $ins->getUserInfoByUname($varUserName, $arrFields);
		if ($ins->isError()) {
			self::$_errno	= $ins->getCode();
			self::$_errmsg	= $ins->getMessage();
			return false;
		} else {
			return $ret;	
		}
	}


	/**
	 * @brief	[兼容SAF函数][废弃中]
	 * @param	NULL
	 * @return	true
	 * @author	fanmengzhe
	 * @date 2011/10/25 11:31:37
	 * @note
	 */
	public static function init($key = null, $product_key = null) {
		return true;
	}


	/**
     * @brief	[兼容SAF函数][Session]校验在线状态，获取会话数据
     * @param	NULL
	 * @return	交互失败或$_COOKIE['BDUSS']不合法时，返回false;
	 *			uid为0的Session数据也会返回false;
	 *			成功返回关联数组
     * @author	fanmengzhe 
     * @date	2011/06/06 14:20:35
    **/
	public static function checkUserLogin($bduss = null) {
		if ($bduss === null) {
			if (isset($_COOKIE['BDUSS'])) {
				$bduss = $_COOKIE['BDUSS'];
			} else {
				return false;
			}
		}

		$ssnData = self::getData($bduss);
		if (is_array($ssnData) && $ssnData['uid'] > 0) {
			return $ssnData;
		} else {
			return false;
		}
	}


	
	/**
     * @brief	[Session]校验在线状态，获取会话数据
	 * @param	string $bduss $_COOKIE['BDUSS']
     * @return	用户不存在或交互失败返回false，否则返回关联数组
     * @note 
     * @author	fanmengzhe
     * @date	2011/02/17 14:20:35
    **/
    public static function getData($bduss){
		$ins = Bd_Passport_Session::getInstance();
		$ret = $ins->getData($bduss);
		if ($ins->isError()) {
			self::$_errno	= $ins->getCode();
			self::$_errmsg	= $ins->getMessage();
			return false;
		} else {
			return $ret;	
		}
	}


	/**
     * @brief	[Session]修改会话数据
	 * @param	string	$bduss	$_COOKIE['BDUSS']
	 * @param	string	$gdata	公有数据(产品线无权修改，请传空字符串)
	 * @param	string	$gmask	公有数据掩码(同上)
	 * @param	string	$pdata	私有数据
	 * @param	string	$pmask	私有数据掩码
     * @return	用户不存在或交互失败返回false，否则返回关联数组
     * @note 
     * @author fanmengzhe
     * @date 2011/02/17 14:20:35
    **/
    public static function modData($bduss, $gdata, $gmask, $pdata, $pmask) {
		$ins = Bd_Passport_Session::getInstance();
		$ret = $ins->modData($bduss , $gdata , $gmask , $pdata , $pmask);
		if ($ins->isError()) {
			self::$_errno	= $ins->getCode();
			self::$_errmsg	= $ins->getMessage();
			return false;
		} else {
			return $ret;	
		}
	}

	/**
     * @brief	[Session][统一安全认证]校验在线状态，获取会话数据
	 * @param	string	$bduss	$_COOKIE['BDUSS']
	 * @param	string	$stoken	产品线域名下的COOKIE['STOKEN']
     * @return	用户不存在或交互失败返回false，否则返回关联数组
     * @note 
     * @author fanmengzhe
     * @date 2011/02/17 14:20:35
    **/
    public static function authGetData($bduss, $stoken){
		$ins = Bd_Passport_Session::getInstance();
		$ret = $ins->authGetData($bduss , $stoken);
		if ($ins->isError()) {
			self::$_errno	= $ins->getCode();
			self::$_errmsg	= $ins->getMessage();
			return false;
		} else {
			return $ret;	
		}
    }


	/**
     * @brief	[Session][统一安全认证]修改会话数据
	 * @param	string	$bduss	$_COOKIE['BDUSS']
	 * @param	string	$stoken	产品线域下的COOKIE['STOKEN']
	 * @param	string	$gdata	公有数据(产品线无权修改，请传空字符串)
	 * @param	string	$gmask	公有数据掩码(同上)
	 * @param	string	$pdata	私有数据
	 * @param	string	$pmask	私有数据掩码
     * @return	用户不存在或交互失败返回false，否则返回关联数组
     * @note 
     * @author	fanmengzhe
     * @date 2011/05/27 14:20:35
    **/
    public static function authModData($bduss, $stoken, $gdata, $gmask, $pdata, $pmask) {
		$ins = Bd_Passport_Session::getInstance();
		$ret = $ins->authModData($bduss, $stoken, $gdata, $gmask, $pdata, $pmask);
		if ($ins->isError()) {
			self::$_errno	= $ins->getCode();
			self::$_errmsg	= $ins->getMessage();
			return false;
		} else {
			return $ret;	
		}
	}


	/**
	 * @brief [不推荐使用][Util]从$_COOKIE['BDUSS']中计算UID和UNAME
	 * @param string $bduss $_COOKIE['BDUSS'] 
	 * @return array('uid'=> 5,'uname'=>'maling')
	 * @author fanmengzhe
	 * @date 2011/10/26 21:25:48
	 * @note
	 * 此函数不能用于校验会话登录状态
	 */
	public static function getUserInfoFromCookie($bduss = null) {
		if (is_null($bduss)) {
			if (!isset($_COOKIE['BDUSS'])) {
				return false;
			}
			$bduss = $_COOKIE['BDUSS'];
		}
		return Bd_Passport_Util::decodeBduss($bduss);
    }
	

	
	/**
	 * @brief	[Session]解析会话数据的公有数据字段
	 * @param	string	$gdata	Session返回的公有数据字段(gdata) 
	 * @return	array
	 * @author	fanmengzhe
	 * @date	2011/10/26 21:25:48
	 * @note
	 */
	public static function parseGData($gdata) {
		return Bd_Passport_Session::getInstance()->parseGData($gdata);
	}

	
	/**
     * @brief [不推荐使用][Session]获取一个数据为空的会话ID
	 * @param	NULL 
     * @return 用户不存在或交互失败返回false，否则返回关联数组
     * @note 
     * @author fanmengzhe
     * @date 2011/02/17 14:20:35
    **/
    public static function getSid(){
		$ins = Bd_Passport_Session::getInstance();
		$ret = $ins->getSid();
		if ($ins->isError()) {
			self::$_errno	= $ins->getCode();
			self::$_errmsg	= $ins->getMessage();
			return false;
		} else {
			return $ret;	
		}
	}


	/**
	 * @brief	[废弃中][Session]根据长度初始化缓冲区，返回其对应的数据和掩码(均为空)
	 * @param	array	&$arrData	空的数组变量
	 * @param	int		$len		需要初始化的缓冲区的长度
	 * @return	array	$arrData	= array('data'=>'', 'mask'=>'');
	 * @author	fanmengzhe
	 * @date	2011/10/27 10:57:04
	 * @note
	 */
	public static function initDataBuf(&$arrData, $len) {
		$len = intval($len);
		$arrData = array(
			'data'	=> str_repeat(chr(0) , $len),
			'mask'	=> str_repeat(chr(0) , $len),
		);
	}


	/**
	 * @brief	[推荐使用][Session]根据长度初始化缓冲区，返回其对应的数据和掩码(均为空)
	 * @param	int		$len		需要初始化的缓冲区的长度
	 * @return	array	$arrData	= array('data'=>'', 'mask'=>'');
	 * @author	fanmengzhe
	 * @date	2011/10/27 10:57:04
	 * @note
	 */
	public static function initDataBufEx($len) {
		$len = intval($len);
		return array(
			'data'	=> str_repeat(chr(0), $len),
			'mask'	=> str_repeat(chr(0), $len),
		);
	}

	/**
	 * @brief	[推荐使用][Session]给定数据初始化缓冲区，返回其对应的数据和掩码
	 * @param	string	$strData	给定的字符串私有数据
	 * @return	array	$arrData	= array('data'=>'', 'mask'=>'');
	 * @author	fanmengzhe
	 * @date	2011/10/27 10:57:04
	 * @note
	 */
	public static function initDataBufWithData($strData) {
		$strData = strval($strData);
		$len = strlen($strData);
		return array(
			'data'	=> $strData,
			'mask'	=> str_repeat(chr(255), $len),
		);
	}

	/**
	 * @brief	[Session]按字节修改缓冲区数据和掩码(修改会话数据使用)
	 * @param	array	$arrData	
	 * @param	int		$byte		待修改的字节下标，从0开始
	 * @param	int		$value		待修改的字节的值[0-255]
	 * @return	array	$arrData	= array('data'=>'', 'mask'=>'');
	 * @author	fanmengzhe
	 * @date	2011/12/27 10:57:04
	 * @note	为了链式调用，引用传参并返回该数组。
	 */
    public static function modDataBufByByte(&$arrData, $byte, $value) {
        if (!isset ($arrData['data']) || !isset($arrData['mask'])) {
			return false;
		}
		$byte = intval($byte);
		$len = strlen($arrData['data']);
		if ($byte >= $len) {
			return false;
		}
	
		$value = intval($value);
		if ($value > 255 || $value < 0) {
			return false;
		}
		
		$arrData['data'][$byte] = chr($value);
		$arrData['mask'][$byte] = chr(255);	
		return $arrData;
    }

	/**
	 * @brief	[Session]按Bit修改缓冲区数据和掩码(修改会话数据使用)
	 * @param	array	$arrData	
	 * @param	int		$bit		待修改的Bit下标，从1开始
	 * @param	int		$value		待修改的Bit的值[0,1]
	 * @return	array	$arrData	= array('data'=>'', 'mask'=>'');
	 * @author	fanmengzhe
	 * @date	2011/12/27 10:57:04
	 * @note	为了链式调用，引用传参并返回该数组。
	 */
	public static function modDataBufByBit(&$arrData , $bit , $value) {
        if (!isset ($arrData['data']) || !isset($arrData['mask'])) {
			return false;
		}
		$bit = intval($bit);
		$len = strlen($arrData['data']);
		if ($bit > $len * 8) {
			return false;
		}
		if (!in_array($value , array(0 , 1))) {
			return false;
		}
		$value = intval($value);
		
		$byte = intval(($bit - 1) / 8);
		$offset = ($bit - 1) % 8;
		
		$arrData['data'][$byte] = chr(ord($arrData['data'][$byte]) & (~(1 << $offset)) | ($value << $offset));
		$arrData['mask'][$byte] = chr(ord($arrData['mask'][$byte]) | (1 << $offset));
		return true;
	}




	/**
     * @brief	[Session]获取用户SESSION信息
	 * @param	array	$arrUids	用户ID数组
     * @return	用户不存在或交互失败返回false，否则返回关联数组
     * @note 
     * @author	fanmengzhe
     * @date	2011/05/27 14:20:35
    **/
    public static function uidGetInfo($arrUids){
		$ins = Bd_Passport_Session::getInstance();
		$ret = $ins->uidGetInfo($arrUids);
		if ($ins->isError()) {
			self::$_errno	= $ins->getCode();
			self::$_errmsg	= $ins->getMessage();
			return false;
		} else {
			return $ret;	
		}
	}


	/**
     * @brief	[Session]获取用户SESSION信息
	 * @param	array	$arrUids	用户ID数组
     * @return	用户不存在或交互失败返回false，否则返回关联数组
     * @note 
     * @date 2011/05/27 14:20:35
    **/
    public static function uidGetInfoStat($arrUids){
		$ins = Bd_Passport_Session::getInstance();
		$ret = $ins->uidGetInfoStat($arrUids);
		if ($ins->isError()) {
			self::$_errno	= $ins->getCode();
			self::$_errmsg	= $ins->getMessage();
			return false;
		} else {
			return $ret;	
		}
	}


	/**
     * @brief	[Session]获取用户SESSION信息
	 * @param	array	$arrUids	用户ID数组
     * @return	用户不存在或交互失败返回false，否则返回关联数组
     * @note 
     * @author	fanmengzhe
     * @date	2011/02/17 14:20:35
    **/
    public static function uidGetInfoTime($arrUids){
		$ins = Bd_Passport_Session::getInstance();
		$ret = $ins->uidGetInfoTime($arrUids);
		if ($ins->isError()) {
			self::$_errno	= $ins->getCode();
			self::$_errmsg	= $ins->getMessage();
        	return false;
		} else {
        	return $ret;
    	}
	}


    /** 
     * @brief	[Util]生成bdstoken 
     * @param	string	$src	传入的md5串1，登陆用户为bduss，未登陆用户为baiduid。不允许为空
     * @param	string	$key	传入的md5串2,每个产品线使用的加密串，要求不小于16字节，并且包括数字，字母以及特殊字符。不允许为空。
     * @param	string	$srcex	传入的md5串3，扩展使用，由各产品线决定其内容。不使用必须传入null。
     * @param	string	$dst	成功返回时dst为md5串，失败时dst为错误信息
     * @return a bool   成功：true  失败: false
     * @author lichao 
     * @date Wed May 20 00:00:38 CST 2009 
     * @version 1.0.0  
    **/
    public static function getBdsToken($src, $key, $srcex, &$dst){
		return Bd_Passport_Util::getBdsToken($src, $key, $srcex, $dst);
	}

    /** 
     * @brief	[Util]校验bdstoken
     * @param	string	$token	传入的待检查的token
     * @param	string	$src	传入的md5串1，已登陆用户为bduss,未登陆用户为baiduid
     * @param	string	$key	传入的md5串2，设置的密钥串， 详细参考getBdsToken的说明
     * @param	string  $srcex	传入的md5串3，扩展使用，详细参考getBdsToken的说明
     * @return	a bool or string  检查通过：true；检查错误：错误说明
     * @author	lichao 
     * @date	Wed May 20 00:00:38 CST 2009 
     * @version 1.0.0  
     *			token，src，key，srcex参数类型必须为string; 
     *			srcex不作为计算md5参数时必须传入参数null;
     **/
    public static function checkBdsToken($token, $src, $key, $srcex){
		return Bd_Passport_Util::checkBdsToken($token, $src, $key, $srcex);
	}


	/**
	 * @brief	无线端根据SSID获取BDUSS
	 * @param	SSID
	 * @return	array
	 * @author	fanmengzhe
	 * @date	2011/10/26 21:27:29
	 * @note
	 */
	public static function getBDUSSBySSID($ssid) {
		$ins = Bd_Passport_Wappass::getInstance();
		$ret = $ins->getBDUSSBySSIDWithRAL($ssid);
		if ($ins->isError()) {
			self::$_errno	= $ins->getCode();
			self::$_errmsg	= $ins->getMessage();
        	return false;
		} else {
        	return $ret;
    	}
	}
		
	
	/**
	 * @brief	获取错误码
	 * @param	NULL
	 * @return	int
	 * @author	fanmengzhe
	 * @date	2011/10/26 21:27:29
	 * @note
	 */
	public static function getCode() {
		return self::$_errno;
	}

	/**
	 * @brief	获取错误信息
	 * @param	NULL
	 * @return	
	 * @author	fanmengzhe
	 * @date	2011/10/26 21:27:48
	 * @note
	 */
	public static function getMessage() {
		return self::$_errmsg;
	}

	/**
	 * @brief	加密PSPTOKEN用于非安全信道传递
	 * @param	string $tpl 分配给产品线的TPL
	 * @param	string $key 分配给产品线的用于加/解密psptoken的key
	 * @param	string $str real psptoken
	 * @return	string 加密后的PSPTOKEN
	 * @author	fanmengzhe
	 */
	public static function encryptURL($tpl, $key, $str) {
		return Bd_Passport_Util_URLCrypt::url_encrypt($tpl, $key, $str);
	}

	/**
	 * @brief	从URL中解密STOKEN
	 * @param	string $tpl 分配给产品线的TPL
	 * @param	string $key 分配给产品线的用于加/解密psptoken的key
	 * @param	string $str 加密过的PSPTOKEN
	 * @return	string real psptoken
	 * @author	fanmengzhe
	 */
	public static function decryptURL($tpl, $key, $str) {
		return Bd_Passport_Util_URLCrypt::url_decrypt($tpl, $key, $str);
	}


	/**
	 * @brief	从URL中解密PSPTOKEN
	 * @param	string	$psptoken 加密过的psptoken，根据配置文件中配置的tpl和key进行解密
	 * @return	string	psptoken
	 * @return	bool	false On failure
	 * @author	fanmengzhe
	 */
	public static function decryptPSPToken($psptoken) {
		$tpl = Bd_Passport_Conf :: getConfEx('tpl', false);
		if (!$tpl) {
			self::$_errno = -1;
			self::$_errmsg = 'TPL not found in passport.conf/Inc.php';
			Bd_Passport_Log::warning(self::$_errmsg, self::$_errno);
			return false;
		}

		$key = Bd_Passport_Conf :: getConfEx('psptoken_key_crypt', false);
		if (!$key) {
			self::$_errno = -1;
			self::$_errmsg = 'psptoken_key_crypt not found in passport.conf/Inc.php';
			Bd_Passport_Log::warning(self::$_errmsg, self::$_errno);
			return false;
		}
		
		return Bd_Passport_Util_URLCrypt::url_decrypt($tpl, $key, $psptoken);
	}

	/**
	 * @brief	从passport.conf读取配置文件	
	 * @param	string $strField 'tpl', 'psptoken_key_crypt', 'psptoken_key_csrf'
	 * @return	string
	 * @author	fanmengzhe
	 */
	public static function getConf($strField) {
		if (!in_array($strField, array('tpl', 'psptoken_key_crypt', 'psptoken_key_csrf'))) {
			return false;
		}
		return Bd_Passport_Conf :: getConfEx($strField, false);
	}
}

?>
