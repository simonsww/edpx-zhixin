<?php
/***************************************************************************
 *
 * Copyright (c) 2009 Baidu.com, Inc. All Rights Reserved
 *
 **************************************************************************/

/**
 * @file CLog.class.php
 * @author zhujt(zhujianting@baidu.com)
 * @date 2009/08/04 10:31:44
 * @version $Revision: 1.1 $
 * @brief class for logging
 *
 **/

/**
 * @example:
 *
 <?php
 require_once('CLog.class.php');

 $GLOBALS['LOG'] = array(
	'intLevel			=> 0x07,		//fatal, warning, notice
	'strLogFile'		=> '/home/space/space/log/test.log',	//test.log.wf will be the wf log file
	'arrSelfLogFiles'	=> array(
		'acstat'	=> '/home/space/space/log/acstat.sdf.log',
		'bhstat'	=> '/home/space/space/log/bhstat.sdf.log',
		),
	);

 $str = 'biaji';
 CLog::notice($str);
 CLog::fatal($str);
 CLog::warning($str);
 CLog::debug($str);
 CLog::selfLog('acstat', $str);
 CLog::selfLog('bhstat', $str);

 **/

class CLog
{
    const LOG_LEVEL_NONE    = 0x00;
    const LOG_LEVEL_FATAL   = 0x01;
    const LOG_LEVEL_WARNING = 0x02;
    const LOG_LEVEL_NOTICE  = 0x04;
    const LOG_LEVEL_TRACE   = 0x08;
    const LOG_LEVEL_DEBUG   = 0x10;
    const LOG_LEVEL_ALL     = 0xFF;

    public static $arrLogLevels = array(
        self::LOG_LEVEL_NONE    => 'NONE',
        self::LOG_LEVEL_FATAL   => 'FATAL',
        self::LOG_LEVEL_WARNING => 'WARNING',
        self::LOG_LEVEL_NOTICE  => 'NOTICE',
        self::LOG_LEVEL_TRACE	=> 'TRACE',
        self::LOG_LEVEL_DEBUG   => 'DEBUG',
        self::LOG_LEVEL_ALL     => 'ALL',
    );

    protected $intLevel;
    protected $strLogFile;
    protected $arrSelfLogFiles;
    protected $intLogId;
    protected $intStartTime;

    private static $instance = null;
    protected static $strQueryId;
    protected static $strQueryUri;
    
    private function __construct($arrLogConfig, $intStartTime)
    {
        $this->intLevel         = intval($arrLogConfig['intLevel']);
        $this->strLogFile		= $arrLogConfig['strLogFile'];
        $this->arrSelfLogFiles  = $arrLogConfig['arrSelfLogFiles'];
        $this->intLogId			= self::__logId();
        $this->intStartTime		= $intStartTime;
    }

	/**
	 * @return CLog
	 */
	public static function getInstance()
	{
		if (self::$instance === null) {
			$intStartTime = defined('PROCESS_START_TIME') ? PROCESS_START_TIME : Volatile::microtime(true) *
				 1000;
			self::$instance = new CLog($GLOBALS['LOG'], $intStartTime);
		}
		
		return self::$instance;
	}

	/**
	 * Write raw string to log file
	 * @param string $str
	 * @return int Return log string length if success, or null if failed
	 */
	public static function rawlog($str)
	{
		$log = CLog::getInstance();
		return $log->writeRawLog($str);
	}

	/**
	 * Write self defined log
	 * 
	 * @param string $strKey	key of the self defined log file
	 * @param string $str		self defined log string
	 * @param array $arrArgs	params in k/v format to be write into the log
	 */
    public static function selflog($strKey, $str, $arrArgs = null)
    {
        $log = CLog::getInstance();
        return $log->writeSelfLog($strKey, $str, $arrArgs);
    }

    /**
     * Write debug log
     * 
     * @param string $str		Self defined log string
     * @param int $errno		errno to be write into log
     * @param array $arrArgs	params in k/v format to be write into log
     * @param int $depth		depth of the function be packaged
     */
    public static function debug($str, $errno = 0, $arrArgs = null, $depth = 0)
    {
        $log = CLog::getInstance();
        return $log->writeLog(self::LOG_LEVEL_DEBUG, $str, $errno, $arrArgs, $depth + 1);
    }

    /**
     * Write trace log
     * 
     * @param string $str		Self defined log string
     * @param int $errno		errno to be write into log
     * @param array $arrArgs	params in k/v format to be write into log
     * @param int $depth		depth of the function be packaged
     */
	public static function trace($str, $errno = 0, $arrArgs = null, $depth = 0)
    {
        $log = CLog::getInstance();
        return $log->writeLog(self::LOG_LEVEL_TRACE, $str, $errno, $arrArgs, $depth + 1);
    }

    public static function notice($str, $errno = 0, $arrArgs = null, $depth = 0)
    {
        $log = CLog::getInstance();
        return $log->writeLog(self::LOG_LEVEL_NOTICE, $str, $errno, $arrArgs, $depth + 1);
    }

    /**
     * Write warning log
     * 
     * @param string $str		Self defined log string
     * @param int $errno		errno to be write into log
     * @param array $arrArgs	params in k/v format to be write into log
     * @param int $depth		depth of the function be packaged
     */
    public static function warning($str, $errno = 0, $arrArgs = null, $depth = 0)
    {
        $log = CLog::getInstance();
        return $log->writeLog(self::LOG_LEVEL_WARNING, $str, $errno, $arrArgs, $depth + 1);
    }

    /**
     * Write fatal log
     * 
     * @param string $str		Self defined log string
     * @param int $errno		errno to be write into log
     * @param array $arrArgs	params in k/v format to be write into log
     * @param int $depth		depth of the function be packaged
     */
    public static function fatal($str, $errno = 0, $arrArgs = null, $depth = 0)
    {
        $log = CLog::getInstance();
        return $log->writeLog(self::LOG_LEVEL_FATAL, $str, $errno, $arrArgs, $depth + 1);
    }

    /**
     * Get logid for current http request
     * @return int
     */
    public static function logId()
    {
        return CLog::getInstance()->intLogId;
    }
	
    public static function setQueryId($strQueryId)
    {
    	return self::$strQueryId=$strQueryId;
    }
    
    public static function getQueryId(){
    	return self::$strQueryId;
    }
    
    public static function setQueryUri($strQueryUri)
    {
    	return self::$strQueryUri=$strQueryUri;
    }
    
    
    /**
     * Get the real remote client's IP
     * @return string
     */
    public static function getClientIP()
	{
		if (isset($_SERVER['HTTP_X_FORWARDED_FOR']) &&
			$_SERVER['HTTP_X_FORWARDED_FOR'] != '127.0.0.1') {
			$ips = explode(',', $_SERVER['HTTP_X_FORWARDED_FOR']);
			$ip = $ips[0];
		} elseif (isset($_SERVER['HTTP_CLIENTIP'])) {
			$ip = $_SERVER['HTTP_CLIENTIP'];
		} elseif (isset($_SERVER['REMOTE_ADDR'])) {
			$ip = $_SERVER['REMOTE_ADDR'];
		} else {
			$ip = '127.0.0.1';
		}
		
		$pos = strpos($ip, ',');
		if ($pos > 0) {
			$ip = substr($ip, 0, $pos);
		}
		
		return trim($ip);
    }

	public function writeLog($intLevel, $str, $errno = 0, $arrArgs = null, $depth = 0)
	{
		if ($intLevel > $this->intLevel || !isset(self::$arrLogLevels[$intLevel])) {
			return;
		}
		
		$strLevel = self::$arrLogLevels[$intLevel];
		
		$strLogFile = $this->strLogFile;
		if (($intLevel & self::LOG_LEVEL_WARNING) || ($intLevel & self::LOG_LEVEL_FATAL)) {
			$strLogFile .= '.wf';
		}
		
		$trace = debug_backtrace();
		if ($depth >= count($trace)) {
			$depth = count($trace) - 1;
		}
		$file = basename($trace[$depth]['file']);
		$line = $trace[$depth]['line'];
		
		$strArgs = '';
		$strArgs .= "qid[".self::$strQueryId."] ";
		if (is_array($arrArgs) && count($arrArgs) > 0) {
			foreach ($arrArgs as $key => $value) {
				$strArgs .= $key . "[$value] ";
			}
		}

        $intTimeUsed = round(Volatile::microtime(true)*1000 - $this->intStartTime,2);

        $str = sprintf( "%s: %s [%s:%d] errno[%d] ip[%s] logId[%u] uri[%s] time_used[%s] %s%s\n",
                        $strLevel,
                        date('m-d H:i:s:', time()),
                        $file, $line, $errno,
                        self::getClientIP(),
                        $this->intLogId,
                        isset(self::$strQueryUri) ? self::$strQueryUri : $_SERVER['REQUEST_URI'],
                        $intTimeUsed, $strArgs, $str);

        return file_put_contents($strLogFile, $str, FILE_APPEND);
    }

	public function writeSelfLog($strKey, $str, $arrArgs = null)
	{
		if (isset($this->arrSelfLogFiles[$strKey])) {
			$strLogFile = $this->arrSelfLogFiles[$strKey];
		} else {
			return;
		}
		
		$strArgs = '';
		if (is_array($arrArgs) && count($arrArgs) > 0) {
			foreach ($arrArgs as $key => $value) {
				$strArgs .= $key . "[$value] ";
			}
		}

        $str = sprintf( "%s: %s ip[%s] logId[%u] uri[%s] %s%s\n",
                        $strKey,
                        date('m-d H:i:s:', time()),
                        self::getClientIP(),
                        $this->intLogId,
                        isset(self::$strQueryUri) ? self::$strQueryUri : $_SERVER['REQUEST_URI'],
                        $strArgs, $str);

        return file_put_contents($strLogFile, $str, FILE_APPEND);
    }

	public function writeRawLog($str)
	{
		$strLogFile = $this->strLogFile;
        return file_put_contents($strLogFile, $str."\n", FILE_APPEND);
	}

	private static function __logId()
	{
		$arr = gettimeofday();
		return ((($arr['sec']*100000 + $arr['usec']/10) & 0x7FFFFFFF) | 0x80000000);
	}
	
	public static function setLogId($intLogId){
		$log = CLog::getInstance();
		$log->intLogId = $intLogId;
		return true;
	}
}




/* vim: set ts=4 sw=4 sts=4 tw=90 noet: */
?>
