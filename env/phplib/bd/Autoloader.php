<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file Autoloader.php
 * @author chenchao01(com@baidu.com)
 * @date 2011/07/26 10:52:40
 * @brief 
 *  
 **/

class Bd_Autoloader
{
    private static $arrMap = null;

    /*
     * 添加类映射表
     *
     * @note: 文件若是相对路径，则自动加上ODP根目录，即ROOT_PATH宏
     * */
    public static function addClassMap($arrMap)
    {
        if(!self::$arrMap)
        {
            self::$arrMap = $arrMap;
            spl_autoload_register(array('Bd_Autoloader', 'autoload'));
        }
        else
        {
            self::$arrMap = array_merge(self::$arrMap, $arrMap);
        }
    }

    public static function reset()
    {
        spl_autoload_unregister(array('Bd_Autoloader', 'autoload'));
        self::$arrMap = null;
    }

    public static function autoload($name)
    {
        if(isset(self::$arrMap[$name]))
        {
            $file = self::$arrMap[$name];
            if($file{0} == '/')
            {
                require_once $file;
            }
            else
            {
                require_once ROOT_PATH."/$file";
            }
        }
    }
}


?>
