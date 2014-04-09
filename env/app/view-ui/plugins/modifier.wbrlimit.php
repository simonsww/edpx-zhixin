<?php

/* * *****************************************************************************
 *
 * Copyright (c) 2013 Baidu.com, Inc. All Rights Reserved
 * 
 * **************************************************************************** */

/**
 *
 *
 * @file modifier.wbrlimit.php
 * @package plugins
 * @author lanrui@baidu.com
 * @date 2013-01-05 20:16
 */
function smarty_modifier_wbrlimit($string, $mb_len) {
    //return $string;
    $logArr['smarty_modifier'] = "modifier_wbrlimit";
    $status = 0;
    $logArr['string'] = $string;
    $logArr['len'] = $mb_len;

    if (strlen($string) == 0) {
        $result = $string;
        return $result;
    }

    $cur_pos = 0;
    $cur_mb_len = 0;
    $result = "";
    $flag = 0;
    $string_len = strlen($string);
    while ($cur_pos < $string_len) {
        $start = strpos($string, 1, $cur_pos);
        if ($start !== false) {
            $substring = mb_substr($string, $cur_pos, $start - $cur_pos);

            if (($cur_mb_len + mb_strlen($substring)) < $mb_len) {
                $cur_mb_len = $cur_mb_len + mb_strlen($substring);
                $result = $result . $substring;
                $cur_pos = $start + 1;
            } elseif (mb_strlen($substring) >= $mb_len) {//in case a single word is longer than a line's length
                $cur_mb_len = 0;
                $cur_pos = $start + 1;

                $result = $result . $substring . "<wbr>";
            } else {
                $result = $result . "<wbr>";

                $cur_mb_len = 0;
            }
        } else {
            $logArr['result'] = $result;
            CLog::debug("wbrlimit succeed", $status, $logArr, 1);
            break;
        }
    }
    return $result;
}

?>
