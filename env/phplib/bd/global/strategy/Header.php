<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file Header.php
 * @author wangtao04@baidu.com
 * @date 2011/12/14 17:39:27
 * @brief 
 *  
 **/
class Bd_Global_Strategy_Header extends Bd_Global_Strategy_Base
{
    public function run() 
    {
        if(empty($_SERVER['HTTP_ACCEPT_LANGUAGE'])){
            return false;
        }
        
        $accept_language = $_SERVER['HTTP_ACCEPT_LANGUAGE'];
        /**
         * eg: Accept-Language: ar-eg,zh-cn;q=0.8,zh;q=0.6,th;q=0.4,vi;q=0.2
         **/
        $langs = split(',', $accept_language);
        foreach($langs as $lang) {
            if(false != strpos($lang,';')){
                // th;q=0.4
                $tmp = split('=',$lang);
                $rate = floatval($tmp[1]);
                $tmp = split(';',$lang);
                $la = $tmp[0];
            }else{
                //ar-eg
                $rate = 1.0;
                $la = $lang;
            }
            $accept_langs[$la] = $rate;
        }
        //按照rate从大到小进行排序
        arsort($accept_langs);
        $accept_langs = array_keys($accept_langs);
        //按照rate遍历accept languages
        foreach($accept_langs as $lang) {//将接受的编码和server端可支持的locale进行对比
            foreach(self::$_valid_locale as $slocale){
                if(false !== stripos($slocale, $lang)) { //前串匹配命中
                    self::setLocale($slocale);
                    return true;
                }
            }
        }
        return false;
    }
}
