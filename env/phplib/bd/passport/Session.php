<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
/**
 * @file Bd/Passport/Session.php
 * @author fanmengzhe(com@baidu.com)
 * @date 2011/05/23 21:43:49
 * @brief 
 *  
 **/

/**
 * @brief	Bd_Passport Session服务交互实现
 */
class Bd_Passport_Session implements Bd_Passport_IError {
	/* session2 command start */
	/* 普通的SESSION操作，以SID为交互标识 */
	const CMD_SSN2_GET_SID			= 0x01001;  //获取空用户信息的session标识
	const CMD_SSN2_LOGIN			= 0x01002;  //登陆，创建用户相关session
    const CMD_SSN2_LOGOUT			= 0x01003;  //退出登陆，session失效
    const CMD_SSN2_GET_DATA			= 0x01004;  //获取session信息
    const CMD_SSN2_MOD_DATA			= 0x01005;  //修改session数据

    /* 普通SESSION操作，以用户ID为交互标识 */ 
    const CMD_SSN2_UID_GET_INFO			= 0x01101;  //获取用户登陆信息（全）
    const CMD_SSN2_UID_GET_INFO_STAT	= 0x01102;  //获取用户登陆状态
    const CMD_SSN2_UID_GET_INFO_TIME	= 0x01103;  //获取用户登陆时间

    /* 管理员操作，根据用户ID为教务标识 */ 
    const CMD_SSN2_ADMIN_OFFLINE	= 0x01201;  //对一个用户ID执行下线操作
    const CMD_SSN2_ADMIN_MOD_DATA	= 0x01203;  //对一个用户ID修改session数据

    /* 统一安全登录相关*/
    const CMD_SSN2_AUTH_LOGIN		= 0x01006;  //安全认证，产品线隐含登陆
    const CMD_SSN2_AUTH_GET_DATA	= 0x01007;  //安全认证，获取session数据
    const CMD_SSN2_AUTH_MOD_DATA	= 0x01008;  //安全认证，修改session数据
	/* session2 command end */

	
	/* session2 server return start */
	const RET_SSN2_OK 				= 0x000;
	const RET_SSN2_IP_UNAUTHORIZED 	= 0x001;
    const RET_SSN2_INVALID_SID		= 0x002;
    const RET_SSN2_INVALID_PARAM	= 0x003;
    const RET_SSN2_LOGIN_EXCEED		= 0x004;
    const RET_SSN2_SERVER_BUSY		= 0x010;
    const RET_SSN2_UNKNOWN			= 0x012;
    const RET_SSN2_OFFLINE			= 0x020;
    const RET_SSN2_ONLINE			= 0x021;
    const RET_SSN2_ONLINE_MULTI		= 0x022;

    const RET_SSN2_TPL_UNAUTHORIZED			= 0x030;
	const RET_SSN2_AUTH_LOGIN_ERROR_EXCEED	= 0x031;
	const RET_SSN2_CHECK_TOKEN_FAILED		= 0x032;
	/* session server return end */
	
	const PUBLIC_DATA_LEN			= 32;
	
	public static $errmsgMap = array ( 
		0   => '[Session]OK',
		1   => '[Session]Unauthorized Ip and Apid',
		2   => '[Session]Invalid SID',
		3   => '[Session]Invalid Params',
		4   => '[Session]Login Exceed',
		16  => '[Session]Server Busy',
		18  => '[Session]Internal Error',
		32  => '[Session]Offline',
		33  => '[Session]Online',
		34  => '[Session]Multi Online',
		48  => '[Session]Unauthorized TPL',
		49  => '[Session]Auth Login Exceed',
		50  => '[Session]Check Token Failed',
	); 

	protected static $_instance = null;
	
	protected static $_apid		= null;
	protected static $_tpl		= null;
	protected static $_pass		= null;		/** use $_pass @ bae-env */
    protected static $_is_orp	= false;

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
		self::$_apid		= Bd_Passport_Conf::getConf('apid');
		self::$_tpl			= Bd_Passport_Conf::getConf('tpl');
		self::$_pass		= Bd_Passport_Conf::getConf('pass');
		self::$_is_orp		= intval(Bd_Passport_Conf::getConfEx('is_orp', 0)) === 1 ? true : false;
		
		if (is_null(self::$_apid)) {
			Bd_Passport_Log::warning("Apid for session Not Found!" , -1);
		}
		
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
	

	/**
	 * @brief	Talk With Session
	 *
	 */
	protected static function _____($strMethod , $arrInput){
		$ins = Bd_Passport_Interact::getEngine('Ral');
		
		//Fix Clientip . NET-ORDER , Int32(Neither UInt32 nor Long) 
		$arrInput['clientip'] = Bd_Passport_Util::ip2int(CLIENT_IP);

		//If @ORP , Need Pass(ie, Session Key)
		if (self::$_is_orp) {
            $arrInput['pass'] = self::$_pass;    
        }
		
        //If the session server is busy , Just retry once.
        $retry = 1;
		
		while($retry >= 0) {
			// Do Interaction CALL HERE !!!
			$ret = $ins->Call('session' , $strMethod , $arrInput);
			
			if (is_array($ret) && isset($ret['status'])) {
				self::$_errno = $ret['status'];
				//if (self::$_errno != 0) {
				//	Bd_Passport_Log::warning(self::$errmsgMap[self::$_errno], self::$_errno);
				//}
				if (self::RET_SSN2_SERVER_BUSY === $ret['status']) {
					Bd_Passport_Log::warning(self::$errmsgMap[self::$_errno], self::$_errno);
					-- $retry;
					continue;
				} else {
					return $ret;
				}
			} else {
				//Let errno not defined , getMessage will return 'Unknown error'.
				Bd_Passport_Log::warning('Unknown Error', self::$_errno);
				self::$_errno = -1;
				return false;
			}
		}
		return false;
	}
	
	public function getSID() {
		$arrInput = array(
			'cmd'	=> self::CMD_SSN2_GET_SID,
			'apid'	=> self::$_apid,
			'clientip'	=> ip2long(CLIENT_IP),
		);
		$ret = self::_____(__FUNCTION__ , $arrInput);
		return $ret;
	}
	

	public function login($intUid, $strUname, $gdata, $gmask, $pdata, $pmask, $exptime=0) {
		$arrInput = array(
			'cmd'		=> self::CMD_SSN2_LOGIN,
			'apid'		=> self::$_apid, 
			'clientip'	=> ip2long(CLIENT_IP),
			'uid'		=> intval($intUid),
			'uname'		=> strval($strUname),
			'(raw)gdata'	=> $gdata,
			'(raw)gmask'	=> $gmask,
			'(raw)pdata'	=> $pdata,
			'(raw)pmask'	=> $pmask,
			'exptime'		=> intval($exptime),
		);
		$ret = self::_____(__FUNCTION__ , $arrInput);
		return $ret;
	}
	
	public function login_v2($intUid, $strUname, $gdata, $gmask, $pdata, $pmask, $exptime=0, $email=null, $mobil=null) {
		$arrInput = array(
			'cmd'		=> self::CMD_SSN2_LOGIN,
			'apid'		=> self::$_apid, 
			'clientip'	=> ip2long(CLIENT_IP),
			'uid'		=> intval($intUid),
			'uname'		=> strval($strUname),
			'(raw)gdata'	=> $gdata,
			'(raw)gmask'	=> $gmask,
			'(raw)pdata'	=> $pdata,
			'(raw)pmask'	=> $pmask,
			'exptime'		=> intval($exptime),
		);
		if (!is_null($email)) {
			$arrInput['secureemail'] = $email;
		}
		if (!is_null($mobil)) {
			$arrInput['securemobil'] = $mobil;
		}
		$ret = self::_____(__FUNCTION__ , $arrInput);
		return $ret;
	}

	public function logout($strBduss) {
		if (!isset($strBduss)) {
			return false;
		}
		$arrInput = array(
			'cmd'	=> self::CMD_SSN2_LOGOUT, 
			'apid'	=> self::$_apid, 
			'clientip'	=> ip2long(CLIENT_IP),
			'bduss'	=> $strBduss,
		);
		return self::_____(__FUNCTION__ , $arrInput);
	}
	
	public function getData($strBduss) {
		$arrInput = array(
			'cmd'	=> self::CMD_SSN2_GET_DATA, 
			'apid'	=> self::$_apid, 
			'clientip'	=> ip2long(CLIENT_IP), 
			'bduss'	=> $strBduss,
		);
		//var_dump($arrInput);
		return self::_____(__FUNCTION__ , $arrInput);
	}

	public function modData($strBduss, $gdata, $gmask, $pdata, $pmask) {
		$arrInput = array(
			'cmd'		=> self::CMD_SSN2_MOD_DATA, 
			'apid'		=> self::$_apid,
			'clientip'	=> ip2long(CLIENT_IP),
			'bduss'		=> $strBduss,
			'(raw)gdata'	=> $gdata,
			'(raw)gmask'	=> $gmask,
			'(raw)pdata'	=> $pdata,
			'(raw)pmask'	=> $pmask,
		);
		return self::_____(__FUNCTION__ , $arrInput);
	}
	
	public function uidGetInfo($arrUids) {
		foreach($arrUids as $id) {
			if (!is_int($id)) {
				return false;
			}
		}
		$id_ct = count($arrUids);
		$arrInput = array(
			'cmd'	=> self::CMD_SSN2_UID_GET_INFO,
			'apid'	=> self::$_apid,
			'clientip'	=> ip2long(CLIENT_IP),
			'uid_cnt'	=> $id_ct,
			'uids'	=> $arrUids,
		);
		return self::_____(__FUNCTION__ , $arrInput);	
	}

	public function uidGetInfoStat($arrUids) {
		foreach($arrUids as $id) {
			if (!is_int($id)) {
				return false;
			}
		}
		$id_ct = count($arrUids);
		$arrInput = array(
			'cmd'	=> self::CMD_SSN2_UID_GET_INFO_STAT,
			'apid'	=> self::$_apid,
			'clientip'	=> ip2long(CLIENT_IP),
			'uid_cnt'	=> $id_ct,
			'uids'	=> $arrUids,
		);
		return self::_____(__FUNCTION__ , $arrInput);	
	}

	public function uidGetInfoTime($arrUids) {
		foreach($arrUids as $id) {
			if (!is_int($id)) {
				return false;
			}
		}
		$id_ct = count($arrUids);
		$arrInput = array(
			'cmd'	=> self::CMD_SSN2_UID_GET_INFO_TIME,
			'apid'	=> self::$_apid,
			'clientip'	=> ip2long(CLIENT_IP),
			'uid_cnt'	=> $id_ct,
			'uids'	=> $arrUids,
		);
		return self::_____(__FUNCTION__ , $arrInput);	
	}

	public function adminOffline($intUid , $strUname) {
		if (is_null($intUid) && is_null($strUname)) {
			return false;
		}
		
		$arrInput = array(
			'cmd'	=> self::CMD_SSN2_ADMIN_OFFLINE,
			'apid'	=> self::$_apid,
			'clientip'	=> ip2long(CLIENT_IP),
			'uid'	=> intval($intUid),
			'uname'	=> $strUname,
		);

		return self::_____(__FUNCTION__ , $arrInput);
	}

	public function adminGetData() {
		return false;
	}

	public function adminModData($intUid , $strUname , $gdata , $gmask , $pdata , $pmask, $email=null, $mobil=null) {
		
		$arrInput = array(
			'cmd'	=> self::CMD_SSN2_ADMIN_MOD_DATA,
			'apid'	=> self::$_apid,
			'clientip'	=> ip2long(CLIENT_IP),
			'uid'	=> intval($intUid),
			'uname'	=> strval($strUname),
			'(raw)gdata'	=> $gdata,
			'(raw)gmask'	=> $gmask,
			'(raw)pdata'	=> $pdata,
			'(raw)pmask'	=> $pmask,
		);
		if (!is_null($email)) {
			$arrInput['secureemail'] = $email;
		}
		if (!is_null($mobil)) {
			$arrInput['securemobil'] = $mobil;
		}
		return self::_____($arrInput);
	}

	public function authLogin($strBduss , $ptoken , $tpl) {
		$arrInput = array(
			'cmd'		=> self::CMD_SSN2_AUTH_LOGIN,
			'apid'		=> self::$_apid,
			'clientip'	=> ip2long(CLIENT_IP),
			'tpl'		=> strval($tpl),
			'bduss'		=> strval($strBduss),
			'ptoken'	=> strval($ptoken),
		);
		return self::_____(__FUNCTION__ , $arrInput);
	}

	public function authGetData($strBduss , $stoken) {
			
		$arrInput = array(
			'cmd'		=> self::CMD_SSN2_AUTH_GET_DATA,
			'apid'		=> self::$_apid,
			'clientip'	=> ip2long(CLIENT_IP),
			'tpl'		=> self::$_tpl,
			'bduss'		=> strval($strBduss),
			'stoken'	=> strval($stoken),
		);
		return self::_____(__FUNCTION__ , $arrInput);
	}

	public function authModData($strBduss , $stoken , $gdata , $gmask , $pdata , $pmask) {
		
		$arrInput = array(
			'cmd'		=> self::CMD_SSN2_AUTH_MOD_DATA,
			'apid'		=> self::$_apid,
			'clientip'	=> ip2long(CLIENT_IP),
			'tpl'		=> self::$_tpl,
			'bduss'		=> strval($strBduss),
			'stoken'	=> strval($stoken),
			'(raw)gdata'	=> $gdata,
			'(raw)gmask'	=> $gmask,
			'(raw)pdata'	=> $pdata,
			'(raw)pmask'	=> $pmask,
		);
		
		return self::_____(__FUNCTION__ , $arrInput);
	}

	public function parseGData($gdata) {
		$arrData = unpack("C*" , $gdata);
            
        if (count($arrData) != self::PUBLIC_DATA_LEN) {
            return false;
        }   
        $arrTest = array();
        foreach($arrData as $key => $val) {
            $arrTest[] = $val;
        }   
        $arrData = $arrTest;

        $arrGData = array(
            'pwd_protected'     => ($arrData[0] & 0x01) >> 0,
            'verified_mobil'    => ($arrData[0] & 0x02) >> 1,
            'verified_email'    => ($arrData[0] & 0x04) >> 2,
            'weak_pwd'          => ($arrData[0] & 0x08) >> 3,
            'rem_pwd'           => ($arrData[0] & 0x10) >> 4,
            'space'             => ($arrData[0] & 0x20) >> 5,
            'sex'               => ($arrData[0] & 0xc0) >> 6,

            'appstore'          => ($arrData[3] & 0x01) >> 0,
            'weakest_pwd'       => ($arrData[3] & 0x02) >> 1,
            'search'            => ($arrData[3] & 0x04) >> 2, // favo 
            'super'             => ($arrData[3] & 0x08) >> 3, 
            'search2'           => ($arrData[3] & 0x10) >> 4,
            'new_super'         => ($arrData[3] & 0x20) >> 5,
            'old_user'          => ($arrData[3] & 0x40) >> 6,
        
            'account'           => ($arrData[4] & 0xff),
        
            'device'            => ($arrData[5] & 0xff),
        );   

        return $arrGData;
	}
}



/* vim: set expandtab ts=4 sw=4 sts=4 tw=100 */
?>
