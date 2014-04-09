<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file	Bd/Passport/Util.php
 * @author	fanmengzhe(com@baidu.com)
 * @date	2011/05/23 21:49:14
 * @brief 
 *  
 **/

/**
 * @brief	Bd_Passport 工具函数库
 *
 */
class Bd_Passport_Util {
	public static function checkParam($arrKey , &$arrParams) {
        if (!is_array($arrKey) || !is_array($arrParams)) {
            return false;
        }       

        foreach ($arrKey as $key) { 
            if (!isset($arrParams[$key])) {
                return false;
            }       
        }       
        return true;
	}
	
	
	public static function getClientIp() {
		$uip = '127.0.0.1';
        if (getenv('HTTP_CLIENT_IP') && strcasecmp(getenv('HTTP_CLIENT_IP'), 'unknown')) {
            $uip = getenv('HTTP_CLIENT_IP');
        } else if (getenv('HTTP_X_FORWARDED_FOR') && strcasecmp(getenv('HTTP_X_FORWARDED_FOR'), 'unknown')) {
            $uip = getenv('HTTP_X_FORWARDED_FOR');
            strpos(',', $uip) && list($uip) = explode(',', $uip);
        } else if (getenv('REMOTE_ADDR') && strcasecmp(getenv('REMOTE_ADDR'), 'unknown')) {
            $uip = getenv('REMOTE_ADDR');
        } elseif (isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], 'unknown')) {
            $uip = $_SERVER['REMOTE_ADDR'];
        }
        return $uip;
    }

	public static function getLogId() {
		$arr = gettimeofday();
		return ((($arr['sec']*100000 + $arr['usec']/10) & 0x7FFFFFFF) | 0x80000000);
	}


	public static function getBdsToken($src, $key, $srcex, &$dst) {
        //check to be encrypt src type is string
        if ( !(is_string($src)&&is_string($key)) ){
            $dst = sprintf("the fisrt two args should be string type:%d,%d!",
                    intval(is_string($src)),intval(is_string($key)));
            return false;
        }    
        //check src string and key 
        if ( '\0'==$src[0] || '\0'==$key[0]){
            $dst = "first or second arg len is 0 ";
            return false;
        }    
        $tmp = $src.$key;
        if (null != $srcex){
            if (!is_string($srcex)){
                $dst = "third arg should be string type";
                return false;
            }    
            $tmp = $tmp.$srcex;
        }    
        $dst = md5($tmp);
        return true;
    }

	public static function checkBdsToken($token, $src, $key, $srcex) {
        //check to be encrypt src type is string
        if ( !(is_string($src)&&is_string($key)&&is_string($token)) ){
            $error = sprintf("the fisrt three args should be string type:%d,%d,%d!",
                    intval(is_string($token)),intval(is_string($src)),intval(is_string($key)));
            return $error;
        }
        
        $tmp = $src.$key;
        if (null != $srcex){
            if (!is_string($srcex)){
                $error= "fouth arg should be string type!";
                return $error;
            }
            $tmp = $tmp.$srcex;
        }

        $dst = md5($tmp);

        if ( 0==strncmp($token, $dst, strlen($dst)) && strlen($dst)==strlen($token) ){
            return true;
        }

        $error = sprintf("bdstoken cmp error:right bdstoken is %s!", $dst);
        return $error;
    }

	public static function decodeBduss($strSessionId) {
		if (is_null($strSessionId)) {
			return false;
		}
		//get mod & key
        $strKeyChar = array();
        $intMod = 0;
        $len = strlen($strSessionId);
        for ($i = 0 ; $i < $len ; $i++) {
            $intMod += ord($strSessionId[$i]) + $i;
        }
        $intMod = $intMod % 2 + 1;
        $strKeyChar[0] = $strSessionId[$len - 2];
        $strKeyChar[1] = $strSessionId[$len - 1];
        //decrypt cookie
        for ($i = $len - $intMod ; $i >= 0 ; $i--) {
            $strSessionId[$i + $intMod] = $strSessionId[$i];
        }
        if ($intMod == 1) {
            $strSessionId[0] = $strKeyChar[1];
        }else if ($intMod == 2) {
            $strSessionId[0] = $strKeyChar[0];
            $strSessionId[1] = $strKeyChar[1];
        }else {
            return false;
        }
        //debase64
        $strSessionId = base64_decode(strtr($strSessionId, array('-' => '+', '~' => '/')));
		//get uid & username
		//fanmengzhe add here. But none sense.
		if (strlen($strSessionId) < 136) {
			return false;
		}
        $data = unpack('Iuid/a64un', substr($strSessionId, 68, 68));
        $arrData = explode(chr(0), $data['un']);
        $data['un'] = $arrData[0];
        return $data;
	}

	public static function int2ip($num) {   
        $tmp = (double)$num;
        return sprintf('%u.%u.%u.%u', $tmp & 0xFF, (($tmp >> 8) & 0xFF),
            (($tmp >> 16) & 0xFF), (($tmp >> 24) & 0xFF)); 
    }

    public static function ip2int($ip) {
        $n = ip2long($ip);

        /** convert to network order */
        $n = (($n & 0xFF) << 24)
            | ((($n >> 8) & 0xFF) << 16)
            | ((($n >> 16) & 0xFF) << 8)
            | (($n >> 24) & 0xFF);
		
		return $n < (1 << 31) ? $n : $n - (1 << 32);
    }

}




/* vim: set expandtab ts=4 sw=4 sts=4 tw=100 */
?>
