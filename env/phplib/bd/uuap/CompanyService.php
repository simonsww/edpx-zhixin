<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 *      
 **************************************************************************/



/**
 * @file CompanyService.php
 * @author chenyijie(chenyijie@baidu.com)
 * @date 2012/08/03 14:37:36
 * @brief 此类封装了UUAP UIC服务中和CompanyService相关的接口
 *  
 **/
class Bd_Uuap_CompanyService extends Bd_Uuap_Base {
    
    private static $webServiceName = 'CompanyService';

    /*********************** For Company Service ********************/

    /****************************************************************
     *      #函数返回值数据类型说明                                 *
     *      #1. CompanyDTO数据对象                                  *
     *          array(                                              *
     *              Number id - 公司ID                              *
     *              String code - 公司编码                          *
     *              String name - 公司名称                          *
     *          )                                                   *
     *      #2. UserDTO数据对象参照Bd_Uuap_UserService中的说明      *
     ****************************************************************/ 

    /* 1
     *@brief  根据ID获取一个公司的信息
     *@input  int $companyId - 公司的ID号
     *@return success  CompanyDTO数据对象 若ID不存在则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、Web Service接口调用失败             错误码：3
     *                           4、SoapClient实例初始化失败            错误码：4
     */   
    public static function getCompanyById($companyId)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($companyId);
        return parent::_call('getCompanyById', self::$webServiceName, $filter, $parameter);
    }

    /* 2
     *@brief  根据公司Code获取一个公司的信息
     *@input  string $companyCode - 公司Code
     *@return success  CompanyDTO数据对象 若Code不存在则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、Web Service接口调用失败             错误码：3
     *                           4、SoapClient实例初始化失败            错误码：4
     */   
    public static function getCompanyByCode($companyCode)
    {
        $filter = array(
           parent::PARAMETER_FILTER_STRING,
        );
        $parameter = array($companyCode);
        return parent::_call('getCompanyByCode', self::$webServiceName, $filter, $parameter); 
    }

    /* 3
     *@brief  根据公司名称模糊查询公司
     *@input  string $blurName - 公司名称
     *@return success  CompanyDTO数据对象或对象数组 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、Web Service接口调用失败             错误码：3
     *                           4、SoapClient实例初始化失败            错误码：4
     */   
    public static function getAllCompanysByBlurName($blurName)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
        );
        $parameter = array($blurName);
        return parent::_call('getAllCompanysByBlurName', self::$webServiceName, $filter, $parameter);
    }

    /* 4
     *@brief  根据公司Code获取公司下的所有用户信息
     *@input  string $companyCode - 公司Code
     *@return success  UserDTO对象数组 若Code不存在则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、Web Service接口调用失败             错误码：3
     *                           4、SoapClient实例初始化失败            错误码：4
     */   
    public static function getAllUsersByCompanyCode($companyCode)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
        );
        $parameter = array($companyCode);
        return parent::_call('getAllUsersByCompanyCode', self::$webServiceName, $filter, $parameter);
    }

     /* 5
     *@brief  根据公司ID获取公司下的所有用户信息
     *@input  int $companyId - 公司ID
     *@return success  UserDTO对象数组 若ID不存在则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、Web Service接口调用失败             错误码：3
     *                           4、SoapClient实例初始化失败            错误码：4
     */   
    public static function getAllUsersByCompanyId($companyId)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($companyId);
        return parent::_call('getAllUsersByCompanyId', self::$webServiceName, $filter, $parameter);
    }

     /* 6
     *@brief  根据公司公司ID和等级获取公司中指定等级的所有用户信息
     *@input  int $companyId - 公司ID 
     *        int $grade - 员工等级
     *@return success  UserDTO对象数组 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、Web Service接口调用失败             错误码：3
     *                           4、SoapClient实例初始化失败            错误码：4
     */   
    public static function getAllUsersByCompanyIdAndGrade($companyId, $grade)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($companyId, $grade);
        return parent::_call('getAllUsersByCompanyIdAndGrade', self::$webServiceName, $filter, $parameter);
    }

     /* 7
     *@brief  根据公司ID获取级别等于和高于指定等级的所有用户信息
     *@input  int $companyId - 公司ID 
     *        int $grade - 员工等级
     *@return success  UserDTO对象数组 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、Web Service接口调用失败             错误码：3
     *                           4、SoapClient实例初始化失败            错误码：4
     */   
    public static function getAllUsersAboveGradeInCompany($companyId, $grade)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($companyId, $grade);
        return parent::_call('getAllUsersAboveGradeInCompany', self::$webServiceName, $filter, $parameter);
    }

}
?>
