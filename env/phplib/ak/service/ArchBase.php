<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/



/**
 * @file ArchBase.php
 * @author liuqingjun(com@baidu.com)
 * @date 2011/07/19 18:40:06
 * @brief 
 *  
 **/


if (file_exists(dirname(__FILE__)."/../../bd/ralrpc/HttpBase.php")) {
    require_once(dirname(__FILE__)."/../../bd/ralrpc/HttpBase.php");
}
if (file_exists(dirname(__FILE__)."/../RequestId.php")) {
    require_once(dirname(__FILE__)."/../RequestId.php");
}
class Ak_Service_ArchBase extends Bd_RalRpc_HttpBase {
    protected $_version = 1;
    // Change this in subclass if the service does not have to include
    // region in pid
    protected $_pid_include_region = true;

    protected function _get_pathinfo($method, $param, $extra) {
        if ($this->_version == 2) {
            $ret = "{$this->_service}/$method";
        } else {
            $ret = 'index.php';
        }
        return $ret;
    }

    // helper functions
    protected function _get_pid() {
        $pid = array();
        if (isset($this->_extra['pid'])) {
            $pid[] = $this->_extra['pid'];
        }
        if (isset($this->_extra['app'])) {
            $pid[] = $this->_extra['app'];
        }
        if ($this->_pid_include_region && isset($this->_extra['region'])) {
            $pid[] = strtolower($this->_extra['region']);
        }
        return implode('_', $pid);
    }
    protected function _get_arch_service_name() {
        $classname = get_class($this);
        $rpos = strrpos($classname, '_');
        $service_name = substr($classname, $rpos+1);
        return $service_name;
    }

    // remember to call to parent::_extra_init or parent::_get_queryarr
    // if you need to change its behaviour
    protected function _extra_init(&$extra) {
        $this->_service = $this->_get_arch_service_name();
        $conf = Bd_Conf::getConf('/ak/default/');
        $default = $conf['default'];
        $force = $conf['force'];
        if (isset($force['pid'])) {
            $extra['pid'] = $force['pid'];
        }
        if (!isset($extra['pid'])) {
            if (isset($default['pid'])) {
                $extra['pid'] = $default['pid'];
            } else {
                $this->_add_error('pid not found in extra');
                return false;
            }
        }

        if (isset($force['tk'][$extra['pid']])) {
            $extra['tk'] = $force['tk'][$extra['pid']];
        }
        if (!isset($extra['tk']) && isset($default['tk'][$extra['pid']])) {
            $extra['tk'] = $default['tk'][$extra['pid']];
        }

        return true;
    }
    protected function _get_queryarr($method, $param, $extra) {
        $pid = $this->_get_pid();
        $tk  = $this->_extra['tk'];
        if (empty($pid)) {
            $this->_add_error("pid is empty");
            return false;
        }

        if ($this->_version == 2) {
            $ret = array(
                'pid' => $this->_extra['pid'],
                'tk' => $tk,
                'client_id' => Ak_RequestId::getClientId(),
                'req_id' => Ak_RequestId::getReqId(),
            );
            if (isset($this->_extra['app'])) {
                $ret['app'] = $this->_extra['app'];
            }
            if (isset($this->_extra['instance'])) {
                $ret['instance'] = $this->_extra['instance'];
            }
        } else {
            $ret = array(
                'service' => $this->_get_arch_service_name(),
                'pid' => $pid,
                'tk' => $tk,
                'method' => $method, /* move this to RpcService?? */
                'client_id' => Ak_RequestId::getClientId(),
                'req_id' => Ak_RequestId::getReqId(),
            );
        }

        if (isset($this->_extra['encoding'])) {
            $ret['encoding'] = $this->_extra['encoding'];
        }


        return $ret;
    }
}




/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
