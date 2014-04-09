<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 *      
 **************************************************************************/



/**
 * @file EmailgroupService.php
 * @author chenyijie(chenyijie@baidu.com)
 * @date 2012/08/08 15:37:36
 * @brief 此类封装了UUAP UIC服务中和EmailgroupService相关的接口  
 *  
 **/
class Bd_Uuap_EmailgroupService extends Bd_Uuap_Base {

    private static $webServiceName = 'EmailgroupService';

    /********************* For Emailgroup Service ********************/
    
    /****************************************************************
     *      #函数返回值数据类型说明                                 *
     *      #1. EmailgroupDTO数据对象                               *
     *          array(                                              *
     *              Number id - 邮件组ID.                           *
     *              String email - 邮件组邮箱.                      *
     *              String name - 邮件组名称，一般为邮件前缀.       *
     *              String info - 邮件组描述.                       *
     *              String type - 邮件组类型.                       *
     *          )                                                   *
     *      #2. UserDTO数据对象参照Bd_Uuap_UserService中的说明      * 
     ****************************************************************/  

    /* 1    
     *@brief  根据id获取一个邮件组信息
     *input   int $emailGroupId - 邮件组ID
     *@return success  EmailgroupDTO数据对象 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：6
     */   
    public static function getEmailgroupById($emailGroupId)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($emailGroupId);
        return parent::_call('getEmailgroupById', self::$webServiceName, $filter, $parameter);
    }
     
    /* 2   
     *@brief  根据email获取一个邮件组信息
     *input   string $email - 邮件组email 
     *@return success  EmailgroupDTO数据对象 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：6
     */   
    public static function getEmailgroupByEmail($email)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
        );
        $parameter = array($email);
        return parent::_call('getEmailgroupByEmail', self::$webServiceName, $filter, $parameter);
    }

    /* 3    
     *@brief  根据邮件组的email获取其下所有用户信息
     *input   string $email - 邮件组email 
     *@return success  UserDTO对象数组 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：6
     */   
    public static function getAllUsersByEmailgroupEmail($email)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
        );
        $parameter = array($email);
        return parent::_call('getAllUsersByEmailgroupEmail', self::$webServiceName, $filter, $parameter);
    }

   
    /* 4    
     *@brief  根据用户ID获取一个用户所在的所有邮件组的信息
     *input   int $userId - User用户ID 
     *@return success  EmailgroupDTO数据对象 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：6
     */   
    public static function getAllEmailgroupsByUserId($userId)
    {
        $filter = array(
            parent::PARAMETER_FILTER_INTEGER,
        );
        $parameter = array($userId);
        return parent::_call('getAllEmailgroupsByUserId', self::$webServiceName, $filter, $parameter);
    }
 
    /* 5    
     *@brief  根据用户email获取一个用户所在的所有邮件组的信息
     *input   string $email - 用户email
     *@return success  EmailgroupDTO数据对象 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：6
     */   
    public static function getAllEmailgroupsByUserEmail($email)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
        );
        $parameter = array($email);
        return parent::_call('getAllEmailgroupsByUserEmail', self::$webServiceName, $filter, $parameter);
    }
 
    /* 6    
     *@brief   根据用户名获取一个用户所在的邮件组信息
     *input    string $userName - 用户名 
     *@return success  EmailgroupDTO数据对象 若无匹配则返回null
     *        failed   false（具体情况请参考 Bd_Uuap_Base::getErrCode() 返回的错误码）
     *                 四种情况：1、ral/services/uuap.conf文件配置错误  错误码：1
     *                           2、参数类型校验错误                    错误码：2
     *                           3、web service接口调用失败             错误码：3
     *                           4、soapclient实例初始化失败            错误码：6
     */   
    public static function getAllEmailgroupsByUserUsername($userName)
    {
        $filter = array(
            parent::PARAMETER_FILTER_STRING,
        );
        $parameter = array($userName);
        return parent::_call('getAllEmailgroupsByUserUsername', self::$webServiceName, $filter, $parameter);
    }
}
?>
