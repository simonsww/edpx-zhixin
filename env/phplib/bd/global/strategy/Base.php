<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file Base.php
 * 内部类，方法 or 成员变量，产品线请勿调用。请使用对外Bd_Global中的对外接口
 * @author wangtao04@baidu.com
 * @date 2011/12/14 17:39:27
 * @brief 
 *  
 **/
require_once(dirname(__FILE__) . '/Interface.php');
class Bd_Global_Strategy_Base extends Bd_Global_Strategy_Interface
{   
    private static $_locale = null;    
    protected static $_valid_locale;    
    
    public function __construct() 
    {
        if (empty(self::$_valid_locale)) {
            self::$_valid_locale = Bd_Global::getSupportLocale();
        }
    }
    
    public function run() 
    {
        
    }

    /**
        * @brief  设置当前识别的locale的值
        *
        * @param $locale   
        *
     */
    protected static function setLocale($locale)
    {
        self::$_locale = $locale;
    }
    
    
    public static function getLocale()
    {
        return self::$_locale;
    }
}




/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
