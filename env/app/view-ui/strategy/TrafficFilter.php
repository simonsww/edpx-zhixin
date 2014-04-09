<?php
/**
 * 
 * @desc 处理ups存储的违章查询信息
 * @author chenhuailiang@baidu.com
 *
 */
class TrafficFilter extends Strategy {
	const TRAFFIC_KEY = "trafficSetV1";
	
	public function run(&$arrData, $arrConf) {
		if (empty ( $arrData ) || ! is_array ( $arrData )) {
			return false;
		}
		if (! isset ( $arrData ['uiData'] ['queryInfo'] ['personalData'] ) || empty ( $arrData ['uiData'] ['queryInfo'] ['personalData'] )) {
			return false;
		}
		$arrPersonalData = json_decode ( $arrData ['uiData'] ['queryInfo'] ['personalData'], true );
		if (! is_array ( $arrPersonalData ) || empty ( $arrPersonalData )) {
			return false;
		}
		if (! isset ( $arrPersonalData [TrafficFilter::TRAFFIC_KEY] )) {
			return false;
		}
		
		// 处理违章多车信息
		$arrTrafficInfo = $arrPersonalData [TrafficFilter::TRAFFIC_KEY];
		unset ( $arrPersonalData [TrafficFilter::TRAFFIC_KEY] );
		$arrData ['uiData'] ['queryInfo'] ['personalData'] = json_encode ( $arrPersonalData );
		
		$arrTrafficValue = json_decode ( $arrTrafficInfo ['value'], true );
		$arrTrafficData = array ();
		$arrExisted = array ();
		if (is_array ( $arrTrafficValue ) && ! empty ( $arrTrafficValue )) {
			foreach ( $arrTrafficValue as $intIndex => $arrItem ) {
				$arrItem ['city'] = strtolower ( $arrItem ['city'] ); // 城市
				$arrItem ['hphm'] = mb_strtoupper ( $arrItem ['hphm'], 'utf-8' ); // 车牌号
				$arrItem ['engineno'] = strtoupper ( $arrItem ['engineno'] ); // 发动机
				$arrItem ['classno'] = strtoupper ( $arrItem ['classno'] ); // 车架号
				$strTemp = md5($arrItem ['city'] . $arrItem ['hphm']);
				if (isset ( $arrExisted [$arrItem ['hphm']] )) {
					if (in_array ( $strTemp, $arrExisted [$arrItem ['hphm']] )) {
						continue;
					} else {
						$arrExisted [$arrItem ['hphm']] [] = $strTemp;
						$arrTrafficData [] = $arrItem;
					}
				} else {
					$arrExisted [$arrItem ['hphm']] [] = $strTemp;
					$arrTrafficData [] = $arrItem;
				}
				unset($strTemp);
			}
		}
		if (is_array ( $arrTrafficData ) && ! empty ( $arrTrafficData )) {
			$arrTrafficData = array_reverse($arrTrafficData);
			$arrData ['uiData'] ['queryInfo'] ['trafficData'] = $arrTrafficData;
		}
		CSmarty::setQueryInfo ( $arrData ['uiData'] ['queryInfo'] );
		return true;
	}
}
