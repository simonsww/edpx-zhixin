<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
/**
 * @file	Bd/Passport.php
 * @author	fanmengzhe(com@baidu.com)
 * @date	2011/05/23 21:43:49
 * @brief	Passgate接口实现文件
 *  
 **/

/**支持的字段名
 *
 * @li \c	字段名			字段含义	是否可读取
 * @li \c	username		用户名		Y
 * @li \c	userid			用户ID		Y
 * @li \c	loginpass		用户密码	N
 * @li \c	securemobil		绑定手机	Y/N
 * @li \c	secureemail		绑定邮箱	Y/N
 * @li \c	realname		真实姓名	Y
 * @li \c	email			注册邮箱	Y
 * @li \c	sex				性别		Y	enum[0,未知|1,男|2,女]
 * @li \c	age				年龄		Y			
 * @li \c	realname		真实姓名	Y
 * @li \c	mobilephone		手机		Y	
 * @li \c	cardno			证件编号	N
 * @li \c	cardtype		证件类型	Y	enum[0,未知|1,身份证|2,学生证|3,军官证|4,护照]
 * @li \c	secure			Email地址保密	N
 * @li \c	regtime			注册时间	Y
 * @li \c	regip			注册IP		Y
 * @li \c	lasttime		最后访问时间	Y
 * @li \c	lastip			最后访问IP	Y
 * @li \c	userdetail		自我简介	Y
 * @li \c	trade			行业		Y	enum[0未知|1广告/营销/公关|2航天|3农业/化工/林业产品|4汽车|5计算机/电子产品|6建筑|7教育（包括学生）|8能源/采矿|9金融/保险/房地产|10政府/军事/公共服务|11招待|12传媒/出版/娱乐|13医疗/保健服务|14制药|15零售|16服务|17电信/网络|18旅游/交通|20其他]
 * @li \c	job				职位		Y	enum[0未知|1学生|2普通职员|3工程师|4总经理|董事长|CXO|5市场部经理；6销售部经理；7行政主管；8人事主管；9财务主管；10技术主管；11退休；12其他]
 * @li \c	address			地址		Y
 * @li \c	postcode		邮编		Y
 * @li \c	province		省份		Y	enum[0-35]
 * @li \c	education		教育程度	Y	enum[0-4]	0未知；1高中以下；2高中/中专；3大学/本科；4研究生及以上
 * @li \c	blood			血型		Y	enum[0-4]	0未知；1A；2B；3O；4AB
 * @li \c	constellation	星座		Y	enum[0未知|1水瓶|2双鱼|3白羊|4金牛|5双子|6巨蟹|7狮子|8处女|9天秤|10天蝎|11射手|12魔羯]
 * @li \c	birthday_year	生日-年		Y
 * @li \c	birthday_month	生日-月		Y
 * @li \c	birthday_day	生日-日		Y
 * @li \c	marriage		婚否		Y	enum[0未知|1单身|2已婚]
 * @li \c	income			收入		Y	enum[0|未知；1|1000以下；2|1000-2000元；3|2000-3000元；4|3000-4000元；5|4000-5000元；6|5000-6000元；7|6000-7000元；8|7000-8000元；9|8000-9000元；10|9000-10000元；11|10000元以上
 * @li \c	lockmail		Email锁定	Y	enum[Y|N]
 * @li \c	userstate		用户状态	Y
 * @li \c	figure			未知		Y
 * @li \c	character		性格		Y
 * @li \c	smoke			是否吸烟	Y
 * @li \c	drink			是否喝酒	Y
 * @li \c	contactinfo		未知		Y
 * @li \c	pass_question	密码提示问题	N	只对特定IP授权
 * @li \c	pass_answer		密码提示答案	N	只对特定IP授权
 * 
 */
 
 /* 
 $arrAllFields = array ("username","userid","loginpass","securemobil","secureemail",
	"realname","email","secure","lockmail","userdetail","sex", "cardtype",
	"cardno","postcode","mobilephone","address","province",
	"income","education","trade","job","pass_question","pass_answer",
	"regtime","regip","birthday_year","birthday_month","birthday_day",
	"blood","marriage","constellation","tagorder","figure","smoke","drink",
	"rest","contactinfo","taginfo","tagsign","updatetime_ex",
	"character","lasttime","lastip",
 );
 *
 */

/**
 * @brief	Bd_Passport Passgate服务交互实现
 */
class Bd_Passport_Passgate implements Bd_Passport_IError{
	protected static $_instance		= null;
	protected static $_errno		= 0;
	protected static $_errmsg		= "";
	protected static $_appUser		= null;
	protected static $_appPasswd	= null;
	
	protected static $_encoding		= 'utf8';
	public static $errmsgMap = array (
		0   => '[Passgate]OK',
		400 => '[Passgate]Bad Request',
		403 => '[Passgate]Authorized Failed',
		500 => '[Passgate]Internal Error',
		501 => '[Passgate]Read Request Failed',
		502 => '[Passgate]Response Exchange Failed',
		503 => '[Passgate]Request Params Failed',
		504 => '[Passgate]Response Get Map Failed',
	);

	public static $tagFieldsMap = array(
		128 => "Birth place",
		129 => "Live place",
		130 => "Other School",
		131 => "Favorite book",
		132 => "Favorite music",
		133 => "Favorite movie",
		134 => "Favorite sport",
		135 => "Favorite person",
		136 => "Other Hobby",
		137 => "Favorite brand",
		138 => "Work info",
		139 => "College",
		140 => "Senior School",
		141 => "Junior School",
		142 => "Primary School",
	);


	//implmention of IError
	public function isError() {
		return self::$_errno === 0 ? false : true;
	}

	public function getCode() {
		return self::$_errno;	
	}

	public function getMessage() {
		return isset(self::$errmsgMap[self::$_errno]) ? self::$errmsgMap[self::$_errno] : '[Passgate]Unknown Error';
	}

	protected function __construct() {
		self::$_appUser		= Bd_Passport_Conf::getConf('app_user');
		self::$_appPasswd	= Bd_Passport_Conf::getConf('app_passwd');
		self::$_encoding	= Bd_Passport_Conf::getConfEx('internal_encoding', 'utf8');
		
		if (!in_array(self::$_encoding, array('gbk', 'gb18030', 'utf8'))) {
			self::$_encoding = 'utf8';
		}

		if (is_null(self::$_appUser) || is_null(self::$_appPasswd)) {
			Bd_Passport_Log::warning("Invalid app_user or app_passwd." , E_USER_ERROR);
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
	 * @brief	根据查询的字段，自动适配service
	 *			若只查性别	使用highuserinfo服务(ksa)
	 *			其余情况	使用userinfo_all服务(dbgate)
	 * @author	fanmengzhe
	 * @param	var		$varUid		用户ID[数组]
	 * @param	array	$arrFields	待获取的字段名数组
	 * @return	
	 */
	public function getUserInfoByUid($varUid , $arrFields) {
		$strService = '';
		if (1 === count($arrFields) && in_array('sex', $arrFields)) {
			$strService = 'highuserinfo';
		} else {
			$strService = 'userinfo_all';
		}
		$arrInput = $this->_prepareTemplate($strService , 'batget' , $arrFields);
		$arrUids = array();
		if (is_int($varUid)) {
			$arrUids = array(intval($varUid));
		} elseif (is_array($varUid)) {
			foreach($varUid as $intUid) {
				$arrUids[] = intval($intUid);
			}
		} else {
			Bd_Passport_Log::warning("[getUserInfoByUid]Invalid params.", E_USER_WARNING);
			return false;
		}
		$arrInput['content'][0]['params']['userid'] = $arrUids;
		$ret = self::_____(__FUNCTION__ , $arrInput);
		return $ret;
	}


	/**
	 * @brief	根据查询的字段，自动适配service
	 *			若只查用户ID	使用userinfo服务(unameidx)
	 *			其余情况		使用userinfo_all服务(dbgate)
	 * @author	fanmengzhe
	 * @param	var		$varUname		用户名[数组]
	 * @param	array	$arrFields		待获取的字段名数组
	 * @return	
	 */
	public function getUserInfoByUname($varUname , $arrFields) {
		$strService = '';
		if (1 === count($arrFields) && in_array('userid', $arrFields)) {
			$strService = 'userinfo';
		} else {
			$strService = 'userinfo_all';
		}

		$arrUnames = array();
		if (is_string($varUname)) {
			$arrUnames = array(strval($varUname));
		} elseif (is_array($varUname)) {
			foreach($varUname as $strUname) {
				$arrUnames[] = strval($strUname);
			}
		} else {
			Bd_Passport_Log::warning("[getUserInfoByUname]Invalid params.", E_USER_WARNING);
			return false;
		}
		$arrInput = $this->_prepareTemplate($strService , 'batget' , $arrFields);
		$arrInput['content'][0]['params']['username'] = $arrUnames;
		
		return self::_____(__FUNCTION__ , $arrInput);
	}



	/**
	 * @brief	Talk With Passgate
	 * @author	fanmengzhe
	 * @param	string	$strMethod	[batget]
	 * @param	array	$arrInput	输入数组
	 * @return	
	 */
	protected static function _____($strMethod , $arrInput) {
		$ins = Bd_Passport_Interact::getEngine('Ral');
		$retry = 1;

		while ($retry -- >= 0) {
			$ret = $ins->Call('passgate' , $strMethod , $arrInput);
		
			// Return false when Ral Failed 
			if (!is_array($ret)) {
				self::$_errno = -1;
				Bd_Passport_Log::warning('Communication with Passgate failed.', self::$_errno);
				continue;
			}

			if (isset($ret['header']['err_no'])) {
				self::$_errno	= $ret['header']['err_no'];
				self::$_errmsg	= $ret['header']['errno_info'];
				Bd_Passport_Log::warning("[Input :".json_encode($arrInput)."]", -1);
				Bd_Passport_Log::warning("[Output:".json_encode($ret)."]", self::$_errno);
				continue;	
			} else {
				self::$_errno	= 0;
			}
		
			if (!isset($ret['content'])) {
				Bd_Passport_Log::warning("[Input :".json_encode($arrInput)."]", -1);
				Bd_Passport_Log::warning("[Output:".json_encode($ret)."]", self::$_errno);
				continue;
			}
		
			foreach($ret['content'] as &$content) {
				if (!isset($content['result_params'])) {
					Bd_Passport_Log::warning("[Input :".json_encode($arrInput)."]", -1);
					Bd_Passport_Log::warning("[Output:".json_encode($ret)."]", self::$_errno);
					continue;
				}
				foreach($content['result_params'] as $key => &$val) {
					if (isset($val['taginfo'])) {
						$val['taginfo'] = self::_parseTagInfo($val['taginfo']);
					}
					if (isset($val['taginfo_ex'])) {
						$val['taginfo_ex'] = self::_parseTagInfoEx($val['taginfo_ex']);
					}
				}
			}
			return $ret;
		}
		//retry once
		return false;
	}

	protected static function _prepareTemplate($strService , $strMethod , $arrParams) {
		$arrInput = array(
			'header' => array(
				'content_type'	=> 'McpackRpc',	
			),
			'content' => array(
				array(
					'service_name'	=> $strService,
					'id'			=> 1,
					'method'		=> $strMethod,
					'params'		=> array(
						'app_user'		=> self::$_appUser,
						'app_passwd'	=> self::$_appPasswd,
						'inter_encoding'=> self::$_encoding,
						'req_fields'	=> $arrParams,
					),
				),
			),
		);
		return $arrInput;	
	}


	protected function _parseTagInfo($strTag) {
		$arrRet = array();
		if (0 == strlen($strTag)) {
			return array();
		}

		$arrTag = explode(chr(1) , $strTag);
		if (is_array($arrTag) && count($arrTag) > 0) {
			foreach ($arrTag as $tag) {
				if (0 < strlen($tag)) {
					$tagIndex = ord($tag[0]);
					$tagValue = substr($tag , 1);

					$arrRet[$tagIndex] = array();
					if (strlen($tagValue) > 0) {
						$arrTagSect = explode(chr(2) , $tagValue);
						if (is_array($arrTagSect) && count($arrTagSect) > 0) {
							$arrRet[$tagIndex] = $arrTagSect;
						} else {
							$arrRet[$tagIndex] = array();
						}   
					} else {
						$arrRet[$tagIndex] = array(); 
					}   
				}   
			}   
		}
		return $arrRet;
	}

	protected function _parseTagInfoEx($extStr){
		$retArr = array();
		if (0 == strlen($extStr)){
			return $retArr;
		}

		$tagArr = explode(chr(1),$extStr);
		if (is_array($tagArr) && ($tagArrCount = count($tagArr))>0){

			for($i = 0; $i < $tagArrCount; $i++){
				$tag = $tagArr[$i];
				if (0<strlen($tag)){
					$tagIndex=ord($tag[0]);
					if (!isset($retArr[$tagIndex])){
						$retArr[$tagIndex] = array();
					}
					$tagValue=substr($tag,1);
					if (strlen($tagValue)>0){
						$tagSectionArr = explode(chr(2),$tagValue);
						if (is_array($tagSectionArr) && count($tagSectionArr)>0){
							$retArr[$tagIndex][] = $tagSectionArr;
						}else{
							$retArr[$tagIndex][]=array();
						}
					}else{
						$retArr[$tagIndex][]=array(); //if tag value is empty, the array of the tag is array(),not array('');
					}
				}
			}
		}
		return $retArr;
	}
}

/* vim: set expandtab ts=4 sw=4 sts=4 tw=100 */
?>
