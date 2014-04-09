<?php
/***************************************************************************
 * 
 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file IError.php
 * @author fanmengzhe(fanmengzhe@baidu.com)
 * @date 2011/06/02 11:21:19
 * @brief 
 *  
 **/

interface Bd_Passport_IError
{
    /**
	 *@breif indicate server talk error
	 */
	public function isError();
	/**
	 *@breif Get Error Code.Function name is same with that in PHP-Exception.
	 */
    public function getCode();
	/**
	 *@breif Get Error Message.Function name is same with that in PHP-Exception.
	 */
    public function getMessage();
}




/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
