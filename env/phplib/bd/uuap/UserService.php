<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 *      
 **************************************************************************/



/**
 * @file UserService.php
 * @author chenyijie(chenyijie@baidu.com)
 * @date 2012/08/03 14:37:36
 * @brief 此类封装了UUAP UIC服务中和UserService相关的接口 
 *  
 **/
class Bd_Uuap_UserService extends Bd_Uuap_Base {
    
    private static $webServiceName = 'UserService'; 
    
    /************************************ For User Service Interface ******************************/

    /**********************************************************************************************
     *      #函数返回值数据类型说明                                                               *
     *      #UserDTO数据传输对象                                                                  *
     *          array(                                                                            *
     *              Number id - 用户唯一标识                                                      *
     *              String username - 用户AD登录名                                                *
     *              String name - 用户姓名                                                        *
     *              String englishName - 英文名                                                   *
     *              String sex - 用户性别                                                         *
     *              Number employeeId - 用户ERP ID                                                *
     *              String employeeNumber - 员工编号                                              *
     *              String employeeType - 员工类型                                                *
     *              String birthday - 生日，格式：yyyy-MM-dd                                      *
     *              String mobileNumber - 手机号码                                                *
     *              String phoneNumber - 分机号码                                                 *
     *              String hiNumber - Hi账号                                                      *
     *              String idCardNumber - 身份证号                                                *
     *              String email - 电子邮箱                                                       *
     *              Number positionId - 职位标识                                                  *
     *              String positionName - 职位名称                                                *
     *              Number grade - 职务级别，数字1-25                                             *
     *              String gradeName - 职务级别名称                                               *
     *              String jobDescription - 职位类型全称，例如："管理类.财务.主管.1"              *
     *              String serviceStartDate 入职时间，格式：yyyy-MM-dd                            *
     *              String serviceEndDate - 离职时间，格式：yyyy-MM-dd                            *
     *              String workStartDate - 开始工作日期. 最早参加工作日期                         *
     *                                    （不一定是在百度工作） 格式：yyyy-MM-dd                 *
     *              String regularStartDate - 正式入职日期.即实习生毕业后正式入职百度的日期，     *
     *                                        应届生毕业员 工正式计算百度司龄的起始日期以本       *
     *                                        日期为准 格式：yyyy-MM-dd                           *
     *              Number superiorId - 上级ID                                                    *
     *              String superiorUsername - 上级用户名                                          *
     *              String superiorEmail - 上级电子邮箱                                           *
     *              String superiorName - 上级姓名                                                *
     *              Number departmentId - 部门ID                                                  *
     *              String departmentCode - 部门编码                                              *
     *              String departmentName - 部门名称                                              *
     *              String departmentType - 部门类型                                              *
     *              Number companyId - 公司ID                                                     *
     *              String companyCode - 公司编码                                                 *
     *              String companyName - 公司名称                                                 *
     *          );                                                                                *
     **********************************************************************************************/ 

    /* 1
     *@brief  根据ID号来获取单个User的信息
     *input   int $id - User的ID号
     *@return success  UserDTO数据对象
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：9
     */   
    public static function getUserById($id)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($id);
        return parent::_call('getUserById', self::$webServiceName, $filter, $parameter);
    }
    
    /* 2 
     *@brief  根据User的内网账户名来获取单个User的信息
     *input   string $userName - 用户名
     *@return success  UserDTO数据对象 
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：9
     */   
    public static function getUserByUsername($userName)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
        );
        $parameter = array($userName);
        return parent::_call('getUserByUsername', self::$webServiceName, $filter, $parameter);
    }
 
    /* 3 
     *@brief  根据员工编号查询单个User的信息
     *input   int $employeeId - User的员工编号
     *@return success  UserDTO数据对象 
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：9
     */   
    public static function getUserByEmployeeId($employeeId)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($employeeId);
        return parent::_call('getUserByEmployeeId', self::$webServiceName, $filter, $parameter);
    }

    /* 4 
     *@brief  根据身份证号查询单个User的信息
     *input   string $idCardNumber - User的身份证号
     *@return success  UserDTO数据对象 
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：9
     */   
    public static function getUserByIdCardNumber($idCardNumber)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
        );
        $parameter = array($idCardNumber);
        return parent::_call('getUserByIdCardNumber', self::$webServiceName, $filter, $parameter);
    }

    /* 5 
     *@brief  根据电子邮箱查询单个User的信息
     *input   string $email - User的邮箱
     *@return success  UserDTO数据对象 
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：9
     */   
    public static function getUserByEmail($email)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
        );
        $parameter = array($email);
        return parent::_call('getUserByEmail', self::$webServiceName, $filter, $parameter);
    }

    /* 6 
     *@brief  根据输入的字符串模糊查询邮箱. 若查询字符串含有@符号则查询全邮箱，否则查询邮箱前缀
     *input   string $blurEmail - User用户邮箱部分字串
     *@return success  UserDTO对象数组
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：9
     */   
    public static function getAllUsersByBlurEmail($blurEmail)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
        );
        $parameter = array($blurEmail);
        return parent::_call('getAllUsersByBlurEmail', self::$webServiceName, $filter, $parameter);
    }
 
    /* 7
     *@brief  根据名称模糊查找用户. 模糊匹配将会返回多个用户. 注意: 当参数值为空时,将返回一个空列
     *        表而不会返回所有用户信息, 由于用户总量很大,客户端不应当通过此方法获取所有用户信息
     *input   string $blurName - User用户名
     *@return success  UserDTO对象数组
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：9
     */   
    public static function getAllUsersByBlurName($blurName)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
        );
        $parameter = array($blurName);
        return parent::_call('getAllUsersByBlurName', self::$webServiceName, $filter, $parameter);
    }   

    /* 8 
     *@brief  根据用户名获取指定用户的第deep级上级
     *input   string $userName - User用户姓名 
     *        int $deep - 深度
     *@return success  UserDTO数据对象 
     *                 若deep < 0,用户ID为空或不存在则返回空数组; deep == 0返回用户本身,deep > 0返回其deep
     *                 级上级; 若深度(deep)超出用户应有的深度,返回最高级上级;
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：9
     */   
    public static function getSuperiorByUsername($userName, $deep)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($userName,$deep);
        return parent::_call('getSuperiorByUsername', self::$webServiceName, $filter, $parameter);
    }

    /* 9 
     *@brief  根据用户ID获取指定用户的第deep级上级.
     *input   int $userId - User用户ID 
     *        int $deep - 深度
     *@return success  UserDTO数据对象 
     *                 若deep < 0,用户ID为空或不存在则返回空数组; deep == 0返回用户本身,deep > 0返回其deep
     *                 级上级; 若深度(deep)超出用户应有的深度,返回最高级上级;
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：9
     */   
    public static function getSuperiorById($userId, $deep)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($userId, $deep);
        return parent::_call('getSuperiorById', self::$webServiceName, $filter, $parameter);
    }

    /* 10 
     *@brief  根据用户ID获取指定用户本人直到第deep级上级的所有上级人员信息
     *input   int $userId - User用户ID 
     *        int $deep - 深度
     *@return success  UserDTO对象数组
     *                 若deep < 0,用户ID为空或不存在则返回空数组; deep == 0返回用户本身,deep > 0返回其deep
     *                 级上级; 若深度(deep)超出用户应有的深度,返回最高级上级;
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：9
     */   
    public static function getAllSuperiorsById($userId, $deep)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($userId, $deep);
        return parent::_call('getAllSuperiorsById', self::$webServiceName, $filter, $parameter);
    }

    /* 11 
     *@brief  根据上级人员ID获取其下deep级所有用户的信息
     *input   int $userId - User用户ID 
     *        int $deep - 深度
     *@return success  UserDTO对象数组
     *                 若deep < 0,用户ID为空或不存在则返回空数组; deep == 0返回用户本身,deep > 0返回其deep
     *                 级上级; 若深度(deep)超出用户应有的深度,返回最高级上级;
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：9
     */   
    public static function getAllUsersBySuperiorId($superiorId, $deep)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($superiorId, $deep);
        return parent::_call('getAllUsersBySuperiorId', self::$webServiceName, $filter, $parameter);
    }

    /* 12 
     *@brief  根据上级用户名获取其下deep级所有用户的信息
     *input   string $superiorUserName - User用户名 
     *        int $deep - 深度
     *@return success  UserDTO对象数组
     *                 若deep < 0,用户ID为空或不存在则返回空数组; deep == 0返回用户本身,deep > 0返回其deep
     *                 级上级; 若深度(deep)超出用户应有的深度,返回最高级上级;
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：9
     */   
    public static function getAllUsersBySuperiorUsername($superiorUserName, $deep)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($superiorUserName, $deep);
        return parent::_call('getAllUsersBySuperiorUsername', self::$webServiceName, $filter, $parameter);
    }

    /* 13 
     *@brief  根据用户联系信息搜索用户. 输出将默认按照邮箱排序. 联系信息包括
     *        登录名，邮箱，姓名，英文名，分机，手机
     *input   string $contact - User联系信息
     *@return success  UserDTO对象数组
     *                 若参数为空，空字符串或不存在匹配的用户则返回空列表; 否则返回用户列表
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：9
     */   
    public static function getAllUsersByContact($contact)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
        );
        $parameter = array($contact);
        return parent::_call('getAllUsersByContact', self::$webServiceName, $filter, $parameter);
    }

    /* 14 
     *@brief  根据联系方式模糊分页查找用户. 输出将默认按照邮箱排序. 联系信息包括登录名，邮箱，
     *        姓名，英文名，分机，手机. 此方法会根据提供的first和size参数返回[first,first+size)
     *        的记录. 注意: 当参数值为空时,将返回所有用户的第一页信息
     *input   string $contact - User联系信息 
     *        int $first - 第一条记录的位置 
     *        int $size - 从第一条记录位置开始往后取多少条
     *@return success  UserDTO对象数组
     *                 若参数为空，空字符串或不存在匹配的用户则返回空列表; 否则返回用户列表
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：9
     */   
    public static function getAllUsersByContactWithPage($contact, $first, $size)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
            parent::PARAMETER_FILTER_INTEGER,
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($contact, $first, $size);
        return parent::_call('getAllUsersByContactWithPage', self::$webServiceName, $filter, $parameter);
    }
}
?>
