<?php
/**
* brief of Init.php:
*
* ODP全局初始化类。
*
*/

class Bd_Init
{
    static private $isInit = false;

    public static function init($app_name = null)
    {
        if(self::$isInit)
        {
            return false;
        }

        self::$isInit = true;

        // 初始化基础环境
        self::initBasicEnv();

        // 初始化App环境
        self::initAppEnv($app_name);

        // 初始化Ap框架
        self::initAp();

		// 初始化日志库
        self::initLog($app_name);

        // 执行产品线的auto_prepend
        self::doProductPrepend();

        return Ap_Application::app();
    }

    private static function initBasicEnv()
    {
        // 页面启动时间(us)，PHP5.4可用$_SERVER['REQUEST_TIME']
        define('REQUEST_TIME_US', intval(microtime(true)*1000000));

        // ODP预定义路径
        define('ROOT_PATH', dirname(PHP_PREFIX));
        // CONF_PATH是文件系统路径，不能传给Bd_Conf
        define('CONF_PATH', ROOT_PATH.'/conf');
        define('DATA_PATH', ROOT_PATH.'/data');
        define('BIN_PATH', ROOT_PATH.'/php/bin');
        define('LOG_PATH', ROOT_PATH.'/log');
        define('APP_PATH', ROOT_PATH.'/app');
        define('TPL_PATH', ROOT_PATH.'/template');
        define('LIB_PATH', ROOT_PATH.'/php/phplib');
        define('WEB_ROOT', ROOT_PATH.'/webroot');
        define('PHP_EXEC', BIN_PATH.'/php');

        return true;
    }

    private static function getAppName()
    {
        $app_name = null;
        // cgi
        if(PHP_SAPI != 'cli')
        {
            // /xxx/index.php
            //$script = explode('/', $_SERVER['SCRIPT_NAME']);
            //某些重写规则会导致"/xxx/index.php/"这样的SCRIPT_NAME
            $script = explode('/', rtrim($_SERVER['SCRIPT_NAME'], '/'));

            // ODP app
            if(count($script) == 3 && $script[2] == 'index.php')
            {
                $app_name = $script[1];
            }
        }
        // cli
        else
        {
            $file = $_SERVER['argv'][0];
            if($file{0} != '/')
            {
                $cwd = getcwd();
                $full_path = realpath($file);
            }
            else
            {
                $full_path = $file;
            }

            if(strpos($full_path, APP_PATH.'/') === 0)
            {
                $s = substr($full_path, strlen(APP_PATH)+1);
                if(($pos = strpos($s, '/')) > 0)
                {
                    $app_name = substr($s, 0, $pos);
                }
            }
        }

        return $app_name;
    }

    private static function initAppEnv($app_name)
    {
        // 检测当前App
        if($app_name != null || ($app_name = self::getAppName()) != null)
        {
            define('IS_ODP', true);
            define('MAIN_APP', $app_name);
        }
        else
        {
            define('IS_ODP', false);
            define('MAIN_APP', 'unknown-app');
        }

        // APP宏仅为了兼容一些老代码
        define('APP', MAIN_APP);

        // 设置当前App
        require_once LIB_PATH.'/bd/AppEnv.php';
        Bd_AppEnv::setCurrApp(MAIN_APP);

        return true;
    }

    /*
    // 初始化类自动加载
    private static function initAutoLoader()
    {
        $local_lib = Bd_AppEnv::getEnv('code').'/library';
        Ap_Loader::getInstance($local_lib, LIB_PATH);
        return true;
    }
     */

    // 初始化Ap
    private static function initAp()
    {
        // 读取App的ap框架配置
        require_once LIB_PATH.'/bd/Conf.php';
        $ap_conf = Bd_Conf::getAppConf('ap');

        // 设置代码目录，其他使用默认或配置值
        $ap_conf['directory'] = Bd_AppEnv::getEnv('code');

        // 生成ap实例
        $app = new Ap_Application(array('ap' => $ap_conf));
        return true;
    }

    // 执行产品线的auto_prepend
    private static function doProductPrepend()
    {
        if(file_exists(APP_PATH."/auto_prepend.php"))
        {
            include_once APP_PATH."/auto_prepend.php";
        }
    }

	private static function initLog()
	{
        // 初始化日志库，仅为兼容老代码
        define('CLIENT_IP', Bd_Ip::getClientIp());
		//获取userip
        define('USER_IP', Bd_Ip::getUserIp());
		//获取上一个经过的服务器
		define('FRONTEND_IP', Bd_Ip::getFrontendIp());

		Bd_Omp::initOmpLog();
		define("MODULE", APP);

		//获取LogId
		/*
		if(!defined('LOG_ID'))
		{
			Bd_Log::genLogID();
		}
		//获取Product
        if(getenv('HTTP_X_BD_PRODUCT'))
		{
			define('PRODUCT', trim(getenv('HTTP_X_BD_PRODUCT')));
		}
		else
		{
			define('PRODUCT', 'ORP');
		}
		//获取subsys
        if(getenv('HTTP_X_BD_SUBSYS'))
		{
			define('SUBSYS', trim(getenv('HTTP_X_BD_SUBSYS')));
		}
		else
		{
			define('SUBSYS', 'ORP');
		}
		define("MODULE", APP);
		*/
	}
}
