<?php
/*******************************************************************************
 *
 * Copyright (c) 2011 Baidu.com, Inc. All Rights Reserved
 * 
 ******************************************************************************/



/**
 *
 *
 * @file modifier.shop_data_process.php
 * @package plugins
 * @author fengfei02@baidu.com
 * @date 2012-09-12 01:40
 */
function smarty_modifier_shop_data_process( $data )
{
	$status = 0;
    $logArr['smarty_modifier'] = "modifier_shop_data_process";
    
    $result = $data;
    $id_name_hash = array();
    
    if( !empty( $data['ShopStatInfo']['cate_info']['cate_dict']['map'] ) ) {
        foreach( $data['ShopStatInfo']['cate_info']['cate_dict']['map'] as $id_name ){
            $id_name_hash[$id_name['id']] = $id_name;
        }
    }
    
    if( !empty( $data['ShopStatInfo']['title'] ) ){
       	foreach( $data['ShopStatInfo']['title'] as $key => $title ) {
           	$result['ShopStatInfo']['title'][$key]['name'] = $id_name_hash[$title['id']]['name'];
       	}
    }
    
    $cur_catename = $data['ShopStatInfo']['cate_info']['subcate_info']['levelname'];
    $maincate = $data['ShopStatInfo']['maincate'];
    $cur_cates = $result['ShopStatInfo'][$cur_catename];
    
    if( !empty( $cur_cates ) ) {
        foreach( $cur_cates as $key => $cur_cate ) {
            if($cur_catename == "cate1" && $cur_cate['k'] == $maincate){
        	    unset($cur_cates[$key]);
    	        continue;
	        }
            $cur_cates[$key]['name'] = $id_name_hash[$cur_cate['k']]['name'];
        }
    }
    
    $tmp = array();
    if( !empty( $cur_cates ) ){
        foreach($cur_cates as $value){
            $tmp[] = $value;
        }
    }
    $result['ShopStatInfo']['cate'] = $tmp;

    $sublevel_catename = $data['ShopStatInfo']['cate_info']['subcate_info']['sublevelname'];
    $sublevel_range = $data['ShopStatInfo']['cate_info']['subcate_info']['sublevel'];
    if( !empty( $sublevel_catename ) ){
        $sublevel_cates = $result['ShopStatInfo'][$sublevel_catename];
        if( is_array( $sublevel_cates ) ){
            foreach( $sublevel_cates as $key => $sublevel_cate ) {
    	        if( empty($sublevel_range) || !is_array($sublevel_range) ) {
    	            unset($sublevel_cates[$key]);
            		continue;
                }
        	    if( in_array( $sublevel_cate['k'], $sublevel_range ) ) {
    	            $sublevel_cates[$key]['name'] = $id_name_hash[$sublevel_cate['k']]['name'];
	            } else {
                    unset($sublevel_cates[$key]);
                }
            }
        }
        $tmp = array();
        if( is_array( $sublevel_cates ) ) {
            foreach( $sublevel_cates as $k => $sublevel_cate ) {
                $tmp[] = $sublevel_cate;
            }
        }
        $result['ShopStatInfo']['subcate'] = $tmp;
    }


    $props = $data['ShopStatInfo']['props'];
    $prop_hash = array();
    if( !empty( $props ) ) {
        foreach( $props as $prop ) {
            $prop_hash[$prop['sa']] = $prop['su'];
        }
    }
    $property = array();
    if( !empty( $data['ShopStatInfo']['cate_info']['prop'] ) ) {
        foreach( $data['ShopStatInfo']['cate_info']['prop'] as $key => $prop ) {
            $type_array = array();
    	    foreach( $prop['type'] as $type ) {
	            if( !empty($prop_hash[$type] ) ) {
              	    $tmp_array['po'] = $type;
                    $tmp_array['v'] = $prop_hash[$type];
        	        $type_array[] = $tmp_array;
    	        }
	        }
            $temp_array = array();
        	if( !empty( $type_array ) ) {
    	        $temp_array['name'] = $prop['name'];
	            $temp_array['type'] = $type_array;
              	$property[] = $temp_array;
            }
        }
    }
    $result['ShopStatInfo']['property'] = $property;
    unset($result['ShopStatInfo']['cate_info']);
    
    return $result;
}


/* vim: set expandtab ts=4 sw=4 sts=4 tw=100: */
?>
