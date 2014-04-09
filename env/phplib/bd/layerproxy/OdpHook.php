<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file Bd_LayerProxy.php
 * @author liushi(com@baidu.com)
 * @date 2011/07/05 17:23:17
 * @brief 
 *  
 **/

/**
 * @brief 对于符合odp规范的项目，不需要实现IHook，直接继承本类就可以得到更细粒度的接口支持
 *        可以针对四层规范中任意两个层之间添加hook，一共有3*3个hook点
 */
class Bd_LayerProxy_OdpHook implements Bd_Layerproxy_IHook
{
    /**
        * @brief action_pages_init_hook   action生成page service的class之前的hook阶段
        *
        * @param $upIndex   参见Bd_Layerproxy_IHook，下同
        * @param $upName    
        * @param $lowName
        *
        * @return 
     */
    function action_pages_init_hook($upIndex, $upName, $lowName){;}
    /**
        * @brief pages_datas_init_hook  page service生成data service的class之前的hook阶段
        *
        * @param $upIndex
        * @param $upName
        * @param $lowName
        *
        * @return 
     */
    function pages_datas_init_hook($upIndex, $upName, $lowName){;}
    /**
        * @brief datas_dao_init_hook data service生成dao的class之前的hook阶段
        *
        * @param $upIndex
        * @param $upName
        * @param $lowName
        *
        * @return 
     */
    function datas_dao_init_hook($upIndex, $upName, $lowName){;}
    /**
        * @brief action_pages_before_call_hook action调用page service的某个方法前的hook阶段
        *
        * @param $upIndex
        * @param $upName
        * @param $lowName
        *
        * @return 
     */
    function action_pages_before_call_hook($upIndex, $upName, $lowName, $method, &$args ){;}
    /**
        * @brief pages_datas_before_call_hook page service调用data service的某个方法前的hook阶段
        *
        * @param $upIndex
        * @param $upName
        * @param $lowName
        *
        * @return 
     */
    function pages_datas_before_call_hook($upIndex, $upName, $lowName, $method, &$args ){;}
    /**
        * @brief datas_dao_before_call_hook data service调用dao的某个方法前的hook阶段
        *
        * @param $upIndex
        * @param $upName
        * @param $lowName
        *
        * @return 
     */
    function datas_dao_before_call_hook($upIndex, $upName, $lowName, $method, &$args ){;}
    /**
        * @brief action_pages_after_call_hook action调用page service的某个方法之后的hook阶段
        *
        * @param $upIndex
        * @param $upName
        * @param $lowName
        *
        * @return 
     */
    function action_pages_after_call_hook($upIndex, $upName, $lowName, $method, $args, &$ret ){;}
    /**
        * @brief pages_datas_after_call_hook page service调用data service的某个方法之后的hook
        *
        * @param $upIndex
        * @param $upName
        * @param $lowName
        *
        * @return 
     */
    function pages_datas_after_call_hook($upIndex, $upName, $lowName, $method, $args, &$ret){;}
    /**
        * @brief datas_dao_after_call_hook  data service调用dao的某个方法之后的hook
        *
        * @param $upIndex
        * @param $upName
        * @param $lowName
        *
        * @return 
     */
    function datas_dao_after_call_hook($upIndex, $upName, $lowName, $method, $args, &$ret){;}


    public function initHook($upIndex, $upName, $lowName)
    {
        switch ($upIndex) {
        case 0:  //action -> page_service
            $this->action_pages_init_hook($upIndex, $upName, $lowName);
            break;
        case 1: // page_service -> data_service
            $this->pages_datas_init_hook($upIndex, $upName, $lowName);
            break;
        case 2: // data_service -> dao
            $this->datas_dao_init_hook($upIndex, $upName, $lowName);
            break;
        default:
            ;
        }
    }

    public function beforeCallHook($upIndex, $upName, $lowName, $method, &$args)
    {
        switch ($upIndex) {
        case 0:  //action -> page_service
            $this->action_pages_before_call_hook($upIndex, $upName, $lowName,$method,$args);
            break;
        case 1: // page_service -> data_service
            $this->pages_datas_before_call_hook($upIndex, $upName, $lowName,$method,$args);
            break;
        case 2: // data_service -> dao
            $this->datas_dao_before_call_hook($upIndex, $upName, $lowName,$method,$args);
            break;
        default:
            ;
        }
    }

    public function afterCallHook($upIndex, $upName, $lowName, $method, $args, &$ret)
    {
        switch ($upIndex) {
        case 0:  //action -> page_service
            $this->action_pages_after_call_hook($upIndex, $upName, $lowName,$method,$args,$ret);
            break;
        case 1: // page_service -> data_service
            $this->pages_datas_after_call_hook($upIndex, $upName, $lowName,$method,$args,$ret);
            break;
        case 2: // data_service -> dao
            $this->datas_dao_after_call_hook($upIndex, $upName, $lowName,$method,$args,$ret);
            break;
        default:
            ;
        }
    }
}




/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
