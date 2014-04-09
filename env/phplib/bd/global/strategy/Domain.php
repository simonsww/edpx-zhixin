<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file Domain.php
 * @author wangtao04@baidu.com
 * @date 2011/12/14 17:39:27
 * @brief 
 *  
 **/
class Bd_Global_Strategy_Domain extends Bd_Global_Strategy_Base
{
    public function run() 
    {
        $conf_cache = Bd_Global::getConfCache();
        $domains = $conf_cache['domains'];
        $operationDomains = $conf_cache['operation_domains'];

        $domain = strtolower($_SERVER['SERVER_NAME']);

        $filteredLocales = array();
        foreach(array($domains, $operationDomains) as $domains) {
            if ($domains) foreach($domains as $do) {
                if(false != Bd_Global::validDomain($domain, $do['domain'])) {
                    $filteredLocales[] = $do['locale'];
                }
            }
        }
        
        $locale_cnt = count($filteredLocales);
        if ($locale_cnt == 1){
            self::setLocale($filteredLocales[0]);
            return true;
        } else if ($locale_cnt>1) {
            self::$_valid_locale = $filteredLocales;
            self::setLocale($filteredLocales[0]);
            return false;
        }
        
        return false;
    }
}
