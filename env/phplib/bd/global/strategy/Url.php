<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file Url.php
 * @author wangtao04@baidu.com
 * @date 2011/12/14 17:39:27
 * @brief 
 *  
 **/
class Bd_Global_Strategy_Url extends Bd_Global_Strategy_Base
{
    public function run() 
    {
        $url_locale = false;
        $validLocales = self::$_valid_locale;
        if(isset($_POST['locale'])){
            $url_locale = $_POST['locale'];
        }else if (isset($_GET['locale'])){
            $url_locale = $_GET['locale'];
        }

        if(!in_array($url_locale, $validLocales)) {
            $url_locale = false;
        }

        $cookie_locale = $_COOKIE['locale'] ? $_COOKIE['locale'] : false;
        if(!in_array($cookie_locale, $validLocales)) {
            $cookie_locale = false;
        }

        if($cookie_locale == false){
            if($url_locale == false){
                return false;
            }else{
                self::setLocale($url_locale);
                return true;
            }
        } else {
            if($url_locale == false){
                self::setLocale($cookie_locale);
                return true;
            }else{
                if($url_locale == $cookie_locale){
                    self::setLocale($cookie_locale);
                    return true;
                }else{
                    self::setLocale($url_locale);
                    return true;
                }
            }
        }

        return false;
    }
}
