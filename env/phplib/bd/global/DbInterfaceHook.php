<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file DbInterfaceHook.php
 * @author wangtao04@baidu.com
 * @date 2011/12/14 17:39:27
 * @brief 
 *  
 **/
class Bd_Global_DbInterfaceHook
{
    private static $_dbPreArr = array();
    
    public static function convertName($clusterName, $extra = array())
    {
        if (empty(self::$_dbPreArr)) {
            $conf = Bd_Conf::getConf('/i18n/interface/db');
            self::$_dbPreArr = $conf['pre'];
        }
        if (self::$_dbPreArr && in_array($clusterName, self::$_dbPreArr)) {
            $clusterName .= '_'. Bd_Global::getInstance();
        }
        return $clusterName;
    }
}
?>
