<?php
class InstantSearch {
	private static $instance = null;
	public $arrInstantSearchConf;
	
	public static function getInstance(){
		if (self::$instance === null) {
			self::$instance = new InstantSearch();
		}
		return self::$instance;
	}
	
	private function __construct(){
		$this->arrInstantSearchConf = Util::getConf ( '/instant_search', 'IS' );
	}
	/**
	 * 从 $_GET 中解析mod、cqid、isid、chk四个参数，放置于$arrUrlConfig中
	 * 
	 * @param unknown_type $arrSrc        	
	 * @param unknown_type $arrDest        	
	 */
	public  function getISParams($arrSrc,$arrHeader) {
		$arrParams = array();
		if (isset (  $arrHeader ['PS-ISMOD'] ) ) {
			$arrParams ['mod'] = intval ( $arrHeader ['PS-ISMOD'] );
			switch ($arrParams ['mod']) {
				case IS_NORMAL_REQ :
					$arrParams ['cqid'] = '0';
					$arrParams ['isid'] =  (!empty ( $arrSrc ['isid'] ) && ctype_alnum(trim($arrSrc ['isid']))) ? trim($arrSrc ['isid']) : '0';
					$arrParams ['chk'] = '0';
					$arrParams ['status'] = 0;
					$arrParams ['f4s'] = 0;
					$arrParams['isbd'] = intval($arrSrc['isbd']);
					$arrParams['pstg'] = intval($arrSrc['pstg']);
					break;
				case IS_PRE_REQ :
					//mod=1的请求需要校验  isid、ver
					$arrParams ['cqid'] = '0';
					$arrParams ['chk'] = '0';
					if (!empty ( $arrSrc ['isid'] ) && ctype_alnum(trim($arrSrc ['isid']))) {
						$arrParams ['isid'] = trim($arrSrc ['isid']);
						$arrParams ['status'] = 0;
					} else {
						$arrParams ['status'] = IS_PARAM_ERROR;
						CLog::warning ( "IS: pre_request session id illegal,isid:" . $arrSrc ['isid'], MULTI_RENDER_FAIL );
					}
					if(empty($arrHeader['PS-ISVER-ENCODE']) && empty($arrHeader['PS-ISVER'])){
						$arrParams ['status'] = IS_PARAM_ERROR;
						CLog::warning ( "IS: pre_request verify empty", MULTI_RENDER_FAIL );
					}else{
						$arrParams['ver'] = !empty($arrHeader['PS-ISVER-ENCODE']) ? urldecode($arrHeader['PS-ISVER-ENCODE']) : $arrHeader['PS-ISVER'];
					}
					$arrParams['f4s'] = intval($arrSrc ['f4s']);
					$arrParams['isbd'] = intval($arrSrc['isbd']);
					$arrParams['pstg'] = intval($arrSrc['pstg']);
					break;
				case IS_CONFIRM_REQ :
					//mod=2的请求需要校验cqid、isid、chk
					if (isset ( $arrSrc ['cqid'] ) && ctype_xdigit ( $arrSrc ['cqid'] ) && !empty( $arrSrc ['isid'] ) && ctype_alnum(trim($arrSrc ['isid'])) && isset ( $arrSrc ['chk'] ) && ctype_xdigit ( $arrSrc ['chk'] )) {
						$arrParams ['cqid'] = $arrSrc ['cqid'];
						$arrParams ['isid'] = $arrSrc ['isid'];
						$arrParams ['chk'] = $arrSrc ['chk'];
						$arrParams ['status'] = 0;
					} else {
						$arrParams ['status'] = IS_PARAM_ERROR;
						CLog::warning ( "IS: confirm_request param illegal,isid:" . $arrSrc ['isid'] . " cqid:" . $arrSrc ['cqid'] . " chk:" . $arrSrc ['chk'], MULTI_RENDER_FAIL );
					}
					if(empty($arrHeader['PS-ISVER-ENCODE']) && empty($arrHeader['PS-ISVER'])){
						$arrParams ['status'] = IS_PARAM_ERROR;
						CLog::warning ( "IS: pre_request verify empty", MULTI_RENDER_FAIL );
					}else{
						$arrParams['ver'] = !empty($arrHeader['PS-ISVER-ENCODE']) ? urldecode($arrHeader['PS-ISVER-ENCODE']) : $arrHeader['PS-ISVER'];
					}
					$arrParams ['f4s'] = 0;
					$arrParams['isbd'] = intval($arrSrc['isbd']);
					$arrParams['pstg'] = intval($arrSrc['pstg']);
					$arrParams['csq'] = intval($arrSrc['csq']);
					break;
				case IS_PRE_DICT_REQ:
					//mod=11需要校验isid、ver
					$arrParams ['cqid'] = '0';
					$arrParams ['chk'] = '0';
					if ( !empty ( $arrSrc ['isid'] ) && ctype_alnum(trim($arrSrc ['isid']))) {
						$arrParams ['isid'] = $arrSrc ['isid'];
						$arrParams ['status'] = 0;
					} else {
						$arrParams ['status'] = IS_PARAM_ERROR;
						CLog::warning ( "IS: predict_request session id illegal,isid:" . $arrSrc ['isid'], MULTI_RENDER_FAIL );
					}
					if(empty($arrHeader['PS-ISVER-ENCODE']) && empty($arrHeader['PS-ISVER'])){
						$arrParams ['status'] = IS_PARAM_ERROR;
						CLog::warning ( "IS: predict_request verify empty", MULTI_RENDER_FAIL );
					}else{
						$arrParams['ver'] = !empty($arrHeader['PS-ISVER-ENCODE']) ? urldecode($arrHeader['PS-ISVER-ENCODE']) : $arrHeader['PS-ISVER'];
					}
					$arrParams['f4s'] = intval($arrSrc ['f4s']);
					if(!empty($arrSrc['hsug'])){
						$arrHsug = explode("\t",trim($arrSrc['hsug']));
						if(!empty($arrHsug) && is_array($arrHsug)){
							if(isset($this->arrInstantSearchConf['max_hsug_num']) && count($arrHsug) > intval($this->arrInstantSearchConf['max_hsug_num'])){
								$arrHsug = array_slice($arrHsug,0,intval($this->arrInstantSearchConf['max_hsug_num']));
							}
							$arrParams['hsug'] = $arrHsug;
						}
					}
					if(!empty($arrSrc['clist'])){
						$arrClist = explode("\t",trim($arrSrc['clist']));
						if(!empty($arrClist) && is_array($arrClist)){
							if(isset($this->arrInstantSearchConf['max_clist_num']) && count($arrClist) > intval($this->arrInstantSearchConf['max_clist_num'])){
								$arrClist = array_slice($arrClist,0,intval($this->arrInstantSearchConf['max_clist_num']));
							}
							$arrParams['clist'] = $arrClist;
						}
					}
					$arrParams['isbd'] = intval($arrSrc['isbd']);
					$arrParams['pstg'] = intval($arrSrc['pstg']);
					break;					
				default :
					$arrParams ['status'] = IS_PARAM_ERROR;
					CLog::warning ( "IS: asyn request mod error", MULTI_RENDER_FAIL );
					break;
			}
		}else{
			$arrParams ['status'] = IS_PARAM_ERROR;
			CLog::warning ( "IS: asyn request mod error", MULTI_RENDER_FAIL );
		}
		return $arrParams;
	}
	
	/**
	 * 
	 * @param unknown_type $intStatus  状态码
	 * @param unknown_type $intRewrite  是否要跳转到同步页
	 * @param unknown_type $intCloseTime  预查询的关闭时间，0为不关闭
	 */
	public  function getISErrorPage($intStatus,$intRedirect,$intSwitchTime,$strQuerySign,$strDebugInfo){
		$strBody = '<div><div id="__status">'.$intStatus.'</div>'.
							 '<div id="__redirect">'.$intRedirect.'</div>'.
							 '<div id="__switchtime">'.$intSwitchTime.'</div>';
		if(!empty($strQuerySign)){
			$strBody .=  '<div id="__querySign">'.$strQuerySign.'</div>';
		}
		if(!empty($strDebugInfo)){
			$strBody .=  '<div id="__isDebugInfo">'.$strDebugInfo.'</div>';
		}
		$strBody .= '</div>';
		return $strBody;
	}
	
	/**
	 * 根据refer和mod参数判断是否是异步请求
	 */
	public  function checkSyncReq(){
		if(!isset ( $_GET['mod'] )){
			return false;
		}
		$arrUrlParts = array();
		if(!empty($_SERVER['HTTP_REFERER'])){
			$arrUrlParts = parse_url($_SERVER['HTTP_REFERER']);
		}
		if(empty($arrUrlParts) || $arrUrlParts['path'] !== '/'){
			return false;
		}
		return true;
	}
	
	/**
	 *  mod=1/2的请求，需要检测是否命中品专词典，若命中则直接返回白页，并要求FE跳转至同步页面
	 */
	public  function checkHitPinzhuan(&$arrIsParams,$strQueryWord){
		if(in_array($arrIsParams['mod'],array(IS_PRE_REQ,IS_NORMAL_REQ,IS_PRE_DICT_REQ))){
			//HIS,命中词典直接跳同步
			if($arrIsParams['isbd'] !== 1){
				$bolHitPinzhuan = shmdict_getValueFromDict($strQueryWord,'pinzhuan');
				if($bolHitPinzhuan == 1){
					$arrIsParams['status'] = IS_HIT_PINZHUAN;
					return true;
				}
			}else{
				$intDictRst = shmdict_getValueFromDict($strQueryWord,'pinzhuan_is');
				switch($intDictRst){
					//IS,值为1时直接跳同步
					case 1:
						$arrIsParams['status'] = IS_HIT_PINZHUAN;
						return true;
					//IS,值为2时出空白页。只对IS_2nd，预测请求生效
					case 2:
						if(in_array($arrIsParams['mod'],array(IS_PRE_REQ,IS_PRE_DICT_REQ))){
							$arrIsParams['status'] = IS_HIT_PINZHUAN_BLANK;
							return true;
						}
					default:
						return false;
				}

			}
		}
	}
	
	/**
	 * 获取异步查询的返回页面
	 */
	public  function getISOutput($data){
		$strPage = '';
		$arrISparams = $data['uiData']['queryInfo']['isParams'];
		//状态值
		$intStauts = 0;
		//是否要跳转到同步页
		$intRedirect = 0;
		//预查询的关闭时间，0为不关闭
		$intSwitchTime = 0;
		//是否要根据query签名来显示cache内容
		$strQuerySign = $arrISparams['querySign'];
		//是否要直接输出返回页面
		$strDebugInfo = $data['uiData']['queryInfo']['isDebugInfo'];
		$bolOutput = false;
		//总开关关闭时，所有异步请求均要求跳转同步页面
		if($arrISparams['status'] == IS_FINAL_FEATURE_CLOSE){
			$intStauts = -1;
			$intRedirect = 1;
			$bolOutput = true;
		}else{
			//当请求是强制命中预查询时，处理逻辑和normal请求一致
			if(in_array($arrISparams['mod'],array(IS_PRE_REQ,IS_PRE_DICT_REQ)) && $arrISparams['f4s'] == 1){
				$arrISparams['mod'] = IS_NORMAL_REQ;
			}
			switch($arrISparams['mod']){
				//对于normal请求，只有命中品专时才会直接输出
				case IS_NORMAL_REQ:
					if($arrISparams['status'] === IS_HIT_PINZHUAN){
						$intStauts = -1;
						$intRedirect = 1;
						$bolOutput = true;
					}elseif($arrISparams['status'] === IS_PARAM_ERROR){
						$intStauts = -1;
						$intRedirect = 1;
						$bolOutput = true;
					}elseif($arrISparams['status'] === IS_COOKIE_ISSW_EXIST){
						$intStauts = -1;
						$intRedirect = 1;
						$intSwitchTime = $this->arrInstantSearchConf['switchtime']['feature_close'];
						$bolOutput = true;
					}elseif($arrISparams['status'] === IS_ASYNC_TEMP_NOT_EXIST){
						$intStauts = -1;
						$intRedirect = 1;
						$intSwitchTime = $this->arrInstantSearchConf['switchtime']['feature_close'];
						$bolOutput = true;
					}
					break;
				//针对预查询请求，需要根据状态值决定不同的返回值
				case IS_PRE_DICT_REQ:
					if($arrISparams['status'] < 0){
						$bolOutput = true;
						$intStauts = $arrISparams['status'];
						switch($arrISparams['status']){
							case IS_FE_HAVE_CACHE:
								$intStauts = IS_FE_HAVE_CACHE; // 前端直接使用cache
								break;
// 							case IS_US_PREDICT_FAIL:
// 								$intStauts = IS_US_PREDICT_FAIL; // 显示空白页
// 								break;
// 							case IS_US_NO_RESULT:
// 								$intStauts = IS_US_NO_RESULT; // 显示空白页
// 								break;
							case IS_US_OVERLOAD:
								$intSwitchTime = $this->arrInstantSearchConf['switchtime']['us_overload'];
								break;
							case IS_HIT_PINZHUAN:
							case IS_COOKIE_ISSW_EXIST:
								$intRedirect = 1;
								$intSwitchTime = $this->arrInstantSearchConf['switchtime']['feature_close'];
								break;
							case IS_FEATURE_CLOSE:
								$intSwitchTime = $this->arrInstantSearchConf['switchtime']['feature_close'];
								break;
							case IS_ASYNC_TEMP_NOT_EXIST:
								$intRedirect = 1;
								$intSwitchTime = $this->arrInstantSearchConf['switchtime']['feature_close'];
								break;
							case IS_VUI_CHECKFAIL:
							case IS_PARAM_ERROR:
							case IS_VUI_ERROR:
							case IS_US_CHECKFAIL:
							case IS_US_NO_RESULT:
							case IS_US_PREDICT_FAIL:
							case IS_HIT_PINZHUAN_BLANK:
							default:
								break;
							}
					}
					break;
				case IS_PRE_REQ:
					if($arrISparams['status'] < 0){
						$bolOutput = true;
						$intStauts = -1;
						switch($arrISparams['status']){
							case IS_US_OVERLOAD:
								$intSwitchTime = $this->arrInstantSearchConf['switchtime']['us_overload'];
								break;
							case IS_HIT_PINZHUAN:
							case IS_COOKIE_ISSW_EXIST:	
								$intRedirect = 1;
								$intSwitchTime = $this->arrInstantSearchConf['switchtime']['feature_close'];
								break;
							case IS_FEATURE_CLOSE:
								$intSwitchTime = $this->arrInstantSearchConf['switchtime']['feature_close'];
								break;
							case IS_ASYNC_TEMP_NOT_EXIST:
								$intRedirect = 1;
								$intSwitchTime = $this->arrInstantSearchConf['switchtime']['feature_close'];
								break;
							case IS_VUI_CHECKFAIL:
							case IS_PARAM_ERROR:
							case IS_VUI_ERROR:
							case IS_US_CHECKFAIL:
							case IS_HIT_PINZHUAN_BLANK:
							default:
								break;
						}
					}
				break;
				//comfirm请求，不管任何情况都直接返回
			case IS_CONFIRM_REQ:
				$bolOutput = true;
				break;
			default:
				//针对mod参数出问题的情况，跳回同步
				if($arrISparams['status'] === IS_PARAM_ERROR){
					$bolOutput = true;
					$intStauts = -1;
					$intRedirect = 1;
				}
				break;
			}
		}
		if($bolOutput){
			$strPage = $this->getISErrorPage($intStauts,$intRedirect,$intSwitchTime,$strQuerySign,$strDebugInfo);
		}
		$GLOBALS['logArr']['is_status'] = $arrISparams['status'];
		$GLOBALS['logArr']['is_rd'] = $intRedirect;
		$GLOBALS['logArr']['is_swtime'] = $intSwitchTime;
// 		$GLOBALS['logArr']['is_querysign'] = $strQuerySign;
		return $strPage;
	}
	public function addISLog($data){
		$arrISparams = $data['uiData']['queryInfo']['isParams'];
		$GLOBALS['logArr']['is_mod'] = isset($arrISparams['mod']) ? $arrISparams['mod'] : -1;
		$GLOBALS['logArr']['is_isbd'] = isset($arrISparams['isbd']) ? $arrISparams['isbd'] : '0';
		$GLOBALS['logArr']['is_cqid'] = isset($arrISparams['cqid']) ? $arrISparams['cqid'] : '0';
		$GLOBALS['logArr']['is_isid'] = isset($arrISparams['isid']) ? $arrISparams['isid'] : '0';
		$GLOBALS['logArr']['is_chk'] = isset($arrISparams['chk']) ? $arrISparams['chk'] : '0';
		$GLOBALS['logArr']['is_ver'] = isset($arrISparams['ver']) ? $arrISparams['ver'] : '0';
// 		$GLOBALS['logArr']['is_pstg'] = ($arrISparams['mod'] === IS_PRE_REQ) ? intval($_GET['pstg']) : -1;
		$GLOBALS['logArr']['is_f4s'] = isset($arrISparams['f4s']) ? $arrISparams['f4s'] : '0';
		$GLOBALS['logArr']['is_predict_status'] = isset($arrISparams['is_predict_status']) ? $arrISparams['is_predict_status'] : '0';
		$GLOBALS['logArr']['is_sug_status'] = isset($arrISparams['sug_status']) ? $arrISparams['sug_status'] : '-1';
		$GLOBALS['logArr']['is_csq'] = intval($arrISparams['csq']);
		$GLOBALS['logArr']['is_pstg'] = isset($arrISparams['pstg']) ? intval($arrISparams['pstg']) : -1;
		$GLOBALS['logArr']['is_querysign'] = $data['uiData']['queryInfo']['querySign'];
	//	$GLOBALS['logArr']['is_sug_num'] = empty($arrISparams['sug']) ? 0 : count($arrISparams['sug']);
		if(!isset($GLOBALS['logArr']['word'])){
			$GLOBALS['logArr']['word'] = $data['uiData']['queryInfo']['queryWord'];
		}
		if(!isset($GLOBALS['logArr']['baiduId'])){
			$GLOBALS['logArr']['baiduId'] = $data['uiData']['queryInfo']['baiduId'];
		}
		$strQueryId = CLog::getQueryId();
		if(empty($strQueryId)){
			CLog::setQueryId($data['uiData']['queryInfo']['queryId']);
		}
		if(!isset($GLOBALS['logArr']['sids'])){
			$strSids = '';
			foreach ($data['uiData']['queryInfo']['samplingId'] as $intSid) {
				if (!empty($strSids)) {
					$strSids.='_';
				}
				$strSids.=$intSid;
			}
			$GLOBALS['logArr']['sids'] = $strSids;
		}
		$GLOBALS['logArr']['ua'] = empty($_SERVER['HTTP_USER_AGENT']) ? '' : str_replace(array('[',']'),' ',$_SERVER['HTTP_USER_AGENT']);
		return true;
	}
	
	public function hitSpecialUA(){
		if(empty($_SERVER['HTTP_USER_AGENT'])){
			return false;
		}
		$arrFilterUA = $this->arrInstantSearchConf['filterUA'];
		if(empty($arrFilterUA)){
			return false;
		}
		$strCurUA = strtolower($_SERVER['HTTP_USER_AGENT']);
		foreach($arrFilterUA as $strFilterUA){
			if(strpos($strCurUA,trim($strFilterUA)) !== false){
				return true;
			}
		}
		return false;
	}
}
