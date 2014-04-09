<?php
/**
 * 单条结果模板选择策略
 * 可以通过资源id、抽样、tn、lang、platform、队列决定单条结果的模板
 * 多条结果间的模板PK不在此处处理
 * @author 贾春鑫(jiachunxin@baidu.com)
 *
 * 同时实现模板数据映射功能（长线方案）
 * @author 陈晨(chenchen20@baidu.com)
 */
class ItemTplSelector extends Strategy {
	public function run(&$arrData, $arrConf) {
		if (empty ( $arrData ) || ! is_array ( $arrData )) {
			return false;
		}
		$arrInfos = array ();
		$arrInfos ['sampleId'] = $arrData ['uiData'] ['queryInfo'] ['samplingId'];
		$arrInfos ['tn'] = $arrData ['uiData'] ['queryInfo'] ['accountName'];
		$smartyConf = CSmarty::getConf ();
		$arrInfos ['language'] = $smartyConf ['language'];
		$arrInfos ['platform'] = $smartyConf ['platform'];
		$arrTplConfs = Util::getConf ( '/tpl', 'ITEM_TEMPLATE' );
                
		//add by chenchen , @purpose:new_mappingData
		$bolMappingDataConf = (Util::getConf('/feature', 'FEATURE_LIST/NEW_MAPPINGDATA/TURN') !== 'ON') ? 0 : 1 ;       //加载开关配置
		//$strTemplatePath = VUI_TEMPLATE_PATH . "/view/" . $arrData['uiControl']['platform'] . "/" . $arrData['uiControl']['language'] . "/page" ;
		$arrQueryInfo = $arrData['uiData']['queryInfo'];
		$start_time = Volatile::microtime(true) * 1000;      //计时，当新的数据映射功能加载时间大于1ms时，考虑下掉
                
		foreach ( $GLOBALS ['RESULT'] as $res ) {
			if (! empty ( $arrData ['uiData'] [$res] ['item'] ) && is_array ( $arrData ['uiData'] [$res] ['item'] )) {
				$arrInfos ['result'] = $res;
				$intPosition = 0;
				foreach ( $arrData ['uiData'] [$res] ['item'] as $index => &$item ) {
					$intPosition ++;
					$arrInfos['position'] = $intPosition;
					$intSrcId = isset($item['dispData'] ['StdStg_new']) ? $item['dispData'] ['StdStg_new'] : $item ['dispData'] ['StdStg'];
					$intStdStl = $item ['dispData'] ['StdStl'];
					$tplConfs = $arrTplConfs ['SRCID_' . $intSrcId] ['GROUP'];
					if (empty ( $tplConfs ) || ! is_array ( $tplConfs )) {
						continue;
					}
					foreach ( $tplConfs as $tplConf ) {
						$bolSelectItemTpl = $this->selectItemTpl ( $arrInfos, $item, $tplConf );
						if( $bolSelectItemTpl === false ){
							continue;
						}
						
						$item ['dispData'] ['strategy'] ['tempName_ori'] = $item ['dispData'] ['strategy'] ['tempName'];
						$item ['dispData'] ['strategy'] ['tempName'] = $tplConf ['tpl'];
						$item ['dispData'] ['strategy'] ['type'] = $tplConf ['type'];
						$item ['dispData'] ['strategy'] ['mapping'] = $tplConf ['mapping'];          
						
						break;
					}
         	  
         			$bolDisplayWrong = $this->resultDisplayWrong ( $item ['dispData'] ['strategy'] ['tempName'], $res );
					if( $bolDisplayWrong === false ){
						CLog::warning('Result display template error, result:' . $res . ',template:' . $item ['dispData'] ['strategy'] ['tempName'] . ',srcID:' . $intSrcId);
						unset( $arrData ['uiData'] [$res] ['item'] [$index] );
						continue;
					}
        	
					if($bolMappingDataConf){
						$this->newMappingData ( $item, $arrQueryInfo, $intSrcId );
					}
         	       	         	
					//add by songlei 知心卡片打印展现日志
					if(!empty($item ['card_id']))
					{   
						$item ['dispData'] ['card_id'] = $item ['card_id'] ;
						$item ['dispData'] ['category_id'] = $item ['category_id'] ;
						$item ['dispData'] ['uri'] = urlencode ( $item ['uri']) ;
						$item ['dispData'] ['disp_level'] = $item ['disp_level'] ;
						$item ['dispData'] ['entityname'] = urlencode ( $item ['entityname'] );
					}//if empty
				}
				unset ( $item );
			}
		}
		$GLOBALS['logArr']['time_tpl_mappingdata'] = round(Volatile::microtime(true) * 1000 - $start_time,2);
        return true;
	}

	public function selectItemTpl( $arrInfos, &$arrItem, $tplConf ) {

		if (empty ( $tplConf ['tpl'] ) || empty ( $tplConf ['type'] )) {
			return false;
		}
		if (empty ( $tplConf ['stdstl'] )) {
			$arrStdStlConf = null;
		} else {
			$arrStdStlConf = split ( ',', $tplConf ['stdstl'] );
		}
		if (empty ( $tplConf ['pos'] )) {
			$arrPositionConf = null;
		} else {
			$arrPositionConf = split ( ',', $tplConf ['pos'] );
		}
		if (empty ( $tplConf ['result'] )) {
			$arrResultConf = null;
		} else {
			$arrResultConf = split ( ',', $tplConf ['result'] );
		}
		if (empty ( $tplConf ['tn'] )) {
			$arrTnConf = null;
		} else {
			$arrTnConf = split ( ',', $tplConf ['tn'] );
		}
		if (empty ( $tplConf ['language'] )) {
			$arrLanguageConf = null;
		} else {
			$arrLanguageConf = split ( ',', $tplConf ['language'] );
		}
		if (empty ( $tplConf ['platform'] )) {
			$arrPlatformsConf = null;
		} else {
			$arrPlatformsConf = split ( ',', $tplConf ['platform'] );
		}
		if (empty ( $tplConf ['samplingId'] )) {
			$arrSamplingIdConf = null;
		} else {
			$arrSamplingIdConf = split ( ',', $tplConf ['samplingId'] );
		}
		if (is_array ( $arrStdStlConf ) && ! in_array ( $arrItem ['dispData'] ['StdStl'], $arrStdStlConf )) {
			// 展现样式不对
			return false;
		}
		if (is_array ( $arrPositionConf ) && ! in_array ( $arrInfos['position'], $arrPositionConf )) {
			// 展现样式不对
			return false;
		}
		if (is_array ( $arrResultConf ) && ! in_array ( $arrInfos ['result'], $arrResultConf )) {
			// 队列不对
			return false;
		}
		if (is_array ( $arrTnConf ) && ! in_array ( $arrInfos ['tn'], $arrTnConf )) {
			// tn不对
			return false;
		}
		if (is_array ( $arrLanguageConf ) && ! in_array ( $arrInfos ['language'], $arrLanguageConf )) {
			// language不对
			return false;
		}
		if (is_array ( $arrPlatformsConf ) && ! in_array ( $arrInfos ['platform'], $arrPlatformsConf )) {
			// platform不对
			return false;
		}
		$arrSample_intersect = array_intersect ( $arrInfos ['sampleId'], $arrSamplingIdConf );
		if (! empty ( $arrSamplingIdConf ) && empty ( $arrSample_intersect )) {
			// sample不对
			return false;
		} 
		                
		return true;
	}
	
	public function resultDisplayWrong( $tempName, $result ) {
		
		$pos = strpos( $tempName, "_" );
		$tplName = substr( $tempName, 0, $pos ); //获得模板名第一个下划线前的字段 ; exp:"top_zx" => "top"
		if( $tplName === 'ecr' ){    //ecr 为商业知心模板名开头，只能出现在右侧
			$tplName = 'right';
		}
		if( $tplName === 'top' || $tplName === 'right' || $tplName === 'left' || $tplName === 'as' ){ 
			$resultName = substr( $result, 0, -6 );      //获取队列名称 ； exp:"asResult"=>"as"
			if( $resultName !== $tplName ){
				return false;
			}
		}
		return true;
	}
	
	public function newMappingData( &$arrItem, $arrQueryInfo, $intSrcId ) {
		
		if (empty ( $arrItem ['dispData'] ['strategy'] ['mapping'] ) ||  ($arrItem ['dispData'] ['strategy'] ['mapping'] !== 'ON')) {     //tpl.conf中GROUP新增一个mapping字段，表示是否可以进行数据映射
        return false;
		}
    
		$templateName = $arrItem ['dispData'] ['strategy'] ['tempName'];
		$functionName = $templateName . '_' . $intSrcId;
		//$mappingFunctionFile = $strTemplatePath . "/" . $tplConf ['type'] . "/" . $templateName . "/MappingFunction.php";
		$mappingFunctionFile = VUI_APP_PATH.'/strategy/mappingdata/' .  $functionName . '.php' ;

		if ( !file_exists ( $mappingFunctionFile ) ){
			//映射功能文件不存在
			CLog::warning("newMappingData mappingFunctionFile is not exist:" . $mappingFunctionFile);
			return false;
		}
		
		require_once $mappingFunctionFile ;  
				  
		if( !function_exists($functionName) ){
			//功能函数不存在
			CLog::warning("newMappingData mappingfunctionName is not exist:" . $functionName);
			return false;
		}
		call_user_func_array( $functionName, array(&$arrItem,$arrQueryInfo) ); 
		return true;
	}
}
