<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 * $Id$ 
 * 
 **************************************************************************/
 
 
 
/**
 * @file SampleHook.php
 * @author chenyijie(chenyijie@baidu.com)
 * @date 2012/11/29 20:42:20
 * @version $Revision$ 
 * @brief 用户自定义hook示例Sample类
 *  
 **/
class Saf_Hook_SampleHook extends Saf_Hook_BaseHook {

    public function hookStartUpHead() {
        echo "SAMPLE HOOK CLASS Saf_Hook_SampleHook hookStartUpHead function called.\n";
    }

    public function hookStartUpTail() {
        echo "SAMPLE HOOK CLASS Saf_Hook_SampleHook hookStartUpTail function called.\n";
    }

    public function hookShutDownHead() {
        echo "SAMPLE HOOK CLASS Saf_Hook_SampleHook hookShutDownHead function called.\n";
    }

    public function hookShutDownTail() {
        echo "SAMPLE HOOK CLASS Saf_Hook_SampleHook hookShutDownTail function called.\n";
    }
}


/* vim: set ts=4 sw=4 sts=4 tw=100 */
