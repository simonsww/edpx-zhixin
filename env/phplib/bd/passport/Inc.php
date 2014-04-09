<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file Bd/Passport/Inc.php
 * @author fanmengzhe(com@baidu.com)
 * @date 2011/05/23 21:43:49
 * @brief 
 *  
 **/

/**
 * @brief	Bd_Passport 非ODP环境的配置文件
 * @todo	配置文件详解
 */
class Bd_Passport_Inc {
	
	public static $conf = array (
        /**     using in session         */
		'apid'		=> 0x0401,
        'is_bae'    => 0,
		'tpl'		=> 'pp',
		'psptoken_key_crypt'	=> '',		///<用于加解密psptoken的key
		'psptoken_key_csrf'		=> '',		///<用于psptoken csrf防范的key
        /**     using in passgate        */
		'app_user'	=> 'tieba',
		'app_passwd'=> 'tieba.baidu.com',
        /**     using in pusrinfo        */
		'aid'		=> 88,
		'engine'	=> 'ral',
		
		/**		using in engine-socket	 */
		/**		格式仿照galileo资源定位  */
		'server'    => array (
			'cur_idc'	=> 'rdtest',
			'session'	=> array (
				'service_port'		=> 9081, 
				'service_conn_type'	=>	0, 
				'service_ctimeout'	=> 1000, 
				'service_rtimeout'	=> 1000,
				'service_wtimeout'	=> 1000,
				// new bvs IP
				'jx'				=> array (
					array ('ip'		=> '10.36.7.65',),
				),
				'tc'		=> array (
					array ('ip'		=> '10.26.7.72',),
				),
				'rdtest'		=> array (
					array ('ip'		=> '10.23.247.131',),
				),
			),
			'passgate'	=> array(
				'service_port'		=> 16000, 
				'service_conn_type'	=>	0, 
				'service_ctimeout'	=> 1000, 
				'service_rtimeout'	=> 1000,
				'service_wtimeout'	=> 1000,
				'jx'				=> array (
					array ('ip'		=> '10.36.7.29',),
				),
				'tc'		=> array (
					array ('ip'		=> '10.26.7.28',),
				),
				'rdtest'		=> array (
					array ('ip'		=> '10.23.247.131',),
				),
			),
			'wappass'	=> array(
				'service_port'		=> 8000,
				'service_conn_type'	=> 0,
				'service_ctimeout'	=> 1000, 
				'service_rtimeout'	=> 1000,
				'service_wtimeout'	=> 1000,
				'jx'				=> array (
					array ('ip'		=> '10.36.7.24',),
				),
				'tc'		=> array (
					array ('ip'		=> '10.26.7.21',),
				),
				'rdtest'		=> array (
					array ('ip'		=> '10.23.247.131',),	
				),
			),
		),
	);

}



/* vim: set expandtab ts=4 sw=4 sts=4 tw=100 */
?>
