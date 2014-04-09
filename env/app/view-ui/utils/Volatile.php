<?php
/**
 * @ 各种时间相关、随机数相关的原生函数封装，以便页面级diff
 * @ chenjinsheng@baidu.com
 * @ 2014/03/10
 */
class Volatile {
    
    public static function date() {
        $args = func_get_args();
        return call_user_func_array('date', $args);
    }

    public static function time() {
        $args = func_get_args();
        return call_user_func_array('time', $args);
    }

    public static function microtime() {
        $args = func_get_args();
        return call_user_func_array('microtime', $args);
    }

    public static function gmdate() {
        $args = func_get_args();
        return call_user_func_array('gmdate', $args);
    }

    public static function rand() {
        $args = func_get_args();
        return call_user_func_array('rand', $args);
    }

    public static function mt_rand() {
        $args = func_get_args();
        return call_user_func_array('mt_rand', $args);
    }

    public static function gettimeofday() {
        $args = func_get_args();
        return call_user_func_array('gettimeofday', $args);
    }
};
