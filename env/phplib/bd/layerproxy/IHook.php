<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file IHook.php
 * @author liushi(com@baidu.com)
 * @date 2011/07/05 17:08:27
 * @brief   hook类公共父类
 *          产品线可以根据需要继承该类，并实现指定方法
 *  
 **/

/**
 * @brief 
 *  layerproxy和hook的调用关系如下图：
 *
 *  层次关系：
 *    Action -> (layerproxy) -> PageService -> (layerproxy) -> DataService -> ...
 *
 *  一次调用过程（第一步是app初始化时调用一次，剩下的是一次完整调用过程）
 *                                              ======>> $conf = array(
 *               Bd_LayerProxy::init($conf)                'layerproxy' => array(
 *                             ||                                       'Action',
 *                             .                                        'Service_Page',
 *                             .                                        '([^_]+)?Service_Data',
 *        |------------------> ||                                       '([^_]+)?Dao',
 *        |                    ||                                   )
 *        |                (initHook)                             )
 *        |   $proxy = Bd_LayerProxy::getProxy('PageService');
 *        |                     |
 *        |                     |
 *        ^               (beforeCallHook)
 *        |             $proxy->method();
 *        |               (afterCallHook)
 *        |--------<------------|
 *
 *
 */
interface Bd_Layerproxy_IHook
{
    /**
        * @brief initHook 初始化hook 在new新的被调用对象之前调用，可以进行一些初始化工作
        *
        * @param $upIndex   调用者所在层次，层次根据Bd_LayerProxy::init($conf)中conf['layerproxy']指定的结构确定，和数组下表保持一致
        * @param $upName    调用者类名 用于信息输出
        * @param $lowName   被调用者类名 用于信息输出
        *
        * @return   不care返回值
     */
    public function initHook($upIndex, $upName, $lowName);

    /**
        * @brief beforeCallHook 调用每个function之前的hook阶段
        *
        * @param $upIndex   同上
        * @param $upName    同上
        * @param $lowName   同上
        * @param $method    被调用方法名
        * @param &$args     调用method方法时会传递的参数的引用，可以在内部修改
        *
        * @return 
     */
    public function beforeCallHook($upIndex, $upName, $lowName, $method, &$args);

    /**
        * @brief afterCallHook 调用每个function之后的hook阶段
        *
        * @param $upIndex   同上
        * @param $upName    同上
        * @param $lowName   同上
        * @param $method    被调用方法名
        * @param $args      调用method方法时会传递的参数的引用
        * @param &$ret      调用方法后返回的结果, 可根据需要修改
        *
        * @return 
     */
    public function afterCallHook($upIndex, $upName, $lowName, $method, $args, &$ret);
}




/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
