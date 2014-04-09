<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file 
 * @author wangtao04(com@baidu.com)
 * @date 2011/06/09 14:13:23
 * @brief 
 *  
 **/

require_once(dirname(__FILE__)."/ArchBase.php");
class Ak_Service_Confilter extends Ak_Service_ArchBase {
    protected $_pid_include_region = false;

    protected function _input_converter($method, $param, $extra) {
        if (!is_array($param)) {
            $this->_add_error("input parameter is not array!");
            return null;
        }
        if(isset($extra['region'])){
            $global_file = dirname(__FILE__)."/../../bd/Global.php";
            $conf_file   = dirname(__FILE__)."/../../bd/Conf.php";
            if(file_exists($global_file) && file_exists($conf_file)) {
                require_once($global_file);
                require_once($conf_file);
                $region  = $this->_extra['region'];
                $region_index = Bd_Global::getRegionIndex($region);
                for($i=0; $i<count($param); $i++){
                    $param[$i]['groupid'] = $region_index * 10 + $param[$i]['groupid'];
                }
            }
        }
        return array('reqs' => json_encode($param));
    }

    protected function _output_converter($output) {
        return json_decode($output, true);
    }
}

/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
