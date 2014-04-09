<?php
/**
* brief of AppEnv.php:
* 
* 提供APP相关的上下文信息，主要是各种路径信息
*
* @author 
* @date 2011/12/21 15:58:58
* @version $Revision: 1.1 $ 
* @todo 
*/

final class Bd_AppEnv
{
    private static $strCurrApp;
    private static $arrEnv;

    /*
     * 设置当前App，返回前一个App，不传参数时，会设为主App
     * */
    public static function setCurrApp($app = null)
    {
        $strPrevApp = self::$strCurrApp;
        self::$strCurrApp = empty($app)?MAIN_APP:$app;
        return $strPrevApp;
    }

    public static function getCurrApp()
    {
        return self::$strCurrApp;
    }

	public static function getProduct()
	{
		return PRODUCT;
	}

	public static function getSubSys()
	{
		return SUBSYS;
	}

    /*
     * 获取当前或参数指定App的上下文环境值
     *
     * 预定义列表：conf - App的配置路径，供Bd_Conf使用
     *             data - App的数据根目录
     *             code - App的代码根目录
     *             template -获取templat的根目录
     * */
    public static function getEnv($key, $app = null)
    {
        $curApp = empty($app)?self::$strCurrApp:$app;

        switch($key)
        {
        case 'conf':
            return "/app/$curApp";

        case 'data':
            return DATA_PATH."/app/$curApp";

        case 'code':
            return APP_PATH."/$curApp";

        case 'log':
            return LOG_PATH."/$curApp";

        case 'template':
			//如果template下面模块的划分和app的划分一致，则返回template/currApp目录，否则返回template的根目录
			$ret = TPL_PATH."/$curApp";
			if(is_dir($ret)){
				return $ret;
			}else{
            	return TPL_PATH;
			}

        default:
            return self::$arrEnv[$curApp][$key];
        }
    }

    /*
     * 设置当前或参数指定App的上下文环境值
     *
     * note: 仅可设置非预定义的环境值
     * */
    public static function setEnv($key, $value, $app = null)
    {
        $curApp = empty($app)?self::$strCurrApp:$app;
        self::$arrEnv[$curApp][$key] = $value;
    }
}

?>
