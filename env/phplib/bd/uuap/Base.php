<?php
/***************************************************************************
 * 
 * Copyright (c) 2012 Baidu.com, Inc. All Rights Reserved
 *      
 **************************************************************************/



/**
 * @file Base.php
 * @author chenyijie(chenyijie@baidu.com)
 * @date 2012/08/03 14:35:36
 * @brief UUAP UIC服务接口封装类的基类
 *        封装了读取配置、初始化SoapClient对象、参数校验的公共逻辑 
 *  
 **/
class Bd_Uuap_Base{
 
    private static $arrConf = null;               //用于存取配置 
    private static $soapClientInitPreLink = null; //用于存取拼装好的SoapClient初始化连接前缀
    private static $webServiceName = null;        //用于存取当前使用的Web Service名字
    private static $soapClient = null;            //用于存储SoapClient对象
    
    public static $errCode = 0;
    
    //错误码
    const SOAP_CLIENT_FOR_VERSION_SERVICE_CREATE_FAILED    = 11;
    const GET_CONFIG_FAILED                                = 1;
    const PARAMETER_FILTER_FAILED                          = 2;
    const WEB_SERVICE_INTERFACE_CALL_FAILED                = 3;
    const SOAP_CLIENT_FOR_COMPANY_SERVICE_CREATE_FAILED    = 4;
    const SOAP_CLIENT_FOR_DEPARTMENT_SERVICE_CREATE_FAILED = 5;
    const SOAP_CLIENT_FOR_EMAILGROUP_SERVICE_CREATE_FAILED = 6;
    const SOAP_CLIENT_FOR_POSITION_SERVICE_CREATE_FAILED   = 7;
    const SOAP_CLIENT_FOR_PRODUCT_SERVICE_CREATE_FAILED    = 8;
    const SOAP_CLIENT_FOR_USER_SERVICE_CREATE_FAILED       = 9;
    
    //参数过滤类型
    const PARAMETER_FILTER_INTEGER = 'int';
    const PARAMETER_FILTER_STRING  = 'string';
    const PARAMETER_FILTER_ARRAY   = 'array';
    
    //不同Web Service初始化失败错误码对应数组
    private static $errCodeArr = array(
        'CompanyService'    => self::SOAP_CLIENT_FOR_COMPANY_SERVICE_CREATE_FAILED,
        'DepartmentService' => self::SOAP_CLIENT_FOR_DEPARTMENT_SERVICE_CREATE_FAILED,
        'PositionService'   => self::SOAP_CLIENT_FOR_POSITION_SERVICE_CREATE_FAILED,
        'UserService'       => self::SOAP_CLIENT_FOR_USER_SERVICE_CREATE_FAILED,
        'ProductService'    => self::SOAP_CLIENT_FOR_PRODUCT_SERVICE_CREATE_FAILED,
        'EmailgroupService' => self::SOAP_CLIENT_FOR_EMAILGROUP_SERVICE_CREATE_FAILED,
    );
    
    /*     
     *@brief  读取ral/services/uuap.conf配置文件的信息
     *@input  uuap.conf
     *@return success  true  self::$arrConf self::$soapClientInitPreLink均有相应的内容
     *        failed   false
     */
    protected static function getConf()
    {   
        //从ral/services/uuap.conf中读取UUAP UIC的链接字符串与端口
        if(empty(self::$arrConf))
        {
            self::$arrConf = Bd_Conf::getConf('ral/services/uuap/CamelConfig/ServiceConfig/Local/Service');
            if(self::$arrConf === false)
            {
                Bd_Log::warning('Get configure from ral/services/uuap.conf failed', 
                    self::GET_CONFIG_FAILED, null);
                self::$arrConf = null;
                self::$errCode = self::GET_CONFIG_FAILED;
                return false;
            }
            //裁剪掉关于SSO服务的配置
            foreach(self::$arrConf as $index)
            {
                if($index['Name'] === 'uuapUIC')
                {
                    self::$arrConf = $index;
                }
            }
            self::$soapClientInitPreLink = 'http://' . self::$arrConf['Server'][0]['Hostname']
                . ':' . self::$arrConf['DefaultPort'] . '/webservice/';      
        }
        return true;
    }

    /*     
     *@brief  根据 $webServiceName 以及 $soapClientInitPreLink 初始化SoapClient对象
     *@input  $webServiceName-UIC服务不同Web Service的名字
     *@return success  $soapClient对象实例
     *        failed   false
     */
    protected static function getSoapClientInstance($webServiceName)
    {
        $confState = false;
        if(empty($soapClientInitPreLink))
        {
            $confState = self::getConf();
        }
        if($confState === false)
        {
            self::$soapClient = null;
            return false;
        }
        if(self::$webServiceName !== $webServiceName)
        {
            $initLink = self::$soapClientInitPreLink . $webServiceName . 'N?wsdl';
            //在进行SoapClient初始化之前先验证$initLink指定的网络地址是否可交互
            //通过这种方式来避免SoapClient初始化失败导致PHP fatal error的问题
            
            //以下代码还要多加考虑
            $handle = curl_init($initLink);
            curl_setopt($handle,  CURLOPT_RETURNTRANSFER, TRUE);
            $response = curl_exec($handle);
            $httpCode = curl_getinfo($handle, CURLINFO_HTTP_CODE);
            //对其他状态码的考虑？ 
            if($httpCode == 200) 
            {
                self::$soapClient = new SoapClient($initLink);
            }
            else
            {
                Bd_Log::warning('SoapClient for '.$webServiceName.' was created failed',
                    self::$errCodeArr[$webServiceName], null);
                self::$errCode = self::$errCodeArr[$webServiceName];
                self::$soapClient = null;
                return false;
            }
        }
        else
        {
            //相等的情况下，检测self::$soapClient对象的状态如果为null则进行初始化
            if(is_null(self::$soapClient))
            {
                $initLink = self::$soapClientInitPreLink . $webServiceName . 'N?wsdl';

                //以下代码还要多加考虑
                $handle = curl_init($initLink);
                curl_setopt($handle,  CURLOPT_RETURNTRANSFER, TRUE);
                $response = curl_exec($handle);
                $httpCode = curl_getinfo($handle, CURLINFO_HTTP_CODE);
                //对其他状态码的考虑？ 
                if($httpCode == 200) 
                {
                    self::$soapClient = new SoapClient($initLink);
                }
                else
                {
                    Bd_Log::warning('SoapClient for '.$webServiceName.' was created failed',
                        self::$errCodeArr[$webServiceName], null);
                    self::$errCode = self::$errCodeArr[$webServiceName];
                    self::$soapClient = null;
                    return false;
                }
            }
        }
        self::$webServiceName = $webServiceName;
        return self::$soapClient;
    }
    
    /*     
     *@brief  参数过滤函数 
     *@input  $parameter待检查的参数 $type-期望的类型
     *@return success  true  
     *        failed   false
     */
    protected static function parameterFilter($type, $parameter)
    {
        $result = false;
        switch($type)
        {
            case 'int':
                $result = is_integer($parameter);
                break;
            case 'string':
                $result = is_string($parameter);
                break;
           case 'object':
                $result = is_object($parameter);
                break;
            case 'array': 
                $result = is_array($parameter);
                break;
            case 'null':
                $result = is_null($parameter);
                break;
        }
        
        if($result === false)
        {
            Bd_Log::debug("The input parameter's type is wrrong");
        }
        return $result;
    }

    /*     
     *@brief  封装了实际的SoapClient调用远程接口的方法
     *@input  $interface-远程接口名 $webServiceName-RT
     *        $filter-参数过滤设置数组 key为期望的类型 value为待检查参数项
     *        $parameter-调用远程接口所传递的参数格式如下
     *                   array('arg0'=>参数项1,'arg1'=>参数项2，...);
     *@return success  array()-包含了远程方法返回的所有内容 或者为 null
     *        failed   false
     */
    protected static function _call($interface, $webServiceName, $filter, $param)
    {
        //如果parameterFilter()参数检查返回的结果为false则直接返回false
        $count = count($filter);
        for($i = 0; $i < $count; $i++)
        {
            if(!self::parameterFilter($filter[$i], $param[$i]))
            {
                self::$errCode = self::PARAMETER_FILTER_FAILED;
                return false;
            }
        }
        $soapClient = self::getSoapClientInstance($webServiceName);
        $result = false;
        if($soapClient !== false)
        {
            //将传入的$param装配成array('arg0'=>$param[0],'arg1'=>$param[1],...)的形式
            $parameter = array();
            for($i = 0; $i < $count; $i++)
            {
                $key = "arg$i";
                $parameter[$key] = $param[$i];
            }
 
            try{
                $result = $soapClient->$interface($parameter);
            } catch (Exception $e) {
                Bd_Log::warning($e->__toString(), self::WEB_SERVICE_INTERFACE_CALL_FAILED, null);
                self::$errCode = self::WEB_SERVICE_INTERFACE_CALL_FAILED;
                return false;
            }
        }
        else
        {
            //说明读取配置文件出错或者SoapClient对象初始化失败，具体参考errCode来确定
            return false;
        }
        //$result的结果是stdClass类型，需要转换为array类型
        //如果接口调用失败$result对应的object中是空的，没有return的属性
        //以此来判断接口调用获取数据是否成功
        $remoteReturn = $result->return;
        if(isset($remoteReturn))
        {
            if(is_object($remoteReturn))
            {
                $result = get_object_vars($result->return);
            }
            else
            {
                $count = count($remoteReturn);
                for($i = 0; $i < $count; $i++)
                {
                    $re = get_object_vars($remoteReturn[$i]);
                    $remoteReturn[$i] = $re;
                }
                $result = $remoteReturn;
            }           
        }
        else
        {
            $result = null;
        }
        return $result;
    }
        
    /*     
     *@brief  错误码获取接口,用于此类中所有方法执行返回false时的错误查询
     *@input  无
     *@return 当前的错误码$errCode
     */
    public static function getErrCode()
    {
        return self::$errCode;
    }


    //***************For Unit Test*********************
    public static function getArrConf()
    {
        return self::$arrConf;
    }
    
    public static function getSoapClientInitPreLink()
    {
        return self::$soapClientInitPreLink;
    }

    public static function setSoapClient($soapClient)
    {
        self::$soapClient = $soapClient;
    }

    public static function setWebServiceName($webServiceName)
    {
        self::$webServiceName = $webServiceName;
    }
}
?>
