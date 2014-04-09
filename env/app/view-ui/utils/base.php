<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file base.php
 * @package utils
 * @author liyudong@baidu.com
 * @date 2011-12-12 15:17
 */


/**
 * converting encoding, and check if any data is empty
 * @param mixed [in] var
 * @param string [in] from_encoding
 * @param string [in] to_encoding
 * @param string [in] parent_key
 */

function iconv_data(&$var, $from_encoding, $to_encoding, $parent_key="", &$error_key)
{
    if( empty($var) ) {
        return;
    }
    elseif( is_array($var) ) {
        $rvar = array();
        foreach ($var as $key => $val) {
            iconv_data($val, $from_encoding, $to_encoding, $parent_key."/".$key, $error_key);
            $var[$key] = $val;
        }
    }
    elseif( is_object($var) ) {
        foreach ($var as $key => $val) {
            iconv_data($val, $from_encoding, $to_encoding, $parent_key."/".$key, $error_key);
            $var->{$key} = $val;
        }
    }
    elseif (is_string($var)) {
        if( !isset($GLOBALS['logArr']['iconv_count']) ) {
            $GLOBALS['logArr']['iconv_count'] = 0;
        }
        $GLOBALS['logArr']['iconv_count'] = $GLOBALS['logArr']['iconv_count']+1;
        $res = iconv($from_encoding, $to_encoding . "//IGNORE", $var);
        if( false === $res ) {
            $error_key['iconv_error_key'] .= $parent_key . ";";
        }else {
            $var = $res;
        }
    }
}



/**
 * load configure file
 */
function load_conf($dir) {
    
    /**
     * load configure file
     */
    //if (Util::getConf('/feature', 'FEATURE_LIST/CONFIG2BDCONF/TURN') !== 'ON') {
    //    $conf = config_load($dir, "vui-global.conf", "view-ui.range");
    //} else {
    $conf = Bd_Conf::getConf('/vui-global');
    //}

    if( false === $conf ) {
        /**
         * default log config 
         */
        $GLOBALS['LOG'] = array (
                'intLevel' => 0x04,
                'strLogFile' => VUI_LOG_PATH.'/view-ui.log',
                );
        return false;
    }
    /**
     * assign configure value
     */
    foreach( $conf as $key => $value ) {
        $GLOBALS[$key] = $value;
    }
    /**
     * strLogName
     */
    if( empty($GLOBALS['LOG']['strLogName']) ) {
        $GLOBALS['LOG']['strLogName'] = "view-ui.log";
    }
    $GLOBALS['LOG']['strLogFile'] =  VUI_LOG_PATH . "/" . $GLOBALS['LOG']['strLogName'];
    /**
     * ui encoding
     */
    if( empty($GLOBALS['UI_ENCODING']) ) {
        $status = $GLOBALS['STATUS_CODE']['INIT_FAIL'];
        CLog::fatal($GLOBALS['STATUS_MSG'][$status] . ", UI_ENCODING cannot be empty", $status);
        return false;
    }
    /**
     * request type
     */
    if( empty($GLOBALS['REQUEST_TYPE']) || !is_array($GLOBALS['REQUEST_TYPE']) ) {
        $status = $GLOBALS['STATUS_CODE']['INIT_FAIL'];
        CLog::fatal($GLOBALS['STATUS_MSG'][$status] . ", REQUEST_TYPE cannot be empty", $status);
        return false;
    }
    /**
     * badiu page's mini size
     */
    if( empty($GLOBALS['MINI_BAIDU_PSIZE']) || intval($GLOBALS['MINI_BAIDU_PSIZE']) <= 0 ) {
        $status = $GLOBALS['STATUS_CODE']['INIT_FAIL'];
        $invalid_mini_psize = $GLOBALS['MINI_BAIDU_PSIZE'];
        $default_mini_psize = 10;
        $GLOBALS['MINI_BAIDU_PSIZE'] = $default_mini_psize;
        CLog::warning($GLOBALS['STATUS_MSG'][$status] . 
                ", MINI_BAIDU_PSIZE[{$invalid_mini_psize}] is not valid, and set to " . 
                $GLOBALS['MINI_BAIDU_PSIZE'],
                $status);
    }
    /**
     * aladdin template type
     */
    if( empty($GLOBALS['ALADDIN_TEMPLATE_TYPE']) ) {
        $status = $GLOBALS['STATUS_CODE']['INIT_FAIL'];
        CLog::fatal($GLOBALS['STATUS_MSG'][$status] . ", ALADDIN_TEMPLATE_TYPE cannot be empty", $status);
        return false;
    }
    if( !defined("VUI_TEMPLATE_ALADDIN_TEMPLATE_TYPE") ) {
        define("VUI_TEMPLATE_ALADDIN_TEMPLATE_TYPE", $GLOBALS['ALADDIN_TEMPLATE_TYPE']);
    }else {
        $status = $GLOBALS['STATUS_CODE']['INIT_FAIL'];
        CLog::warning($GLOBALS['STATUS_MSG'][$status] . ", ALADDIN_TEMPLATE_TYPE is already defined:" .
                ALADDIN_TEMPLATE_TYPE, $status, $GLOBALS['logArr']);
        return false;
    }
	
    //load STRATEGY
	if( !empty($GLOBALS['STRATEGY']['USE_STRATEGY']) )
	{
		$strategys = explode(',',$GLOBALS['STRATEGY']['USE_STRATEGY']);
		$use_strategys = array();
		foreach ( $strategys as $key => $value  )
		{
		   $strategy = "STRATEGY".$value;
           if( !empty($GLOBALS[$strategy]['STRATEGY_NAME']) && 
           !empty($GLOBALS[$strategy]['STRATEGY_FUNCTION']))
           {
                if(!strncmp($GLOBALS[$strategy]['STRATEGY_FUNCTION'], "strategy_function",
                strlen("strategy_function")) &&
                function_exists($GLOBALS[$strategy]['STRATEGY_FUNCTION']))
                {
                    //load STRATEGY1
                    if ( $value == 1 )
                    { 
                        if(!empty($GLOBALS[$strategy]))
                        {
                            $template_interfere = array();
                            if( !empty($GLOBALS[$strategy]['TEMPLATE_INTERFERE']) &&
                            is_array($GLOBALS[$strategy]['TEMPLATE_INTERFERE']) )
                            {
                                foreach ( $GLOBALS[$strategy]['TEMPLATE_INTERFERE'] as $k=>$v )
                                {
                                    $interfere_pair = explode("->",$v);
                                    $template_interfere[$k]['left'] = $interfere_pair[0];
                                    $template_interfere[$k]['right'] = $interfere_pair[1];
                                    $template_interfere[$k]['default'] = $interfere_pair[2];
                                }
                            }
                            $GLOBALS[$strategy]['TEMPLATE_INTERFERE'] = $template_interfere;
                            $use_strategys[] = $value; 
                        }
                        else
                        {
                            $status = $GLOBALS['STATUS_CODE']['INIT_FAIL'];
                            CLog::warning($GLOBALS['STATUS_MSG'][$status] . ", USE_STRATEGY $value cannot be empty", $status);
                        }
                    }
                    else
                    {
                        if(!empty($GLOBALS[$strategy]))
                        {
                                $use_strategys[] = $value; 
                        }
                        else
                        {
                            $status = $GLOBALS['STATUS_CODE']['INIT_FAIL'];
                            CLog::debug($GLOBALS['STATUS_MSG'][$status] . ", USE_STRATEGY $value is empty", $status);
                        }
                     }
                }
           }
        }
		$GLOBALS['STRATEGY']['USE_STRATEGY'] = $use_strategys; 
	}

    // get multi rendering conf here recently, avoid loading conf when rendering...
    // by chenjinsheng@baidu.com, 2013/12/02
    $GLOBALS['globalConf']['compileCheck'] = Util::getConf ('/smarty', 'group1/compile_check');
    $GLOBALS['globalConf']['FEATURE_LIST'] = Util::getConf('/feature', 'FEATURE_LIST');
    $GLOBALS['globalConf']['MULTI_RENDER'] = Util::getConf('/multi_render', 'MULTI_RENDER');

    return true;
}

/**
 * @brief load template config  file
 * @param string $tplConfPath
 * @return array
 */
function load_tpl_conf($platform, $language, $type, $templateName) {
    
    /**
     * load config
     */
    $tplConfPath = CSmarty::getTplFolderPath(VUI_TEMPLATE_PATH, $platform, $language, $type);
    
    /**
     * not tend to encrypt url
     */
    if( ! file_exists("{$tplConfPath}/{$templateName}/tpl.conf") ) {
    	return false;
    }
    
    if(filesize("{$tplConfPath}/{$templateName}/tpl.conf" ) == 0){
         return false;
    }           
    /**
     * load configure file
     */
	$conf = TplConf::config_load("{$tplConfPath}/{$templateName}", "tpl.conf");
//	$conf = config_load("{$tplConfPath}/{$templateName}", "tpl.conf");

    /**
     * load configure file failed
     */
    if( false === $conf ) {
        /**
         * default log config 
         */
        $status = $GLOBALS['STATUS_CODE']['LOAD_TPLCONF_FAIL'];
        $logArr['platform'] = $platform;
        $logArr['language'] = $language;
        $logArr['type'] = $type;
        $logArr['templateName'] = $templateName;
        CLog::warning($GLOBALS['STATUS_MSG'][$status] . ", load tpl config fail", $status, $logArr, 1);
        return false;
    }
    
    $path_conf = array();
    if (!empty($conf['enc'])) {
        foreach( $conf['enc'] as $key => $value ) {
            $temp_path = array();
            $path_array = explode( '[]', $value );
            foreach( $path_array as $path ) {
                
                $new_path = array();
                $path_item = explode( '.', $path );
                foreach( $path_item as $item ) {
                    $item = trim( $item );
                    if( !empty($item) ) {
                        $new_path[] = $item;
                    }
                }
                
                if( !empty($new_path) ) {
                    $temp_path[] = implode( '.', $new_path );
                }
            }
            
            if( !empty( $temp_path ) ) {
                $path_conf[] = $temp_path;
            }
        }
    }
    $conf['enc'] = $path_conf;
    
    return $conf;
}

function encryptUrl($url, $maxRandomStrLen='', $encKeyStr='', $encIvecStr='')
{
	$status = -1;
	$logArr['func'] = "encryptUrl";
    
    /**
     * encryptUrl random string length
     * @var long
     */
    if(empty($maxRandomStrLen) || intval($maxRandomStrLen) < 1){
    	$maxRandomStrLen = CSmarty::getMaxRandomStrLen();
    }
    
    /**
     * encryptUrl key string, ie: token
     * @var string
     */
    if( empty($encKeyStr) ){
    	$encKeyStr = CSmarty::getEncKeyStr();
    }
    if( empty($encIvecStr) ){
    	$encIvecStr = CSmarty::getEncIvecStr();
    }
    
    $randState = CSmarty::getRandState();
    $flag = CSmarty::getFlag();
    
    $logArr['url'] = $url;
    $logArr['encKeyStr'] = $encKeyStr;
    $logArr['maxRandomStrLen'] = $maxRandomStrLen; 
    $logArr['randState'] = $randState;
    $logArr['flag'] = $flag;
    
    $url = trim($url);

    if( strlen($url) == 0 ) {
        return false;
    }

    $result = hilight_encryptUrl($url, $encKeyStr, $encIvecStr, $maxRandomStrLen, $randState, $flag);
    
    $logArr['result'] = $result;
    
    if( $GLOBALS['ENC_LOG'] ) {
    	CLog::notice("hilight_encryptUrl end", $status, $logArr, 1);
    }
    
    if(false == $result){
    	CLog::warning("fail to call hilight_encryptUrl", $status, $logArr, 1);
    }
    
    $maxEncWarningLen = CSmarty::getMaxEncWarningLen();
    $length = strlen( $result );
    /**
	 * if $length is greater than the max length of url, then return false,ie  fail to encrypt
	 * 
	 */
	if( $maxEncWarningLen > 0  && $length > $maxEncWarningLen ) {
		$logArr['length'] = $length;
		$logArr['maxEncWarningLen'] = $maxEncWarningLen;
		CLog::warning("encryption url len is {$length}, limit {$maxEncWarningLen}", $status, $logArr, 1);
	}
    
    
    return $result;
}


function prefixEncryptUrl($url, $prefix = true ) {
	
	$result = encryptUrl($url);
	
	if( false == $result) {
		return $url;
	}
	$urlEncMaxLen = CSmarty::getUrlEncMaxLen();
	$length = strlen( $result );
	if( $urlEncMaxLen > 0 && $length > $urlEncMaxLen ) {
		return $url;	
	}
	
	if( true == $prefix ) {
		$prefix_str = CSmarty::getEncryptionPrefix();
		$result = $prefix_str . $result;
	}
	
	return $result;
}

/**
 * @brief process aladdin data
 * @param array $data
 * @param array $path_conf
 */
function process_aladdin_data(&$data, &$path_conf) {
	
    $cnt = count($path_conf);
	
    $status = -1;
    
	if( 1 === $cnt ){
		
		$paths = explode( '.', $path_conf[0] );
		
		$paths_count = count( $paths );
		
		switch( $paths_count ) {
			/**
			 * @example : @enc : tplData
			 */
			case 1:
				$link = $data['resultData'][$paths[0]];
				if( ! empty( $link ) ) {
					if( ! is_array($link) ) {
						$data['resultData'][$paths[0]] = prefixEncryptUrl( $link );
					} else {
						foreach( $link as $k => $v ) {
							$data['resultData'][$paths[0]][$k] = prefixEncryptUrl( $v );
						}
					}
					
				} else {
					$logArr['url'] = "data['resultData'][$paths[0]]";
					CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				}
				break ;
			/**
			 * @example : @enc : tplData.loc
			 */
			case 2:
				$link = $data['resultData'][$paths[0]][$paths[1]];
				if( ! empty( $link ) ) {
					if( ! is_array($link) ) {
						$data['resultData'][$paths[0]][$paths[1]] = prefixEncryptUrl($link);
					} else {
						foreach( $link as $k => $v ) {
							$data['resultData'][$paths[0]][$paths[1]][$k] = prefixEncryptUrl( $v );
						}
					}
					
				} else {
					$logArr['url'] = "data['resultData'][$paths[0]][$paths[1]]";
					CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				}
				break;
			/**
			 * @example : tplData.moreprice.link
			 */
			case 3:
				$link = $data['resultData'][$paths[0]][$paths[1]][$paths[2]];
				if( ! empty( $link ) ) {
					if( ! is_array($link) ) {
						$data['resultData'][$paths[0]][$paths[1]][$paths[2]] = prefixEncryptUrl($link);
					} else {
						foreach( $link as $k => $v ) {
							$data['resultData'][$paths[0]][$paths[1]][$paths[2]][$k] = prefixEncryptUrl( $v );
						}
					}
					
				} else {
					$logArr['url'] = "data['resultData'][$paths[0]][$paths[1]][$paths[2]]";
					CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				}
				break;
			/**
			 * @example : tplData.moreprice.link.link
			 */
			case 4:
				$link = $data['resultData'][$paths[0]][$paths[1]][$paths[2]][$paths[3]];
				if( ! empty( $link ) ) {
					if( ! is_array($link) ) {
						$data['resultData'][$paths[0]][$paths[1]][$paths[2]][$paths[3]] = prefixEncryptUrl($link);
					} else {
						foreach( $link as $k => $v ) {
							$data['resultData'][$paths[0]][$paths[1]][$paths[2]][$paths[3]][$k] = prefixEncryptUrl( $v );
						}
					}
					
				} else {
					$logArr['url'] = "data['resultData'][$paths[0]][$paths[1]][$paths[2]][$paths[3]][$k]";
					CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				}
				break;
			/**
			 * @example : tplData.moreprice.link.link.link
			 */
			case 5:
				$link = $data['resultData'][$paths[0]][$paths[1]][$paths[2]][$paths[3]][$paths[4]];
				if( ! empty( $link ) ) {
					if( ! is_array( $link ) ) {
						$data['resultData'][$paths[0]][$paths[1]][$paths[2]][$paths[3]][$paths[4]] = prefixEncryptUrl($link);
					} else {
						foreach( $link as $k => $v ) {
							$data['resultData'][$paths[0]][$paths[1]][$paths[2]][$paths[3]][$paths[4]][$k] = prefixEncryptUrl( $v );
						}
					}
					
				} else {
					$logArr['url'] = "data['resultData'][$paths[0]][$paths[1]][$paths[2]][$paths[3]][$paths[4]]";
					CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				}
				break;
		}
		
		return;
	}
	
	if( 2 === $cnt ) {
		
		$paths_one = explode( '.', $path_conf[0] );
		$paths_one_count = count( $paths_one );
		
		$paths_two = explode( '.', $path_conf[1] );
		$paths_two_count = count( $paths_two );
		
		$total_count = $paths_one_count + $paths_two_count;
		
		switch( $total_count ) {
			/**
			 * @example : tplData[].morebrand
			 */
			case 2:
				foreach( $data['resultData'][$paths_one[0]] as $key => $value ) {
					$link = $data['resultData'][$paths_one[0]][$key][$paths_two[0]]; 
					if( ! empty( $link ) ) {
						if( ! is_array( $link ) ) {
							$data['resultData'][$paths_one[0]][$key][$paths_two[0]] = prefixEncryptUrl($link);
						} else {
						    foreach( $link as $k => $v ) {
							    $data['resultData'][$paths_one[0]][$key][$paths_two[0]][$k] = prefixEncryptUrl( $v );
						    }
					    }
					} else {
					    $logArr['url'] = "data['resultData'][$paths_one[0]][$key][$paths_two[0]]";
					    CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				    }
				}
				break;
			case 3:
				/**
			     * @example : tplData[].morebrand.link
			     */
				if( 1 === $paths_one_count  ) {
				    foreach( $data['resultData'][$paths_one[0]] as $key => $value ) {
				    	$link = $data['resultData'][$paths_one[0]][$key][$paths_two[0]][$paths_two[1]];
				    	if( ! empty( $link ) ) {
				    		if( ! is_array( $link ) ) {
				    			$data['resultData'][$paths_one[0]][$key][$paths_two[0]][$paths_two[1]] = prefixEncryptUrl($link);
				    		}else{
				    			foreach( $link as $k => $v ) {
							        $data['resultData'][$paths_one[0]][$key][$paths_two[0]][$paths_two[1]][$k] = prefixEncryptUrl( $v );
						        }
				    		}
				    		
				    	} else {
					        $logArr['url'] = "data['resultData'][$paths_one[0]][$key][$paths_two[0]][$paths_two[1]]";
					        CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				        }
				    }
			    /**
			     * @example : tplData.morebrand[].link
			     */
				}else{
                    if (!empty($data['resultData'][$paths_one[0]][$paths_one[1]])) {
    					foreach( $data['resultData'][$paths_one[0]][$paths_one[1]] as $key => $value ) {
	    					$link = $data['resultData'][$paths_one[0]][$paths_one[1]][$key][$paths_two[0]];
		    				if( ! empty( $link ) ) {
			    				if( ! is_array( $link ) ) {
				    				$data['resultData'][$paths_one[0]][$paths_one[1]][$key][$paths_two[0]] = prefixEncryptUrl($link);
					    		}else{
				    	    		foreach( $link as $k => $v ) {
							            $data['resultData'][$paths_one[0]][$paths_one[1]][$key][$paths_two[0]][$k] = prefixEncryptUrl( $v );
						            }
				    		    }
						    } else {
					            $logArr['url'] = "data['resultData'][$paths_one[0]][$paths_one[1]][$key][$paths_two[0]]";
					            CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				            }
                        }
				    }
				}
				break;
			case 4:
				/**
			     * @example : tplData[].morebrand.link.sublink
			     */
				if( 1 === $paths_one_count  ) {
				    foreach( $data['resultData'][$paths_one[0]] as $key => $value ) {
				    	$link = $data['resultData'][$paths_one[0]][$key][$paths_two[0]][$paths_two[1]][$paths_two[2]];
				    	if( ! empty( $link ) ) {
				    		if( ! is_array( $link ) ) {
				    			$data['resultData'][$paths_one[0]][$key][$paths_two[0]][$paths_two[1]][$paths_two[2]] = prefixEncryptUrl($link);
				    		}else{
				    			foreach( $link as $k => $v ) {
							        $data['resultData'][$paths_one[0]][$key][$paths_two[0]][$paths_two[1]][$paths_two[2]][$k] = prefixEncryptUrl( $v );
						        }
				    		}
				    		
				    	} else {
					        $logArr['url'] = "data['resultData'][$paths_one[0]][$key][$paths_two[0]][$paths_two[1]][$paths_two[2]]";
					        CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				        }
				    }
				/**
			     * @example : tplData.morebrand[].link.sublink
			     */
				} else if ( 2 === $paths_one_count ) {
					foreach( $data['resultData'][$paths_one[0]][$paths_one[1]] as $key => $value ) {
						$link = $data['resultData'][$paths_one[0]][$paths_one[1]][$key][$paths_two[0]][$paths_two[1]];
						if( ! empty( $link ) ) {
							if( ! is_array( $link ) ) {
								$data['resultData'][$paths_one[0]][$paths_one[1]][$key][$paths_two[0]][$paths_two[1]] = prefixEncryptUrl($link);
							}else{
				    			foreach( $link as $k => $v ) {
							        $data['resultData'][$paths_one[0]][$paths_one[1]][$key][$paths_two[0]][$paths_two[1]][$k] = prefixEncryptUrl( $v );
						        }
				    		}
							
						} else {
					        $logArr['url'] = "data['resultData'][$paths_one[0]][$paths_one[1]][$key][$paths_two[0]][$paths_two[1]]";
					        CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				        }
				    }
				/**
			     * @example : tplData.morebrand.link[].sublink
			     */
				} else {
					foreach( $data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]] as $key => $value ) {
						$link = $data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]][$key][$paths_two[0]];
						if( ! empty( $link ) ) {
							if( ! is_array( $link ) ) {
								$data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]][$key][$paths_two[0]] = prefixEncryptUrl($link);
							}else{
				    			foreach( $link as $k => $v ) {
							        $data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]][$key][$paths_two[0]][$k] = prefixEncryptUrl( $v );
						        }
				    		}
							
						} else {
					        $logArr['url'] = "data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]][$key][$paths_two[0]]";
					        CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				        }
				    }
				}
				break;
			case 5:
			    /**
			     * @example : tplData[].morebrand.link.sublink.subsublink
			     */
				if( 1 === $paths_one_count  ) {
				    foreach( $data['resultData'][$paths_one[0]] as $key => $value ) {
				    	$link = $data['resultData'][$paths_one[0]][$key][$paths_two[0]][$paths_two[1]][$paths_two[2]][$paths_two[3]];
				    	if( ! empty( $link ) ) {
				    		if( ! is_array( $link ) ) {
				    			$data['resultData'][$paths_one[0]][$key][$paths_two[0]][$paths_two[1]][$paths_two[2]][$paths_two[3]] = prefixEncryptUrl($link);
				    		}else{
				    			foreach( $link as $k => $v ) {
							        $data['resultData'][$paths_one[0]][$key][$paths_two[0]][$paths_two[1]][$paths_two[2]][$paths_two[3]][$k] = prefixEncryptUrl( $v );
						        }
				    		}
				    		
				    	} else {
					        $logArr['url'] = "data['resultData'][$paths_one[0]][$key][$paths_two[0]][$paths_two[1]][$paths_two[2]][$paths_two[3]]";
					        CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				        }
				    }
				/**
			     * @example : tplData.morebrand[].link.sublink.subsublink
			     */
				} else if ( 2 === $paths_one_count ) {
					foreach( $data['resultData'][$paths_one[0]][$paths_one[1]] as $key => $value ) {
						$link = $data['resultData'][$paths_one[0]][$paths_one[1]][$key][$paths_two[0]][$paths_two[1]][$paths_two[2]];
						if( ! empty( $link ) ) {
							if( ! is_array( $link ) ) {
								$data['resultData'][$paths_one[0]][$paths_one[1]][$key][$paths_two[0]][$paths_two[1]][$paths_two[2]] = prefixEncryptUrl($link);
							}else{
				    			foreach( $link as $k => $v ) {
							        $data['resultData'][$paths_one[0]][$paths_one[1]][$key][$paths_two[0]][$paths_two[1]][$paths_two[2]][$k] = prefixEncryptUrl( $v );
						        }
				    		}
							
						} else {
					        $logArr['url'] = "data['resultData'][$paths_one[0]][$paths_one[1]][$key][$paths_two[0]][$paths_two[1]][$paths_two[2]]";
					        CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				        }
				    }
				/**
			     * @example : tplData.morebrand.link[].sublink.subsublink
			     */
				} else if ( 3 === $paths_one_count ) {
					foreach( $data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]] as $key => $value ) {
						$link = $data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]][$key][$paths_two[0]][$paths_two[1]];
						if( ! empty( $link ) ) {
							if( ! is_array( $link ) ) {
								$data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]][$key][$paths_two[0]][$paths_two[1]] = prefixEncryptUrl($link);
							}else{
				    			foreach( $link as $k => $v ) {
							        $data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]][$key][$paths_two[0]][$paths_two[1]][$k] = prefixEncryptUrl( $v );
						        }
				    		}
							
						} else {
					        $logArr['url'] = "data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]][$key][$paths_two[0]][$paths_two[1]]";
					        CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				        }
				    }
				/**
			     * @example : tplData.morebrand.link.sublink[].subsublink
			     */
				} else {
					foreach( $data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]][$paths_one[3]] as $key => $value ) {
						$link = $data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]][$paths_one[3]][$key][$paths_two[0]];
						if( ! empty( $link ) ) {
							if( ! is_array( $link ) ) {
								$data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]][$paths_one[3]][$key][$paths_two[0]] = prefixEncryptUrl($link);
							}else{
				    			foreach( $link as $k => $v ) {
							        $data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]][$paths_one[3]][$key][$paths_two[0]][$k] = prefixEncryptUrl( $v );
						        }
				    		}
							
						} else {
					        $logArr['url'] = "data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]][$paths_one[3]][$key][$paths_two[0]]";
					        CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				        }
				    }
				}
				break;
		}
		return;
	}
	
	if( 3 === $cnt ) {
		
		$paths_one = explode( '.', $path_conf[0] );
		$paths_one_count = count( $paths_one );
		
		$paths_two = explode( '.', $path_conf[1] );
		$paths_two_count = count( $paths_two );
		
		$paths_three = explode( '.', $path_conf[2] );
		$paths_three_count = count( $paths_three );
		
		$total_count = $paths_one_count + $paths_two_count + $paths_three_count;
		
		switch( $total_count ) {
			/**
			 * @example : tplData[].morebrand[].link
			 */
			case 3:
				foreach( $data['resultData'][$paths_one[0]] as $key0 => $value0 ) {
					foreach( $data['resultData'][$paths_one[0]][$key0][$paths_two[0]] as $key1 => $value1 ) {
						$link = $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]];
						if( ! empty( $link ) ) {
							if( ! is_array( $link ) ) {
								$data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]] = prefixEncryptUrl($link);
							}else{
				    			foreach( $link as $k => $v ) {
							        $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$k] = prefixEncryptUrl( $v );
						        }
				    		}
							
						} else {
					        $logArr['url'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]]";
					        CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				        }
					}
				}
				break;
			case 4:
			   /**
			    * @example : tplData.morebrand[].link[].sublink
			    */
				if( 2 === $paths_one_count  ) {
				    foreach( $data['resultData'][$paths_one[0]][$paths_one[1]] as $key0 => $value0 ) {
				        foreach( $data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]] as $key1 => $value1 ) {
				        	$link = $data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]][$key1][$paths_three[0]];
				        	if( ! empty( $link ) ) {
				        		if( ! is_array( $link ) ) {
				        			$data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]][$key1][$paths_three[0]] = prefixEncryptUrl($link);
				        		}else{
				    			    foreach( $link as $k => $v ) {
							            $data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]][$key1][$paths_three[0]][$k] = prefixEncryptUrl( $v );
						            }
				    		    }
				        	} else {
					            $logArr['url'] = "data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]][$key1][$paths_three[0]]";
					            CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				            }
					    }
				    }
			   /**
			    * @example : tplData[].morebrand.link[].sublink
			    */
				} else if ( 2 === $paths_two_count ) {
					foreach( $data['resultData'][$paths_one[0]] as $key0 => $value0 ) {
				        foreach( $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]] as $key1 => $value1 ) {
				        	$link = $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]][$key1][$paths_three[0]];
				        	if( ! empty( $link ) ) {
				        		if( ! is_array( $link ) ) {
				        			$data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]][$key1][$paths_three[0]] = prefixEncryptUrl($link);
				        		}else{
				    			    foreach( $link as $k => $v ) {
							            $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]][$key1][$paths_three[0]][$k] = prefixEncryptUrl( $v );
						            }
				    		    }
				        		
				        	} else {
					            $logArr['url'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]][$key1][$paths_three[0]]";
					            CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				            }
					    }
				    }
			   /**
			    * @example : tplData[].morebrand[].link.sublink
			    */
				} else {
					foreach( $data['resultData'][$paths_one[0]] as $key0 => $value0 ) {
				        foreach( $data['resultData'][$paths_one[0]][$key0][$paths_two[0]] as $key1 => $value1 ) {
				        	$link = $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$paths_three[1]];
				        	if( ! empty( $link ) ) {
				        		if( ! is_array( $link ) ) {
				        			$data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$paths_three[1]] = prefixEncryptUrl($link);
				        		}else{
				    			    foreach( $link as $k => $v ) {
							            $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$paths_three[1]][$k] = prefixEncryptUrl( $v );
						            }
				    		    }
				        		
				        	} else {
					            $logArr['url'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$paths_three[1]]";
					            CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				            }
					    }
				    }
				}
				break;
			case 5:
			   /**
			    * @example : tplData.morebrand.link[].sublink[].subsublink
			    */
				if( 3 === $paths_one_count  ) {
				    foreach( $data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]] as $key0 => $value0 ) {
				        foreach( $data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]][$key0][$paths_two[0]] as $key1 => $value1 ) {
				        	$link = $data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]][$key0][$paths_two[0]][$key1][$paths_three[0]];
				        	if( ! empty( $link ) ) {
				        		if( ! is_array( $link ) ) {
				        			$data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]][$key0][$paths_two[0]][$key1][$paths_three[0]] = prefixEncryptUrl($link);
				        		}else{
				    			    foreach( $link as $k => $v ) {
							            $data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]][$key0][$paths_two[0]][$key1][$paths_three[0]][$k] = prefixEncryptUrl( $v );
						            }
				    		    }
				        		
				        	} else {
					            $logArr['url'] = "data['resultData'][$paths_one[0]][$paths_one[1]][$paths_one[2]][$key0][$paths_two[0]][$key1][$paths_three[0]]";
					            CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				            }
					    }
				    }
			   /**
			    * @example : tplData[].morebrand.link.sublink[].subsublink
			    */
				} else if ( 3 === $paths_two_count ) {
					foreach( $data['resultData'][$paths_one[0]] as $key0 => $value0 ) {
				        foreach( $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]][$paths_two[2]] as $key1 => $value1 ) {
				        	$link = $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]][$paths_two[2]][$key1][$paths_three[0]];
				        	if( ! empty( $link ) ) {
				        		if( ! is_array( $link ) ) {
				        			$data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]][$paths_two[2]][$key1][$paths_three[0]] = prefixEncryptUrl($link);
				        		}else{
				    			    foreach( $link as $k => $v ) {
							            $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]][$paths_two[2]][$key1][$paths_three[0]][$k] = prefixEncryptUrl( $v );
						            }
				    		    }
				        		
				        	} else {
					            $logArr['url'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]][$paths_two[2]][$key1][$paths_three[0]]";
					            CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				            }
					    }
				    }
			   /**
			    * @example : tplData[].morebrand[].link.sublink.subsublink
			    */
				} else if ( 3 === $paths_three_count ) {
					foreach( $data['resultData'][$paths_one[0]] as $key0 => $value0 ) {
				        foreach( $data['resultData'][$paths_one[0]][$key0][$paths_two[0]] as $key1 => $value1 ) {
				        	$link = $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$paths_three[1]][$paths_three[2]];
				        	if( ! empty( $link ) ) {
				        		if( ! is_array( $link ) ) {
				        			$data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$paths_three[1]][$paths_three[2]] = prefixEncryptUrl($link);
				        		}else{
				    			    foreach( $link as $k => $v ) {
							            $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$paths_three[1]][$paths_three[2]][$k] = prefixEncryptUrl( $v );
						            }
				    		    }
				        		
				        	} else {
					            $logArr['url'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$paths_three[1]][$paths_three[2]]";
					            CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				            }
					    }
				    }
			   /**
			    * @example : tplData.morebrand[].link.sublink[].subsublink
			    */
				} else if ( 2 === $paths_one_count && 2 === $paths_two_count && 1 === $paths_three_count ) {
					foreach( $data['resultData'][$paths_one[0]][$paths_one[1]] as $key0 => $value0 ) {
				        foreach( $data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]][$paths_two[1]] as $key1 => $value1 ) {
				        	$link = $data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]][$paths_two[1]][$key1][$paths_three[0]];
				        	if( ! empty( $link ) ) {
				        		if( ! is_array( $link ) ) {
				        			$data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]][$paths_two[1]][$key1][$paths_three[0]] = prefixEncryptUrl($link);
				        		}else{
				    			    foreach( $link as $k => $v ) {
							            $data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]][$paths_two[1]][$key1][$paths_three[0]][$k] = prefixEncryptUrl( $v );
						            }
				    		    }
				        		
				        	} else {
					            $logArr['url'] = "data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]][$paths_two[1]][$key1][$paths_three[0]]";
					            CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				            }
					    }
				    }
			   /**
			    * @example : tplData.morebrand[].link[].sublink.subsublink
			    */
				} else if ( 2 === $paths_one_count && 1 === $paths_two_count && 2 === $paths_three_count ) {
					foreach( $data['resultData'][$paths_one[0]][$paths_one[1]] as $key0 => $value0 ) {
				        foreach( $data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]] as $key1 => $value1 ) {
				        	$link = $data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]][$key1][$paths_three[0]][$paths_three[1]];
				        	if( ! empty( $link ) ) {
				        		if( ! is_array( $link ) ) {
				        			$data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]][$key1][$paths_three[0]][$paths_three[1]] = prefixEncryptUrl($link);
				        		}else{
				    			    foreach( $link as $k => $v ) {
							            $data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]][$key1][$paths_three[0]][$paths_three[1]][$k] = prefixEncryptUrl( $v );
						            }
				    		    }
				        		
				        	} else {
					            $logArr['url'] = "data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]][$key1][$paths_three[0]][$paths_three[1]]";
					            CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				            }
					    }
				    }
			   /**
			    * @example : tplData[].morebrand.link[].sublink.subsublink
			    */
				} else if ( 1 === $paths_one_count && 2 === $paths_two_count && 2 === $paths_three_count ) {
					foreach( $data['resultData'][$paths_one[0]] as $key0 => $value0 ) {
				        foreach( $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]] as $key1 => $value1 ) {
				        	$link = $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]][$key1][$paths_three[0]][$paths_three[1]];
				        	if( ! empty( $link ) ) {
				        		if( ! is_array( $link ) ) {
				        			$data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]][$key1][$paths_three[0]][$paths_three[1]] = prefixEncryptUrl($link);
				        		}else{
				    			    foreach( $link as $k => $v ) {
							            $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]][$key1][$paths_three[0]][$paths_three[1]][$k] = prefixEncryptUrl( $v );
						            }
				    		    }
				        		
				        	} else {
					            $logArr['url'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]][$key1][$paths_three[0]][$paths_three[1]]";
					            CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				            }
					    }
				    }
				} 

				break;
		}
		return;
	}
	
	if( 4 === $cnt) {
		
		$paths_one = explode( '.', $path_conf[0] );
		$paths_one_count = count( $paths_one );
		
		$paths_two = explode( '.', $path_conf[1] );
		$paths_two_count = count( $paths_two );
		
	    $paths_three = explode( '.', $path_conf[2] );
		$paths_three_count = count( $paths_three );
		
		$paths_four = explode( '.', $path_conf[3] );
		$paths_four_count = count( $paths_four );
		
		
		$total_count = $paths_one_count + $paths_two_count + $paths_three_count + $paths_four_count;
		
		
		switch( $total_count ) {
			case 4:
			   /**
			    * @example : tplData[].morebrand[].link[].sublink
			    */
				foreach( $data['resultData'][$paths_one[0]] as $key0 => $value0 ) {
				    foreach( $data['resultData'][$paths_one[0]][$key0][$paths_two[0]] as $key1 => $value1 ) {
				    	foreach( $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]] as $key2 => $value2 ) {
				    		$link = $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$key2][$paths_four[0]];
				    		if( ! empty( $link ) ) {
				    			if( ! is_array( $link ) ) {
				    				$data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$key2][$paths_four[0]] = prefixEncryptUrl($link);
				    			}else{
				    			    foreach( $link as $k => $v ) {
							            $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$key2][$paths_four[0]][$paths_three[1]][$k] = prefixEncryptUrl( $v );
						            }
				    		    }
				    			
				    		} else {
					            $logArr['url'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$key2][$paths_four[0]]";
					            CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				            }
				    	}
				    }
			    }
				break;
			case 5:
			   /**
			    * @example : tplData.morebrand[].link[].sublink[].subsublink
			    */
		        if( 2 === $paths_one_count  ) {
			        foreach( $data['resultData'][$paths_one[0]][$paths_one[1]] as $key0 => $value0 ) {
			        	foreach( $data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]] as $key1 => $value1 ) {
			        		foreach( $data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]][$key1][$paths_three[0]] as $key2 => $value2 ) {
			        			$link = $data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]][$key1][$paths_three[0]][$key2][$paths_four[0]];
			        			if( ! empty( $link ) ) {
			        				if( ! is_array( $link ) ) {
			        					$data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]][$key1][$paths_three[0]][$key2][$paths_four[0]] = prefixEncryptUrl($link);
			        				}else{
				    			        foreach( $link as $k => $v ) {
							                 $data['resultData'][$paths_one[0]][$paths_one[1]][$key0][$paths_two[0]][$key1][$paths_three[0]][$key2][$paths_four[0]][$k] = prefixEncryptUrl( $v );
						                }
				    		        }
			        				
			        			} else {
					                $logArr['url'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$key2][$paths_four[0]]";
					                CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				                }
			        		}
			        	}      	
			        }
			   /**
			    * @example : tplData[].morebrand.link[].sublink[].subsublink
			    */
			    } else if ( 2 === $paths_two_count ) {
			    	foreach( $data['resultData'][$paths_one[0]] as $key0 => $value0 ) {
			        	foreach( $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]] as $key1 => $value1 ) {
			        		foreach( $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]][$key1][$paths_three[0]] as $key2 => $value2 ) {
			        			$link = $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]][$key1][$paths_three[0]][$key2][$paths_four[0]];
			        			if( ! empty( $link ) ) {
			        				if( ! is_array( $link ) ) {
			        					$data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]][$key1][$paths_three[0]][$key2][$paths_four[0]] = prefixEncryptUrl($link);
			        				}else{
				    			        foreach( $link as $k => $v ) {
							                 $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]][$key1][$paths_three[0]][$key2][$paths_four[0]][$k] = prefixEncryptUrl( $v );
						                }
				    		        }
			        				
			        			} else {
					                $logArr['url'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$paths_two[1]][$key1][$paths_three[0]][$key2][$paths_four[0]]";
					                CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				                }
			        		}
			        	}      	
			        }
			   /**
			    * @example : tplData[].morebrand[].link.sublink[].subsublink
			    */
			    } else if ( 2 === $paths_three_count ) {
			    	foreach( $data['resultData'][$paths_one[0]] as $key0 => $value0 ) {
			        	foreach( $data['resultData'][$paths_one[0]][$key0][$paths_two[0]] as $key1 => $value1 ) {
			        		foreach( $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$paths_three[1]] as $key2 => $value2 ) {
			        			$link = $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$paths_three[1]][$key2][$paths_four[0]];
			        			if( ! empty( $link ) ) {
			        				if( ! is_array( $link ) ) {
			        					$data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$paths_three[1]][$key2][$paths_four[0]] = prefixEncryptUrl($link);
			        				}else{
				    			        foreach( $link as $k => $v ) {
							                 $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$paths_three[1]][$key2][$paths_four[0]][$k] = prefixEncryptUrl( $v );
						                }
				    		        }
			        				
			        			} else {
					                $logArr['url'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$paths_three[1]][$key2][$paths_four[0]]";
					                CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				                }
			        		}
			        	}      	
			        }
			   /**
			    * @example : tplData[].morebrand[].link[].sublink.subsublink
			    */
			    } else if ( 2 === $paths_four_count ) {
			    	foreach( $data['resultData'][$paths_one[0]] as $key0 => $value0 ) {
			        	foreach( $data['resultData'][$paths_one[0]][$key0][$paths_two[0]] as $key1 => $value1 ) {
			        		foreach( $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]] as $key2 => $value2 ) {
			        			$link = $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$key2][$paths_four[0]][$paths_four[1]];
			        			if( ! empty( $link ) ) {
			        				if( ! is_array( $link ) ) {
			        					$data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$key2][$paths_four[0]][$paths_four[1]] = prefixEncryptUrl($link);
			        				}else{
				    			        foreach( $link as $k => $v ) {
							                 $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$key2][$paths_four[0]][$paths_four[1]][$k] = prefixEncryptUrl( $v );
						                }
				    		        }
			        				
			        			} else {
					                $logArr['url'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$key2][$paths_four[0]][$paths_four[1]]";
					                CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				                }
			        		}
			        	}      	
			        }
			    }
			    break;
		}
		return;
	}
	
	if ( 5 ===  $cnt ) {
		$paths_one = explode( '.', $path_conf[0] );
		$paths_one_count = count( $paths_one );
		
		$paths_two = explode( '.', $path_conf[1] );
		$paths_two_count = count( $paths_two );
		
	    $paths_three = explode( '.', $path_conf[2] );
		$paths_three_count = count( $paths_three );
		
		$paths_four = explode( '.', $path_conf[3] );
		$paths_four_count = count( $paths_four );
		
		$paths_five = explode( '.', $path_conf[4] );
		$paths_five_count = count( $paths_five );
		
		
		$total_count = $paths_one_count + $paths_two_count + $paths_three_count + $paths_four_count + $paths_five_count;
		
		switch( $total_count ) {
			case 5:
			   /**
			    * @example : tplData[].morebrand[].link[].sublink[].subsublink
			    */
			    foreach( $data['resultData'][$paths_one[0]] as $key0 => $value0 ) {
			    	foreach( $data['resultData'][$paths_one[0]][$key0][$paths_two[0]] as $key1 => $value1 ) {
			        		foreach( $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]] as $key2 => $value2 ) {
			        			foreach( $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$key2][$paths_four[0]] as $key3 => $value3) {
			        				$link = $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$key2][$paths_four[0]][$key3][$paths_five[0]];
			        				if( ! empty( $link ) ) {
			        					if( ! is_array( $link ) ) {
			        						$data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$key2][$paths_four[0]][$key3][$paths_five[0]] = prefixEncryptUrl($link);
			        					}else{
				    			            foreach( $link as $k => $v ) {
							                    $data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$key2][$paths_four[0]][$key3][$paths_five[0]][$k] = prefixEncryptUrl( $v );
						                    }
				    		            }
			        					
			        				} else {
					                    $logArr['url'] = "data['resultData'][$paths_one[0]][$key0][$paths_two[0]][$key1][$paths_three[0]][$key2][$paths_four[0]][$key3][$paths_five[0]]";
					                    CLog::debug("data to be encrypt is empty", $status, $logArr, 1);
				                    }
			        			}
			        		}
			        }      	
			    }
				break;
			default:
				
				break;
		}
		return;
	}
	
	if( $cnt > 5 ) {
	    $logArr['path_conf'] =  implode( "_", $path_conf );
	    CLog::warning("data to be encrypt is more than 5 level", $status, $logArr, 1);
	}
}


function backend_encrypt_url( &$data, $platform, $language, $type, $templateName ) {
    /**
     * encrypt page's url
     */
    $URLEncryption = CSmarty::getURLEncryption();
    if( 1 === intval ($URLEncryption ) ){
        
    	$time_encrypt_start = Volatile::microtime(true)*1000;
    	

    	/**
    	 * encrypt page url
    	 */
    	$conf = load_tpl_conf( $platform, $language, $type, $templateName );
    	    
        /**
         * url encrypt or not
         */
        if( 1 === intval( $conf['is_urlencrypt'] ) ) {
            foreach( $conf['enc'] as $key => $value ) {
                process_aladdin_data( $data, $value );
            }
        }
        
        $log_key = 'time_urlencrypt_'.$templateName;
        $GLOBALS['logArr'][$log_key] = round(Volatile::microtime(true)*1000 - $time_encrypt_start,2);
        $GLOBALS['time_count_temp']['time_urlencrypt_total'] += $GLOBALS['logArr'][$log_key];
    }
}

/**
 * judge array is assoc or not
 * @param array $arr
 * @return boolean
 */
function is_assoc( $arr ) {
     return array_keys( $arr ) !== range( 0, count( $arr ) - 1);
}


/**
 * travel the object or array to generate xml  
 * @param $obj
 * @param $parent
 * @param $pfparent
 * @param $dom
 */
function writeXml( $obj, $parent, $pfparent, $dom, $nodeName=false ) {
    /**
	 * 1、字典
	 */
	if( (is_array( $obj ) && is_assoc( $obj )) ||  is_object( $obj ) ) {
  		foreach ( $obj as $key => $value ) {
  		  	$node = $dom->createElement( $key ); 
  		   	$parent->appendChild( $node );
            writeXml( $value, $node, $parent, $dom );
        }
    /**
     * 2、非字典类型数组
     */ 
  	} else if( is_array( $obj ) ){
  	    /**
  	     * 自动添加第一级节点名称,用于数组
  	     */
  	    if( $nodeName != false ) {
  	    	foreach ( $obj as  $value ) {
  	    	    if( is_array( $value ) && !is_assoc( $value ) ) {
               		throw  new Exception('array or object format exception');
               	}
                $node = $dom->createElement( $nodeName );
                $parent->appendChild( $node );
                writeXml( $value, $node, $parent, $dom );
            } 
        /**
        * 不需要自动添加第一级的节点
        */
  	    } else {
  	       /**
  	        * 保存父节点name
  	        */
  	        $parentName = $parent->nodeName;
  	        /**
  	         * 删除多余的父节点
  	         */
            $pfparent->removeChild( $parent );
            foreach ($obj as $value) {
            	/**
              	 * 非关联数组
               	 */
               	if( is_array( $value ) && !is_assoc( $value ) ) {
               		throw  new Exception('array or object format exception');
               	}
               	$node = $dom->createElement( $parentName );
                $pfparent->appendChild( $node );
                writeXml( $value, $node, $pfparent, $dom );
            }
  	    }
  	/**
	 *3、字符串
	 */
  	} else {
	    $text = $dom->createCDATASection( $obj );
        $parent->appendChild( $text );

	}    
}

/**
 * transform Object to XML string
 *
 * @param $obj
 * @param string $rootName : root node name of xml
 * @param bool $content : only content or all  
 * @return XMLstring
 */
function toXmlString( $obj, $nodeName, $content ) {
	
    $dom = new DOMDocument( '1.0', 'utf-8' );
    writeXml( $obj, $dom, $dom, $dom, $nodeName );
    
    $return = $dom->saveXML();
    /**
     * 返回xml内容,不包括头信息
     * 
     * <?xml version="1.0" encoding="utf-8"?>
     * 长度为38个字节
     */
    if( $content === true){
    	$return = substr($return, 38);
    	
    }
    
    return $return;
}

/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
