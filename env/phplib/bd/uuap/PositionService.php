<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 *      
 **************************************************************************/



/**
 * @file PositionService.php
 * @author chenyijie(chenyijie@baidu.com)
 * @date 2012/08/08 15:37:36
 * @brief 此类封装了UUAP UIC服务中和PositionService相关的接口  
 *  
 **/
class Bd_Uuap_PositionService extends Bd_Uuap_Base {

    private static $webServiceName = 'PositionService';

    /********************* For Position Service ********************/
    
    /****************************************************************
     *      #函数返回值数据类型说明                                 *
     *      #1. PositionDTO数据对象                                 *
     *          array(                                              *
     *              Number id - 职位ID                              *
     *              String name - 职位名称                          *
     *              String fullname - 职位全称                      *
     *              Number grade - 职务级别                         *
     *              String gradeName - 职务名称                     *
     *              Number companyId - 公司ID                       *
     *              String companyCode - 公司编码                   *
     *              String companyName - 公司名称                   *
     *              Number departmentId - 部门ID                    *
     *              String departmentCode - 部门编码                *
     *              String departmentName - 部门名称                *
     *              String departmentType - 部门类型                *
     *          )                                                   *
     *      #2. UserDTO数据对象参照Bd_Uuap_UserService中的说明      * 
     ****************************************************************/  

    /* 1    
     *@brief  根据ID获取一个职位信息
     *input   int $positionId - 职位ID
     *@return success  PositionDTO数据对象 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：7
     */   
    public static function getPositionById($positionId)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($positionId);
        return parent::_call('getPositionById', self::$webServiceName, $filter, $parameter);
    }
     
    /* 2   
     *@brief  根据职位名称进行模糊查找获取相关职位信息
     *input   string $blurName - 职位名称 
     *@return success  PositionDTO数据对象 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：7
     */   
    public static function getAllPositionsByBlurName($blurName)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
        );
        $parameter = array($blurName);
        return parent::_call('getAllPositionsByBlurName', self::$webServiceName, $filter, $parameter);
    }

    /* 3    
     *@brief  根据职位全称进行模糊查找获取相关职位列表
     *input   string $blurFullname - 职位全称 
     *@return success  PositionDTO数据对象 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：7
     */   
    public static function getAllPositionsByBlurFullname($blurFullname)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
        );
        $parameter = array($blurFullname);
        return parent::_call('getAllPositionsByBlurFullname', self::$webServiceName, $filter, $parameter);
    }

    /* 4    
     *@brief  获取指定职务级别下的所有职位信息
     *input   int $grade - 职位级别
     *@return success  PositionDTO数据对象 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：7
     */   
    public static function getAllPositionsByGrade($grade)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($grade);
        return parent::_call('getAllPositionsByGrade', self::$webServiceName, $filter, $parameter);
    }
 
    /* 5    
     *@brief  获取指定职务名称下的所有的职位信息
     *input   string $gradeName - 职务名称
     *@return success  PositionDTO数据对象 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：7
     */   
    public static function getAllPositionsByGradeName($gradeName)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
        );
        $parameter = array($gradeName);
        return parent::_call('getAllPositionsByGradeName', self::$webServiceName, $filter, $parameter);
    }
 
    /* 6    
     *@brief  根据公司ID获取指定公司下的所有职位信息. 注意，当前所有职位都属于百度中国公司
     *input   int $companyId - 公司ID
     *@return success  PositionDTO数据对象 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：7
     */   
    public static function getAllPositionsByCompanyId($companyId)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($companyId);
        return parent::_call('getAllPositionsByCompanyId', self::$webServiceName, $filter, $parameter);
    }
 
    /* 7    
     *@brief  根据部门ID获取指定部门下的所有职位信息
     *input   int $departmentID - 部门ID 
     *@return success  PositionDTO数据对象 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：7
     */   
    public static function getAllPositionsByDepartmentId($departmentId)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($departmentId);
        return parent::_call('getAllPositionsByDepartmentId', self::$webServiceName, $filter, $parameter);
    }
    
    /* 8   此接口没有找到测试数据 
     *@brief  根据职位ID获取此职位下的所有用户信息. 职位是与部门公司相关联的.
     *input   int $positionId - 职位ID 
     *@return success  UserDTO数据对象 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：7
     */   
    public static function getAllUsersByPositionId($positionId)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($positionId);
        return parent::_call('getAllUsersByPositionId', self::$webServiceName, $filter, $parameter);
    }
    
}
?>
