<?php
    class Bd_Crypt_Ucrypt
    {
        const CKEY = 'BaiduCrypt';
        public static function & reinterpret_cast($intUserID)
		{
			$arrValue = array();
			$arrValue[] = $intUserID & 0x000000ff;
			$arrValue[] = ($intUserID & 0x0000ff00) >> 8;
			$arrValue[] = ($intUserID & 0x00ff0000) >> 16;
			$arrValue[] = ($intUserID >> 24) & 0x000000ff;
            
            return $arrValue;
        }

        static function id_encode($id, $key = CKEY)
        {
            $crypt = new Bd_Crypt_CFcrypt($key);
            return $crypt->getEncodeStrByPicId($id);
        }

        static function id_decode($string, $key = CKEY)
        {
            $id = 0;
            $crypt = new Bd_Crypt_CFcrypt($key);
            $crypt->getPicIdByEncodeStr($string, $id);
            return $id;
        }

        public static function ucrypt_encode($intUserID, $strUserName = '')
        {
            $strChars = '0123456789abcdef';
            $arrValue = self::reinterpret_cast($intUserID);

			$strCode = $strChars[$arrValue[0] >> 4] . $strChars[$arrValue[0] & 15];
			$strCode .= $strChars[$arrValue[1] >> 4] . $strChars[$arrValue[1] & 15];

			$intLen = strlen($strUserName);

			for( $i = 0; $i < $intLen; ++$i )
			{
				$intValue = ord($strUserName[$i]);
				$strCode .= $strChars[($intValue >> 4)] . $strChars[($intValue & 15)];

			}

			$strCode .= $strChars[$arrValue[2] >> 4] . $strChars[$arrValue[2] & 15];
			$strCode .= $strChars[$arrValue[3] >> 4] . $strChars[$arrValue[3] & 15];

            return $strCode;
        }

        public static function ucrypt_decode($strCode, $bolNeedUserName = false) //解密
        {
            $intLen = strlen($strCode);
            
            if( $intLen < 10 ) //错误
            {
                return false;
            }

			$intUserID = hexdec($strCode[$intLen - 2] . $strCode[$intLen - 1]);
			$intUserID = ($intUserID << 8) + hexdec($strCode[$intLen - 4] . $strCode[$intLen - 3]);
			$intUserID = ($intUserID << 8) + hexdec($strCode[2] . $strCode[3]);
			$intUserID = ($intUserID << 8) + hexdec($strCode[0] . $strCode[1]);

            if( $bolNeedUserName )   //需要解密出用户名
            {
                $intLast = $intLen - 4;
                $strUserName = '';
                for( $i = 4; $i < $intLast; $i += 2 )
                {
                    $strUserName .= chr(hexdec($strCode[$i] . $strCode[$i + 1]));
                }
				if( strlen($strUserName) > 32 || !preg_match('/^[^<>"\'\/]+$/', $strUserName) )
				{
					return false;
				}
                return array ('user_id'  =>  $intUserID,
                              'user_name'=>  $strUserName
							  );
            }
            else
            {
                return $intUserID;
            }
        }    
    }
