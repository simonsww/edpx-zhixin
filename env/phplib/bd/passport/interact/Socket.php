<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file bd/passport/interact/Socket.php
 * @author fanmengzhe(com@baidu.com)
 * @date 2011/11/08 14:57:18
 * @brief 
 *  
 **/

/**
 * @brief	Bd_Passport	原生交互实现
 */
class Bd_Passport_Interact_Socket implements Bd_Passport_Interact_IEngine {
	/**
	 * 临时变量
	 **/
	protected $_fd = null;
	
	public function __construct() {
		if (!extension_loaded('mc_pack')) {
			Bd_Passport_Log::warning('Mc_pack extension is not loaded!', -1);
			return;
		}
	}


	/**
	 * @brief interface
	 * @param
	 * @return mixed	false for failed; array for suceed.
	 * @author fanmengzhe
	 * @date 2011/11/08 11:50:27
	 * @note
	 */
	public function Call($strServer , $strMethod , $arrInput) {
		$serv = $this->_getServer($strServer, $strMethod);
		if (!is_array($serv)) {
			Bd_Passport_Log::warning('getServer failed', -1);
			return false;
		}
		
		$strSend = $this->_serialize($arrInput);
		if ($strSend === false) {
			Bd_Passport_Log::warning('pack input failed', -1);
			return false;
		}

		$this->_fd = $this->_connect($serv['ip'], $serv['port'], $serv['timeout_c']);
		if (!is_resource($this->_fd)) {
			$strLog = sprintf("connect %s:%d in %dms failed.", $serv['ip'], $serv['port'], $serv['timeout_c']);
			Bd_Passport_Log::warning($strLog, -1);
			return false;
		}


		$ret = $this->_send($this->_fd, $strSend, $serv['timeout_w']);
		if ($ret == false) {
			$strLog = sprintf("send to %s:%d in %dms failed.", $serv['ip'], $serv['port'], $serv['timeout_w']);
			Bd_Passport_Log::warning($strLog, -1);
			return false;
		}
		$ret = $this->_recv($this->_fd, $serv['timeout_r']);
		if ($ret == false) {
			$strLog = sprintf("recv from %s:%d in %dms failed.", $serv['ip'], $serv['port'], $serv['timeout_r']);
			Bd_Passport_Log::warning($strLog, $intErrno);
			return false;
		}
		$this->_close();
		return $this->_deserialize($ret);
	}


	public function __destruct() {
		$this->_close();
	}

	
	/**
	 * @brief
	 * @param
	 * @return
	 * @author fanmengzhe
	 * @date 2011/11/08 11:50:24
	 * @note
	 */
	protected function _getServer($strServer, $strMethod) {
		$arrServConf = Bd_Passport_Conf::getConf('server');
		if (isset($arrServConf['cur_idc'])) {
			$cur_idc = $arrServConf['cur_idc'];
		} else {
			Bd_Passport_Log::warning("cur_idc not exists", -1);
			return false;
		}

		if (isset($arrServConf[$strServer])) {
			$port      = $arrServConf[$strServer]['service_port'];
			$timeout_c = $arrServConf[$strServer]['service_ctimeout'];
			$timeout_r = $arrServConf[$strServer]['service_rtimeout'];
			$timeout_w = $arrServConf[$strServer]['service_wtimeout'];
		}

		$ip_cnt = count($arrServConf[$strServer][$cur_idc]);
		$ip_idx = rand() % $ip_cnt;
		$ip		= $arrServConf[$strServer][$cur_idc][$ip_idx]['ip'];
		
		$arrRet = array(
			'ip'	=> $ip,
			'port'	=> $port,
			'timeout_c'	=> $timeout_c,
			'timeout_w'	=> $timeout_w,
			'timeout_r'	=> $timeout_r,
		);
		foreach($arrRet as $key => $val) {
			if (is_null($val)) {
				Bd_Passport_Log::warning("$key not exists", -1);
				return false;
			}
		}
		return $arrRet;
	}
	

	protected function _serialize($arrInput) {
		$mcpack = mc_pack_array2pack($arrInput);
		$nshead = $this->_packNshead(strlen($mcpack));
		return $nshead.$mcpack;
	}

	protected function _deserialize($strOutput) {
		return mc_pack_pack2array($strOutput);
	}

	/**
	 * @brief
	 * @param
	 * @return
	 * @author fanmengzhe
	 * @date 2011/11/08 11:50:31
	 * @note
	 */
	protected function _connect($strIp, $strPort, $intTimeout) {
		$intErrno = 0;
		$strErrmsg = '';
		$ret = @fsockopen($strIp, intval($strPort), $intErrno, $strErrmsg, $intTimeout);
		if (!is_resource($ret)) {
	        Bd_Passport_Log::warning($strErrmsg, $intErrno);    
			return false;
        }   
        return $ret; 
	}


	/**
	 * @brief
	 * @param
	 * @return
	 * @author fanmengzhe
	 * @date 2011/11/08 11:50:32
	 * @note
	 */
	protected function _send($fd, $strSend, $intTimeout) {
		$intLen = strlen($strSend);
		if ($intLen < 0) {
			Bd_Passport_Log::warning('null string found', -1);
			return false;
		}

		stream_set_blocking($fd, true);
		$intSecond      = intval($intTimeout / 1000);
		$intMicroSecond = intval($intTimeout % 1000);
		stream_set_timeout($fd, $intSecond, $intMicroSecond);

		$intSent        = fwrite($fd, $strSend, strlen($strSend));
		return ($intSent === $intLen) ? $intSent : false;
	}


	/**
	 * @brief
	 * @param
	 * @return
	 * @author fanmengzhe
	 * @date 2011/11/08 11:50:34
	 * @note
	 */
	protected function _recv($fd, $intTimeout) {
		$lenNshead	= 36;
		$strNshead	= '';
		$lenMcpack	= 0;
		$strMcpack	= '';
		
		$tm_st		= gettimeofday();
		$strNshead = $this->_ul_sread_ms($fd, 36, $intTimeout);
		if ($strNshead == false) {
			return false;
		}
		$arrNshead = $this->_unpackNshead($strNshead);
	
		$strMcpack = $this->_ul_sread_ms($fd, $arrNshead['body_len'], $intTimeout);
		if ($strMcpack == false) {
			return false;
		} else {
			return $strMcpack;
		}
	}

	protected function _ul_sread_ms($fd, $len, &$tm) {
		$strRet = '';
		$tm_st = gettimeofday();

		while ($len > 0) {
			$strRecv	= fread($fd, $len);
			$intRecv	= strlen($strRecv);
			if (0 == $intRecv) {
				null;
			} elseif ($intRecv > 0 && $intRecv <= $len) {
				$len -= $intRecv;
				$strRet .= $strRecv;
			} else {
				return false;
			}

			$tm_ed      = gettimeofday();
			$usd_ms		= ($tm_ed['sec'] - $tm_st['sec']) * 1000 + ($tm_ed['usec'] - $tm_st['usec']) / 1000;
			if ($usd_ms > $tm) {
				return false;
			}
		}
		$tm -= $usd_ms;
		return $strRecv;
	}

	/**
	 * @brief
	 * @param
	 * @return
	 * @author fanmengzhe
	 * @date 2011/11/08 14:18:35
	 * @note
	 */
	protected function _close() {
		if (is_resource($this->_fd)) {
			fclose($this->_fd);
		}
		$this->_fd = null;
	}


	protected function _packNshead($intBodyLen)  {
		$intLogId = Bd_Passport_Util::getLogId();
		return pack('SSIa16III', 0, 1, $intLogId, 'pass-glib', 0xfb709394, 0, $intBodyLen);
	}


	protected function _unpackNshead($strNshead) {
		return unpack('Sid/Sversion/Ilogid/a16provider/Imagic_num/Ireserved/Ibody_len', $strNshead);
	}
}


/* vim: set expandtab ts=4 sw=4 sts=4 tw=100 */
?>
