<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file TextNorm.php
 * @brief 
 *  
 **/

require_once(dirname(__FILE__)."/ArchBase.php");
class Ak_Service_TextNorm extends Ak_Service_ArchBase {

    protected function _output_converter($output) {
        return $output;
    }
}

/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>