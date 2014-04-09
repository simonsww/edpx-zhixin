<?php
/**
 * 基础类
 * @author 贾春鑫(jiachunxin@baidu.com)
 *
 */
class Util {
	
	const PUBLIC_DATA_LEN = 32;
	
	// 获取当前app的配置
	public static function getAppConf($strItem, $strValuePath) {
		$strItemPath = '/app/' . Bd_AppEnv::getCurrApp () . '/' . $strItem;
		$arrRes = self::getConf ( $strItemPath, $strValuePath );
		return $arrRes;
	}
	// 获取任意配置
	public static function getConf($strItemPath, $strValuePath) {
		$arrValue = Bd_Conf::getConf ( $strItemPath );
		if ($arrValue === false) {
			return false;
		}
		$arrValuePath = explode ( '/', $strValuePath );
		foreach ( $arrValuePath as $strPath ) {
			if (trim ( $strPath ) === '') {
				return false;
			}
			$arrValue = $arrValue [$strPath];
			if (! isset ( $arrValue )) {
				return false;
			}
		}
		return $arrValue;
	}
	/**
	 * php的mcpack不支持:
	 * 1、value为null、fasle、true、对象
	 * 2、数字和字符串混合为key的情况
	 *
	 * @param $obj unknown_type       	
	 * @return boolean multitype:unknown
	 */
	public static function mcpack_normal($obj) {
		if (is_array ( $obj )) {
			$strType = null;
			foreach ( $obj as $key => $value ) {
				if (empty ( $strType )) {
					$strType = gettype ( $key );
				} else if ($strType !== gettype ( $key )) {
					return false;
				}
				$ret = self::mcpack_normal ( $value );
				if ($ret === false) {
					unset ( $obj [$key] );
				} else {
					$obj [$key] = $ret;
				}
			}
			return $obj;
		} else if ($obj === false || $obj === null || $obj === true || is_object ( $obj )) {
			// mcpack不支持
			return false;
		} else {
			return $obj;
		}
	}
	/**
	 * 选择使用首页、结果页还是无结果页
	 *
	 * @param $arrData unknown_type       	
	 * @return number 0 无结果页
	 *         1 结果页
	 *         2 首页
	 */
	public static function getTemplatePage($arrData) {
		$intPage = 1;
		if ($arrData ['uiControl'] ['isFrontPage']) {
			$intPage = 2;
		} else {
			$arrServices = $arrData ['uiControl'] ['services_ResultPage'];
		}
		if ($arrData ['uiData'] ['queryInfo'] ['resultNum'] <= 0) {
			/*
			 * This is used for baidurs2wise and baiduse. Those two template
			 * only need RS result
			 */
			if (! $arrServices [SvrType_AS] && $arrServices [SvrType_RS]) {
				$intPage = 1;
			} else if (! $arrServices [SvrType_AS] && $arrServices [SvrType_EC]) {
				$intPage = 1;
			} else {
				$intPage = 0;
			}
		} else {
			$intPage = 1;
		}
		
		if ($arrData ['uiControl'] ['ignoreUrl'] && $arrData ['queryInfo'] ['urlSearch']) {
			$intPage = 0;
		}
		return $intPage;
	}
	
	/* --------------------------------------------------------------------------*/
	/**
	 * @Synopsis  parseGData
	 *
	 * @Param $gdata
	 *
	 * @Returns
	 *
	 * @author fubendong(com@baidu.com)
	 *
	 * @date 2013-4-7 15:29:03
	 */
	/* ----------------------------------------------------------------------------*/
	
	public static function parseGData($gdata) {
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
				'verifyQuestion'    => ($arrData[0] & 0x01) >> 0,
				'verifyMobile'      => ($arrData[0] & 0x02) >> 1,
				'verifyEmail'       => ($arrData[0] & 0x04) >> 2,
				'passwordWeak'      => ($arrData[0] & 0x08) >> 3,
				'passwordRemember'  => ($arrData[0] & 0x10) >> 4,
				'openSpace'         => ($arrData[0] & 0x20) >> 5,
				'openApp'           => ($arrData[3] & 0x01) >> 0,
				'passwordExweak'    => ($arrData[3] & 0x02) >> 1,
				'openFavo'          => ($arrData[3] & 0x04) >> 2,
				'openSuperPC'       => ($arrData[3] & 0x08) >> 3,
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
				'usersource'        => ($arrData[4] & 0x3f),
				'account'           => ($arrData[4] & 0xff),
				'device'            => ($arrData[5] & 0xff),
				'incomplete_user'   => ($arrData[6] & 0x01) >> 0,
	
		);
	
		return $arrGData;
	}
	
	
	public static function urlParser($strUrl){
		if(empty($strUrl)){
			return false;
		}
		$arrParams = self::proper_parse_str($strUrl);
		//dq
		if(!empty($arrParams['dq']) && is_array($arrParams['dq'])){
			foreach($arrParams['dq'] as $strValue){
				$strDqValue = empty($strDqValue) ? $strValue : $strDqValue.' '.$strValue;
				$arrParams['dq'] = $strDqValue;
			}
		}
		//word
		if(empty($arrParams['word'])){
			$arrParams['word'] = '';
			if(!empty($arrParams['ft'])){
				$arrParams['word'] = $arrParams['word'] .'filetype:'.$arrParams['ft'].' ';
			}
			if(!empty($arrParams['q6'])){
				$arrParams['word'] = $arrParams['word'] . 'site('.$arrParams['q6'].')';
			}
			$arrParams['word'] .= ' ';
			
			if(empty($arrParams['q1']) && empty($arrParams['q2']) && empty($arrParams['q3']) && empty($arrParams['q4']) && empty($arrParams['q6'])){
				unset($arrParams['q5']);
			}
			if(!empty($arrParams['q5'])){
				switch($arrParams['q5'][0]){
					case '1':
						$arrParams['word'] = $arrParams['word'] . 'title :(';
						break;
					case '2':
						$arrParams['word'] = $arrParams['word'] . 'inurl :(';
						break;
					default:
						$arrParams['word'] .= ' ';
				}
			}else{
				$arrParams['word'] .= ' ';
			}
			
			if(isset($arrParams['q1']) && !empty($arrParams['q1'])){
				$arrParams['word'] .= $arrParams['q1'];
			}
			
			if(isset($arrParams['q2']) && !empty($arrParams['q2'])){
				$arrParams['word'] .= ' "'.$arrParams['q2'].'" ';
			}
			
			if(isset($arrParams['q3']) && !empty($arrParams['q3'])){
				$strQ3 = '';
				$arrTemp = explode('+',$arrParams['q3']);
				foreach($arrTemp as $strTemp){
					if(!empty($strTemp)){
						$strQ3 = empty($strQ3) ? $strTemp : $strQ3.' | '.$strTemp;
					}
				}
				$arrParams['word'] = $arrParams['word'] .' ('.$strQ3.')';
			}
			
			if(isset($arrParams['q4']) && !empty($arrParams['q4'])){
				$strQ4 = '';
				$arrTemp = explode('+',$arrParams['q4']);
				foreach($arrTemp as $strTemp){
					if(!empty($strTemp)){
						$strQ4 = empty($strQ4) ? $strTemp : $strQ4.' | '.$strTemp;
					}
				}
				$arrParams['word'] .= ' - ('.$strQ4.') ';
			}
			
			$arrParams['word'] = trim($arrParams['word']);
			if(!empty($arrParams['q5']) && in_array($arrParams['q5'][0],array('1','2'))){
				$arrParams['word'] .= ')';
			}
		}else{
			$arrParams['word'] = urldecode($arrParams['word']);
		}
		
		if(empty($arrParams['z']) && !empty($arrParams['dq'])){
			$arrParams['z'] = $arrParams['dq'];
		}
		return $arrParams;
	}
	
	private static function proper_parse_str($str) {
		$arr = array ();
		$pairs = explode ( '&', $str );
		foreach ( $pairs as $i ) {
			list ( $name, $value ) = explode ( '=', $i, 2 );
			//只有dq参数允许多个，其他的均用最后一个
			if (isset ( $arr [$name] ) && in_array($name,array('dq'))) {
				if (is_array ( $arr [$name] )) {
					$arr [$name] [] = $value;
				} else {
					$arr [$name] = array ($arr [$name],$value );
				}
			} 			
			else {
				$arr [$name] = $value;
			}
		}
		return $arr;
	}
	
	public static function getBaiduId($strBaiduId){
		if(empty($strBaiduId)){
			return "";
		}
		//BAIDUID=43029A47DFBBD45C0811072D8FA45C85:FG=1;
		//将偏好信息切分出来
		$arrItem = split (':', $strBaiduId);
		return $arrItem[0];
	}

// 	public static function getSnapShortMapStr($data){
// 		$intProtectNum = intval($data['uiData']['queryInfo']['protectNum']);
// 		$intTotalResultNum = intval($data['uiData']['queryInfo']['tPageNo']) * intval($data['uiData']['queryInfo']['resNum']);
// 		$intEcResultNum = intval($data['uiData']);
	
// 		$arrTime = gettimeofday();
// 		$intRandState = $arrTime['sec'] & $arrTime['usec'];
	
// 		$strInbuf = "c=";
// 		$intLoopIndex = $intProtectNum;
// 		while($intLoopIndex > 0){
// 			$strInbuf .= "1";
// 			$intLoopIndex--;
// 		}
// 		$intLoopIndex = $intEcResultNum;
// 		while($intLoopIndex > 0){
// 			$strInbuf .= "0";
// 			$intLoopIndex--;
// 		}
// 		$intLoopIndex = $intTotalResultNum - $intProtectNum + srand($intRandState) % 6;
// 		while($intLoopIndex >0){
// 			$strInbuf .="1";
// 			$intLoopIndex--;
// 		}
// 		//$ret = se_encry($strInbuf);
// 		$strSnapMapStr = '';
// 		if($ret >= 0){
// 			//$strSnapMapStr = GetEncryptionUrl($strInbuf,800,$intRandState);
// 		}
// 		return $strSnapMapStr;
// 	}
	
	public static function getStrategyState($strTemplateName){
		$arrRst = array(0,0);
		if(empty($strTemplateName)){
			return $arrRst;
		}
		$arrStrategyInfo[] = array('strategy_id'=>0,'strategy_name'=>'DIFF_STRATEGY','state'=>0,'sample_num'=>0,'sample_name'=>'');
		$arrStrategyInfo[] = array('strategy_id'=>0,'strategy_name'=>'JC_SEPA_STRATEGY','state'=>0,'sample_num'=>0,'sample_name'=>'');
		foreach($arrStrategyInfo as $intIndex => &$arrOneStrategyInfo){
			$arrOneStrategyInfo['state'] = 0;
			$arrOneStrategyInfo['sample_num'] = 0;
			if(!empty($arrOneStrategyInfo['strategy_name']) && isset($GLOBALS[$arrOneStrategyInfo['strategy_name']])){
				$strValue = $GLOBALS[$arrOneStrategyInfo['strategy_name']];
				sscanf($strValue,"%u",$arrOneStrategyInfo['state']);
				if($arrOneStrategyInfo['state'] == 2){
					if($arrOneStrategyInfo['sample_num'] >= 20){
						return $arrRst;
					}
					if($strValue[0] = '[' && $strValue[-1] == ']'){
						$arrTemp = explode(',',$strValue);
						if(!empty($arrTemp)){
							foreach($arrTemp as $strTemp){
								$intLen = strlen($strTemp);
								if($intLen <=0 || $intLen >= 32-1){
									return $arrRst;
								}
								$arrOneStrategyInfo['sample_name'][$arrOneStrategyInfo['sample_num']] = substr(trim($strTemp),0,32);
							}
						}
					}
				}
			}
				
			if($arrOneStrategyInfo['strategy_id'] <0 || $arrOneStrategyInfo['strategy_id'] >= 4){
				$arrRst[$intIndex] = 0;
				continue;
			}
			switch($arrOneStrategyInfo['state']){
				case 0:
					$arrRst[$intIndex] = 0;
					break;
				case 1:
					$arrRst[$intIndex] = 1;
					break;
				case 2:
					$bolFinded = false;
					foreach($arrOneStrategyInfo['sample_name'] as $strTempName){
						if(strcasecmp($strTempName,$strTemplateName) ==0){
							$arrRst[$intIndex] = 0;
							$bolFinded = true;
							break;
						}
					}
					if(!$bolFinded){
						$arrRst[$intIndex] = 1;
					}
			}
		}
		return $arrRst;
	}
        //任意大的数字之间做进制转换
        public static function convBase($numberInput, $fromBaseInput, $toBaseInput) {
            if ($fromBaseInput == $toBaseInput)
                return $numberInput;
            $fromBase = str_split($fromBaseInput, 1);
            $toBase = str_split($toBaseInput, 1);
            $number = str_split($numberInput, 1);
            $fromLen = strlen($fromBaseInput);
            $toLen = strlen($toBaseInput);
            $numberLen = strlen($numberInput);
            $retval = '';
            if ($toBaseInput == '0123456789') {
                $retval = 0;
                for ($i = 1; $i <= $numberLen; $i++)
                    $retval = bcadd($retval, bcmul(array_search($number[$i - 1], $fromBase), bcpow($fromLen, $numberLen - $i)));
                return $retval;
            }
            if ($fromBaseInput != '0123456789')
                $base10 = convBase($numberInput, $fromBaseInput, '0123456789');
            else
                $base10 = $numberInput;
            if ($base10 < strlen($toBaseInput))
                return $toBase[$base10];
            while ($base10 != '0') {
                $retval = $toBase[bcmod($base10, $toLen)] . $retval;
                $base10 = bcdiv($base10, $toLen, 0);
            }
            return $retval;
    }
    
    //判断是否是utf-8编码
    public static function isUTF8($str) {
        if($str == iconv("UTF-8", "UTF-8//IGNORE", $str)){
            return true;
        }
        return false;
    }

   public static function replace($string,$keyArray,$replacement,$i){
    	$result='';
    	if($i<(count($keyArray))){
    		$strSegArray=explode($keyArray[$i],$string);
    		foreach ($strSegArray as $index=>$strSeg){
    			$x=$i+1;
    			if($index==(count($strSegArray)-1))
    				$result=$result.Util::replace($strSeg,$keyArray,$replacement,$x);
    			else
    				$result=$result.Util::replace($strSeg,$keyArray,$replacement,$x).$replacement[$i];
    		}
    		return $result;
    	}
    	else{
    		return $string;
    	}
    }
    
    public static function load_image_tpl_conf($platform, $language, $type, $templateName) {
        $tplConfPath = CSmarty::getTplFolderPath ( VUI_TEMPLATE_PATH, $platform, $language, $type );
        if (! file_exists ( "{$tplConfPath}/{$templateName}/tpl.conf" )) {
            return false;
        }
        if(filesize("{$tplConfPath}/{$templateName}/tpl.conf" ) == 0){
            return false;
        }
        $conf = TplConf::config_load ( "{$tplConfPath}/{$templateName}", "tpl.conf" );
        if (false === $conf) {
            $status = $GLOBALS ['STATUS_CODE'] ['LOAD_TPLCONF_FAIL'];
            $logArr ['platform'] = $platform;
            $logArr ['language'] = $language;
            $logArr ['type'] = $type;
            $logArr ['templateName'] = $templateName;
            CLog::warning ( $GLOBALS ['STATUS_MSG'] [$status] . ", load tpl config fail", $status, $logArr, 1 );
            return false;
        }
        $arrImgConf = array ();
        foreach ( $conf ['img'] as $key => $value ) {
            $temp_path = array ();
            $path_array = explode ( '[]', $value );
            foreach ( $path_array as $path ) {
                $new_path = array ();
                $path_item = explode ( '.', $path );
                foreach ( $path_item as $item ) {
                    $item = trim ( $item );
                    if (! empty ( $item )) {
                        $new_path [] = $item;
                    }
                }
                if (! empty ( $new_path )) {
                    $temp_path [] = implode ( '.', $new_path );
                }
            }
            if (! empty ( $temp_path )) {
                $arrImgConf [] = $temp_path;
            }
        }
        $conf ['img'] = $arrImgConf;
        return $conf;
    }

    public static function get_image_src(&$imgUrlList,$src){
        $imgUrlList[] = $src;
    }
    
    public static function get_image_sid(&$arrImgList, $strImgSrc) {
    	$strImgSid = "";
    	$arrUarg = array ();
    	$strTemp = "";
    
    	
    	$intUPos = strpos ( $strImgSrc, "u=" );
    	if ($intUPos === false) {
    		return false;
    	}
    	$intNextPos = strpos ( $strImgSrc, "&", $intUPos );
    	if ($intNextPos === false) {
    		$strTemp = substr ( $strImgSrc, $intUPos + 2 );
    	} else {
    		$strTemp = substr ( $strImgSrc, $intUPos + 2, $intNextPos - $intUPos - 2 );
    	}
    	$arrUarg = explode ( ",", $strTemp );
    	if (! is_array ( $arrUarg ) || empty ( $arrUarg ) || count ( $arrUarg ) != 2) {
    		return false;
    	}
    	unset ( $intNextPos );
    	unset ( $strTemp );
    
    	// fm
    	$intFmPos = strpos ( $strImgSrc, "fm=" );
    	if ($intFmPos === false) {
    		return false;
    	}
    	$intNextPos = strpos ( $strImgSrc, "&", $intFmPos );
    	if ($intNextPos === false) {
    		$strTemp = substr ( $strImgSrc, $intFmPos + 3 );
    	} else {
    		$strTemp = substr ( $strImgSrc, $intFmPos + 3, $intNextPos - $intFmPos - 3 );
    	}
    
    	// img id
    	$strImgSid = $arrUarg [0] . "_" . $arrUarg [1] . "_" . $strTemp;
    	$arrImgList [$strImgSrc] = $strImgSid;
    }
    
	
	 /**
	  *  根据tn图片url，获取图片id。供base64和图片预取调用。
	  *  输入格式：http://t11.baidu.com/it/u=1971732778,1601450492&fm=58
	  *  输出格式: 1971732778_1601450492_58
      *  by lizhouquan@baidu.com 2014-03-05
	  */
	public static function parse_image_urlToId( $strImgSrc ) {
		$strImgSid = "";
		$arrUarg = array ();
		$strTemp = "";
		
		// u
		$intUPos = strpos ( $strImgSrc, "u=" );
		if ($intUPos === false) {
			return false;
		}
		$intNextPos = strpos ( $strImgSrc, "&", $intUPos );
		if ($intNextPos === false) {
			$strTemp = substr ( $strImgSrc, $intUPos + 2 );
		} else {
			$strTemp = substr ( $strImgSrc, $intUPos + 2, $intNextPos - $intUPos - 2 );
		}
		$arrUarg = explode ( ",", $strTemp );
		if (! is_array ( $arrUarg ) || empty ( $arrUarg ) || count ( $arrUarg ) != 2) {
			return false;
		}
		unset ( $intNextPos );
		unset ( $strTemp );
		
		// fm
		$intFmPos = strpos ( $strImgSrc, "fm=" );
		if ($intFmPos === false) {
			return false;
		}
		$intNextPos = strpos ( $strImgSrc, "&", $intFmPos );
		if ($intNextPos === false) {
			$strTemp = substr ( $strImgSrc, $intFmPos + 3 );
		} else {
			$strTemp = substr ( $strImgSrc, $intFmPos + 3, $intNextPos - $intFmPos - 3 );
		}
		
		// img id
		$strImgSid = $arrUarg [0] . "_" . $arrUarg [1] . "_" . $strTemp;
		return $strImgSid;
	}

	/**
	* 识别UA，查看是否支持base64
	* Param : userAgent {String}
	* Return: boolean
	*
	* Author: lizhouquan@baidu.com 2014-03-06
	*/
	public static function checkUserAgentForBase64($strUserAgent) {
		
		if (empty ( $strUserAgent )) {
			return false;
		}
		$strUserAgent = strtolower ( $strUserAgent );
		$intPos = strpos ( $strUserAgent, "msie 6.0" );
		if ($intPos !== false) {
			return false;
		}
		unset ( $intPos );
		$intPos = strpos ( $strUserAgent, "msie 7.0" );
		if ($intPos !== false) {
			return false;
		}
		return true;
	}
	

    public static function parse_image_conf($arrResultData, &$arrImgList, $arrImgConf) {
    	$cnt = count ( $arrImgConf );
    	$status = - 1;
    	if (1 === $cnt) {
    		$paths = explode ( '.', $arrImgConf [0] );
    		$paths_count = count ( $paths );
    		switch ($paths_count) {
    			/**
    			 *
    			 * @example : @enc : tplData
    			 */
    			case 1 :
    				$link = $arrResultData [$paths [0]];
    				if (! empty ( $link )) {
    					if (! is_array ( $link )) {
                            self::get_image_src ( $arrImgList, $link );
    					} else {
    						foreach ( $link as $k => $v ) {
                                self::get_image_src ( $arrImgList, $v );
    						}
    					}
    						
    				} else {
    					$logArr ['img'] = "data['resultData'][$paths[0]]";
    					CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    					return false;
    				}
    				break;
    				/**
    				 *
    				 * @example : @enc : tplData.loc
    				 */
    			case 2 :
    				$link = $arrResultData [$paths [0]] [$paths [1]];
    				if (! empty ( $link )) {
    					if (! is_array ( $link )) {
    						self::get_image_src ( $arrImgList, $link );
    					} else {
    						foreach ( $link as $k => $v ) {
    							self::get_image_src ( $arrImgList, $v );
    						}
    					}
    						
    				} else {
    					$logArr ['img'] = "data['resultData'][$paths[0]][$paths[1]]";
    					CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    					return false;
    				}
    				break;
    				/**
    				 *
    				 * @example : tplData.moreprice.link
    				 */
    			case 3 :
    				$link = $arrResultData [$paths [0]] [$paths [1]] [$paths [2]];
    				if (! empty ( $link )) {
    					if (! is_array ( $link )) {
    						self::get_image_src ( $arrImgList, $link );
    					} else {
    						foreach ( $link as $k => $v ) {
    							self::get_image_src ( $arrImgList, $v );
    						}
    					}
    						
    				} else {
    					$logArr ['img'] = "data['resultData'][$paths[0]][$paths[1]][$paths[2]]";
    					CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    					return false;
    				}
    				break;
    				/**
    				 *
    				 * @example : tplData.moreprice.link.link
    				 */
    			case 4 :
    				$link = $arrResultData [$paths [0]] [$paths [1]] [$paths [2]] [$paths [3]];
    				if (! empty ( $link )) {
    					if (! is_array ( $link )) {
    						self::get_image_src ( $arrImgList, $link );
    					} else {
    						foreach ( $link as $k => $v ) {
    							self::get_image_src ( $arrImgList, $v );
    						}
    					}
    						
    				} else {
    					$logArr ['img'] = "data['resultData'][$paths[0]][$paths[1]][$paths[2]][$paths[3]][$k]";
    					CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    					return false;
    				}
    				break;
    				/**
    				 *
    				 * @example : tplData.moreprice.link.link.link
    				 */
    			case 5 :
    				$link = $arrResultData [$paths [0]] [$paths [1]] [$paths [2]] [$paths [3]] [$paths [4]];
    				if (! empty ( $link )) {
    					if (! is_array ( $link )) {
    						self::get_image_src ( $arrImgList, $link );
    					} else {
    						foreach ( $link as $k => $v ) {
    							self::get_image_src ( $arrImgList, $v );
    						}
    					}
    						
    				} else {
    					$logArr ['img'] = "data['resultData'][$paths[0]][$paths[1]][$paths[2]][$paths[3]][$paths[4]]";
    					CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    					return false;
    				}
    				break;
    		}
    			
    		return true;
    	}
    
    	if (2 === $cnt) {


    		$paths_one = explode ( '.', $arrImgConf [0] );
    		$paths_one_count = count ( $paths_one );
    			
    		$paths_two = explode ( '.', $arrImgConf [1] );
    		$paths_two_count = count ( $paths_two );
    			
    		$total_count = $paths_one_count + $paths_two_count;

    		switch ($total_count) {
    			/**
    			 *
    			 * @example : tplData[].morebrand
    			 */
    			case 2 :
    				foreach ( $arrResultData [$paths_one [0]] as $key => $value ) {
    					$link = $arrResultData [$paths_one [0]] [$key] [$paths_two [0]];
    					if (! empty ( $link )) {
    						if (! is_array ( $link )) {
    							self::get_image_src ( $arrImgList, $link );
    						} else {
    							foreach ( $link as $k => $v ) {
    								self::get_image_src ( $arrImgList, $v );
    							}
    						}
    					} else {
    						$logArr ['img'] = "data['resultData'][$paths_one[0]][$key][$paths_two[0]]";
    						CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    						return false;
    					}
    				}
    				break;
    			case 3 :
    				/**
    				 *
    				 * @example : tplData[].morebrand.link
    				 */


    				if (1 === $paths_one_count) {
    					foreach ( $arrResultData [$paths_one [0]] as $key => $value ) {
    						$link = $arrResultData [$paths_one [0]] [$key] [$paths_two [0]] [$paths_two [1]];
    						if (! empty ( $link )) {
    							if (! is_array ( $link )) {
    								self::get_image_src ( $arrImgList, $link );
    							} else {
    								foreach ( $link as $k => $v ) {
    									self::get_image_src ( $arrImgList, $v );
    								}
    							}
    								
    						} else {
    							$logArr ['img'] = "data['resultData'][$paths_one[0]][$key][$paths_two[0]][$paths_two[1]]";
    							CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    							return false;
    						}
    					}
    					/**
    					 *
    					 * @example : tplData.morebrand[].link
    					 */
    				} else {
    					foreach ( $arrResultData [$paths_one [0]] [$paths_one [1]] as $key => $value ) {

    						$link = $arrResultData [$paths_one [0]] [$paths_one [1]] [$key] [$paths_two [0]];
    						if (! empty ( $link )) {
    							if (! is_array ( $link )) {
    								self::get_image_src ( $arrImgList, $link );
                                    } else {
    								foreach ( $link as $k => $v ) {
    									self::get_image_src ( $arrImgList, $v );
    								}
    							}
    						} else {
    							$logArr ['img'] = "data['resultData'][$paths_one[0]][$paths_one[1]][$key][$paths_two[0]]";
    							CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    							return false;
    						}
    					}
    				}
    				break;
    			case 4 :
    				/**
    				 *
    				 * @example : tplData[].morebrand.link.sublink
    				 */
    				if (1 === $paths_one_count) {
    					foreach ( $arrResultData [$paths_one [0]] as $key => $value ) {
    						$link = $arrResultData [$paths_one [0]] [$key] [$paths_two [0]] [$paths_two [1]] [$paths_two [2]];
    						if (! empty ( $link )) {
    							if (! is_array ( $link )) {
    								self::get_image_src ( $arrImgList, $link );
    							} else {
    								foreach ( $link as $k => $v ) {
    									self::get_image_src ( $arrImgList, $v );
    								}
    							}
    								
    						} else {
    							$logArr ['img'] = "data['resultData'][$paths_one[0]][$key][$paths_two[0]][$paths_two[1]][$paths_two[2]]";
    							CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    							return false;
    						}
    					}
    					/**
    					 *
    					 * @example : tplData.morebrand[].link.sublink
    					 */
    				} else if (2 === $paths_one_count) {
    					foreach ( $arrResultData [$paths_one [0]] [$paths_one [1]] as $key => $value ) {
							if (!is_array($arrResultData [$paths_one [0]] [$paths_one [1]]) || ! is_array ( $arrResultData [$paths_one [0]] [$paths_one [1]] [$key] ) || ! is_array ( $arrResultData [$paths_one [0]] [$paths_one [1]] [$key] [$paths_two [0]] )) {
								continue;
							}
    						$link = $arrResultData [$paths_one [0]] [$paths_one [1]] [$key] [$paths_two [0]] [$paths_two [1]];
    						if (! empty ( $link )) {
    							if (! is_array ( $link )) {
    								self::get_image_src ( $arrImgList, $link );
    							} else {
    								foreach ( $link as $k => $v ) {
    									self::get_image_src ( $arrImgList, $v );
    								}
    							}
    								
    						} else {
    							$logArr ['img'] = "data['resultData'][$paths_one[0]][$paths_one[1]][$key][$paths_two[0]][$paths_two[1]]";
    							CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    							return false;
    						}
    					}
    					/**
    					 *
    					 * @example : tplData.morebrand.link[].sublink
    					 */
    				} else {
    					foreach ( $arrResultData [$paths_one [0]] [$paths_one [1]] [$paths_one [2]] as $key => $value ) {
    						$link = $arrResultData [$paths_one [0]] [$paths_one [1]] [$paths_one [2]] [$key] [$paths_two [0]];
    						if (! empty ( $link )) {
    							if (! is_array ( $link )) {
    								self::get_image_src ( $arrImgList, $link );
    							} else {
    								foreach ( $link as $k => $v ) {
    									self::get_image_src ( $arrImgList, $v );
    								}
    							}
    								
    						} else {
    							$logArr ['img'] = "data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]][$key][$paths_two[0]]";
    							CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    							return false;
    						}
    					}
    				}
    				break;
    			case 5 :
    				/**
    				 *
    				 * @example : tplData[].morebrand.link.sublink.subsublink
    				 */
    				if (1 === $paths_one_count) {
    					foreach ( $arrResultData [$paths_one [0]] as $key => $value ) {
    						$link = $arrResultData [$paths_one [0]] [$key] [$paths_two [0]] [$paths_two [1]] [$paths_two [2]] [$paths_two [3]];
    						if (! empty ( $link )) {
    							if (! is_array ( $link )) {
    								self::get_image_src ( $arrImgList, $link );
    							} else {
    								foreach ( $link as $k => $v ) {
    									self::get_image_src ( $arrImgList, $v );
    								}
    							}
    								
    						} else {
    							$logArr ['img'] = "data['resultData'][$paths_one[0]][$key][$paths_two[0]][$paths_two[1]][$paths_two[2]][$paths_two[3]]";
    							CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    							return false;
    						}
    					}
    					/**
    					 *
    					 * @example : tplData.morebrand[].link.sublink.subsublink
    					 */
    				} else if (2 === $paths_one_count) {
    					foreach ( $arrResultData [$paths_one [0]] [$paths_one [1]] as $key => $value ) {
    						$link = $arrResultData [$paths_one [0]] [$paths_one [1]] [$key] [$paths_two [0]] [$paths_two [1]] [$paths_two [2]];
    						if (! empty ( $link )) {
    							if (! is_array ( $link )) {
    								self::get_image_src ( $arrImgList, $link );
    							} else {
    								foreach ( $link as $k => $v ) {
    									self::get_image_src ( $arrImgList, $v );
    								}
    							}
    								
    						} else {
    							$logArr ['img'] = "data['resultData'][$paths_one[0]][$paths_one[1]][$key][$paths_two[0]][$paths_two[1]][$paths_two[2]]";
    							CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    							return false;
    						}
    					}
    					/**
    					 *
    					 * @example : tplData.morebrand.link[].sublink.subsublink
    					 */
    				} else if (3 === $paths_one_count) {
    					foreach ( $arrResultData [$paths_one [0]] [$paths_one [1]] [$paths_one [2]] as $key => $value ) {
    						$link = $arrResultData [$paths_one [0]] [$paths_one [1]] [$paths_one [2]] [$key] [$paths_two [0]] [$paths_two [1]];
    						if (! empty ( $link )) {
    							if (! is_array ( $link )) {
    								self::get_image_src ( $arrImgList, $link );
    							} else {
    								foreach ( $link as $k => $v ) {
    									self::get_image_src ( $arrImgList, $v );
    								}
    							}
    								
    						} else {
    							$logArr ['img'] = "data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]][$key][$paths_two[0]][$paths_two[1]]";
    							CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    							return false;
    						}
    					}
    					/**
    					 *
    					 * @example : tplData.morebrand.link.sublink[].subsublink
    					 */
    				} else {
    					foreach ( $arrResultData [$paths_one [0]] [$paths_one [1]] [$paths_one [2]] [$paths_one [3]] as $key => $value ) {
    						$link = $arrResultData [$paths_one [0]] [$paths_one [1]] [$paths_one [2]] [$paths_one [3]] [$key] [$paths_two [0]];
    						if (! empty ( $link )) {
    							if (! is_array ( $link )) {
    								self::get_image_src ( $arrImgList, $link );
    							} else {
    								foreach ( $link as $k => $v ) {
    									self::get_image_src ( $arrImgList, $v );
    								}
    							}
    								
    						} else {
    							$logArr ['img'] = "data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]][$paths_one[3]][$key][$paths_two[0]]";
    							CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    							return false;
    						}
    					}
    				}
    				break;
    		}
    		return true;
    	}
    
    	if (3 === $cnt) {
    			
    		$paths_one = explode ( '.', $arrImgConf [0] );
    		$paths_one_count = count ( $paths_one );
    			
    		$paths_two = explode ( '.', $arrImgConf [1] );
    		$paths_two_count = count ( $paths_two );
    			
    		$paths_three = explode ( '.', $arrImgConf [2] );
    		$paths_three_count = count ( $paths_three );
    			
    		$total_count = $paths_one_count + $paths_two_count + $paths_three_count;
    			
    		switch ($total_count) {
    			/**
    			 *
    			 * @example : tplData[].morebrand[].link
    			 */
    			case 3 :
    				foreach ( $arrResultData [$paths_one [0]] as $key0 => $value0 ) {
    					foreach ( $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] as $key1 => $value1 ) {
    						$link = $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] [$key1] [$paths_three [0]];
    						if (! empty ( $link )) {
    							if (! is_array ( $link )) {
    								self::get_image_src ( $arrImgList, $link );
    							} else {
    								foreach ( $link as $k => $v ) {
    									self::get_image_src ( $arrImgList, $v );
    								}
    							}
    								
    						} else {
    							$logArr ['img'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]]";
    							CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    							return false;
    						}
    					}
    				}
    				break;
    			case 4 :
    				/**
    				 *
    				 * @example : tplData.morebrand[].link[].sublink
    				 */
    				if (2 === $paths_one_count) {
    					foreach ( $arrResultData [$paths_one [0]] [$paths_one [1]] as $key0 => $value0 ) {
    						foreach ( $arrResultData [$paths_one [0]] [$paths_one [1]] [$key0] [$paths_two [0]] as $key1 => $value1 ) {
    							$link = $arrResultData [$paths_one [0]] [$paths_one [1]] [$key0] [$paths_two [0]] [$key1] [$paths_three [0]];
    							if (! empty ( $link )) {
    								if (! is_array ( $link )) {
    									self::get_image_src ( $arrImgList, $link );
    								} else {
    									foreach ( $link as $k => $v ) {
    										self::get_image_src ( $arrImgList, $v );
    									}
    								}
    							} else {
    								$logArr ['img'] = "data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]][$key1][$paths_three[0]]";
    								CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    								return false;
    							}
    						}
    					}
    					/**
    					 *
    					 * @example : tplData[].morebrand.link[].sublink
    					 */
    				} else if (2 === $paths_two_count) {
    					foreach ( $arrResultData [$paths_one [0]] as $key0 => $value0 ) {
    						foreach ( $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] [$paths_two [1]] as $key1 => $value1 ) {
    							$link = $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] [$paths_two [1]] [$key1] [$paths_three [0]];
    							if (! empty ( $link )) {
    								if (! is_array ( $link )) {
    									self::get_image_src ( $arrImgList, $link );
    								} else {
    									foreach ( $link as $k => $v ) {
    										self::get_image_src ( $arrImgList, $v );
    									}
    								}
    
    							} else {
    								$logArr ['img'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]][$key1][$paths_three[0]]";
    								CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    								return false;
    							}
    						}
    					}
    					/**
    					 *
    					 * @example : tplData[].morebrand[].link.sublink
    					 */
    				} else {
    					foreach ( $arrResultData [$paths_one [0]] as $key0 => $value0 ) {
    						foreach ( $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] as $key1 => $value1 ) {
    							$link = $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] [$key1] [$paths_three [0]] [$paths_three [1]];
    							if (! empty ( $link )) {
    								if (! is_array ( $link )) {
    									self::get_image_src ( $arrImgList, $link );
    								} else {
    									foreach ( $link as $k => $v ) {
    										self::get_image_src ( $arrImgList, $v );
    									}
    								}
    
    							} else {
    								$logArr ['img'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$paths_three[1]]";
    								CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    								return false;
    							}
    						}
    					}
    				}
    				break;
    			case 5 :
    				/**
    				 *
    				 * @example : tplData.morebrand.link[].sublink[].subsublink
    				 */
    				if (3 === $paths_one_count) {
    					foreach ( $arrResultData [$paths_one [0]] [$paths_one [1]] [$paths_one [2]] as $key0 => $value0 ) {
    						foreach ( $arrResultData [$paths_one [0]] [$paths_one [1]] [$paths_one [2]] [$key0] [$paths_two [0]] as $key1 => $value1 ) {
    							$link = $arrResultData [$paths_one [0]] [$paths_one [1]] [$paths_one [2]] [$key0] [$paths_two [0]] [$key1] [$paths_three [0]];
    							if (! empty ( $link )) {
    								if (! is_array ( $link )) {
    									self::get_image_src ( $arrImgList, $link );
    								} else {
    									foreach ( $link as $k => $v ) {
    										self::get_image_src ( $arrImgList, $v );
    									}
    								}
    
    							} else {
    								$logArr ['img'] = "data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]][$key0][$paths_two[0]][$key1][$paths_three[0]]";
    								CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    								return false;
    							}
    						}
    					}
    					/**
    					 *
    					 * @example : tplData[].morebrand.link.sublink[].subsublink
    					 */
    				} else if (3 === $paths_two_count) {
    					foreach ( $arrResultData [$paths_one [0]] as $key0 => $value0 ) {
    						foreach ( $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] [$paths_two [1]] [$paths_two [2]] as $key1 => $value1 ) {
    							$link = $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] [$paths_two [1]] [$paths_two [2]] [$key1] [$paths_three [0]];
    							if (! empty ( $link )) {
    								if (! is_array ( $link )) {
    									self::get_image_src ( $arrImgList, $link );
    								} else {
    									foreach ( $link as $k => $v ) {
    										self::get_image_src ( $arrImgList, $v );
    									}
    								}
    
    							} else {
    								$logArr ['img'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]][$paths_two[2]][$key1][$paths_three[0]]";
    								CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    								return false;
    							}
    						}
    					}
    					/**
    					 *
    					 * @example : tplData[].morebrand[].link.sublink.subsublink
    					 */
    				} else if (3 === $paths_three_count) {
    					foreach ( $arrResultData [$paths_one [0]] as $key0 => $value0 ) {
    						foreach ( $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] as $key1 => $value1 ) {
    							$link = $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] [$key1] [$paths_three [0]] [$paths_three [1]] [$paths_three [2]];
    							if (! empty ( $link )) {
    								if (! is_array ( $link )) {
    									self::get_image_src ( $arrImgList, $link );
    								} else {
    									foreach ( $link as $k => $v ) {
    										self::get_image_src ( $arrImgList, $v );
    									}
    								}
    
    							} else {
    								$logArr ['img'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$paths_three[1]][$paths_three[2]]";
    								CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    								return false;
    							}
    						}
    					}
    					/**
    					 *
    					 * @example : tplData.morebrand[].link.sublink[].subsublink
    					 */
    				} else if (2 === $paths_one_count && 2 === $paths_two_count && 1 === $paths_three_count) {
    					foreach ( $arrResultData [$paths_one [0]] [$paths_one [1]] as $key0 => $value0 ) {
    						foreach ( $arrResultData [$paths_one [0]] [$paths_one [1]] [$key0] [$paths_two [0]] [$paths_two [1]] as $key1 => $value1 ) {
    							$link = $arrResultData [$paths_one [0]] [$paths_one [1]] [$key0] [$paths_two [0]] [$paths_two [1]] [$key1] [$paths_three [0]];
    							if (! empty ( $link )) {
    								if (! is_array ( $link )) {
    									self::get_image_src ( $arrImgList, $link );
    								} else {
    									foreach ( $link as $k => $v ) {
    										self::get_image_src ( $arrImgList, $v );
    									}
    								}
    
    							} else {
    								$logArr ['img'] = "data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]][$paths_two[1]][$key1][$paths_three[0]]";
    								CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    								return false;
    							}
    						}
    					}
    					/**
    					 *
    					 * @example : tplData.morebrand[].link[].sublink.subsublink
    					 */
    				} else if (2 === $paths_one_count && 1 === $paths_two_count && 2 === $paths_three_count) {
    					foreach ( $arrResultData [$paths_one [0]] [$paths_one [1]] as $key0 => $value0 ) {
    						foreach ( $arrResultData [$paths_one [0]] [$paths_one [1]] [$key0] [$paths_two [0]] as $key1 => $value1 ) {
    							$link = $arrResultData [$paths_one [0]] [$paths_one [1]] [$key0] [$paths_two [0]] [$key1] [$paths_three [0]] [$paths_three [1]];
    							if (! empty ( $link )) {
    								if (! is_array ( $link )) {
    									self::get_image_src ( $arrImgList, $link );
    								} else {
    									foreach ( $link as $k => $v ) {
    										self::get_image_src ( $arrImgList, $v );
    									}
    								}
    
    							} else {
    								$logArr ['img'] = "data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]][$key1][$paths_three[0]][$paths_three[1]]";
    								CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    								return false;
    							}
    						}
    					}
    					/**
    					 *
    					 * @example : tplData[].morebrand.link[].sublink.subsublink
    					 */
    				} else if (1 === $paths_one_count && 2 === $paths_two_count && 2 === $paths_three_count) {
    					foreach ( $arrResultData [$paths_one [0]] as $key0 => $value0 ) {
    						foreach ( $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] [$paths_two [1]] as $key1 => $value1 ) {
    							$link = $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] [$paths_two [1]] [$key1] [$paths_three [0]] [$paths_three [1]];
    							if (! empty ( $link )) {
    								if (! is_array ( $link )) {
    									self::get_image_src ( $arrImgList, $link );
    								} else {
    									foreach ( $link as $k => $v ) {
    										self::get_image_src ( $arrImgList, $v );
    									}
    								}
    
    							} else {
    								$logArr ['img'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]][$key1][$paths_three[0]][$paths_three[1]]";
    								CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    								return false;
    							}
    						}
    					}
    				}
    					
    				break;
    		}
    		return true;
    	}
    
    	if (4 === $cnt) {
    			
    		$paths_one = explode ( '.', $arrImgConf [0] );
    		$paths_one_count = count ( $paths_one );
    			
    		$paths_two = explode ( '.', $arrImgConf [1] );
    		$paths_two_count = count ( $paths_two );
    			
    		$paths_three = explode ( '.', $arrImgConf [2] );
    		$paths_three_count = count ( $paths_three );
    			
    		$paths_four = explode ( '.', $arrImgConf [3] );
    		$paths_four_count = count ( $paths_four );
    			
    		$total_count = $paths_one_count + $paths_two_count + $paths_three_count + $paths_four_count;
    			
    		switch ($total_count) {
    			case 4 :
    				/**
    				 *
    				 * @example : tplData[].morebrand[].link[].sublink
    				 */
    				foreach ( $arrResultData [$paths_one [0]] as $key0 => $value0 ) {
    					foreach ( $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] as $key1 => $value1 ) {
    						foreach ( $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] [$key1] [$paths_three [0]] as $key2 => $value2 ) {
    							$link = $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] [$key1] [$paths_three [0]] [$key2] [$paths_four [0]];
    							if (! empty ( $link )) {
    								if (! is_array ( $link )) {
    									self::get_image_src ( $arrImgList, $link );
    								} else {
    									foreach ( $link as $k => $v ) {
    										self::get_image_src ( $arrImgList, $v );
    									}
    								}
    
    							} else {
    								$logArr ['img'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$key2][$paths_four[0]]";
    								CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    								return false;
    							}
    						}
    					}
    				}
    				break;
    			case 5 :
    				/**
    				 *
    				 * @example :
    				 *          tplData.morebrand[].link[].sublink[].subsublink
    				 */
    				if (2 === $paths_one_count) {
    					foreach ( $arrResultData [$paths_one [0]] [$paths_one [1]] as $key0 => $value0 ) {
    						foreach ( $arrResultData [$paths_one [0]] [$paths_one [1]] [$key0] [$paths_two [0]] as $key1 => $value1 ) {
    							foreach ( $arrResultData [$paths_one [0]] [$paths_one [1]] [$key0] [$paths_two [0]] [$key1] [$paths_three [0]] as $key2 => $value2 ) {
    								$link = $arrResultData [$paths_one [0]] [$paths_one [1]] [$key0] [$paths_two [0]] [$key1] [$paths_three [0]] [$key2] [$paths_four [0]];
    								if (! empty ( $link )) {
    									if (! is_array ( $link )) {
    										self::get_image_src ( $arrImgList, $link );
    									} else {
    										foreach ( $link as $k => $v ) {
    											self::get_image_src ( $arrImgList, $v );
    										}
    									}
    										
    								} else {
    									$logArr ['img'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$key2][$paths_four[0]]";
    									CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    									return false;
    								}
    							}
    						}
    					}
    					/**
    					 *
    					 * @example :
    					 *          tplData[].morebrand.link[].sublink[].subsublink
    					 */
    				} else if (2 === $paths_two_count) {
    					foreach ( $arrResultData [$paths_one [0]] as $key0 => $value0 ) {
    						foreach ( $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] [$paths_two [1]] as $key1 => $value1 ) {
    							foreach ( $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] [$paths_two [1]] [$key1] [$paths_three [0]] as $key2 => $value2 ) {
    								$link = $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] [$paths_two [1]] [$key1] [$paths_three [0]] [$key2] [$paths_four [0]];
    								if (! empty ( $link )) {
    									if (! is_array ( $link )) {
    										self::get_image_src ( $arrImgList, $link );
    									} else {
    										foreach ( $link as $k => $v ) {
    											self::get_image_src ( $arrImgList, $v );
    										}
    									}
    										
    								} else {
    									$logArr ['img'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]][$key1][$paths_three[0]][$key2][$paths_four[0]]";
    									CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    									return false;
    								}
    							}
    						}
    					}
    					/**
    					 *
    					 * @example :
    					 *          tplData[].morebrand[].link.sublink[].subsublink
    					 */
    				} else if (2 === $paths_three_count) {
    					foreach ( $arrResultData [$paths_one [0]] as $key0 => $value0 ) {
    						foreach ( $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] as $key1 => $value1 ) {
    							foreach ( $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] [$key1] [$paths_three [0]] [$paths_three [1]] as $key2 => $value2 ) {
    								$link = $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] [$key1] [$paths_three [0]] [$paths_three [1]] [$key2] [$paths_four [0]];
    								if (! empty ( $link )) {
    									if (! is_array ( $link )) {
    										self::get_image_src ( $arrImgList, $link );
    									} else {
    										foreach ( $link as $k => $v ) {
    											self::get_image_src ( $arrImgList, $v );
    										}
    									}
    										
    								} else {
    									$logArr ['img'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$paths_three[1]][$key2][$paths_four[0]]";
    									CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    									return false;
    								}
    							}
    						}
    					}
    					/**
    					 *
    					 * @example :
    					 *          tplData[].morebrand[].link[].sublink.subsublink
    					 */
    				} else if (2 === $paths_four_count) {
    					foreach ( $arrResultData [$paths_one [0]] as $key0 => $value0 ) {
    						foreach ( $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] as $key1 => $value1 ) {
    							foreach ( $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] [$key1] [$paths_three [0]] as $key2 => $value2 ) {
    								$link = $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] [$key1] [$paths_three [0]] [$key2] [$paths_four [0]] [$paths_four [1]];
    								if (! empty ( $link )) {
    									if (! is_array ( $link )) {
    										self::get_image_src ( $arrImgList, $link );
    									} else {
    										foreach ( $link as $k => $v ) {
    											self::get_image_src ( $arrImgList, $v );
    										}
    									}
    										
    								} else {
    									$logArr ['img'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$key2][$paths_four[0]][$paths_four[1]]";
    									CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    									return false;
    								}
    							}
    						}
    					}
    				}
    				break;
    		}
    		return true;
    	}
    
    	if (5 === $cnt) {
    		$paths_one = explode ( '.', $arrImgConf [0] );
    		$paths_one_count = count ( $paths_one );
    			
    		$paths_two = explode ( '.', $arrImgConf [1] );
    		$paths_two_count = count ( $paths_two );
    			
    		$paths_three = explode ( '.', $arrImgConf [2] );
    		$paths_three_count = count ( $paths_three );
    			
    		$paths_four = explode ( '.', $arrImgConf [3] );
    		$paths_four_count = count ( $paths_four );
    			
    		$paths_five = explode ( '.', $arrImgConf [4] );
    		$paths_five_count = count ( $paths_five );
    			
    		$total_count = $paths_one_count + $paths_two_count + $paths_three_count + $paths_four_count + $paths_five_count;
    			
    		switch ($total_count) {
    			case 5 :
    				/**
    				 *
    				 * @example :
    				 *          tplData[].morebrand[].link[].sublink[].subsublink
    				 */
    				foreach ( $arrResultData [$paths_one [0]] as $key0 => $value0 ) {
    					foreach ( $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] as $key1 => $value1 ) {
    						foreach ( $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] [$key1] [$paths_three [0]] as $key2 => $value2 ) {
    							foreach ( $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] [$key1] [$paths_three [0]] [$key2] [$paths_four [0]] as $key3 => $value3 ) {
    								$link = $arrResultData [$paths_one [0]] [$key0] [$paths_two [0]] [$key1] [$paths_three [0]] [$key2] [$paths_four [0]] [$key3] [$paths_five [0]];
    								if (! empty ( $link )) {
    									if (! is_array ( $link )) {
    										self::get_image_src ( $arrImgList, $link );
    									} else {
    										foreach ( $link as $k => $v ) {
    											self::get_image_src ( $arrImgList, $v );
    										}
    									}
    										
    								} else {
    									$logArr ['img'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$key2][$paths_four[0]][$key3][$paths_five[0]]";
    									CLog::debug ( "img src to get id is empty", $status, $logArr, 1 );
    									return false;
    								}
    							}
    						}
    					}
    				}
    				break;
    			default :
    					
    				break;
    		}
    		return true;
    	}
    
    	if ($cnt > 5) {
    		$logArr ['path_conf'] = implode ( "_", $arrImgConf );
    		CLog::warning ( "img src to get id is more than 5 level", $status, $logArr, 1 );
    	}
    	return false;
    }
 
    /**
     * 模板回退，重新加载相应的模板配置
     * @param unknown_type $data
     * @param unknown_type $strBakTemplateType   需要回退到的模板类型 默认baidu
     * @param unknown_type $strBakTemplateName  需要回退到的模板名字 默认baidu
     */
    public static function templateBack(&$data,$strBakTemplateType = 'baidu',$strBakTemplateName = 'baidu'){
    	$data['uiControl']['templateType'] = $strBakTemplateType;
    	$data['uiControl']['templateName'] = $strBakTemplateName;
    	$data['uiControl']['oriTplName'] = $strBakTemplateName;
    	$GLOBALS['logArr']['templateType'] = $data['uiControl']['templateType'] ;
    	$GLOBALS['logArr']['templateName'] = $data['uiControl']['templateName'] ;
    	$objTemplateSelector = new TemplateSelector ();
    	$bolRet = $objTemplateSelector->getUserInfo($data);
    	if ($bolRet == false) {
    		$status = $GLOBALS ['STATUS_CODE'] ['TPL_SELECT_FAIL'];
    		CLog::fatal($GLOBALS ['STATUS_MSG'] [$status], $status, $GLOBALS ['logArr']);
    		$result['status'] = $status;
    		return false;
    	}
    	$arrTplConfig = $objTemplateSelector->getTplConfig($data ['uiControl'] ['tplConfigPath']);
    	if (!is_array($arrTplConfig) || empty($arrTplConfig) || count($arrTplConfig) <= 0) {
    		$status = $GLOBALS ['STATUS_CODE'] ['TPL_SELECT_FAIL'];
    		CLog::fatal($GLOBALS ['STATUS_MSG'] [$status], $status, $GLOBALS ['logArr']);
    		return $status;
    	}
    
    	// 处理首页模板
    	if ($data ['uiControl'] ['templateSwitch'] == 2) {
    		$arrFrontPage = Bd_Conf::getConf('/baidu/');
    		if (!empty($arrFrontPage) && is_array($arrFrontPage)) {
    			foreach ($arrFrontPage as $key => $value) {
    				$arrTplConfig [$key] = $value;
    			}
    		}
    	}
    	// 解析模板配置项
    	$objTemplateSelector->parseTplConfig($data, $arrTplConfig);
    	unset($arrData ['uiControl'] ['tplConfigPath']);
    	unset($arrData ['uiControl'] ['tplConfigName']);
    	unset($arrData ['uiControl'] ['tplConfigType']);

    	return true;
    }
  
}

