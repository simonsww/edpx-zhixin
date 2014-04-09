<?php
/**
 * 后端错误码及对应的msg
 * @author 贾春鑫(jiachunxin@baidu.com)
 *
 */
class ErrorMsg {
	// us状态吗及对应的消息
	public static $arrUsMsg = array (
			- 1 => 'BS down', 
			- 9 => 'sex filtered phrase', 
			- 10 => 'parse null',
			- 11 => 'BS time out', 
			- 12 => 'US_RET_GPSCHK_FILTER', 
			- 13 => 'US_RET_GPSCHK_OK',
			- 150 => 'us hit cache', 
			- 151 => 'us not hit cache', 
			- 29 => 'politics filtered phrase', 
			- 112 => 'schedule servers error', 
			- 101 => 'insert da queue failed' );
}