<?php
/**
 * view-ui数据转换策略框架
 * @author 贾春鑫(jiachunxin@baidu.com)
 *
 */
class StrategyEngine {
	public static function run(&$arrData) {
		if (empty ( $arrData )) {
			return false;
		}
		// 策略配置
		$arrStrategys = Util::getConf ( '/strategy', 'STRATEGY_ENGINE/STRATEGY' );
		if (is_array ( $arrStrategys )) {
			foreach ( $arrStrategys as $arrStrategy ) {
				if (empty ( $arrStrategy ['STRATEGY_CLASS'] )) {
					// 策略函数为空
					continue;
				}
                if (strcasecmp($arrStrategy ['TURN'], 'on') != 0) {
					// 当前策略关闭
					continue;
				}
				// 调用对应的策略
				$objStrategy = new $arrStrategy ['STRATEGY_CLASS'] ();
				// file_put_contents ( '/home/work/search/view-ui/data/data_'.$arrStrategy ['STRATEGY_CLASS'], serialize($arrData) );
				// file_put_contents ( '/home/work/search/view-ui/data/data_'.$arrStrategy ['CONF'].'_conf', serialize($arrStrategy ['CONF']) );
				call_user_func_array ( array ($objStrategy, 'run' ), array (&$arrData, $arrStrategy ['CONF'] ) );
				//file_put_contents ( '/home/work/search/view-ui/data/data_'.$arrStrategy ['STRATEGY_CLASS'].'_result', serialize($arrData) );
			}
		}
	}
}
