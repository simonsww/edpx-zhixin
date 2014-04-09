<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file Action.php
 * @author luhaixia(com@baidu.com)
 * @date 2011/09/19 17:57:27
 * @brief 
 *  
 **/
class Saf_Api_Base_Action extends Ap_Action_Abstract {

    protected $strFromApi;
    protected $strEncode;
    const ENCODE_UTF8 = 'utf-8';
    const ENCODE_GBK  = 'gbk';

    public function execute() {
        $arrRequest = Saf_SmartMain::getCgi();
        $this->strFromApi = isset($arrRequest['get']['fromapi']) ? $arrRequest['get']['fromapi'] : 0;
        $intLogId = $arrRequest['request_param']['logid'];

        $arrRes = $this->__execute();

        if (!$this->strFromApi) {
            $this->__render($arrRes);
        } else {
            $this->__value($arrRes);
        }
    }

    public function __execute() {
    }

    public function __render($arrRes) {
    }

    public function __value($arrRes) {
    }
}

/* vim: set ts=4 sw=4 sts=4 tw=100 */
