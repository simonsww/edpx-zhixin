<?php
/*************************************************************/
/* File Description: public functions for template rendering */
/*************************************************************/

/**
 * @desc
 *  render for hhvm branch
 * @author
 *  chenjinsheng/ 2013/11/22
 * @param
 *  data - render data
 *  result - result page ...
 *  smarty - smarty object instance
 */
function render_hhvm($data, $smarty, &$result) {

	$start = $start0 = Volatile::microtime(true)*1000;

	// if hhvm turned on, disable multi-renderer temporarily
	$featurePrerender = $GLOBALS['globalConf']['FEATURE_LIST']['PREDATA']['TURN'];
	$featureMultirender = $GLOBALS['globalConf']['FEATURE_LIST']['MULTI_RENDER']['TURN'] ;
	
#	$GLOBALS['globalConf']['FEATURE_LIST']['PREDATA']['TURN'] = 'OFF';
    $GLOBALS['globalConf']['FEATURE_LIST']['MULTI_RENDER']['TURN'] = 'OFF';
	
	$arrMultiRenderConf = $GLOBALS['globalConf']['MULTI_RENDER'];
	$memsize = intval($arrMultiRenderConf['SHMOP']['MEM_SIZE']);

	if (($arrShmData = put_data_into_shm_once($data, $memsize)) === false) {
        $tempresult = redo_render($data, $smarty, $featurePrerender, $featureMultirender, "put data into shm failed");
        $result['page'] .= $tempresult['page'];
        $result['status'] = $tempresult['status'];
        $result['msg'] = $tempresult['msg'];
        return $result['status'];
	}
	$GLOBALS['logArr']['time_hhvm_shm'] = round(1000*Volatile::microtime(true) - $start, 2);

	$url = Util::getConf('/hhvm', 'HHVM_RENDER_URL');
	$start = Volatile::microtime(true)*1000;
	$strReqKey = 'hhvm';
	$intLogId = $arrShmData['id'];
	$hexQid = $data['uiData']['queryInfo']['queryId'];
	$strMainUrl = $url . '?renderType=' . $strReqKey . '&logId=' . $intLogId . '&qid=' . $hexQid;
    $intMainTplTimeout = intval(Util::getConf('/hhvm', 'HHVM_RENDER_TIMEOUT'));

    $arrMainPostData = array();
    $intRandTime = CSmarty::getRandState();
    $arrMainPostData['tempName']    = $data['uiControl']['templateName'];
    $arrMainPostData['tempSwitch']  = $data['uiControl']['templateSwitch'];
    $arrMainPostData['tempVersion'] = $data['uiControl']['templateVersion'];
	$arrMainPostData['platform']    = $data['uiControl']['platform'];
    $arrMainPostData['dataId']      = $arrShmData['id'];
    $arrMainPostData['dataSize']    = $arrShmData['size'];
    $arrMainPostData['randTime']    = $intRandTime;

    $obj = curl_init($strMainUrl);
    curl_setopt($obj, CURLOPT_HEADER, 0);
    curl_setopt($obj, CURLOPT_NOSIGNAL, true);
    curl_setopt($obj, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($obj, CURLOPT_POST, 1);
    curl_setopt($obj, CURLOPT_HTTPHEADER, array('Expect:'));
    curl_setopt($obj, CURLOPT_POSTFIELDS, http_build_query($arrMainPostData));
    curl_setopt($obj, CURLOPT_TIMEOUT_MS, $intMainTplTimeout);	

	$GLOBALS['logArr']['time_hhvm_curl_init'] = round(1000*Volatile::microtime(true) - $start, 2);

	$start = Volatile::microtime(true)*1000;
	$ret = curl_exec($obj);

	$GLOBALS['logArr']['time_hhvm_curl_exec'] = round(1000*Volatile::microtime(true) - $start, 2);
	if ($ret === false) {
		$tempresult = redo_render($data, $smarty, $featurePrerender, $featureMultirender, "curl time out");
		$result['page'] .= $tempresult['page'];
		$result['status'] = $tempresult['status'];
		$result['msg'] = $tempresult['msg'];
		return $result['status'];
	}

	$start = Volatile::microtime(true)*1000;	
	$arrRst = unserialize($ret);
	$GLOBALS['logArr']['time_hhvm_unserialize'] = round(1000*Volatile::microtime(true) - $start, 2);
	if (empty($arrRst)) {
		$tempresult = redo_render($data, $smarty, $featurePrerender, $featureMultirender, "render failed");
		$result['page'] .= $tempresult['page'];
		$result['status'] = $tempresult['status'];
		$result['msg'] = $tempresult['msg'];
		return $result['status'];
	}

	if ($arrRst[$strReqKey]['page'] === false) {
		CLog::warning("hhvm render page error");
	} else {
		$result['page'] .= $arrRst[$strReqKey]['page'];
	}

	$result['status'] = $arrRst[$strReqKey]['status'];

	// Logging...
	$arrLogInfo = $arrRst ['pack_log'];
	$GLOBALS ['logArr'] = array_merge($GLOBALS ['logArr'],$arrLogInfo['logArr']);
	$GLOBALS ['logArr']['time_hhvm_render'] = $arrLogInfo['time_main_tpl'];

    $GLOBALS['time_count_temp']['time_aladdin_total'] += $arrLogInfo['time_aladdin_total'];
    $GLOBALS['time_count_temp']['render_aladdin_num'] += $arrLogInfo['render_aladdin_num'];
    $GLOBALS['time_count_temp']['time_urlencrypt_total'] += $arrLogInfo['time_urlencrypt_total'];

	CSmarty::addStructTplRenderNumCount($arrLogInfo['render_struct_tpl_num']);
    CSmarty::addStructTplRenderTimeCount($arrLogInfo['time_render_struct_tpl']);
	$arrResultTplTm = $arrLogInfo['result_tpl_tm'];
	if (!empty($arrResultTplTm) && is_array($arrResultTplTm)) {
        foreach ($arrResultTplTm as $intOneTplTm) {
            CSmarty::recordResultTplRenderTime($intOneTplTm);
        }
    }
	
	curl_close($obj);
	$GLOBALS['logArr']['time_hhvm_total'] = round(1000*Volatile::microtime(true) - $start0, 2);
	
	return $result['status'];
}
/**
 * when hhvm render failed, call this to render by php again
 *
 */
function redo_render($data, $smarty, $prerender, $multirender, $strCause) {
	$GLOBALS['globalConf']['FEATURE_LIST']['PREDATA']['TURN'] = $prerender;
	$GLOBALS['globalConf']['FEATURE_LIST']['MULTI_RENDER']['TURN'] = $multirender;
	$result = array();
	render($data, $result, $smarty);
	if ($result['page'] === false) {
		CLog::warning('hhvm_redo_render fail');
		$result['page'] = '';
	}
	CLog::warning('hhvm render fail:'.$strCause.', use php again');
	return $result;
}
/**
 * @desc
 *  store public data & render data into shared memory
 *  for multi rendering && hhvm branch rendering
 * @author
 *  chenjinsheng/ 2013/11/22
 * @param
 *  data - render data
 *  memsize - maximum size of shared memory
 */
function put_data_into_shm_once(&$data, $memsize) {
	// since you can call this func more than one times, it may do that for just once.
	if (isset ($GLOBALS['multi_render_shmid'])) {
		$arrShmData['shmid'] = $GLOBALS['multi_render_shmid'];
		$arrShmData['id']    = $GLOBALS['multi_render_id'];
		$arrShmData['size']  = $GLOBALS['multi_render_size'];

		return $arrShmData;
	}
	
	CSmarty::setQueryInfo($data['uiData']['queryInfo']);
	CSmarty::setEncKeyStr($data['uiData']['queryInfo']['encryptionKey']);

	$arrMultiPublicData = array();
	$arrMultiPublicData['smarty_conf'] = CSmarty::getConf();
	$arrMultiPublicData['DISPLAY'] = $GLOBALS['DISPLAY'];
	$arrMultiPublicData['LOG'] = $GLOBALS['LOG'];
	$arrMultiPublicData['DEFAULT_TEMPLATE_NAME'] = $GLOBALS['DEFAULT_TEMPLATE_NAME'];
	$arrMultiPublicData['DEFAULT_TEMPLATE_TYPE'] = $GLOBALS['DEFAULT_TEMPLATE_TYPE'];
	$arrMultiPublicData['ALADDIN_TEMPLATE_TYPE'] = $GLOBALS['ALADDIN_TEMPLATE_TYPE'];
	$arrMultiPublicData['STRUCT_TEMPLATE_TYPE'] = $GLOBALS['STRUCT_TEMPLATE_TYPE'];
	$arrMultiPublicData['ECOM_TEMPLATE_TYPE'] = $GLOBALS['ECOM_TEMPLATE_TYPE'];
	$arrMultiPublicData['randTime'] = CSmarty::getRandState();
	$arrMultiPublicData['TplLOG'] = $GLOBALS['TplLOG'];
	$arrMultiPublicData['ALADDIN_FIELD'] = $GLOBALS['ALADDIN_FIELD'];
	$arrMultiPublicData['globalConf'] = $GLOBALS['globalConf'];
	$data['uiData']['multi_public_data'] = $arrMultiPublicData;

	//并行渲染需要的数据，预处理时顺便就分类了，避免并行渲染时需要再循环遍历一次
	$arrAlaData = array();
	$arrAsData = array();


	$arrMultiRenderConf    = $arrMultiPublicData['MULTI_RENDER'];
#	$bolPreRenderFeature   = ($arrMultiPublicData['FEATURE_LIST']['PREDATA']['TURN'] === 'ON') ? true : false;
	$bolMultiRenderFeature = ($arrMultiPublicData['FEATURE_LIST']['MULTI_RENDER']['TURN'] === 'ON') ? true : false;

	//使用logid来计算存放在共享内存中的key
	$intLogId = CLog::logId();
	$perm = 0666; // 共享内存访问权限，参考linux的权限
	$shmid = shmop_open($intLogId, "n", $perm, $memsize); // 创建一个共享内存，第二个参数c表示创建
	$shm_bytes_written = shmop_write($shmid, addslashes(serialize($data['uiData'])), 0);

	$arrShmData['shmid'] = $shmid;
	$arrShmData['id'] = $intLogId;
	$arrShmData['size'] = $shm_bytes_written;
	unset($data['uiData']['multi_public_data']);

	//若向共享内存中存放数据失败，则直接跳出并行渲染，回归正常渲染
	if ($arrShmData['id'] === false || empty($arrShmData['size'])) {
		CLog::warning("put data to shmop fail,back to nomarl render, id:".$intLogId.",data_size:" . strlen(addslashes(serialize($data['uiData']))), MULTI_RENDER_FAIL);
		return false;
	}
	$GLOBALS['multi_render_shmid'] = $shmid;
	$GLOBALS['multi_render_id'] = $intLogId;
	$GLOBALS['multi_render_size'] = $shm_bytes_written;

	return $arrShmData;
}

/**
 * @desc
 *  pop something from shared memory
 * @author
 *  chenjinsheng/2013/11/22
 * @param
 *  id - shared memory id (created by shmop_open),
 *       or be empty to use $GLOBALS['multi_render_shmid']
 */
function clear_from_shmdata($id = 0)
{
	$ret = true;
	if ($id > 0) {
		$shmid = $id;
		$ret = shmop_delete($shmid);
		shmop_close($shmid);
	} elseif (isset($GLOBALS['multi_render_shmid'])) {
		$shmid = $GLOBALS['multi_render_shmid'];
        $ret = shmop_delete($shmid);
        shmop_close($shmid);
		unset($GLOBALS['multi_render_shmid']);
	} else {
//		CLog::warning("nothing to do: clear_from_shmdata");
	}
	
	if (!$ret) {
//		CLog::warning("clean shmop fail!id:" . $shmid, MULTI_RENDER_FAIL);
	}
	return $ret;
}


/**
 * do rendering
 * @param array [in|out] data
 * @param array [in|out] result
 * @param Object [in] smarty
 */
function render(&$data, &$result, $smarty,$render_header_flag = false) {
    /**
     * init render result
     */
    $result['status'] = $GLOBALS['STATUS_CODE']['OK'];
    $result['msg'] = $GLOBALS['STATUS_MSG'][$result['status']];
    //$result['page'] = '';
    if($render_header_flag){
        $GLOBALS['mulit_render_flag'] = 0;
        $page = $smarty->do_render($data['uiData'], $data['uiControl']['templateName'], $data['uiControl']['templateSwitch'], $data['uiControl']['templateVersion']);
    }
    else if ($data['uiControl']['singleItem'] == 1) {
        
        /**
         * tplt name from gss  data 
         */
        $templateName = $data['uiData']['asResult']['item'][0]['dispData']['strategy']['tempName'];

        /**
         * tplt name from uiCrontrol
         */
        if (empty($templateName)) {
            $templateName = $data['uiControl']['templateName'];
        }

        $data['uiData']['asResult']['item'][0]['dispData']['resultData']['queryInfo'] = CSmarty::getQueryInfo();
        $data['uiData']['asResult']['item'][0]['dispData']['resultData']['templateConfig'] = CSmarty::getTemplateConfig();

        $conf = CSmarty::getConf();

        backend_encrypt_url($data['uiData']['asResult']['item'][0]['dispData'], $conf['platform'], $conf['language'], $conf['type'], $templateName);

        $page = $smarty->do_render($data['uiData']['asResult']['item'][0]['dispData'], $templateName, $data['uiControl']['templateSwitch'], $data['uiControl']['templateVersion']);
    } else {
        //并行渲染需要的数据，预处理时顺便就分类了，避免并行渲染时需要再循环遍历一次
        $arrAlaData = array();
        $arrAsData = array();

        // HHVM直连状态下，直接关闭并行渲染
        if (!empty($_ENV['HHVM'])) {
            $GLOBALS['globalConf']['FEATURE_LIST']['MULTI_RENDER']['TURN'] = 'OFF';
        }

#		$arrMultiRenderConf = Util::getConf('/multi_render', 'MULTI_RENDER');
#		$bolPreRenderFeature = (Util::getConf('/feature', 'FEATURE_LIST/PREDATA/TURN') === 'ON') ? true : false;
#		$bolMultiRenderFeature = (Util::getConf('/feature', 'FEATURE_LIST/MULTI_RENDER/TURN') === 'ON') ? true : false;

		$arrMultiRenderConf    = $GLOBALS['globalConf']['MULTI_RENDER'];
    	$bolPreRenderFeature   = ($GLOBALS['globalConf']['FEATURE_LIST']['PREDATA']['TURN'] === 'ON') ? true : false;
    	$bolMultiRenderFeature = ($GLOBALS['globalConf']['FEATURE_LIST']['MULTI_RENDER']['TURN'] === 'ON') ? true : false;
        
        //限定baidu模板
        //给FE加参数确定是否有预处理
        if ($data['uiControl']['platform'] == 'pc' && $data['uiControl']['templateName'] == 'baidu' && $bolPreRenderFeature) {
            $time_start = Volatile::microtime(true) * 1000;
            pre_render($data, $arrAlaData, $arrAsData);

            $data['uiData']['queryInfo']['multiRenderFlag'] = true;
            $GLOBALS ['logArr'] ['time_pre_render'] = round(Volatile::microtime(true) * 1000 - $time_start, 2);
        }


        if ($bolMultiRenderFeature && $bolPreRenderFeature && $data['uiControl']['templateName'] == 'baidu' && $data['uiControl']['platform'] == 'pc' && (!empty($arrAlaData) || !empty($arrAsData))) {
            CSmarty::setQueryInfo($data['uiData']['queryInfo']);
            CSmarty::setEncKeyStr($data['uiData']['queryInfo']['encryptionKey']);
            $time_start = Volatile::microtime(true) * 1000;
            try {
                $page = multi_render($data, $smarty, $arrAlaData, $arrAsData, $arrMultiRenderConf);
            } catch (Exception $e) {
                $page = "";
                if (isset($GLOBALS['multi_render_shmid'])) {
                    $shmid = $GLOBALS['multi_render_shmid'];
                    shmop_delete($shmid);
                    shmop_close($shmid);
                }
                CLog::warning("milti error:".$e->getMessage());
            }
            $GLOBALS ['logArr'] ['time_multi_render_total'] = round(Volatile::microtime(true) * 1000 - $time_start, 2);
        }
        if (empty($page)) {
            $GLOBALS['mulit_render_flag'] = 0;
            $page = $smarty->do_render($data['uiData'], $data['uiControl']['templateName'], $data['uiControl']['templateSwitch'], $data['uiControl']['templateVersion']);
        }
    }

    $GLOBALS['logArr']['result_tpl_tm'] = @implode(',', CSmarty::getResultTplRenderTime());

    if ($page === false) {
        $result['page'] = '';
        $errors = CSmarty::getError();
        $errors_str = implode(";", $errors);

        $status = $GLOBALS['STATUS_CODE']['RENDER_FAIL'];
        $result['status'] = $status;
        $result['msg'] = $GLOBALS['STATUS_MSG'][$status] . ", errors[$errors_str]";
        CLog::warning($GLOBALS['STATUS_MSG'][$status] . ", errors[$errors_str]", $status);
        return $status;
    } else {
        $result['page'] .= $page;
    }



    return $GLOBALS['STATUS_CODE']['OK'];
}


/**
 * 并行渲染
 * @param unknown_type $data
 * @param unknown_type $smarty
 * @param unknown_type uiData中阿拉丁的数据
 * @param unknown_type uiData中普通结果的数据
 */
function multi_render($data, $smarty, $arrAlaData, $arrAsData, $arrMultiRenderConf) {
    $time_start = Volatile::microtime(true) * 1000;
    require (VUI_APP_PATH . '/plugins/modifier.common_render.php');
    $arrNeedRenderSingleResult = array_merge($arrAlaData, $arrAsData);
    $time_multi_start = Volatile::microtime(true) * 1000;
    $mh = curl_multi_init();
    $url = $arrMultiRenderConf['MULTI_RENDER_URL'];
    $arrRenderMultiReq = array();


    $arrMultiPublicData = array();
    $arrMultiPublicData['smarty_conf'] = CSmarty::getConf();
    $arrMultiPublicData['DISPLAY'] = $GLOBALS['DISPLAY'];
    $arrMultiPublicData['LOG'] = $GLOBALS['LOG'];
    $arrMultiPublicData['DEFAULT_TEMPLATE_NAME'] = $GLOBALS['DEFAULT_TEMPLATE_NAME'];
    $arrMultiPublicData['DEFAULT_TEMPLATE_TYPE'] = $GLOBALS['DEFAULT_TEMPLATE_TYPE'];
    $arrMultiPublicData['ALADDIN_TEMPLATE_TYPE'] = $GLOBALS['ALADDIN_TEMPLATE_TYPE'];
    $arrMultiPublicData['STRUCT_TEMPLATE_TYPE'] = $GLOBALS['STRUCT_TEMPLATE_TYPE'];
    $arrMultiPublicData['ECOM_TEMPLATE_TYPE'] = $GLOBALS['ECOM_TEMPLATE_TYPE'];
    $arrMultiPublicData['randTime'] = CSmarty::getRandState();
    $arrMultiPublicData['TplLOG'] = $GLOBALS['TplLOG'];
	$arrMultiPublicData['ALADDIN_FIELD'] = $GLOBALS['ALADDIN_FIELD'];
	$arrMultiPublicData['globalConf'] = $GLOBALS['globalConf'];
	
    $data['uiData']['multi_public_data'] = $arrMultiPublicData;

    //使用logid来计算存放在共享内存中的key
    $intLogId = CLog::logId();
    $memsize = intval($arrMultiRenderConf['SHMOP']['MEM_SIZE']); // 共享内存的大小，单位byte
    $perm = 0666; // 共享内存访问权限，参考linux的权限
    $shmid = shmop_open($intLogId, "n", $perm, $memsize); // 创建一个共享内存，第二个参数c表示创建
    $shm_bytes_written = shmop_write($shmid, addslashes(serialize($data['uiData'])), 0);
    $arrShmData['id'] = $intLogId;
    $arrShmData['size'] = $shm_bytes_written;
    unset($data['uiData']['multi_public_data']);

    //若向共享内存中存放数据失败，则直接跳出并行渲染，回归正常渲染
    if ($arrShmData['id'] === false || empty($arrShmData['size'])) {
        CLog::warning("put data to shmop fail,back to nomarl render,data_size:" . strlen(addslashes(serialize($data['uiData']))), MULTI_RENDER_FAIL);
        return false;
    }
    $GLOBALS['multi_render_shmid'] = $shmid;

    //主模板加入并发队列
    $strReqKey = 'req_main';
    $arrMainPostData = array();
    $intRandTime = CSmarty::getRandState();
    $arrMainPostData['tempName'] = $data['uiControl']['templateName'];
    $arrMainPostData['tempSwitch'] = $data['uiControl']['templateSwitch'];
    $arrMainPostData['tempVersion'] =  empty($data['uiControl']['templateVersion'])?"":$data['uiControl']['templateVersion'];
    $arrMainPostData['dataId'] = $arrShmData['id'];
    $arrMainPostData['dataSize'] = $arrShmData['size'];
    $arrMainPostData['randTime'] = $intRandTime;
    $hexQid = $data['uiData']['queryInfo']['queryId'];

    $strMainUrl = $url . '?renderType=' . $strReqKey . '&logId=' . $intLogId . '&qid=' . $hexQid;
    $intMainTplTimeout = intval($arrMultiRenderConf['MAIN_TPL_TIMEOUT_MS']);
    $arrRenderMultiReq[$strReqKey] = curl_init($strMainUrl);
    curl_setopt($arrRenderMultiReq[$strReqKey], CURLOPT_HEADER, 0);
    curl_setopt($arrRenderMultiReq[$strReqKey], CURLOPT_NOSIGNAL, true);
    curl_setopt($arrRenderMultiReq[$strReqKey], CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($arrRenderMultiReq[$strReqKey], CURLOPT_POST, 1);
    curl_setopt($arrRenderMultiReq[$strReqKey], CURLOPT_HTTPHEADER, array('Expect:'));
    curl_setopt($arrRenderMultiReq[$strReqKey], CURLOPT_POSTFIELDS, http_build_query($arrMainPostData));
    curl_setopt($arrRenderMultiReq[$strReqKey], CURLOPT_TIMEOUT_MS, $intMainTplTimeout);
    curl_multi_add_handle($mh, $arrRenderMultiReq[$strReqKey]);

    //按时间分包(尽可能均分)，时间参数来自于进生的模板耗时报表
    //分包数量，主模板单独占用一个包
    $intSplitNum = intval($arrMultiRenderConf['PACK_NUM']) - 1;
    $arrTplTime = array();
    $intTimeCount = 0;
    $arrSplitReqData = array();
    // 分阿拉丁
    if (!empty($arrAlaData) && is_array($arrAlaData)) {
        $intDefaultAladdinTime = $arrMultiRenderConf['DEFAULT_ALADDIN_TIME'];
		
		$bHhvm = $GLOBALS['globalConf']['FEATURE_LIST']['HHVM_BRANCH']['TURN'] === 'ON' ? true : false;
		if ($bHhvm ) {
			$getDict = new GetDict();
			$getDict->init(DATA_PATH."/shmdict/dict/tpl_time.php");
		}
        foreach ($arrAlaData as $strKey => $arrOneAlaData) {
			if ($bHhvm) {
				//hhvm 临时方案，提前手动分发tpl_time.php文件到data/shmdict/dict/下
				$intOneTplTime = $getDict->getValueFromDict($arrOneAlaData['render_template']);
			} else {
				$intOneTplTime = shmdict_getValueFromDict($arrOneAlaData ['render_template'], 'tpl_time');
			}
			
            $intOneTplTime = empty($intOneTplTime) ? $intDefaultAladdinTime : $intOneTplTime;
            $intTimeCount += $intOneTplTime;
            $arrTplTime [$strKey] = $intOneTplTime;
        }
        arsort($arrTplTime);
        $intSplitTplTime = ceil($intTimeCount / $intSplitNum);
        $arrGroupTime = array();
        $intIndex = 0;
        foreach ($arrTplTime as $strKey => $arrOneTplTime) {
            $intIndex = $intIndex % $intSplitNum;
            $intCount = 0;
            while ($intCount < $intSplitNum) {
                if ($arrGroupTime [$intIndex] >= $intSplitTplTime) {
                    $intIndex = ($intIndex + 1) % $intSplitNum;
                } else {
                    $arrSplitReqData [$intIndex] [$strKey] = $arrAlaData [$strKey];
                    $arrGroupTime [$intIndex] += $arrOneTplTime;
                    $intIndex++;
                    break;
                }
                $intCount++;
            }
        }
    }

    // 分AS结果
    if (!empty($arrAsData) && is_array($arrAsData)) {
        $intDefaultAsTime = $arrMultiRenderConf['DEFAULT_AS_TIME'];
        $intAsCount = count($arrAsData);
        $intNewTimeCount = $intTimeCount + ($intAsCount * $intDefaultAsTime);
        $intNewSplitTplTime = $intNewTimeCount / $intSplitNum;
        foreach ($arrAsData as $strKey => $arrOneAsData) {
            $intIndex = $intIndex % $intSplitNum;
            $intCount = 0;
            while ($intCount < $intSplitNum) {
                if ($arrGroupTime [$intIndex] >= $intNewSplitTplTime) {
                    $intIndex = ($intIndex + 1) % $intSplitNum;
                } else {
                    $arrSplitReqData [$intIndex] [$strKey] = $arrOneAsData;
                    $arrGroupTime [$intIndex] += $intDefaultAsTime;
                    $intIndex++;
                    break;
                }
                $intCount++;
            }
        }
    }

    //将单条结果包加入并行
    if (empty($arrSplitReqData) || !is_array($arrSplitReqData)) {
        CLog::warning("split pack result is empty,back to nomarl render!", MULTI_RENDER_FAIL);
        $bolDelRst = shmop_delete($shmid);
        $bolCloseRst = shmop_close($shmid);
        if ($bolDelRst && $bolCloseRst) {
            unset($GLOBALS['multi_render_shmid']);
        }
        return false;
    }
    foreach ($arrSplitReqData as $intPackIndex => $arrOneSplitReqData) {
        if (!empty($arrOneSplitReqData) && is_array($arrOneSplitReqData)) {
            $strReqKey = 'req_' . $intPackIndex;
            $arrReqPostData = array();
            $arrReqPostData['dataId'] = $arrShmData['id'];
            $arrReqPostData['dataSize'] = $arrShmData['size'];
            $arrReqPostData['randTime'] = $intRandTime;
            $arrReqPostData['dataInfo'] = $arrOneSplitReqData;

            $strReqUrl = $url . '?renderType=' . $strReqKey . '&logId=' . $intLogId . '&qid=' . $hexQid;
            $arrRenderMultiReq [$strReqKey] = curl_init($strReqUrl);
            $intReqNum = count($arrOneSplitReqData);
            $intReqNumLine = intval($arrMultiRenderConf['SINGLE_TIMEOUT_NUM_LINE']);
            $intMoreNumPackTimeout = intval($arrMultiRenderConf['SINGLE_TPL_PACK_MAX_TIMEOUT_MS']);
            $intLessNumPackTimeout = intval($arrMultiRenderConf['SINGLE_TPL_PACK_MIN_TIMEOUT_MS']);
            $intTimeOut = ($intReqNum > $intReqNumLine) ? $intMoreNumPackTimeout : $intLessNumPackTimeout;
            curl_setopt($arrRenderMultiReq [$strReqKey], CURLOPT_HEADER, 0);
            curl_setopt($arrRenderMultiReq [$strReqKey], CURLOPT_NOSIGNAL, true);
            curl_setopt($arrRenderMultiReq [$strReqKey], CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($arrRenderMultiReq [$strReqKey], CURLOPT_POST, 1);
            curl_setopt($arrRenderMultiReq [$strReqKey], CURLOPT_HTTPHEADER, array('Expect:'));
            curl_setopt($arrRenderMultiReq [$strReqKey], CURLOPT_POSTFIELDS, http_build_query($arrReqPostData));
            curl_setopt($arrRenderMultiReq[$strReqKey], CURLOPT_TIMEOUT_MS, $intTimeOut);
            curl_multi_add_handle($mh, $arrRenderMultiReq [$strReqKey]);
        }
    }
    $GLOBALS ['logArr'] ['time_multi_render_ready'] = round(Volatile::microtime(true) * 1000 - $time_start, 2);

    //执行并行渲染
    $time_exe_start = Volatile::microtime(true) * 1000;
    $mrc = curl_multi_exec($mh, $active);
    if ($mrc == CURLM_CALL_MULTI_PERFORM) {
        CLog::warning("curl_multi connect fail,back to nomarl render!", MULTI_RENDER_FAIL);
        return false;
    }
    $intMaxCurlExeTimes = intval($arrMultiRenderConf['CURL_MAX_EXE_TIMES']);
    $intCurlExeCount = 0;
    while ($active && $mrc == CURLM_OK && $intCurlExeCount < $intMaxCurlExeTimes) {
        $intCurlExeCount++;
        if (curl_multi_select($mh) != - 1) {
            $mrc = curl_multi_exec($mh, $active);
            if ($mrc == CURLM_CALL_MULTI_PERFORM) {
                CLog::warning("curl_multi connect fail,back to nomarl render!", MULTI_RENDER_FAIL);
                return false;
            }
        }
    }

    $GLOBALS ['logArr'] ['time_multi_render_exec'] = round(Volatile::microtime(true) * 1000 - $time_exe_start, 2);
    $time_start = Volatile::microtime(true) * 1000;

    //接收数据
    foreach ($arrRenderMultiReq as $key => $value) {
        $arrRenderResult[$key] = curl_multi_getcontent($arrRenderMultiReq[$key]);
        curl_close($arrRenderMultiReq[$key]);
        curl_multi_remove_handle($mh, $arrRenderMultiReq[$key]);
    }
    curl_multi_close($mh);

    $isDebug = $bolPreRenderFeature = ($arrMultiRenderConf['DEBUG'] == 'ON') ? true : false;
    $arrRenderedData = array();
    $intChildLastIn = 0;
    $intChildLastOut = 0;
    $intChildFirstIn = 0;
    $intTCount = 1;
    $strAllOneTime = '';
    $arrTplLog = array();
    $arrResultTplTm = array();
    $intTimeRenderStructTpl = 0;
    $intRenderStructTplNum = 0;
    $intTimeAladdinTotal = 0;
    $intRenderAladdinNum = 0;
    $intTimeUrlencryptTotal = 0;
    $arrOtherLog = array();
    foreach ($arrRenderResult as $key => $oneResult) {
        $arrUnseriResult = unserialize($oneResult);
        if (!empty($arrUnseriResult)) {
            $arrLogInfo = $arrUnseriResult ['pack_log'];
            unset($arrUnseriResult ['pack_log']);
            if (!empty($arrLogInfo) && is_array($arrLogInfo)) {
                $intChildLastIn = $arrLogInfo ['start_time'] > $intChildLastIn ? $arrLogInfo ['start_time'] : $intChildLastIn;
                if ($key != 'req_main') {
                    $GLOBALS ['logArr'] ['time_pack_' . $intTCount] = round($arrLogInfo ['end_time'] - $arrLogInfo ['start_time'], 2);
                    $intTCount++;
                } else {
                    $GLOBALS['logArr']['time_render_main_tpl'] = $arrLogInfo['time_main_tpl'];
                    $GLOBALS ['logArr'] ['time_pack_main'] = round($arrLogInfo ['end_time'] - $arrLogInfo ['start_time'], 2);
                }
                $arrTplLog = empty($arrTplLog) ? $arrLogInfo['tpl_log'] : array_merge($arrTplLog, $arrLogInfo['tpl_log']);
                $arrResultTplTm = empty($arrResultTplTm) ? $arrLogInfo['result_tpl_tm'] : array_merge($arrResultTplTm, $arrLogInfo['result_tpl_tm']);
                $intTimeRenderStructTpl += $arrLogInfo['time_render_struct_tpl'];
                $intRenderStructTplNum += $arrLogInfo['render_struct_tpl_num'];
                $intTimeAladdinTotal += $arrLogInfo['time_aladdin_total'];
                $intRenderAladdinNum += $arrLogInfo['render_aladdin_num'];
                $intTimeUrlencryptTotal += $arrLogInfo['time_urlencrypt_total'];
                if(!empty($arrLogInfo['logArr'])){
                	$arrOtherLog = array_merge($arrOtherLog,$arrLogInfo['logArr']);
                }

                // debug，更为详细的日志信息
                if ($isDebug) {
                    if ($intChildFirstIn == 0) {
                        $intChildFirstIn = $arrLogInfo ['start_time'];
                    } else {
                        $intChildFirstIn = $arrLogInfo ['start_time'] < $intChildFirstIn ? $arrLogInfo ['start_time'] : $intChildFirstIn;
                    }
                    $intChildLastOut = $arrLogInfo ['end_time'] > $intChildLastOut ? $arrLogInfo ['end_time'] : $intChildLastOut;
                    foreach ($arrLogInfo ['one_time'] as $key => $intOneTime) {
                        $strAllOneTime .= $key . ':' . $intOneTime . '|';
                    }
                }
            }
            $arrRenderedData = array_merge($arrRenderedData, $arrUnseriResult);
        } else {
            CLog::warning("whole pack render fail!pack name:" . $key, MULTI_RENDER_FAIL);
        }
    }
    $GLOBALS ['logArr'] = array_merge($GLOBALS ['logArr'],$arrOtherLog);

    $GLOBALS ['logArr'] ['time_multi_render_web'] = round($intChildLastIn - $time_exe_start, 2);
    $GLOBALS ['logArr'] ['time_multi_render_recdata'] = round(Volatile::microtime(true) * 1000 - $time_start, 2);
    CSmarty::addStructTplRenderNumCount($intRenderStructTplNum);
    CSmarty::addStructTplRenderTimeCount($intTimeRenderStructTpl);
    $GLOBALS['time_count_temp']['time_aladdin_total'] += $intTimeAladdinTotal;
    $GLOBALS['time_count_temp']['render_aladdin_num'] += $intRenderAladdinNum;
    $GLOBALS['time_count_temp']['time_urlencrypt_total'] += $intTimeUrlencryptTotal;
    if (!empty($arrResultTplTm) && is_array($arrResultTplTm)) {
        foreach ($arrResultTplTm as $intOneTplTm) {
            CSmarty::recordResultTplRenderTime($intOneTplTm);
        }
    }
    if (!empty($arrTplLog) && is_array($arrTplLog)) {
        $objTplLog = TplLog::getInstance();
        $objTplLog->setTplData($arrTplLog);
    }

    if ($isDebug) {
        $GLOBALS ['logArr'] ['time_one_detail_time'] = $strAllOneTime;
        $GLOBALS ['logArr'] ['time_web_curl'] = round($intChildFirstIn - $time_exe_start, 2);
        $GLOBALS ['logArr'] ['time_multi_recdata'] = round(Volatile::microtime(true) * 1000 - $intChildLastOut, 2);
        $GLOBALS ['logArr'] ['time_child_max'] = round($intChildLastOut - $intChildFirstIn, 2);
    }

    $time_start = Volatile::microtime(true) * 1000;

    $bolDelRst = shmop_delete($shmid);
    shmop_close($shmid);
    if (!$bolDelRst) {
        CLog::warning("clean shmop fail!id:" . $shmid, MULTI_RENDER_FAIL);
    } else {
        unset($GLOBALS['multi_render_shmid']);
    }

    //主模板并行渲染未成功


    if ($arrRenderedData['req_main']['status'] !== 0) {
        CLog::warning("multi render main tpl fail,try local render once!", MULTI_RENDER_FAIL);
        $GLOBALS['mulit_render_flag'] = 1;
        $page = $smarty->do_render($data['uiData'], $data['uiControl']['templateName'], $data['uiControl']['templateSwitch'], $data['uiControl']['templateVersion']);
        if (empty($page)) {
            CLog::warning("local render main tpl fail too,abandon treatment,back to nomarl render", MULTI_RENDER_FAIL);
            return false;
        }
    } else {
        $page = $arrRenderedData['req_main']['content'];
    }
    unset($arrRenderedData['req_main']);
    $arrReplaceKeys = array();
    $arrReplaceValues = array();
    $intFailNum = 0;
    $strFailKeys = '';
    foreach ($arrRenderedData as $strKey => $strRenderContent) {
        //单条模板未渲染成功
        if ($strRenderContent['status'] !== 0) {
            //CLog::warning("multi render single tpl fail,try local render once!key:" . $strKey, MULTI_RENDER_FAIL);
            $intFailNum++;
            $strFailKeys = empty($strFailKeys) ? $strKey : $strFailKeys . '#' . $strKey;
            $strRenderContent['content'] = render_single_result($strKey, $arrNeedRenderSingleResult, $data);
        }
        if (empty($strRenderContent['content'])) {
            CLog::warning("local render single tpl fail too,abandon treatment,remove this single result!key:" . $strKey, MULTI_RENDER_FAIL);
        }
        $arrReplaceKeys[] = $strKey;
        $arrReplaceValues[] = empty($strRenderContent['content']) ? '' : $strRenderContent['content'];
        unset($arrNeedRenderSingleResult[$strKey]);
    }

    if (!empty($arrNeedRenderSingleResult)) {
        foreach ($arrNeedRenderSingleResult as $strKey => $arrContent) {
            //CLog::warning("multi render single tpl fail,try local render once!key:" . $strKey, MULTI_RENDER_FAIL);
        	$intFailNum++;
        	$strFailKeys = empty($strFailKeys) ? $strKey : $strFailKeys.'#'.$strKey;
            $rst = render_single_result($strKey, $arrNeedRenderSingleResult, $data);
            if (empty($rst)) {
                CLog::warning("local render single tpl fail too,abandon treatment,remove this single result!key:" . $strKey, MULTI_RENDER_FAIL);
            }
            $arrReplaceKeys[] = $strKey;
            $arrReplaceValues[] = empty($rst) ? '' : $rst;
        }
    }
    if($intFailNum != 0){
    	CLog::warning("local render single tpl, num[$intFailNum] keys[$strFailKeys]",MULTI_RENDER_FAIL);
    }
    $GLOBALS ['logArr'] ['time_multi_render_retry'] = round(Volatile::microtime(true) * 1000 - $time_start, 2);

    $time_start = Volatile::microtime(true) * 1000;
    $page = Util::replace($page, $arrReplaceKeys, $arrReplaceValues, 0);
    $GLOBALS ['logArr'] ['time_multi_render_repdata'] = round(Volatile::microtime(true) * 1000 - $time_start, 2);
    return $page;
}

/**
 * 数据预处理(先只针对pc模板)
 * @param unknown_type $data
 * @param unknown_type 阿拉丁数据
 * @param unknown_type 普通结果数据
 */
function pre_render(&$data, &$arrAlaData, &$arrAsData) {
    $arrCssUi = $data['uiData']['cssUI'];
    require (VUI_APP_PATH . '/plugins/modifier.format_result.php');

    $intLogId = CLog::logId();
    //asResult队列
    //FE模板中的逻辑
    $intFlagConfuse = intval($data['uiData']['templateConfig']['confuseResult']);
    $intUseRender = intval($data['uiData']['templateConfig']['useRender']);
    $intIsFavoOn = intval($data['uiData']['templateConfig']['EnableFavo']);
    $bolIsPassportUserLogin = $data['uiData']['passport']['isPassportUserLogin'];
    $strUserName = $data['uiData']['passport']['passportUserName'];
    $strDisplayName = $data['uiData']['passport']['displayname'];
    $strSecureEmail = $data['uiData']['passport']['secureemail'];
    $strSecureMobil = $data['uiData']['passport']['securemobil'];
    $strUserDisplayInfo = (strlen($strDisplayName) > 0) ? $strDisplayName : ((strlen($strUserName) > 0) ? $strUserName : ((strlen($strSecureEmail) > 0) ? $strSecureEmail : $strSecureMobil));
    $intIndex = (intval($data['uiData']['queryInfo']['pageNo']) - 1) * intval($data['uiData']['queryInfo']['resNum']) + 1;
    $arrHintData = array();
	if (!empty($data['uiData']['promptNode'])) {
	    foreach ($data['uiData']['promptNode'] as $arrPromptNode) {
       		if (!empty($arrPromptNode['promptContent']) && strlen($arrPromptNode['promptContent']) > 4) {
            	$arrOnePromptContent = json_decode($arrPromptNode['promptContent'], true);
            	$arrHintData = array_merge_recursive($arrHintData, $arrOnePromptContent);
        	}
    	}
	}
    // 遍历asResult队列
    if (!empty($data ['uiData'] ['asResult'] ['item']) && is_array($data ['uiData'] ['asResult'] ['item'])) {
        foreach ($data ['uiData'] ['asResult'] ['item'] as $intKey => &$item) {
            $arrOneData = array();
            if ($item [comeFrome] == 'AS') {
                if ($intFlagConfuse == 0 && $intUseRender != 0 && !empty($item ['dispData'] ['templateName'])) {
                    $arrExtData = array();
                    $arrExtData ['resIndex'] = $intIndex;
                    $arrExtData ['isFavoOn'] = ($intIsFavoOn == 1) ? $data ['uiData'] ['passport'] ['isFavoOn'] : false;
                    $arrExtData ['hintData'] = $arrHintData;
                    $arrExtData ['isUserLogin'] = $data ['uiData'] ['passport'] ['isPassportUserLogin'];
                    $arrExtData ['burstFlag'] = $item ['burstFlag'];
                    $arrExtData ['cssUI'] = $arrCssUi;
                    $arrExtData ['resourceid'] = $item['dispData']['StdStg_new'];
                    $arrExtData ['feData'] ['id'] = $intIndex;
                    $arrExtData ['feData'] ['mu'] = $item ['offsetInfo'] ['url']; 
                    $arrExtData ['feData'] ['y'] = $item ['identifyStr'];
                    $arrExtData ['feData'] ['rsv_stl'] = $item['dispData']['StdStl'];

                    // as的结果需要进行format_result
                    $item = smarty_modifier_format_result($item);
                    // 添加FE需要的extData信息，FE无需在模板中再添加
                    $item ['resultData'] ['extData'] = $arrExtData;

                    //$strType = 'result';
		    $strType = empty($item['resultData']['tplData']['strategy']['type']) ? 'result' : $item['resultData']['tplData']['strategy']['type'];
                    $strTemplateName = $item ['strategy'] ['tempName'];

                    // 子进程common_render时需要的type字段
                    $arrOneData ['render_type'] = $strType;
                    // 子进程common_render时需要的templateName字段
                    $arrOneData ['render_template'] = $strTemplateName;
                    // 用于子进程从uiData中取数据时使用
                    // as的直接取$data['uiData'][$strQueueName]['item'][$intQueueId]
                    // aladdin的取$data['uiData'][$strQueueName]['item'][$intQueueId]['dispData']
                    $arrOneData ['type'] = 'as';
                    $arrRenderDataDetail = array();
                    // 子进程取数据时，去查找的队列(asResult,leftResult,leftResult,topResult)
                    $arrRenderDataDetail ['queueName'] = 'asResult';
                    // 子进程取数据时，队列中的位置
                    $arrRenderDataDetail ['queueId'] = $intKey;
                    $arrOneData ['render_data'] = $arrRenderDataDetail;

                    // 标识单条结果，用于curl_multi发/取数据，以及后续的数据填充
                    $key = $strType . '_' . $strTemplateName . '_' . $arrRenderDataDetail ['queueName'] . '_' . $arrRenderDataDetail ['queueId'] . '_' . $intLogId;
                    $item ['multi_render_key'] = $key;

                    $arrAsData [$key] = $arrOneData;
                }
            } elseif ($item [comeFrome] == 'SP') {
                #if (!in_array(intval($item ['dispData'] ['StdStg']), array(4, 19, 34, 23)) && $item ['dispData'] ['strategy'] ['tempName'] != 'naturalresult') {
                if ($item ['dispData'] ['strategy'] ['tempName'] != 'naturalresult') {
                    if (isset($item ['dispData'] ['resultData'] ['extData'])) {
                        $item ['dispData'] ['resultData'] ['extData'] ['feData'] ['y'] = $item ['identifyStr'];
                        $item ['dispData'] ['resultData'] ['extData'] ['feData'] ['mu'] = $item ['offsetInfo'] ['url'];
                        $item ['dispData'] ['resultData'] ['extData'] ['feData'] ['id'] = $intIndex;
                        $item ['dispData'] ['resultData'] ['extData'] ['feData'] ['wrapByAladdin'] = 'true';
                        $item ['dispData'] ['resultData'] ['extData'] ['feData'] ['isUserLogin'] = $bolIsPassportUserLogin;
                        $item ['dispData'] ['resultData'] ['extData'] ['feData'] ['username'] = $strUserName;
                        $item ['dispData'] ['resultData'] ['extData'] ['feData'] ['userDisplayInfo'] = $strUserDisplayInfo;
                        $item ['dispData'] ['resultData'] ['extData'] ['feData'] ['cssUI'] = $arrCssUi;
                        $item ['dispData'] ['resultData'] ['extData'] ['feData'] ['rsv_stl'] = $item['dispData']['StdStl'];
                    }
                    $item ['dispData'] ['resultData'] ['extData'] ['burstFlag'] = $item ['burstFlag'];
                    if (!empty($item ['dispData'] ['strategy']) && !empty($item ['dispData'] ['strategy'] ['ctplOrPhp'])) {
                        $strType = empty($item ['dispData'] ['strategy'] ['type']) ? 'aladdin' : $item ['dispData'] ['strategy'] ['type'];
                        $strTemplateName = $item ['dispData'] ['strategy'] ['tempName'];
                        $arrOneData ['render_type'] = $strType;
                        $arrOneData ['render_template'] = $strTemplateName;
                        $arrRenderDataDetail = array();
                        $arrRenderDataDetail ['queueName'] = 'asResult';
                        $arrRenderDataDetail ['queueId'] = $intKey;
                        $arrOneData ['render_data'] = $arrRenderDataDetail;

                        $key = $strType . '_' . $strTemplateName . '_' . $arrRenderDataDetail ['queueName'] . '_' . $arrRenderDataDetail ['queueId'] . '_' . $intLogId;
                        $item ['dispData'] ['multi_render_key'] = $key;
                        $arrAlaData [$key] = $arrOneData;
                    }
                }
            } else {
                continue;
            }
            if ($intFlagConfuse == 0) {
                $intIndex++;
            }
        }
    }
    // 左侧队列
    if (!empty($data ['uiData'] ['leftResult'] ['item']) && is_array($data ['uiData'] ['leftResult'] ['item'])) {
        foreach ($data ['uiData'] ['leftResult'] ['item'] as $intKey => &$item) {
            if (isset($item ['dispData'] ['resultData'] ['extData'])) {
                $item ['dispData'] ['resultData'] ['extData'] ['feData'] ['y'] = $item ['identifyStr'];
                $item ['dispData'] ['resultData'] ['extData'] ['feData'] ['mu'] = $item ['itemUrl'];
                $item ['dispData'] ['resultData'] ['extData'] ['feData'] ['id'] = $intKey + 1;
                $item ['dispData'] ['resultData'] ['extData'] ['feData'] ['wrapByAladdin'] = 'true';
                $item ['dispData'] ['resultData'] ['extData'] ['feData'] ['fm'] = 'alxl';
                $item ['dispData'] ['resultData'] ['extData'] ['feData'] ['catid'] = $item ['dispData'] ['category_id'];
                $item ['dispData'] ['resultData'] ['extData'] ['feData'] ['cardid'] = $item ['dispData'] ['card_id'];
                $item ['dispData'] ['resultData'] ['extData'] ['feData'] ['ename'] = $item ['dispData'] ['entityname'];
                $item ['dispData'] ['resultData'] ['extData'] ['feData'] ['uri'] = $item ['dispData'] ['uri'];
                $item ['dispData'] ['resultData'] ['extData'] ['feData'] ['cssUI'] = $arrCssUi;
                $item ['dispData'] ['resultData'] ['extData'] ['feData'] ['rsv_stl'] = $item['dispData']['StdStl'];
                $item ['dispData'] ['resultData'] ['extData'] ['burstFlag'] = $item ['burstFlag'];
            }

            $arrOneData = array();
            $strType = empty($item ['dispData'] ['strategy'] ['type']) ? 'aladdin' : $item ['dispData'] ['strategy'] ['type'];
            $strTemplateName = $item ['dispData'] ['strategy'] ['tempName'];
            $key = md5(serialize($item ['dispData'])) . '_' . $strType . '_' . $strTemplateName;
            $arrOneData ['render_type'] = $strType;
            $arrOneData ['render_template'] = $strTemplateName;
            $arrRenderDataDetail = array();
            $arrRenderDataDetail ['queueName'] = 'leftResult';
            $arrRenderDataDetail ['queueId'] = $intKey;
            $arrOneData ['render_data'] = $arrRenderDataDetail;

            $key = $strType . '_' . $strTemplateName . '_' . $arrRenderDataDetail ['queueName'] . '_' . $arrRenderDataDetail ['queueId'] . '_' . $intLogId;
            $item ['dispData'] ['multi_render_key'] = $key;

            $arrAlaData [$key] = $arrOneData;
        }
    }

    // 右侧队列
    if (!empty($data ['uiData'] ['rightResult'] ['item']) && is_array($data ['uiData'] ['rightResult'] ['item'])) {
        foreach ($data ['uiData'] ['rightResult'] ['item'] as $intKey => &$item) {
            if (isset($item ['dispData'] ['resultData'] ['extData'])) {
                $item ['dispData'] ['resultData'] ['extData'] ['feData'] ['cssUI'] = $arrCssUi;
				$item ['dispData'] ['resultData'] ['extData'] ['feData'] ['hasOffset'] = 1;
            }

            $arrOneData = array();
            $strType = empty($item ['dispData'] ['strategy'] ['type']) ? 'aladdin' : $item ['dispData'] ['strategy'] ['type'];
            $strTemplateName = $item ['dispData'] ['strategy'] ['tempName'];
            // $key =
            // md5(serialize($item['dispData'])).'_'.$strType.'_'.$strTemplateName;
            $arrOneData ['render_type'] = $strType;
            $arrOneData ['render_template'] = $strTemplateName;
            $arrRenderDataDetail = array();
            $arrRenderDataDetail ['queueName'] = 'rightResult';
            $arrRenderDataDetail ['queueId'] = $intKey;
            $arrOneData ['render_data'] = $arrRenderDataDetail;

            $key = $strType . '_' . $strTemplateName . '_' . $arrRenderDataDetail ['queueName'] . '_' . $arrRenderDataDetail ['queueId'] . '_' . $intLogId;
            $item ['dispData'] ['multi_render_key'] = $key;

            $arrAlaData [$key] = $arrOneData;
        }
    }

    // 上侧队列
    if (!empty($data ['uiData'] ['topResult'] ['item']) && is_array($data ['uiData'] ['topResult'] ['item'])) {
        foreach ($data ['uiData'] ['topResult'] ['item'] as $intKey => &$item) {
            if (isset($item ['dispData'] ['resultData'] ['extData'])) {
                $item ['dispData'] ['resultData'] ['extData'] ['feData'] ['cssUI'] = $arrCssUi;
            }
            $arrOneData = array();
            $strType = empty($item ['dispData'] ['strategy'] ['type']) ? 'aladdin' : $item ['dispData'] ['strategy'] ['type'];
            $strTemplateName = $item ['dispData'] ['strategy'] ['tempName'];
            // $key =
            // md5(serialize($item['dispData'])).'_'.$strType.'_'.$strTemplateName;
            $arrOneData ['render_type'] = $strType;
            $arrOneData ['render_template'] = $strTemplateName;
            $arrRenderDataDetail = array();
            $arrRenderDataDetail ['queueName'] = 'topResult';
            $arrRenderDataDetail ['queueId'] = $intKey;
            $arrOneData ['render_data'] = $arrRenderDataDetail;

            $key = $strType . '_' . $strTemplateName . '_' . $arrRenderDataDetail ['queueName'] . '_' . $arrRenderDataDetail ['queueId'] . '_' . $intLogId;
            $item ['dispData'] ['multi_render_key'] = $key;

            $arrAlaData [$key] = $arrOneData;
        }
    }
// 	file_put_contents('/home/work/search/view-ui/pre_data.log',var_export($data,true));
}

function render_single_result($strKey, $arrNeedRenderSingleResult, $data) {
    $arrRawData = $arrNeedRenderSingleResult[$strKey];
    if (empty($arrRawData)) {
        return false;
    }
    $strQueueName = $arrRawData['render_data']['queueName'];
    $intQueueId = $arrRawData['render_data']['queueId'];

    if ($arrRawData['type'] == 'as') {
        $arrRenderData = $data['uiData'][$strQueueName]['item'][$intQueueId];
    } else {
        $arrRenderData = $data['uiData'][$strQueueName]['item'][$intQueueId]['dispData'];
    }
    $renderType = $arrRawData ['render_type'];
    $renderTemplateName = $arrRawData ['render_template'];
    $GLOBALS['mulit_render_flag'] = 0;
    $rst = smarty_modifier_common_render($arrRenderData, $renderType, $renderTemplateName, $intQueueId);
    return $rst;
}

