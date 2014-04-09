<?php
/**
* brief of AppEnv.php:
* 
* 提供ODP环境相关的信息
*
* @author 
* @date 2011/12/21 15:58:58
* @version $Revision: 1.1 $ 
* @todo 
*/

final class Bd_Env
{
    public static function getLogId()
    {
        return LOG_ID;
	}

	public static function getUserIp()
	{
		return USER_IP;
	}

	public static function getFrontendIp()
	{
		return FRONTEND_IP;
	}

}
