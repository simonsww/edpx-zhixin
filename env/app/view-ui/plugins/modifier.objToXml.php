<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file modifier.objToXml.php
 * @package plugins
 * @author fengfei02@baidu.com
 * @date 2012-10-25 10:47
 */

/**
 * @brief 支持的功能以下3中场景:
 * 场景1、object对象转为xml格式
 * 例如:
 * $user  = new User(); 
 * $user->first_name = 'first_name的值'; 
 * $user->last_name = 'last_name的值';
 * toXmlString($user, false, true);
 *
 *=============================================
 *
 * 场景2、全key-value形式数组(字典格式)转xml格式
 * 例如:
 * $a= array(
 *   'a' => 'a的值',
 *   'b' => array('b的值', 'b的值'), 
 * );
 * toXmlString($a, false, true);
 * 
 * ============================================
 * 
 * 场景3、非全key-value形式数组(支持非key一维数组,不支持非key二维数组)转xml格式
 * 例如：
 * $a = array(
 *     0 => array('name' => 's'),
 *     1 => array('name' => 't')
 * )
 * toXmlString($a, 'data', true);
 * 
 * $b = array(
 *     'a' => array(1, 2),
 *     'b' => array(3, 4),
 * )
 * toXmlString($b, false, true);
 * 
 * $c = array(
 *    0 => array('name' => array(0, 1)),
 *    1 => array('name' => array(3, 4)),
 * )
 * toXmlString($c, 'data', true);
 * 
 * 不支持以下二维数组场景:
 * $e = array(
 *   0 => array(0,1),
 *   1 => array(3,4),
 * )
 * toXmlString($e, false, true);
 * ============================================
 * 
 * @param obj or array $obj : object to xml
 * @param string $nodeName : 第一级节点名称,用于数组的第一级key是数字的场景,如(场景3)
 *     $a = array(
 *         0 => array('name' => 's'),
 *         1 => array('name' => 't')
 *     )
 *     
 *     smarty_modifier_objToXml( $a, 'data', true)调用后的结果:
 *     <data>
 *         <name>s</name>
 *     </data>
 *     </data>
 *         <name>t</name>
 *     </data>
 *     
 * ============================================
 * 异常情况：1、空数组、对象,返回空字符串
 *          2、非数组、对象类型,返回"<reserror><![CDATA[1]]></reserror>"
 *          3、数组、对象 但是不满足DOM结构要求的,返回"<reserror><![CDATA[1]]></reserror>"
 *     
 * @param bool $content : 是否只要xml的内容
 *     如果是,返回的xml信息中没有头信息"<?xml version="1.0" encoding="utf-8"?>"
 *     否则,有头信息"<?xml version="1.0" encoding="utf-8"?>"
 * @return string
 */
function smarty_modifier_objToXml( $obj, $nodeName = false, $content = true )
{

	$status = -1;
    $logArr['smarty_modifier'] = "modifier_objToXml";
    
    $error_arr = array(
        'reserror' => 1
    );
    
    /**
     * 异常情况1：非数组、对象,返回"<reserror><![CDATA[1]]></reserror>"
     */
    if( ( !is_array( $obj ) && !is_object( $obj ) ) ) {
        $result = toXmlString( $error_arr, false, true );
        return $result;
    }
    
    /**
     * 异常情况2：空数组、对象,返回空字符串
     */
    if( empty( $obj ) ) {
    	return '';
    }
    
    try{
    	$result = toXmlString( $obj, $nodeName, $content );
    }catch( Exception $e ) {
    	/**
    	 * 异常情况3:数组、对象 但是不满足DOM结构要求的,返回"<reserror><![CDATA[1]]></reserror>"
    	 */
    	$result = toXmlString( $error_arr, false, true );
    	
    	if( $GLOBALS['ARR_TO_XML_LOG'] ) {
    		$logArr['xml_dom_object'] = json_encode( $obj );
    	    $logArr['xml_dom_exception'] = urlencode( $e->getMessage() );
    	    CLog::warning( "fail to call objToXml", $status, $logArr, 1 );
    	}

    }

    return $result;

}


/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
