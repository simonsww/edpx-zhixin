<?php

/**
 * ClassMap
 * chenjinsheng@baidu.com
 * 初始化环境、classmap、require等
 */

class ClassMap {
	private static $isInit = false;
	private static $casClassMap = '';
	
	public static function init()
	{
		if(!self::$isInit)
		{
			self::init_env();
			self::init_classmap();
			self::$isInit = true;
		}
	}
	
	private static function init_env()
	{
        // ODP预定义路径
        define('ROOT_PATH', dirname(__FILE__).'/../../..');
        // CONF_PATH是文件系统路径，不能传给Bd_Conf
        define('CONF_PATH', ROOT_PATH.'/conf');
        define('DATA_PATH', ROOT_PATH.'/data');
        define('BIN_PATH', ROOT_PATH.'/php/bin');
        define('LOG_PATH', ROOT_PATH.'/log');
        define('APP_PATH', ROOT_PATH.'/app');
        define('TPL_PATH', ROOT_PATH.'/template');
        define('LIB_PATH', ROOT_PATH.'/php/phplib');
        define('WEB_ROOT', ROOT_PATH.'/webroot');
        define('PHP_EXEC', ROOT_PATH.'/php/bin/php');

		//VUI_APP_PATH, path for app
		define('VUI_APP_PATH' , ROOT_PATH.'/app/view-ui/');
		define('VUI_PHP_PATH' , ROOT_PATH.'/php/');
		//LOG_PATH, path for log file
		define('VUI_LOG_PATH' , LOG_PATH);
		//TEMPLATE_PATH, path for template file
		define('VUI_TEMPLATE_PATH' , TPL_PATH);
		define('VUI_TEMPLATE_PLUGIN_PATH' , VUI_APP_PATH . "/plugins");
		//TEMPLATE_PATH, path for config  file
		define('VUI_CONF_PATH' , CONF_PATH);
		
		define('SRC_AS', 2);
		define('SRC_SP', 3);
		define('SRC_ADJ', 4);
		define('SRC_PPIM', 5);
		define('SRC_NEWPP', 6);
		define('APP_ENCODING', "UTF-8");
		define('MULTI_RENDER_FAIL', 99);

		require(VUI_APP_PATH.'/libs/conf/TplConf.php');
		require(VUI_APP_PATH.'/utils/const.php');
		require(VUI_APP_PATH.'/utils/base.php');
		require(VUI_APP_PATH.'/utils/smarty_render.php');
		require(VUI_APP_PATH.'/utils/strategy.php');
		require(VUI_APP_PATH.'/libs/log/PsDisplayLog.php');
		require(LIB_PATH.'/bd/Conf.php');
	}
	
	private static function init_classmap()
	{
		$vuiClassMap = array(
				'CLog'					=> VUI_APP_PATH.'/libs/log/CLog.class.php',
				'TplLog'				=> VUI_APP_PATH.'/libs/log/TplLog.php',
				'UrlLog'				=> VUI_APP_PATH.'/libs/log/UrlLog.php',
                'PbUrlLog'              => VUI_APP_PATH.'/libs/log/PbUrlLog.php',
				'Smarty'				=> VUI_APP_PATH.'/libs/Smarty/Smarty.class.php',
				'CSmarty'				=> VUI_APP_PATH.'/utils/CSmarty.class.php',
				'StrategyEngine'		=> VUI_APP_PATH.'/strategy/StrategyEngine.php',
				'Strategy' 				=> VUI_APP_PATH.'/strategy/Strategy.php',
				'ItemTplSelector' 		=> VUI_APP_PATH.'/strategy/ItemTplSelector.php',
				'SpoAdapter' 			=> VUI_APP_PATH.'/strategy/SpoAdapter.php',
				'ItemNormalization' 	=> VUI_APP_PATH.'/strategy/ItemNormalization.php',
				'DispArchitecture' 		=> VUI_APP_PATH.'/strategy/DispArchitecture.php',
				'UrlFilter' 			=> VUI_APP_PATH.'/strategy/UrlFilter.php',
				'RequeryStrategy' 		=> VUI_APP_PATH.'/strategy/RequeryStrategy.php',
				'TemplateFilter' 		=> VUI_APP_PATH.'/strategy/TemplateFilter.php',
				'AdSecurityPlanTip' 	=> VUI_APP_PATH.'/strategy/AdSecurityPlanTip.php',
				'NewAdSecurityPlanTip' 	=> VUI_APP_PATH.'/strategy/NewAdSecurityPlanTip.php',
				'ItemTplRewrite' 		=> VUI_APP_PATH.'/strategy/ItemTplRewrite.php',
				'RightPromptStrategy' 	=> VUI_APP_PATH.'/strategy/RightPromptStrategy.php',
				'ItemDataProcessor'     => VUI_APP_PATH.'/strategy/ItemDataProcessor.php',
				'BitZone'				=> VUI_APP_PATH.'/strategy/BitZone.php',
				'ClkEncryption' 		=> VUI_APP_PATH.'/strategy/ClkEncryption.php',
				'ItemHideStrategy'      => VUI_APP_PATH.'/strategy/ItemHideStrategy.php',
				'ClickDataStrategy'     => VUI_APP_PATH.'/strategy/ClickDataStrategy.php',
				'HintFlag'              => VUI_APP_PATH.'/strategy/HintFlag.php',
                'MappingData'           => VUI_APP_PATH.'/strategy/MappingData.php',
                'ImgPreDict'            => VUI_APP_PATH.'/strategy/ImgPreDict.php',
				'Util' 					=> VUI_APP_PATH.'/utils/Util.php',
				'ErrorMsg' 				=> VUI_APP_PATH.'/utils/ErrorMsg.php',
				'IDLEntity' 			=> VUI_APP_PATH.'/utils/IDLEntity.php',
				'Csocket' 				=> VUI_APP_PATH.'/utils/Csocket.php',
				'QueryUS' 				=> VUI_APP_PATH.'/model/QueryUS.php',
				'QueryUSInfo' 			=> VUI_APP_PATH.'/model/QueryUSInfo.php',
				'TemplateSelector' 		=> VUI_APP_PATH.'/model/TemplateSelector.php',
				'TemplateSampling' 		=> VUI_APP_PATH.'/model/TemplateSampling.php',
				'ImagePredict' 		    => VUI_APP_PATH.'/model/ImagePredict.php',
				'DispGraphFilter' 		=> VUI_APP_PATH.'/strategy/DispGraphFilter.php',
				'UserAgent' 			=> VUI_APP_PATH.'/utils/UserAgent.php',
				'TemplateUaAdaptation' 	=> VUI_APP_PATH.'/model/TemplateUaAdaptation.php',
				'CssHeadJsFoot'			=> VUI_APP_PATH.'/utils/CssHeadJsFoot.php',
				'CacheBase'			    => VUI_APP_PATH.'/utils/CacheBase.php',
				'TplStyleSelect'	    => VUI_APP_PATH.'/strategy/TplStyleSelect.php',
                'ItemFoldSelect'        => VUI_APP_PATH.'/strategy/ItemFoldSelect.php',
				'ImageBase64'           => VUI_APP_PATH.'/strategy/ImageBase64.php',
				'TopPromptStrategy'     => VUI_APP_PATH.'/strategy/TopPromptStrategy.php',
				'ChunkedStrategy'     => VUI_APP_PATH.'/strategy/ChunkedStrategy.php',
				'GetDict'       => VUI_APP_PATH.'/utils/GetDict.php',
				'Cookie'       => VUI_APP_PATH.'/utils/Cookie.php',
				'ParamParser'       => VUI_APP_PATH.'/utils/ParamParser.php',
				'DispTempName2StdStg'   => VUI_APP_PATH.'/strategy/DispTempName2StdStg.php',
				'DelayStrategy'   => VUI_APP_PATH.'/strategy/DelayStrategy.php',
				'InstantSearch'   => VUI_APP_PATH.'/model/InstantSearch.php',
				'AsStructSummaryFilter' => VUI_APP_PATH.'/strategy/AsStructSummaryFilter.php',
				'TrafficFilter'           => VUI_APP_PATH.'/strategy/TrafficFilter.php',
	        	'ParaTemplateSeletor'   => VUI_APP_PATH.'/model/ParaTemplateSeletor.php',
			    'WomcEntranceFilter' => VUI_APP_PATH.'/strategy/WomcEntranceFilter.php',
                'FilterPromptStrategy.php' => VUI_APP_PATH.'/strategy/FilterPromptStrategy.php',	
                'RightPicLimit'     => VUI_APP_PATH.'/strategy/RightPicLimit.php',
				'QuerySug' => VUI_APP_PATH.'/model/QuerySug.php',
                'InputProcess'          => VUI_APP_PATH.'/io/InputProcess.php',
        );
		foreach($vuiClassMap as $class=>$file)
		{
			require ($file);
		}
	//	Bd_Autoloader::addClassMap($vuiClassMap);
	}
}
