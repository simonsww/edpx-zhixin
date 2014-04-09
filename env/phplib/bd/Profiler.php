<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file Profiler.php
 * @author luhaixia(com@baidu.com)
 * @date 2012/05/02 17:27:43
 * @brief 性能监控组件，一期只监控运行时间，并保存交互或调用信息
 *  
 **/
class Bd_Profiler{
	const MAXLOGNUM = 100;
	static private $bolInit = false;
	static private $writeLog = true;
	static private $enableProfiling = true;
	static private $maxLogNum = 100;
	static private $intLogNum = 0; //累计达到一定数据的交互信息就会打印一次日志
	/**
	 * @brief 所有监控信息
	 *
	 * @return  
	 * @retval   
	 * @see 
	 * @note 
	 * @author luhaixia
	 * @date 2012/05/02 17:55:01
	**/
	static private $profInfo  = array();

	/**
	 * @brief 调用栈
	 *
	 * @return  
	 * @retval   
	 * @see 
	 * @note 
	 * @author luhaixia
	 * @date 2012/05/02 17:55:01
	**/
	static private $callStack = array();

	/**
	 * @brief 开始监控，记录时间
	 *
	 * @return  public function 
	 * @retval   
	 * @see 
	 * @note 
	 * @author luhaixia
	 * @date 2012/05/02 17:57:35
	**/
	static public function start(){
		if(!self::_enableProfiling()){
			return;
		}
		$beg = intval(microtime(true)*1000);
		$arrInfo = array('begTime' => $beg, 'module' => Bd_AppEnv::getCurrApp());
		array_push(self::$callStack, $arrInfo);	
	}

	/**
	 * @brief 结束监控，统计耗时，保存信息
	 *
	 * @return  public function 
	 * @retval   
	 * @see 
	 * @note 
	 * @author luhaixia
	 * @date 2012/05/02 17:57:50
	**/ 
	static public function end($arrInfo = array(), $writeLog = false){
		if(!self::_enableProfiling()){
			return;
		}
		$arrCallInfo = array_pop(self::$callStack);
		$cost = intval(microtime(true)*1000) - $arrCallInfo['begTime'];
		if(!is_array($arrInfo)){
			$arrInfo = array();
		}
	    $arrInfo['cost'] = $cost;
	    $arrInfo['module'] = $arrCallInfo['module']; 
		$tmp = gettimeofday();
		$arrInfo['optime'] = $tmp['sec'].'.'.intval($tmp['usec']/1000);
		$arrInfo['product'] = defined('PRODUCT') ? PRODUCT : 'ORP';
		$arrInfo['subsys']  = defined('SUBSYS') ? SUBSYS : 'ORP';
		array_push(self::$profInfo, $arrInfo);
		self::$intLogNum++;
		if($writeLog){
			self::dumpProfInfo();
		}else if(self::$intLogNum <= self::$maxLogNum){
			self::dumpProfInfo();
			self::$intLogNum = 0;
		}
	}

	/**
	 * @brief 获取监控信息
	 *
	 * @return  public function 
	 * @retval   
	 * @see 
	 * @note 
	 * @author luhaixia
	 * @date 2012/05/02 17:58:57
	**/
	static public function getProfInfo(){
		return self::$profInfo;
	}

	/**
	 * @brief 打印监控信息至log文件
	 *
	 * @return  public function 
	 * @retval   
	 * @see 
	 * @note 
	 * @author luhaixia
	 * @date 2012/05/02 17:59:04
	oonst MAXLOGNUM = 100;
	**/
	static public function dumpProfInfo(){
		if(!self::$writeLog){
			self::$profInfo = array();
			return true;
		}
		$arrLogInfo = array();
		foreach(self::$profInfo as $info){
			$module = $info['module'];
			if(isset($arrLogInfo[$module])){
				$logStr = $arrLogInfo[$module];
			}else{
				$logStr = '';
			}
			$logStr .= self::_getLogString($info);
			$arrLogInfo[$module] = $logStr;
		}
		foreach($arrLogInfo as $module => $logStr){
			$fileName = Bd_AppEnv::getEnv('log', $module).'/'.$module.'.profiler';
			self::_writeLog($fileName, $logStr);
		}
		self::$profInfo = array();
		return true;

	}

	static private function _enableProfiling(){
		if(!self::$bolInit){
			$arrConf = Bd_Conf::getConf('profiler/log');
			if(false !== $arrConf){
				self::$enableProfiling = isset($arrConf['level']) ? (bool)($arrConf['level']) : true;
				self::$maxLogNum = isset($arrConf['maxlognum']) ? (int)($arrConf['maxlognum']): 100;
			}
			self::$bolInit = true;
		}
		return self::$enableProfiling;
	}

	static private function _writeLog($strLogFileName, $logStr){
		return  file_put_contents($strLogFileName, $logStr, FILE_APPEND);
	}

	static private function _getLogString($current_args){
		$str  = 'PROFILER: ' . strftime('%m-%d %H:%M:%S') . ' ' . $current_args['module'] . ' * ' . posix_getpid();
	    $str .=	' [logid=' . (defined('LOG_ID')? LOG_ID : Bd_Env::getLogID());
	    $args = array();
		foreach($current_args as $key => $value){
			$args[] = rawurlencode($key).'='.rawurlencode($value);
        }       
	    $str .= ' '.implode(' ', $args)."]\n"; 
		return $str;
	}
}




