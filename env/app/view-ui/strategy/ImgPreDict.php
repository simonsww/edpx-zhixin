<?php
/**
 * 图片预取 提取策略
 *
 * @author (songlei03@baidu.com)
 *
 */
class ImgPreDict extends Strategy {

    public function run(&$arrData, $arrConf) {
        $arrControlInfo = &$arrData ['uiControl'];
        $strPlatform = $arrControlInfo ['platform'];
        $strLanguage = $arrControlInfo ['language'];
        $strType = '';
        $strTemplateName = '';
        
        $arrConf = Util::getConf ( '/image_predict', 'IMAGE_PREDICT' );
        $arrResult = $arrConf ['result'];
        $arrResult = explode ( ',', $arrResult );
		//图片列表改为左右区分 by lizhouq
		$imgListLeft = array();
		$imgListRight = array();
        $arrImgConf = array ();
        $arrDebugImgList = array();
        foreach ( $arrResult as $res ) {
            if (is_array ( $arrData ['uiData'] [$res] ['item'] ) && ! empty ( $arrData ['uiData'] [$res] ['item'] )) {
				$imgList = array();
                // 处理结果队列的每条结果
                foreach ( $arrData ['uiData'] [$res] ['item'] as $intIndex => $arrItem ) {
                	$intRawCountImgNum = count($imgList);
                	if(!empty( $arrItem ['dispData'] ['strategy'] ['type'])){
                		$strType = trim($arrItem ['dispData'] ['strategy'] ['type']);
                	}elseif($arrItem['comeFrome'] == 'AS'){
                		$strType = 'result';
                	}else{
                		$strType = VUI_TEMPLATE_ALADDIN_TEMPLATE_TYPE;
                	}
                    $strTemplateName = !empty($arrItem ['dispData'] ['strategy'] ['tempName']) ? trim ( $arrItem ['dispData'] ['strategy'] ['tempName'] ) : trim($arrItem ['dispData']['templateName']);
                    // 获取tpl.conf内容
                    $arrImgConf = Util::load_image_tpl_conf ( $strPlatform, $strLanguage, $strType, $strTemplateName );
                    if (is_array ( $arrImgConf ) && ! empty ( $arrImgConf )) {
                        if (intval ( $arrImgConf ['open_img_predict'] ) != 1) { 
                            continue;
                        } 
                        if (is_array ( $arrImgConf ['img'] ) && ! empty ( $arrImgConf ['img'] )) {
                            foreach ( $arrImgConf ['img'] as $arrImgData ) {
                                if(isset($arrItem ['dispData']['ImageAladdinResult'])){
                                    Util::parse_image_conf ( $arrItem ['dispData'] , $imgList, $arrImgData );
                                }else{
                                	if(empty($arrItem ['dispData'] ['resultData'])){
                                		Util::parse_image_conf ( $arrItem ['dispData'], $imgList, $arrImgData );
                                	}else{
                                		Util::parse_image_conf ( $arrItem ['dispData'] ['resultData'], $imgList, $arrImgData );
                                	}  
                                }
                            }
                        }
                    }
		

                    //如果单条结果中图片数量超过了限制，则只取配置中的条数
                  	$intLimitImgNum = intval($arrImgConf['img_num']);
                    if($intLimitImgNum > 0 ){
                    	$intCurImgNum = count($imgList);
                    	if($intCurImgNum - $intRawCountImgNum > $intLimitImgNum){
                    		$imgList = array_slice($imgList,0,$intRawCountImgNum+$intLimitImgNum);
                    	}
                    }
                    if($GLOBALS['pre_img_debug'] === 1){
                    	$intCurImgNum = count($imgList);
                    	if($intCurImgNum > $intRawCountImgNum){
                    		$arrAddImgList = array_slice($imgList,$intRawCountImgNum,$intCurImgNum-$intRawCountImgNum);
								if(empty($arrDebugImgList[$strTemplateName])){
                    				$arrDebugImgList[$strTemplateName] = $arrAddImgList;
								}else{
                    				$arrDebugImgList[$strTemplateName][] = $arrAddImgList;
								}
                    	}
                    }
                }
				//将取出的图片数组传入左/右侧队列 by lizhouq
				if(strcasecmp($res,"rightResult")===0){
		    		$imgListRight = array_merge($imgList, $imgListRight);
				}else{
		    		$imgListLeft = array_merge($imgList, $imgListLeft);
				}
				unset($imgList);
          	}
        }
		//左右侧加起来不超过图片设定总数，右侧优先。 by lizhouq
        $intTotalLimitImgNum = intval($arrConf['img_num']);
        if($intTotalLimitImgNum > 0){
			$imgCurImgNumRight = count($imgListRight);
			if(count($imgListRight) > $intTotalLimitImgNum){
				$imgListRight = array_slice($imgListRight,0,$intTotalLimitImgNum);
				$imgListLeft = array();
			}else if((count($imgListLeft) + count($imgListRight)) > $intTotalLimitImgNum){
				$imgListLeft = array_slice($imgListLeft,0,$intTotalLimitImgNum-$imgCurImgNumRight);
			}
        }
		if($GLOBALS['pre_img_debug'] === 1){
        	$GLOBALS['logArr']['pidug_set_imglist'] = json_encode($arrDebugImgList);
        }
        
		$imgSidListLeft = array();
		$imgSidListRight = array();
		//将url转为sid，供base64加载使用
		foreach($imgListLeft as $url){
			$sid = Util::parse_image_urlToId($url);
			if($sid !== false){
				$imgSidListLeft[] = $sid;
			}
		}
		foreach($imgListRight as $url){
			$sid = Util::parse_image_urlToId($url);
			if($sid !== false){
				$imgSidListRight[] = $sid;
			}
		}

		//以下为创建新版图片预取缓存结构。 by lizhouq
        $arrData['uiData']['queryInfo']['viewConfig']['normalImgList']['left']['urlList'] = $imgListLeft;
        $arrData['uiData']['queryInfo']['viewConfig']['normalImgList']['left']['sidList'] = $imgSidListLeft;
        $arrData['uiData']['queryInfo']['viewConfig']['normalImgList']['right']['urlList'] = $imgListRight;
        $arrData['uiData']['queryInfo']['viewConfig']['normalImgList']['right']['sidList'] = $imgSidListRight;
        unset($imgListLeft);
		unset($imgListRight);
		unset($imgSidListLeft);
		unset($imgSidListRight);
    }
    
    
}
