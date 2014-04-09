<?php
/***************************************************************************
 * 
 * Copyright (c) 2014 Baidu.com, Inc. All Rights Reserved
 * 
 **************************************************************************/
 
 
 
/**
 * @file DelayStrategy.php
 * @author search(com@baidu.com)
 * @date 2014/01/06 10:52:50
 * @brief 
 *  
 **/

class DelayStrategy extends Strategy{
    public function run(&$arrData){
        
        $sid_4840 = 4840;        //4840 延时 150ms 
        $sid_4841 = 4841;        //4841 延时 250ms
        $sid_4842 = 4842;        //4842 延时 350ms
        $sid_4843 = 4843;        //4843 延时 450ms
        $sid_4844 = 4844;        //4844 延时 550ms
        if (is_array ( $arrData ['uiData'] ['queryInfo'] ['samplingId'] ) && ! empty ( $arrData ['uiData'] ['queryInfo'] ['samplingId'])) {
            $arrSids = $arrData ['uiData'] ['queryInfo'] ['samplingId'];
            $arrSids = array_flip ( $arrSids );
            if(isset($arrSids[$sid_4840])){
                usleep(150*1000);
            }else if(isset($arrSids[$sid_4841])){
                usleep(250*1000);
            }else if(isset($arrSids[$sid_4842])){
                usleep(350*1000);
            }else if(isset($arrSids[$sid_4843])){
                usleep(450*1000);
            }else if(isset($arrSids[$sid_4844])){
                usleep(550*1000);
            }
        }   
        return true;
    }    
}





/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
