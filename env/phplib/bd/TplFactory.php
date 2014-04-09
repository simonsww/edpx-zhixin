<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/



/**
 * @file TplFactory.php
 * @author zhangdongjin(zhangdongjin@baidu.com)
 * @date 2011/11/23 11:06:47
 * @brief 
 *  
 **/

class Bd_TplFactory
{
    private static $arrConf = null;
    private static $isInit = false;
    /*
     * 本数组自动生成，方法参见文件末尾的注释。
     * */
    private static $smartyClassMap = array (
        'Smarty' => 'php/phplib/ext/smarty/Smarty.class.php',
        'Smarty_CacheResource' => 'php/phplib/ext/smarty/sysplugins/smarty_cacheresource.php',
        'Smarty_CacheResource_Custom' => 'php/phplib/ext/smarty/sysplugins/smarty_cacheresource_custom.php',
        'Smarty_CacheResource_KeyValueStore' => 'php/phplib/ext/smarty/sysplugins/smarty_cacheresource_keyvaluestore.php',
        'Smarty_Config_Source' => 'php/phplib/ext/smarty/sysplugins/smarty_config_source.php',
        'Smarty_Internal_CacheResource_File' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_cacheresource_file.php',
        'Smarty_Internal_Compile_Append' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_append.php',
        'Smarty_Internal_Compile_Assign' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_assign.php',
        'Smarty_Internal_Compile_Block' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_block.php',
        'Smarty_Internal_Compile_Blockclose' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_block.php',
        'Smarty_Internal_Compile_Break' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_break.php',
        'Smarty_Internal_Compile_Call' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_call.php',
        'Smarty_Internal_Compile_Capture' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_capture.php',
        'Smarty_Internal_Compile_CaptureClose' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_capture.php',
        'Smarty_Internal_Compile_Config_Load' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_config_load.php',
        'Smarty_Internal_Compile_Continue' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_continue.php',
        'Smarty_Internal_Compile_Debug' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_debug.php',
        'Smarty_Internal_Compile_Eval' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_eval.php',
        'Smarty_Internal_Compile_Extends' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_extends.php',
        'Smarty_Internal_Compile_For' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_for.php',
        'Smarty_Internal_Compile_Forelse' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_for.php',
        'Smarty_Internal_Compile_Forclose' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_for.php',
        'Smarty_Internal_Compile_Foreach' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_foreach.php',
        'Smarty_Internal_Compile_Foreachelse' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_foreach.php',
        'Smarty_Internal_Compile_Foreachclose' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_foreach.php',
        'Smarty_Internal_Compile_Function' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_function.php',
        'Smarty_Internal_Compile_Functionclose' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_function.php',
        'Smarty_Internal_Compile_If' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_if.php',
        'Smarty_Internal_Compile_Else' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_if.php',
        'Smarty_Internal_Compile_Elseif' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_if.php',
        'Smarty_Internal_Compile_Ifclose' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_if.php',
        'Smarty_Internal_Compile_Include' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_include.php',
        'Smarty_Internal_Compile_Include_Php' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_include_php.php',
        'Smarty_Internal_Compile_Insert' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_insert.php',
        'Smarty_Internal_Compile_Ldelim' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_ldelim.php',
        'Smarty_Internal_Compile_Nocache' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_nocache.php',
        'Smarty_Internal_Compile_Nocacheclose' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_nocache.php',
        'Smarty_Internal_Compile_Private_Block_Plugin' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_private_block_plugin.php',
        'Smarty_Internal_Compile_Private_Function_Plugin' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_private_function_plugin.php',
        'Smarty_Internal_Compile_Private_Modifier' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_private_modifier.php',
        'Smarty_Internal_Compile_Private_Object_Block_Function' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_private_object_block_function.php',
        'Smarty_Internal_Compile_Private_Object_Function' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_private_object_function.php',
        'Smarty_Internal_Compile_Private_Print_Expression' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_private_print_expression.php',
        'Smarty_Internal_Compile_Private_Registered_Block' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_private_registered_block.php',
        'Smarty_Internal_Compile_Private_Registered_Function' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_private_registered_function.php',
        'Smarty_Internal_Compile_Private_Special_Variable' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_private_special_variable.php',
        'Smarty_Internal_Compile_Rdelim' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_rdelim.php',
        'Smarty_Internal_Compile_Section' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_section.php',
        'Smarty_Internal_Compile_Sectionelse' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_section.php',
        'Smarty_Internal_Compile_Sectionclose' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_section.php',
        'Smarty_Internal_Compile_Setfilter' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_setfilter.php',
        'Smarty_Internal_Compile_Setfilterclose' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_setfilter.php',
        'Smarty_Internal_Compile_While' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_while.php',
        'Smarty_Internal_Compile_Whileclose' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compile_while.php',
        'Smarty_Internal_CompileBase' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_compilebase.php',
        'Smarty_Internal_Config' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_config.php',
        'Smarty_Internal_Config_File_Compiler' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_config_file_compiler.php',
        'Smarty_Internal_Configfilelexer' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_configfilelexer.php',
        'Smarty_Internal_Configfileparser' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_configfileparser.php',
        'Smarty_Internal_Data' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_data.php',
        'Smarty_Internal_Debug' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_debug.php',
        'Smarty_Internal_Filter_Handler' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_filter_handler.php',
        'Smarty_Internal_Function_Call_Handler' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_function_call_handler.php',
        'Smarty_Internal_Get_Include_Path' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_get_include_path.php',
        'Smarty_Internal_Nocache_Insert' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_nocache_insert.php',
        'Smarty_Internal_Resource_Eval' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_resource_eval.php',
        'Smarty_Internal_Resource_Extends' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_resource_extends.php',
        'Smarty_Internal_Resource_File' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_resource_file.php',
        'Smarty_Internal_Resource_PHP' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_resource_php.php',
        'Smarty_Internal_Resource_Registered' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_resource_registered.php',
        'Smarty_Internal_Resource_Stream' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_resource_stream.php',
        'Smarty_Internal_Resource_String' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_resource_string.php',
        'Smarty_Internal_SmartyTemplateCompiler' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_smartytemplatecompiler.php',
        'Smarty_Internal_Template' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_template.php',
        'Smarty_Internal_TemplateBase' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_templatebase.php',
        'Smarty_Internal_TemplateCompilerBase' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_templatecompilerbase.php',
        'Smarty_Internal_Templatelexer' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_templatelexer.php',
        'Smarty_Internal_Templateparser' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_templateparser.php',
        'Smarty_Internal_Utility' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_utility.php',
        'Smarty_Internal_Write_File' => 'php/phplib/ext/smarty/sysplugins/smarty_internal_write_file.php',
        'Smarty_Resource' => 'php/phplib/ext/smarty/sysplugins/smarty_resource.php',
        'Smarty_Resource_Custom' => 'php/phplib/ext/smarty/sysplugins/smarty_resource_custom.php',
        'Smarty_Resource_Recompiled' => 'php/phplib/ext/smarty/sysplugins/smarty_resource_recompiled.php',
        'Smarty_Resource_Uncompiled' => 'php/phplib/ext/smarty/sysplugins/smarty_resource_uncompiled.php',
        'Smarty_Security' => 'php/phplib/ext/smarty/sysplugins/smarty_security.php',
    );

	private $_objSmarty = null;
	private $_data = null;

	private function __construct(Smarty $objSmarty){
		$this->_objSmarty = $objSmarty;
	}

	public function __call($name, $arguments){
		if($name == "display"){
			header('Content-Type: text/plain');
			var_export($this->_objSmarty->tpl_vars);
		}else{
			return call_user_func_array(array($this->_objSmarty, $name), $arguments);
		}
	}
	private static function isInternalIp($ip){
		if(is_array(self::$arrConf) && isset(self::$arrConf['ip_preg'])){
			$preg = self::$arrConf['ip_preg'];
		}else{
			$preg = '/(?:0\:)+1|127\.0\.0\.1|10\..+|172\.(?:1[6789]|2.|30|31)\..+|192\.168\..+/';
		}
		if(preg_match($preg, $ip)){
			return true;
		}
		return false;
	}
    /*
     * 根据参数生成并初始化smarty对象
     *
     * @param $param
     *      array: 根据array进行初始化操作
     *      null: 取第一组配置进行初始化操作
     *      string: 取param指定的配置组进行初始化操作
     *
     * @note: 本函数并非单例模式，每次都会new一个
     * */
    public static function getInstance($param = null)
    {
        // 初始化Smarty自动加载
        if(!self::$isInit)
        {
            Bd_Autoloader::addClassMap(self::$smartyClassMap);
            self::$isInit = true;
        }

        // 从配置中读取参数
        if(!is_array($param))
        {
            // 加载配置
            if(empty(self::$arrConf))
            {
                self::$arrConf = Bd_Conf::getConf('/smarty/');
                if(empty(self::$arrConf))
                {
                    self::$arrConf = null;
                    return null;
                }
            }

            // 取指定的配置组
            if($param != null)
            {
                $param = self::$arrConf[$param];
                // 不存在则出错
                if(!$param)
                {
                    return null;
                }
            }
            // 取第一组配置
            else
            {
                $param = current(self::$arrConf);
            }
        }

        // new一个smarty
        $smarty = new Smarty();

        // 根据参数初始化该smarty对象
        $smarty->setTemplateDir(self::__absPath($param['template_dir']));
        $smarty->setCompileDir(self::__absPath($param['compile_dir']));
        $smarty->setCompileCheck($param['compile_check'] != '0');
        $smarty->setConfigDir(self::__absPath($param['config_dir']));
        if(!empty($param['config_load']))
        {
            $smarty->configLoad($param['config_load']);
        }
        $smarty->addPluginsDir(self::__absPath($param['plugins_dir']));
        $smarty->left_delimiter = $param['left_delimiter'];
        $smarty->right_delimiter = $param['right_delimiter'];

		if(isset($_COOKIE['FIS_DEBUG']) && $_COOKIE['FIS_DEBUG'] === 'YlwtSmt' && self::isInternalIp(Bd_Ip::getClientIp())){
			return new Bd_TplFactory($smarty);
		}

        return $smarty;
    }

    /*
     * 相对路径转换为绝对路径
     * */
    private static function __absPath($path)
    {
        if($path{0} == '/')
        {
            return $path;
        }
        return ROOT_PATH."/$path";
    }
}

/*

    类映射表的生成方法：
    1、在ODP根目录下，调用classmapper工具扫描"php/phplib/ext/smarty/"目录，获得初始映射表
    2、将Smarty.class.php中的smartyAutoload()函数稍加改造，用于判断一个类是否需要自动加载
    3、使用改造过的smartyAutoload()过滤初始映射表获得真正需要自动加载的类映射表
    4、在映射表手动添加Smarty类自身的映射

    第3步的示例：
    function smartyAutoload($class)
    {
        $_class = strtolower($class);
        $_classes = array(
            'smarty_config_source' => true,
            'smarty_config_compiled' => true,
            'smarty_security' => true,
            'smarty_cacheresource' => true,
            'smarty_cacheresource_custom' => true,
            'smarty_cacheresource_keyvaluestore' => true,
            'smarty_resource' => true,
            'smarty_resource_custom' => true,
            'smarty_resource_uncompiled' => true,
            'smarty_resource_recompiled' => true,
        );

        if (!strncmp($_class, 'smarty_internal_', 16) || isset($_classes[$_class])) {
            return true;
        }
        return false;
    }
foreach($arr as $class => $file)
{
    if(smartyAutoload($class))
    {
        $arr2[$class] = $file;
    }
}

var_export($arr2);
 */

?>
