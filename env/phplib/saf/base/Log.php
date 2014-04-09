<?php

/**
 * 写LOG类
 * @author cuichao02 
 * @date 2011/02/21
 */
class Saf_Base_Log{
    
    private static $arrAppUserLogConf = array();

    /**
     * 追到notice的LOG数据
     * @author cuichao02 
     * @date 2011/02/21
    **/
    public static function addLogNotice($arrArgs)
    {
        foreach ($arrArgs as $k => $v)
        {
            Bd_Log :: addNotice($k, $v);
        }
    }

    public static function notice($errno = 0, $errmsg = '')
    {
        Bd_Profiler::dumpProfInfo();
        Bd_Log::notice($errmsg, $errno);
    }
}

/* vim: set ts=4 sw=4 sts=4 tw=100 */
