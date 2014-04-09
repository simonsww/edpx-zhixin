<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 *      
 **************************************************************************/



/**
 * @file ProductService.php
 * @author chenyijie(chenyijie@baidu.com)
 * @date 2012/08/08 15:37:36
 * @brief 此类封装了UUAP UIC服务中和ProductService相关的接口  
 *  
 **/
class Bd_Uuap_ProductService extends Bd_Uuap_Base {

    private static $webServiceName = 'ProductService';

    /********************* For Product Service *************************/
    
    /********************************************************************
     *      #函数返回值数据类型说明                                     *
     *      #1. ProductDTO数据对象                                      *
     *          array(                                                  *
     *              Number id - 产品标识                                *
     *              String name - 产品名称                              *
     *              String type - 产品类型                              *
     *              String cvsPath - 产品源码CVS路径                    *
     *              Number parentId - 上级产品标识                      *
     *              String parentName - 上级产品名称                    *
     *              String parentType - 上级产品类型                    *
     *              String parentCvsPath - 上级产品CVS路径              *
     *          )                                                       *
     *      #2. ProductUserDTO数据对象  继承于UserDTO                   *    
     *          array(                                                  *
     *              Number productId - 所属产品ID                       *
     *              String productName - 所属产品名称                   *
     *              Number productRoleId - 所在产品中担任的角色ID       *
     *              String productRoleName - 所在产品中担任的角色名称   *
     *              Boolean leader - 是否为所在角色的带头人             *
     *          ）                                                      *
     *      #3. UserDTO数据对象参照Bd_Uuap_UserService中的说明          *
     ********************************************************************/  

    /* 1    
     *@brief  获取用户名对应的产品线(或模块)列表
     *input   string $userName - 用户名称
     *@return success  ProductDTO对象数组 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：8
     */   
    public static function getAllProductsByUsername($userName)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
        );
        $parameter = array($userName);
        return parent::_call('getAllProductsByUsername', self::$webServiceName, $filter, $parameter);
    }
     
    /* 2   
     *@brief  获取用户名对应的产品线列表
     *input   string $userName - 用户名称
     *@return success  ProductDTO对象数组 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：8
     */   
    public static function getAllProductlinesByUsername($userName)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
        );
        $parameter = array($userName);
        return parent::_call('getAllProductlinesByUsername', self::$webServiceName, $filter, $parameter);
    }

    /* 3    
     *@brief  根据产品线(或模块)ID获取产品信息
     *input   int $productId - 产品线(或模块)ID
     *@return success  ProductDTO数据对象 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：8
     */   
    public static function getProductById($productId)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($productId);
        return parent::_call('getProductById', self::$webServiceName, $filter, $parameter);
    }

    /* 4    
     *@brief  获取指定产品线(或模块)下所有用户信息
     *input   int $productId - 产品线(或模块)ID
     *@return success  ProductUserDTO对象数组 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：8
     */   
    public static function getAllUsersByProductId($productId)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($productId);
        return parent::_call('getAllUsersByProductId', self::$webServiceName, $filter, $parameter);
    }
 
    /* 5    
     *@brief  根据上级产品线ID(或模块)获取所有下级产品线
     *input   int $parentProductId - 上级产品线ID 
     *@return success  ProductDTO数据对象 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：8
     */   
    public static function getAllSubproductsByParentId($parentProductId)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($parentProductId);
        return parent::_call('getAllSubproductsByParentId', self::$webServiceName, $filter, $parameter);
    }
 
    /* 6    
     *@brief  根据上级主题ID获取所有下级产品线信息
     *input   int $parentTopicId - 上级主题ID 
     *@return success  DTO数据对象 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：8
     */   
    public static function getAllSubtopicsByParentId($parentTopicId)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($parentTopicId);
        return parent::_call('getAllSubtopicsByParentId', self::$webServiceName, $filter, $parameter);
    }
}

?>
