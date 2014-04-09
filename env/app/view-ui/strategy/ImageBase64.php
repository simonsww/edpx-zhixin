<?php
/**
 * 
 * @desc base64服务类，功能： 判断是否支持base64，同时从img src中提取img id。
 * @author chenhuailiang@baidu.com
 * 
 */
class ImageBase64 extends Strategy {
	
	const BASE64_PARAM_ERR = 0;
	const BASE64_OK = 1;
	const BASE64_NOT_OK = 2;
	const BASE64_OFF = 3;
	const BASE64_BROWSER = 4;
	const BASE64_EXP = 5;
	const BASE64_MAT = 6;
	const BASE64_OTHER = 7;
	const BASE64_NOT_LEGAL = 8;
	
	public function run(&$arrData, $arrDefConf) {
		$time_start = Volatile::microtime ( true ) * 1000;
		if (empty ( $arrData ) || ! is_array ( $arrData )) {
			CLog::warning ( "get image sid failed, param null" );
			$GLOBALS ['logArr'] ['time_img_base64'] = round ( Volatile::microtime ( true ) * 1000 - $time_start, 2 );
			$GLOBALS ['logArr'] ['img_base64_ret'] = self::BASE64_PARAM_ERR;
			return false;
		}
		
		// 整体功能开关
		$arrConf = Util::getConf ( '/image_base', 'IMAGE_BASE' );
		if ($arrConf ['base64'] !== 'on') {
			CLog::debug ( "get image sid turn off" );
			$GLOBALS ['logArr'] ['time_img_base64'] = round ( Volatile::microtime ( true ) * 1000 - $time_start, 2 );
			$GLOBALS ['logArr'] ['img_base64_ret'] = self::BASE64_OFF;
			return false;
		}
		// 无用代码，小流量使用
		if (! isset ( $arrConf ['base64_tempname'] ) || empty ( $arrConf ['base64_tempname'] )) {
			$GLOBALS ['logArr'] ['time_img_base64'] = round ( Volatile::microtime ( true ) * 1000 - $time_start, 2 );
			$GLOBALS ['logArr'] ['img_base64_ret'] = self::BASE64_NOT_LEGAL;
			return false;
		}
		if (strcasecmp ( $arrData ['uiControl'] ['templateName'], $arrConf ['base64_tempname'] ) == 0) {
			$GLOBALS ['logArr'] ['time_img_base64'] = round ( Volatile::microtime ( true ) * 1000 - $time_start, 2 );
			$GLOBALS ['logArr'] ['img_base64_ret'] = self::BASE64_NOT_LEGAL;
			return false;
		}
		// 浏览器识别IE6、IE7
		$bolFlag = $this->recognizeUserAgent ( $arrData );
		if ($bolFlag !== true) {
			CLog::debug ( "get image sid useragent not legal" );
			$GLOBALS ['logArr'] ['time_img_base64'] = round ( Volatile::microtime ( true ) * 1000 - $time_start, 2 );
			$GLOBALS ['logArr'] ['img_base64_ret'] = self::BASE64_BROWSER;
			return false;
		}
		// for small flow
		/*
		if (isset ( $arrConf ['base64_small_flow'] ) && $arrConf ['base64_small_flow'] === on) {
			$arrSample = Util::getConf ( '/sample_variable', 'sample_variable/IMAGE_BASE64' );
			$bolSampleExp = false;
			$bolSampleMat = false;
			if (is_array ( $arrSample ) && ! empty ( $arrSample ) && ! empty ( $arrSample ['Contexted'] )) {
				if (is_array ( $arrData ['uiData'] ['queryInfo'] ['samplingId'] ) && ! empty ( $arrData ['uiData'] ['queryInfo'] ['samplingId'] )) {
					$arrSids = $arrData ['uiData'] ['queryInfo'] ['samplingId'];
					$arrSids = array_flip ( $arrSids );
					foreach ( $arrSample ['Contexted'] as $arrTemp ) {
						if (isset ( $arrSids [$arrTemp ['sampling_id']] )) {
							if ($arrTemp ['value'] == $arrConf ['exp_value']) {
								$bolSampleExp = true;
								break;
							} else if ($arrTemp ['value'] == $arrConf ['mat_value']) {
								$bolSampleMat = true;
								break;
							}
						}
					}
				}
			}
			if ($bolSampleMat === true) {
				$GLOBALS ['logArr'] ['time_img_base64'] = round ( Volatile::microtime ( true ) * 1000 - $time_start, 2 );
				$GLOBALS ['logArr'] ['img_base64_ret'] = self::BASE64_MAT;
				return false;
			}
			if ($bolSampleExp === false) {
				$GLOBALS ['logArr'] ['time_img_base64'] = round ( Volatile::microtime ( true ) * 1000 - $time_start, 2 );
				$GLOBALS ['logArr'] ['img_base64_ret'] = self::BASE64_OTHER;
				return false;
			}
		}
		*/	

		// 设置左侧小流量开关
		$base64LeftOn = false;
		$leftOpenTpllist = $arrConf ['base64_left_tempname'];
		$leftOpenTpllist = explode ( ',', $leftOpenTpllist );
		foreach ( $leftOpenTpllist as $leftTplName ) {
			if (strcasecmp ( $arrData ['uiControl'] ['templateName'], $leftTplName ) == 0){
				$base64LeftOn = true;
			}
		}
		
		// 处理右侧结果队列
		$arrResult = $arrConf ['result'];
		$arrResult = explode ( ',', $arrResult );
		$arrControlInfo = &$arrData ['uiControl'];
		$arrImgIds = array ();
		$arrImgIdsLeft = array();
		$strPlatform = $arrControlInfo ['platform'];
		$strLanguage = $arrControlInfo ['language'];
		$strType = '';
		$strTemplateName = '';
		$arrImgConf = array ();
		foreach ( $arrResult as $res ) {
		

		if (is_array ( $arrData ['uiData'] [$res] ['item'] ) && ! empty ( $arrData ['uiData'] [$res] ['item'] )) {
				
				// 处理结果队列的每条结果
				foreach ( $arrData ['uiData'] [$res] ['item'] as $intIndex => $arrItem ) {
					$strType = empty ( $arrItem ['dispData'] ['strategy'] ['type'] ) ? VUI_TEMPLATE_ALADDIN_TEMPLATE_TYPE : trim ( $arrItem ['dispData'] ['strategy'] ['type'] );
					if(empty($arrItem ['dispData'] ['strategy'])){
						CLog::debug ( "get tpl strategy fail" );
                        continue;
					}
					$strTemplateName = trim ( $arrItem ['dispData'] ['strategy'] ['tempName'] );
					if (empty ( $strTemplateName )) {
						CLog::debug ( "get image sid template name null" );
						continue;
					}
					
					// 获取tpl.conf内容
					$arrImgConf = $this->load_image_tpl_conf ( $strPlatform, $strLanguage, $strType, $strTemplateName );
					// 从src中提取sid
					if (is_array ( $arrImgConf ) && ! empty ( $arrImgConf )) {
						if (intval ( $arrImgConf ['open_base64'] ) != 1) {
							continue;
						}
						if (is_array ( $arrImgConf ['img'] ) && ! empty ( $arrImgConf ['img'] )) {
							if( $base64LeftOn===true && strcasecmp($res,"asResult")==0){
								foreach ( $arrImgConf ['img'] as $arrImgData ) {
									$this->parse_image_conf ( $arrItem ['dispData'] ['resultData'], $arrImgIdsLeft, $arrImgData );
								}
							}else  if( strcasecmp ( $res, "rightResult") == 0 ){
								/* 处理 右侧展开图片的base64加载问题，控制每单个模板base64加载张数：先读取模板变量$tplData.showrow，如果读不到则默认只加载4张 */
								$imgCountLimit = 4;
								if(is_array($arrItem ['dispData'] ['resultData'])){
									$showNum = $arrItem ['dispData'] ['resultData'] ['tplData'] ['shownums'];
									if( !empty($showNum) && is_numeric($showNum) && $showNum>0 && $showNum<13 ){
										$imgCountLimit = $showNum;
									}
								}
								//记录当前数组里的图片张数
								$tempCount = count($arrImgIds);
								foreach ( $arrImgConf ['img'] as $arrImgData ) {
									$this->parse_image_conf ( $arrItem ['dispData'] ['resultData'], $arrImgIds, $arrImgData );
									//判断新增张数是否超过切分阈值
									if(count($arrImgIds)>($tempCount+$imgCountLimit)){
										//进行切分，去掉尾部图片
										$arrImgIds = array_slice($arrImgIds,0,$tempCount+$imgCountLimit);
										//更新当前图片数量值
										$tempCount = count($arrImgIds);
									}
								}
							}
						}
					}
					unset ( $arrImgConf );
				}
			}
		}

		// 标记base64是否开启
		$base64on = false;
		if (is_array ( $arrImgIds ) && ! empty ( $arrImgIds )) {
			$arrData ['uiData'] ['queryInfo'] ['base64_sids_for_plugin'] = $arrImgIds; //该数组供Smarty插件读取，用于拼装base64形式的图片dom
			//只要右侧有图片，即开启base64开关
			$base64on = true;
		}

        //判断是否开启图片预取, 将已设置预取的图片从base64列表中去除.
        $preImageConf = Util::getConf ( '/image_predict','IMAGE_PREDICT' );
        if($preImageConf['predict_get'] === 'on' && $arrData['uiData']['queryInfo']['pageNo'] == 1 ){
            $preImgList = $arrData['uiData']['queryInfo']['viewConfig']['predictImg'];
            if(!empty($preImgList)){
				if(!empty($preImgList['right']['sidList'])){
					$img_diff = array_diff($arrImgIds,$preImgList['right']['sidList']);
                	#当图片预取list与实际图片list小于，配置差值时关闭base64
                	$arrImgIds = $img_diff;
				}
				if(!empty($preImgList['left']['sidList'])){
					$img_diff_left = array_diff($arrImgIdsLeft,$preImgList['left']['sidList']);
                	#当图片预取list与实际图片list小于，配置差值时关闭base64
                	$arrImgIdsLeft = $img_diff_left;
				}
            }
        }
		
		// 设置base64模板变量
		if (is_array ( $arrImgIds ) && ! empty ( $arrImgIds )) {
			//去重后的右侧图片
			$arrData ['uiData'] ['queryInfo'] ['base64_img_sids'] = $arrImgIds;
		}

		if (is_array ( $arrImgIdsLeft ) && ! empty ( $arrImgIdsLeft )) {
			//左侧图片
			$arrData ['uiData'] ['queryInfo'] ['base64_img_sids_left'] = $arrImgIdsLeft;
			$base64on = true;
			if($base64LeftOn===true){
				$arrData ['uiData'] ['queryInfo'] ['base64_left_exp'] = 'on';
			}
		}
		if($base64on){
			$arrData ['uiData'] ['queryInfo'] ['base64'] = 'on';
			$arrData ['uiData'] ['queryInfo'] ['base64_domain'] = $arrConf ['domain'];
			CSmarty::setQueryInfo ( $arrData ['uiData'] ['queryInfo'] );
			$GLOBALS ['logArr'] ['time_img_base64'] = round ( Volatile::microtime ( true ) * 1000 - $time_start, 2 );
			$GLOBALS ['logArr'] ['img_base64_ret'] = self::BASE64_OK;
			return true;
		}
		$GLOBALS ['logArr'] ['time_img_base64'] = round ( Volatile::microtime ( true ) * 1000 - $time_start, 2 );
		$GLOBALS ['logArr'] ['img_base64_ret'] = self::BASE64_NOT_OK;
		return false;
	}
	
	// 浏览器识别
	public function recognizeUserAgent($arrData) {
		
		// bws迁移nginx后，从http header中获取
		$strUserAgent = $arrData ['uiData'] ['passport'] ['useragentNameFull'];
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
	
	// 获取tpl.conf内容
	public function load_image_tpl_conf($platform, $language, $type, $templateName) {
		
		/**
		 * load config
		 */
		$tplConfPath = CSmarty::getTplFolderPath ( VUI_TEMPLATE_PATH, $platform, $language, $type );
		
		/**
		 * not tend to encrypt url
		 */
		if (! file_exists ( "{$tplConfPath}/{$templateName}/tpl.conf" )) {
			return false;
		}
		
		if(filesize("{$tplConfPath}/{$templateName}/tpl.conf" ) == 0){
			return false;
		}
		
		/**
		 * load configure file
		 *
		 * 这种方式不合理，考虑优化为require php文件数组方式。
		 */
		$conf = TplConf::config_load ( "{$tplConfPath}/{$templateName}", "tpl.conf" );
		
		/**
		 * load configure file failed
		 */
		if (false === $conf) {
			/**
			 * default log config
			 */
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
	
	/*
	 * 提取img sid http://t10.baidu.com/it/u=2347934427,2432002000&fm=58 $arrSids
	 * = array('http://t10.baidu.com/it/u=2347934427,2432002000&fm=58' =>
	 * '2347934427_2432002000_58');
	 */
	public function get_image_sid(&$arrImgSids, $strImgSrc) {
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
		$arrImgSids [$strImgSrc] = $strImgSid;
	}
	
	public function parse_image_conf($arrResultData, &$arrImgSids, $arrImgConf) {
		
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
							$this->get_image_sid ( $arrImgSids, $link );
						} else {
							foreach ( $link as $k => $v ) {
								$this->get_image_sid ( $arrImgSids, $v );
							}
						}
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
							$this->get_image_sid ( $arrImgSids, $link );
						} else {
							foreach ( $link as $k => $v ) {
								$this->get_image_sid ( $arrImgSids, $v );
							}
						}
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
							$this->get_image_sid ( $arrImgSids, $link );
						} else {
							foreach ( $link as $k => $v ) {
								$this->get_image_sid ( $arrImgSids, $v );
							}
						}
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
							$this->get_image_sid ( $arrImgSids, $link );
						} else {
							foreach ( $link as $k => $v ) {
								$this->get_image_sid ( $arrImgSids, $v );
							}
						}
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
							$this->get_image_sid ( $arrImgSids, $link );
						} else {
							foreach ( $link as $k => $v ) {
								$this->get_image_sid ( $arrImgSids, $v );
							}
						}
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
								$this->get_image_sid ( $arrImgSids, $link );
							} else {
								foreach ( $link as $k => $v ) {
									$this->get_image_sid ( $arrImgSids, $v );
								}
							}
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
									$this->get_image_sid ( $arrImgSids, $link );
								} else {
									foreach ( $link as $k => $v ) {
										$this->get_image_sid ( $arrImgSids, $v );
									}
								}
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
									$this->get_image_sid ( $arrImgSids, $link );
								} else {
									foreach ( $link as $k => $v ) {
										$this->get_image_sid ( $arrImgSids, $v );
									}
								}
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
									$this->get_image_sid ( $arrImgSids, $link );
								} else {
									foreach ( $link as $k => $v ) {
										$this->get_image_sid ( $arrImgSids, $v );
									}
								}
							}
						}
					/**
					 *
					 * @example : tplData.morebrand[].link.sublink
					 */
					} else if (2 === $paths_one_count) {
						foreach ( $arrResultData [$paths_one [0]] [$paths_one [1]] as $key => $value ) {
							$link = $arrResultData [$paths_one [0]] [$paths_one [1]] [$key] [$paths_two [0]] [$paths_two [1]];
							if (! empty ( $link )) {
								if (! is_array ( $link )) {
									$this->get_image_sid ( $arrImgSids, $link );
								} else {
									foreach ( $link as $k => $v ) {
										$this->get_image_sid ( $arrImgSids, $v );
									}
								}
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
									$this->get_image_sid ( $arrImgSids, $link );
								} else {
									foreach ( $link as $k => $v ) {
										$this->get_image_sid ( $arrImgSids, $v );
									}
								}
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
									$this->get_image_sid ( $arrImgSids, $link );
								} else {
									foreach ( $link as $k => $v ) {
										$this->get_image_sid ( $arrImgSids, $v );
									}
								}
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
									$this->get_image_sid ( $arrImgSids, $link );
								} else {
									foreach ( $link as $k => $v ) {
										$this->get_image_sid ( $arrImgSids, $v );
									}
								}
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
									$this->get_image_sid ( $arrImgSids, $link );
								} else {
									foreach ( $link as $k => $v ) {
										$this->get_image_sid ( $arrImgSids, $v );
									}
								}
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
									$this->get_image_sid ( $arrImgSids, $link );
								} else {
									foreach ( $link as $k => $v ) {
										$this->get_image_sid ( $arrImgSids, $v );
									}
								}
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
									$this->get_image_sid ( $arrImgSids, $link );
								} else {
									foreach ( $link as $k => $v ) {
										$this->get_image_sid ( $arrImgSids, $v );
									}
								}
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
										$this->get_image_sid ( $arrImgSids, $link );
									} else {
										foreach ( $link as $k => $v ) {
											$this->get_image_sid ( $arrImgSids, $v );
										}
									}
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
										$this->get_image_sid ( $arrImgSids, $link );
									} else {
										foreach ( $link as $k => $v ) {
											$this->get_image_sid ( $arrImgSids, $v );
										}
									}
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
										$this->get_image_sid ( $arrImgSids, $link );
									} else {
										foreach ( $link as $k => $v ) {
											$this->get_image_sid ( $arrImgSids, $v );
										}
									}
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
										$this->get_image_sid ( $arrImgSids, $link );
									} else {
										foreach ( $link as $k => $v ) {
											$this->get_image_sid ( $arrImgSids, $v );
										}
									}
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
										$this->get_image_sid ( $arrImgSids, $link );
									} else {
										foreach ( $link as $k => $v ) {
											$this->get_image_sid ( $arrImgSids, $v );
										}
									}
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
										$this->get_image_sid ( $arrImgSids, $link );
									} else {
										foreach ( $link as $k => $v ) {
											$this->get_image_sid ( $arrImgSids, $v );
										}
									}
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
										$this->get_image_sid ( $arrImgSids, $link );
									} else {
										foreach ( $link as $k => $v ) {
											$this->get_image_sid ( $arrImgSids, $v );
										}
									}
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
										$this->get_image_sid ( $arrImgSids, $link );
									} else {
										foreach ( $link as $k => $v ) {
											$this->get_image_sid ( $arrImgSids, $v );
										}
									}
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
										$this->get_image_sid ( $arrImgSids, $link );
									} else {
										foreach ( $link as $k => $v ) {
											$this->get_image_sid ( $arrImgSids, $v );
										}
									}
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
										$this->get_image_sid ( $arrImgSids, $link );
									} else {
										foreach ( $link as $k => $v ) {
											$this->get_image_sid ( $arrImgSids, $v );
										}
									}
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
											$this->get_image_sid ( $arrImgSids, $link );
										} else {
											foreach ( $link as $k => $v ) {
												$this->get_image_sid ( $arrImgSids, $v );
											}
										}
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
											$this->get_image_sid ( $arrImgSids, $link );
										} else {
											foreach ( $link as $k => $v ) {
												$this->get_image_sid ( $arrImgSids, $v );
											}
										}
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
											$this->get_image_sid ( $arrImgSids, $link );
										} else {
											foreach ( $link as $k => $v ) {
												$this->get_image_sid ( $arrImgSids, $v );
											}
										}
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
											$this->get_image_sid ( $arrImgSids, $link );
										} else {
											foreach ( $link as $k => $v ) {
												$this->get_image_sid ( $arrImgSids, $v );
											}
										}
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
											$this->get_image_sid ( $arrImgSids, $link );
										} else {
											foreach ( $link as $k => $v ) {
												$this->get_image_sid ( $arrImgSids, $v );
											}
										}
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
}
