<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file base.php
 * @author liuqingjun(com@baidu.com)
 * @date 2011/03/09 11:06:14
 * @brief 
 *  
 **/

require_once(dirname(__FILE__)."/Interface.php");
abstract class Bd_RalRpc_Base implements Bd_RalRpc_Interface {
    protected $_err_msg = '';
    protected $_extra = array();
    protected $_service = '';

    protected $_options = array();

    //helper functions
    protected function _add_error($str) {
        $this->_err_msg .= $str . '; ';
    }

    public function _init($service, $extra) {
        $this->_extra = $extra;
        $this->_service = $service;

        if (!$this->_extra_init($this->_extra)) {
            $this->_add_error('extra_init failed');
            return false;
        }
        return true;
    }

    protected function _extra_init(&$extra) {
        return true;
    }

    //calling functions
    public function __call($_method, $_param) {
        $this->_err_msg = '';
        if ($_method[0] === '_') { //functions start with '_' are reserved
            $this->_add_error("functions start with '_' are reserved for internal use only");
            return null;
        }
        //get extra
        if(isset($_param[1])) {
            $extra = $_param[1] + $this->_extra;
        } else {
            $extra = $this->_extra;
        }
        //get param
        $param = @$_param[0];

        //input convert
        $input = $this->_input_convert($_method, $param, $extra);
        if($input === null) {
            $this->_add_error("error in _input_convert");
            return null;
        }

        //other flags
        $service = $this->_get_service($_method, $param, $extra);
        $method = $this->_get_method($_method, $param, $extra);
        $flag = $this->_get_flag($_method, $param, $extra);

        //real call
        $output = ral($service, $method, $input, $flag);

        //parse output
        if($output === false) { //ral error
            $errno = ral_get_errno();
            if($errno == 0) {
                //connect error
                $this->_add_error("ral connect error");
            } else {
                $this->_add_error("ral errno $errno, raw data $output");
            }
            return null;
        }

        //output convert
        $retval = $this->_output_convert($output, $extra);
        if($retval === null) {
            $this->_add_error("error in output_convert");
            return null;
        }
        return $retval;
    }

    //override this to convert the input data from user
    //to what to be passed to the backend
    protected function _input_convert($method, $param, $extra) {
        return $param;
    }

    //override this to convert the output data from the backend
    //to what to be returned to the user
    protected function _output_convert($output, $extra) {
        return $output;
    }

    //override this if you want to use service other than
    //the one specified in _service
    protected function _get_service($method, $param, $extra) {
        return $this->_service;
    }

    //override this if you want to pass a special method
    protected function _get_method($method, $param, $extra) {
        return NULL;
    }

    //override this if you want to pass a special flag
    protected function _get_flag($method, $param, $extra) {
        if (isset($this->_options['ral_flag'])) {
            return $this->_options['ral_flag'];
        } else {
            return 1;
        }
    }

    //public interface
    public function get_error() {
        return $this->_err_msg;
    }

    //setopt
    public function set_rpc_option($key, $value) {
        $this->_options[$key] = $value;
        return true;
    }
}

?>
