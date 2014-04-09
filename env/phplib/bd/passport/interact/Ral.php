<?php
/***************************************************************************
 * 
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file bd/passport/interact/Ral.php
 * @author fanmengzhe(com@baidu.com)
 * @date 2011/05/24 14:57:18
 * @brief 
 *  
 **/



class Bd_Passport_Interact_Ral implements Bd_Passport_Interact_IEngine {

	public function Call($strServer , $strMethod , $arrInput) {
		ral_set_logid(LOG_ID);
        return ral($strServer , $strMethod , $arrInput , 1);
	}

}


/* vim: set expandtab ts=4 sw=4 sts=4 tw=100 */
?>
