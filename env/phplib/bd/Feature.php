<?php
/***************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 *
 **************************************************************************/



/**
 * @file Feature.php
 * @author liushi(com@baidu.com)
 * @date 2011/06/15 18:00:00
 * @brief
 *
 **/


class Bd_Feature
{
    private static $_config = null;

    /**
        * @brief all    返回所有的功能开关tags，用于返回给模板
        *
        * @return
     */
    public static function all()
    {
        if(self::$_config === null)
        {
            self::_init();
        }
        foreach(self::$_config['flags'] as $key => $value){
            $flags[$key]=self::on($key);
        }
        return $flags;
    }


    public static function on($name, $block='flags')
    {
        if(self::$_config === null)
        {
            self::_init();
        }
        $flag=self::$_config[$block][$name];
        $value=false;
        if($flag=='true'){
            $value=true;
        }elseif(is_array($flag)){
            $preg="/\+\d\d:\d\d$/";
            $start=strtotime($flag['start']);
            $end=strtotime($flag['end']);
            //包含时区信息，同时能够正确地装换成时间戳，则进入if分支
            if(false!==$start&&false!==$end&&preg_match($preg,$flag['start'])==1&&preg_match($preg,$flag['end'])==1){
                $time=gmmktime();
                if($start<$time&&$end>$time){
                    $value=true;
                }
            }else{
                Bd_Log::warning('feature config is invalid');
            }
        }
        return $value;
    }

    /* ##########################################################*/
    /**
        * @brief raw
        *
        * @param $name
        * @param $block
        *
        * @return 获取指定flag的详细信息
     */
    /* ##########################################################*/
    public static function ext($name, $block='flags')
    {
        if(self::$_config === null)
        {
            self::_init();
        }
        $flag=self::$_config[$block][$name];
        $out=array();
        if(is_array($flag)){
            $preg="/\+\d\d:\d\d$/";
            $start=strtotime($flag['start']);
            $end=strtotime($flag['end']);
            if(false!==$start&&false!==$end&&preg_match($preg,$flag['start'])==1&&preg_match($preg,$flag['end'])==1){
                $out=array(
                    'start'=>$start,
                    'end'=>$end,
                );
            }else{
                Bd_Log::warning('feature config is invalid');
            }
        }
        return $out;
    }

    public static function blocks()
    {
         if(self::$_config === null)
        {
            self::_init();
        }
        return array_keys(self::$_config);
    }

    private static function _init()
    {
        if (self::$_config == null)
        {
            self::$_config = Bd_Conf::getConf('i18n/feature/');
        }
    }

    public static function clear()
    {
        self::$_config = null;
    }

}



/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
