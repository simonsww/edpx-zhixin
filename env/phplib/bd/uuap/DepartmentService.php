<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 *      
 **************************************************************************/



/**
 * @file DepartmentService.php
 * @author chenyijie(chenyijie@baidu.com)
 * @date 2012/08/03 14:37:36
 * @brief 此类封装了UUAP UIC服务中和DepartmentService相关的接口 
 *  
 **/
class Bd_Uuap_DepartmentService extends Bd_Uuap_Base {
    
    private static $webServiceName = 'DepartmentService';

    /********************* For Department Service ********************/

    /****************************************************************
     *      #函数返回值数据类型说明                                 *
     *      #1. DepartmentDTO数据对象                               *
     *          array(                                              *
     *              Number id - 部门ID                              *
     *              String code - 部门编码                          *
     *              String name - 部门名称                          *
     *              String type - 部门类型                          *
     *              String parentName - 父部门名称                  *
     *              String abbreviation - 部门名称英文缩写          *
     *              Number directorId - 部门主管ID                  *
     *              String directorName - 部门主管姓名              *
     *              String directorUsername - 部门主管账户          *
     *              String directorEmail - 部门主管邮箱             *
     *              String englishName - 部门英文名称               *
     *              Number hrbpId - 部门HR ID                       *
     *              String hrbpName - 部门HR 姓名                   *
     *              String hrbpUsername - 部门HR账户                *
     *              String hrbpEmail -  部门HR邮箱                  *
     *          )                                                   *
     *      #2. UserDTO数据对象参照Bd_Uuap_UserService中的说明      *
     ****************************************************************/

    /* 1
     *@brief  根据部门ID获取一个部门的信息
     *input   int $departmentId - 部门的ID
     *@return success  DepartmentDTO数据对象 若ID不存在则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、Web Service接口调用失败             错误码：3
     *                           4、SoapClient实例初始化失败            错误码：5
     */   
    public static function getDepartmentById($departmentId)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($departmentId);
        return parent::_call('getDepartmentById', self::$webServiceName, $filter, $parameter);
    }

    /* 2
     *@brief  根据部门Code获取一个部门的信息
     *input   string $departmentCode - 部门Code
     *@return success  DepartmentDTO数据对象 若Code不存在则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、Web Service接口调用失败             错误码：3
     *                           4、SoapClient实例初始化失败            错误码：5
     */   
    public static function getDepartmentByCode($departmentCode)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
        );
        $parameter = array($departmentCode);
        return parent::_call('getDepartmentByCode', self::$webServiceName, $filter, $parameter);      
    }

    /* 3
     *@brief  根据部门名称模糊查询部门的信息
     *input   string $blurName - 部门的名称
     *@return success  DepartmentDTO数据对象或对象数组 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：5
     */   
    public static function getAllDepartmentsByBlurName($blurName)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
        );
        $parameter = array($blurName);
        return parent::_call('getAllDepartmentsByBlurName', self::$webServiceName, $filter, $parameter);      
    }

    /* 4
     *@brief  根据部门类型查询部门信息 
     *input   string $departmentType - 部门类型字符串，可选值为"研发类","管理类","服务类","销售类"
     *@return success  DepartmentDTO数据对象或对象数组 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：5
     */   
    public static function getAllDepartmentsByType($departmentType)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
        );
        $parameter = array($departmentType);
        return parent::_call('getAllDepartmentsByType', self::$webServiceName, $filter, $parameter); 
    }

     /* 5
     *@brief  根据部门Code获取该部门下的所有用户信息
     *input   string $departmentCode - 部门Code
     *@return success  UserDTO对象数组 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：5
     */   
    public static function getAllUsersByDepartmentCode($departmentCode)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
        );
        $parameter = array($departmentCode);
        return parent::_call('getAllUsersByDepartmentCode', self::$webServiceName, $filter, $parameter);
    }

     /* 6
     *@brief  根据部门ID获取该部门下的所有用户信息
     *input   int $departmentId - 部门ID
     *@return success  UserDTO对象数组 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：5
     */   
    public static function getAllUsersByDepartmentId($departmentId)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($departmentId);
        return parent::_call('getAllUsersByDepartmentId', self::$webServiceName, $filter, $parameter);
    }

     /* 7
     *@brief  根据部门ID查询指定部门内级别最高的用户信息
     *input   int $departmentId - 部门ID
     *@return success  UserDTO对象数组 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：5
     */   
    public static function getAllTopGradeUsersInDepartment($departmentId)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($departmentId);
        return parent::_call('getAllTopGradeUsersInDepartment', self::$webServiceName, $filter, $parameter);      
 
    }
    
     /* 8
     *@brief  根据部门部门ID和等级获取部门中指定等级的用户信息
     *input   int $departmentId - 部门ID
     *        int $grade - 员工等级
     *@return success  UserDTO对象数组 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：5
     */   
    public static function getAllUsersByDepartmentIdAndGrade($departmentId, $grade)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($departmentId, $grade);
        return parent::_call('getAllUsersByDepartmentIdAndGrade', self::$webServiceName, $filter, $parameter);      
 
    }
    
    /* 9
     *@brief  根据部门ID获取级别高于指定等级的用户信息
     *input   int $departmentId - 部门ID
     *        int $grade - 员工等级
     *@return success  UserDTO对象数组 若参数为空，grade < 0或部门ID不存在则返回空列表
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：5
     */   
    public static function getAllUsersAboveGradeInDepartment($departmentId, $grade)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($departmentId, $grade);
        return parent::_call('getAllUsersAboveGradeInDepartment', self::$webServiceName, $filter, $parameter);      
 
    }
}
?>
