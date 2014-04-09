<?php
/**
 * @brief class for data sending/recving via socket
 *
 * using block mode, with timeout set
 * total timeout is approximately judged
 *
 * @example
 *

<?php
require_once '../config.php';
require_once ABS_PATH . 'common-lib/common.inc.php';
require_once ABS_PATH . 'common-lib/log.class.php';

require_once ABS_PATH . 'common-lib/socket.class.php';

$sock = new CSocket('10.23.253.174', 10003);

// packing an ihead and a uscore req 
$strData = pack('IIa48', 267, 0, str_repeat(chr(0), 48));
$strData .= pack('IIa64I', 0x10, 12726632, str_pad('scalarize', 64, chr(0)), 0);

$sock->send($strData, strlen($strData), 1000);
$strRes = $sock->receive(56 + 32, 1000);
?>

 *
 * @PHP version 5+
**/
// require_once 'CLog.class.php';

class Utils_Csocket {
	protected $_sock;
	protected $_intConnTimeoutMS;
	protected $_intReadTimeoutMS;
	protected $_intWriteTimeoutMS;
	protected $_strRemoteHost;
	protected $_intRemotePort;
	
	public function __construct($strRemoteHost = '127.0.0.1', $intRemotePort = 80, $intReadTimeoutMS = 1000, $intWriteTimeoutMS = 1000, $intConnTimeoutMS = 1000) {
		$this->_sock = null;
		$this->setRemote ( $strRemoteHost, $intRemotePort );
		$this->setTimeout ( $intReadTimeoutMS, $intWriteTimeoutMS, $intConnTimeoutMS );
	}
	
	public function __destruct() {
		$this->close ();
	}
	
	public function close() {
		if (is_resource ( $this->_sock )) {
			fclose ( $this->_sock );
			$this->_sock = null;
		}
	}
	
	public function setRemote($strRemoteHost, $intRemotePort) {
		$this->_strRemoteHost = trim ( $strRemoteHost );
		$this->_intRemotePort = intval ( $intRemotePort );
	}
	
	public function setTimeout($intReadTimeoutMS, $intWriteTimeoutMS, $intConnTimeoutMS) {
		$this->_intReadTimeoutMS = intval ( $intReadTimeoutMS );
		$this->_intWriteTimeoutMS = intval ( $intWriteTimeoutMS );
		$this->_intConnTimeoutMS = intval ( $intConnTimeoutMS );
	}
	
	public function connect($strRemoteHost = null, $intRemotePort = null) {
		if (! is_null ( $strRemoteHost ) && ! is_null ( $intRemotePort )) {
			$this->setRemote ( $strRemoteHost, $intRemotePort );
		}
		$this->close ();
		
		$this->_sock = fsockopen ( $this->_strRemoteHost, $this->_intRemotePort, $intErrorNo, $strErrorMessage, $this->_intConnTimeoutMS / 1000 );
		if (! is_resource ( $this->_sock )) {
			CLog::warning ( sprintf ( '%s: error connecting %s:%d, err(%d:%s)', __METHOD__, $this->_strRemoteHost, $this->_intRemotePort, $intErrorNo, $strErrorMessage ) );
			return false;
		}
		
		stream_set_blocking ( $this->_sock, true );
		return true;
	}
	
	public function send($strData, $intDataLength, $intTimeoutMs = null) {
		if (! is_null ( $intTimeoutMs )) {
			$this->setTimeout ( $this->_intReadTimeoutMS, $intTimeoutMs );
		}
		
		if (! is_resource ( $this->_sock )) {
			// maybe send called without connect?
			if ($this->connect () === false) {
				CLog::warning ( sprintf ( '%s: try sending with no valid socket', __METHOD__ ) );
				return false;
			}
		}
		
		$intSecond = intval ( $this->_intWriteTimeoutMS / 1000 );
		$intMicroSecond = intval ( $this->_intWriteTimeoutMS % 1000 * 1000 );
		stream_set_timeout ( $this->_sock, $intSecond, $intMicroSecond );
		
		$intSent = fwrite ( $this->_sock, $strData, $intDataLength );
		if ($intSent == $intDataLength) {
			CLog::debug ( sprintf ( '%s: sent %d bytes to %s:%d', __METHOD__, $intSent, $this->_strRemoteHost, $this->_intRemotePort ) );
			return $intSent;
		} else {
			list ( $intErrorNo, $strErrorMessage ) = $this->getLastError ();
			CLog::warning ( sprintf ( '%s: error sending %d bytes to %s:%d, ' . '%d got, err(%d:%s)', __METHOD__, $intDataLength, $this->_strRemoteHost, $this->_intRemotePort, $intSent, $intErrorNo, $strErrorMessage ) );
			return false;
		}
	}
	
	public function receive($intDataLength, $intTimeoutMs = null) {
		if (! is_null ( $intTimeoutMs )) {
			$this->setTimeout ( $intTimeoutMs, $this->_intWriteTimeoutMS );
		}
		
		if (! is_resource ( $this->_sock )) {
			CLog::warning ( sprintf ( '%s: try receive with invalid sock', __METHOD__ ) );
			return false;
		}
		
		$intSecond = intval ( $this->_intReadTimeoutMS / 1000 );
		$intMicroSecond = intval ( $this->_intReadTimeoutMS % 1000 * 1000 );
		stream_set_timeout ( $this->_sock, $intSecond, $intMicroSecond );
		
		$strData = '';
		$intLeft = $intDataLength;
		$tmStart = gettimeofday ();
		while ( $intLeft > 0 ) {
			$strReceived = fread ( $this->_sock, $intLeft );
			$intReceived = strlen ( $strReceived );
			if (0 == $intReceived) {
			} else if ($intReceived > 0 && $intReceived <= $intLeft) {
				$strData .= $strReceived;
				$intLeft -= $intReceived;
			} else {
				list ( $intErrorNo, $strErrorMessage ) = $this->getLastError ();
				CLog::warning ( sprintf ( '%s: error recving %d bytes from %s:%d, ' . '%d got, err(%d:%s)', __METHOD__, $intDataLength, $this->_strRemoteHost, $this->_intRemotePort, strlen ( $strData ), $intErrorNo, $strErrorMessage ) );
				return false;
			}
			// manual timeout checking
			$tmCurrent = gettimeofday ();
			$intMSGone = ($tmCurrent ['sec'] - $tmStart ['sec']) * 1000 + ($tmCurrent ['usec'] - $tmStart ['usec']) / 1000;
			if ($intMSGone > $this->_intReadTimeoutMS) {
				CLog::warning ( sprintf ( '%s: timeout recving %d bytes from %s:%d, ' . '%d got but %d ms has elapsed', __METHOD__, $intDataLength, $this->_strRemoteHost, $this->_intRemotePort, strlen ( $strData ), $intMSGone ) );
				return false;
			}
		}
		return $strData;
	}
	
	public function receiveAll($intMaxDataLength, $intTimeoutMs = null) {
		if (! is_null ( $intTimeoutMs )) {
			$this->setTimeout ( $intTimeoutMs, $this->_intWriteTimeoutMS );
		}
		
		if (! is_resource ( $this->_sock )) {
			return false;
		}
		
		$intSecond = intval ( $this->_intReadTimeoutMS / 1000 );
		$intMicroSecond = intval ( $this->_intReadTimeoutMS % 1000 * 1000 );
		stream_set_timeout ( $this->_sock, $intSecond, $intMicroSecond );
		
		$strData = '';
		$intLeft = $intMaxDataLength;
		$tmStart = gettimeofday ();
		while ( $intLeft > 0 ) {
			$strReceived = fread ( $this->_sock, $intLeft );
			$intReceived = strlen ( $strReceived );
			if (0 == $intReceived) {
			} else if ($intReceived > 0 && $intReceived <= $intLeft) {
				$strData .= $strReceived;
				$intLeft -= $intReceived;
			} else {
				list ( $intErrorNo, $strErrorMessage ) = $this->getLastError ();
				CLog::warning ( sprintf ( '%s: error recving %d bytes from %s:%d, ' . '%d got, err(%d:%s)', __METHOD__, $intMaxDataLength, $this->_strRemoteHost, $this->_intRemotePort, strlen ( $strData ), $intErrorNo, $strErrorMessage ) );
				return false;
			}
			// manual timeout checking
			$tmCurrent = gettimeofday ();
			$intMSGone = ($tmCurrent ['sec'] - $tmStart ['sec']) * 1000 + ($tmCurrent ['usec'] - $tmStart ['usec']) / 1000;
			if ($intMSGone > $this->_intReadTimeoutMS) {
				CLog::warning ( sprintf ( '%s: timeout recving %d bytes from %s:%d, ' . '%d got but %d ms has elapsed', __METHOD__, $intMaxDataLength, $this->_strRemoteHost, $this->_intRemotePort, strlen ( $strData ), $intMSGone ) );
				return $strData;
			}
		}
		return $strData;
	}
	
	public function getLastError() {
		if (! is_resource ( $this->_sock )) {
			return array (- 1, 'invalid sock' );
		}
		$intErrorNo = socket_last_error ( $this->_sock );
		$strErrorMessage = socket_strerror ( $intErrorNo );
		return array ($intErrorNo, $strErrorMessage );
	}
}
