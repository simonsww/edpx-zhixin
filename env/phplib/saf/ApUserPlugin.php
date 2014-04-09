<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 * $Id$ 
 * 
 **************************************************************************/
 
 
 
/**
 * @file ApUserPlugin.php
 * @author niuyunkun(niuyunkun@baidu.com)
 * @date 2012/07/04 22:10:04
 * @version $Revision$ 
 * @brief Bootstrap的注册类
 *  
 **/
class Saf_ApUserPlugin extends Ap_Plugin_Abstract
{
    public function dispatchLoopStartup(Ap_Request_Abstract $request, Ap_Response_Abstract $response) {
        Saf_SmartMain :: adapterStart();
        $adaptInfo = Saf_SmartMain :: getAdaptInfo();
        if (!empty($adaptInfo['screenType'])) {
            $action = $request->getActionName();
            $screenType = $adaptInfo['screenType'];
            $arrConf = Bd_Conf::getAppConf('saf/controller');
            if (empty($arrConf)) {
                $arrConf = Bd_Conf::getConf('saf/controller');
            }
            if (isset($arrConf[$screenType])) {
                $request->setControllerName($arrConf[$screenType]);
                $request->setActionName(strtolower($arrConf[$screenType]).$action);
            }
        }
    }

    public function dispatchLoopShutdown(Ap_Request_Abstract $request, Ap_Response_Abstract $response) {
        Saf_SmartMain :: adapterEnd();
    }
}

/* vim: set ts=4 sw=4 sts=4 tw=100 */
