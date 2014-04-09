<?php
/********************************************************
*   Copyright (C) 2013 All rights reserved.
*   
*   @file：MappingData.php
*   @author：songlei03@baidu.com
*   @data：2013/11/19 10:10
*   @brief：
*
*********************************************************/
class MappingData extends Strategy{
    
    private static $funcArr = array(
                'se_com_default_1525_old' => true,//se_st_wenku
                'se_com_default_1526_old' => true,//se_st_wenkualaddin
                'se_com_default_1527_old' => true,//se_st_wenkutag
                'se_com_default_1528_old' => true,//se_st_zhidaoaladdin
                'se_com_default_1529_old' => true,//se_st_zhidao
                'se_com_default_1530_old' => true,//se_st_tieba
                'se_com_default_1514_old' => true,//se_st_document
                'se_com_default_1511_old' => true,//se_st_original
                'se_com_default_1509_old' => true,//se_st_guanwang
                'se_com_default_1534_old' => true,//se_st_cosmetic
                'se_com_structure_img_1505_old' => true,//se_st_zhidao_highquality
                'best_answer_1532_old' => true,//ala best_answer
                'generalqa_1536_old' => true,//ala best_answer
                'se_com_default_1524_old' => true,//se_st_general_image
                'se_com_default_1513_old' => true,//se_st_schema_software
                'se_com_default_1520_old' => true,//se_st_scholar
                'baikeperson_1521_old' => true,//se_st_image_baike
                'tieba2_1527_old' => true,//se_st_wenku_new 
                'jingyan_summary_1537_old' => true, //经验多图
                'right_commontable_6830_old' => true,//right_commontable
                'se_st_single_video_zhanzhang_1506_old' => true,//se_st_single_video
                'se_com_image_s_1535_old' => true,
            );

    public function run(&$arrData){
        if($arrData['uiControl']['templateType'] != 'baidu'){
            return false;
        }  
        $queryInfo = $arrData['uiData']['queryInfo'];
        foreach ( $arrData ['uiData'] ['asResult'] ['item'] as $index => &$item ) {
            $this->format($item,$queryInfo);
        }
        foreach ( $arrData ['uiData'] ['rightResult'] ['item'] as $index => &$item ) {
            $this->format($item,$queryInfo);
        }
    }

    private function format(&$data,$queryInfo){

		$stdstg = isset($data['dispData']['StdStg_new'])?$data['dispData']['StdStg_new']:$data['dispData']['StdStg'];
		if(!isset($stdstg) || empty($stdstg)){
			return false;
		}  
        $stdstl = 0;
        $templateName = "";
        if(isset($data['dispData']['StdStl']) && !empty($data['dispData']['StdStl'])){
            $stdstl = $data['dispData']['StdStl'];
        }
        if(isset($data['dispData']['strategy']['tempName']) && !empty($data['dispData']['strategy']['tempName'])){
            $templateName = $data['dispData']['strategy']['tempName'];
        }

        $function = $templateName.'_'.$stdstg."_".$stdstl."_old";

        if(!isset(self::$funcArr[$function])){
            $function = $templateName.'_'.$stdstg."_old";
            if(!isset(self::$funcArr[$function])){
                return false;
            }
        }
        //require (VUI_APP_PATH . '/plugins/modifier.vui_escape.php');
        call_user_func_array($function,array(&$data,$queryInfo));
    }
}

function modifier_vui_escape($string, $type="html"){
    $type = strtolower($type);
    $status = 0;
    if( strlen($string) == 0 ) {
        $result = $string;
        $status = -1;
        return $result;
    }
    switch( $type ) {
        case "html" :
            $type = ":h";
            break;
        case "javascript" :
            $type = ":j";
            break;
        case "url" :
            $type = ":u";
            break;
        default:
            $type = ":h";
            break;
    }
    $result = hilight_escape($string, ":[utf8]" . $type);
    if( false === $result ) {
        $result = $string;
        $status = -1;
        return $result;
    }
    return $result;
}


function modifier_limitlen($string, $length)
{
	if( strlen($string) == 0 ) {
		$result = $string;
		return $result;
	}

	$result = hilight_limitlen($string, $length);
	if( false === $result ) {
		$result = $string;
		return $result;
	}
	return $result;
}

//原se_st_wenkualaddin
function se_com_default_1526_old(&$data,$queryInfo){
	$tplData = &$data['dispData'];
	$tplData['comm_hideDocType'] = true;//不显示文件格式
	$tplData['comm_hideExtQuery'] = true;//不显示拓展query
	$tplData['comm_hideSnapShoot'] =true;//不显示快照
	if(isset($tplData['general_pic']['url'])){
		$tplData['comm_general_pic']=$tplData['general_pic'];
		$tplData['comm_generaPicHeight'] = "91px";//出图高度
	}
	//文档图标
	if(isset($tplData['WenkuMdocType'])){
		switch($tplData['WenkuMdocType']){
		case 1:$tplData['comm_docType'] = "doc";break;
		case 2:$tplData['comm_docType'] = "pdf";break;
		case 3:$tplData['comm_docType'] = "ppt";break;
		case 4:$tplData['comm_docType'] = "xls";break;
		case 8:$tplData['comm_docType'] = "txt";break;
		}
	}


	//拼接子链
    
	if(!empty($tplData['WenkuTitle_1']) || !empty($tplData['WenkuTitle_2']) || !empty($tplData['WenkuTitle_3'])){
		$tplData['comm_sublink'] = array();
		$tplData['comm_sublink_align'] = 'right';//子链对其方式
		$tplData['comm_sublink_colNum'] = 3;//子链单元格数
		$tplData['comm_sublink_more'] = array();//子链下方更多连接
		$tplData['comm_sublink_more']['mergeQuery'] = true;//子链下方更多连接是否需要拼接query
		$tplData['comm_sublink_more']['queryPre'] ="http://wenku.baidu.com/search?word=";//子链下方更多连接query前半段
		$tplData['comm_sublink_more']['querySuffix'] ="&ie=utf-8&lm=0&od=0";//子链下方更多连接query后半段
		$tplData['comm_sublink_more']['text'] ="更多文库相关文档&gt;&gt;";//子链下方更多连接文案

	}
	if(!empty($tplData['WenkuTitle_1'])){
		$tmp = array();
		$tmp['title'] = $tplData['WenkuTitle_1'];
		switch($tplData['WenkuMdocType_1']){
		case 1:$tmp['titleSuffix'] = ".doc";break; 
		case 2:$tmp['titleSuffix'] = ".pdf";break; 
		case 3:$tmp['titleSuffix'] = ".ppt";break; 
		case 4:$tmp['titleSuffix'] = ".xls";break; 
		case 5:$tmp['titleSuffix'] = ".wps";break; 
		case 6:$tmp['titleSuffix'] = ".rtf";break; 
		case 7:$tmp['titleSuffix'] = ".lrc";break; 
		case 8:$tmp['titleSuffix'] = ".txt";break; 
		case 9:$tmp['titleSuffix'] = ".vsd";break; 
		case 0:$tmp['titleSuffix'] = "";
		}
		$tmp['url']  = $tplData['WenkuUrl_1'];
		if(isset($tplData['WenkuValue_1'])){
			$tmp['col1'] = "评分:".((int)($tplData['WenkuValue_1'])/2)."/5";
		}
		else{
			$tmp['col1'] = "";
		}
		if(isset($tplData['WenkuPage_1'])){
			$tmp['col2'] = $tplData['WenkuPage_1']."页";
			$tmp['col2type'] = "right";
		}
		$tmpNull = array_push($tplData['comm_sublink'],$tmp);
	}
	if(!empty($tplData['WenkuTitle_2'])){
		$tmp = array();
		$tmp['title'] = $tplData['WenkuTitle_2'];
		switch($tplData['WenkuMdocType_2']){
		case 1:$tmp['titleSuffix'] = ".doc";break; 
		case 2:$tmp['titleSuffix'] = ".pdf";break; 
		case 3:$tmp['titleSuffix'] = ".ppt";break; 
		case 4:$tmp['titleSuffix'] = ".xls";break; 
		case 5:$tmp['titleSuffix'] = ".wps";break; 
		case 6:$tmp['titleSuffix'] = ".rtf";break; 
		case 7:$tmp['titleSuffix'] = ".lrc";break; 
		case 8:$tmp['titleSuffix'] = ".txt";break; 
		case 9:$tmp['titleSuffix'] = ".vsd";break; 
		case 0:$tmp['titleSuffix'] = "";
		}
		$tmp['url']  = $tplData['WenkuUrl_2'];
		if(isset($tplData['WenkuValue_2'])){
			$tmp['col1'] = "评分:".((int)($tplData['WenkuValue_2'])/2)."/5";
		}
		else{
			$tmp['col1'] = "";
		}
		if(isset($tplData['WenkuPage_2'])){
			$tmp['col2'] = $tplData['WenkuPage_2']."页";
			$tmp['col2type'] = "right";
		}
		$tmpNull = array_push($tplData['comm_sublink'],$tmp);
	}    
	if(!empty($tplData['WenkuTitle_3'])){
		$tmp = array();
		$tmp['title'] = $tplData['WenkuTitle_3'];
		switch($tplData['WenkuMdocType_3']){
		case 1:$tmp['titleSuffix'] = ".doc";break; 
		case 2:$tmp['titleSuffix'] = ".pdf";break; 
		case 3:$tmp['titleSuffix'] = ".ppt";break; 
		case 4:$tmp['titleSuffix'] = ".xls";break; 
		case 5:$tmp['titleSuffix'] = ".wps";break; 
		case 6:$tmp['titleSuffix'] = ".rtf";break; 
		case 7:$tmp['titleSuffix'] = ".lrc";break; 
		case 8:$tmp['titleSuffix'] = ".txt";break; 
		case 9:$tmp['titleSuffix'] = ".vsd";break; 
		case 0:$tmp['titleSuffix'] = "";
		}
		$tmp['url']  = $tplData['WenkuUrl_3'];
		if(isset($tplData['WenkuValue_3'])){
			$tmp['col1'] = "评分:".((int)($tplData['WenkuValue_3'])/2)."/5";
		}
		else{
			$tmp['col1'] = "";
		}
		if(isset($tplData['WenkuPage_3'])){
			$tmp['col2'] = $tplData['WenkuPage_3']."页";
			$tmp['col2type'] = "right";
		}
		$tmpNull = array_push($tplData['comm_sublink'],$tmp);
	}

	//file_put_contents("/home/work/search/logs/map_wenkualading.log","=================\n",FILE_APPEND);
    
}

//原se_st_wenku
function se_com_default_1525_old(&$data,$queryInfo){
	$tplData = &$data['dispData'];
	
	$tplData['comm_hideDocType'] = true;//不显示文件格式
	
	$tplData['comm_hideExtQuery'] = true;//不显示拓展query
	
	if(isset($tplData['general_pic']['url'])){
		$tplData['comm_general_pic']=$tplData['general_pic'];
		$tplData['comm_generaPicHeight'] = "91px";//出图高度
	}
	//文档图标
	if(isset($tplData['WenkuMdocType'])){
		switch($tplData['WenkuMdocType']){
		case 1:$tplData['comm_docType'] = "doc";break;
		case 2:$tplData['comm_docType'] = "pdf";break;
		case 3:$tplData['comm_docType'] = "ppt";break;
		case 4:$tplData['comm_docType'] = "xls";break;
		case 8:$tplData['comm_docType'] = "txt";break;
		}
	}

	//file_put_contents("/home/work/search/logs/map_wenkua.log",var_export($format_data,true),FILE_APPEND);
	//file_put_contents("/home/work/search/logs/map_wenkua.log","=================\n",FILE_APPEND);
}

//原se_st_wenkutag
function se_com_default_1527_old(&$data,$queryInfo){
	$tplData = &$data['dispData'];
	
	$tplData['comm_hideDocType'] = true;//不显示文件格式
	
	$tplData['comm_hideExtQuery'] = true;//不显示拓展query

	$tplData['comm_hideSnapShoot'] =true;//不显示快照

	$tplData['comm_hideSubTitleStructure'] =true;//不显示标题下方结构化数据

	$tplData['comm_hideSummary'] =true;//不显示传统摘要

	//设置点击参数
	$tplData['comm_result_box_attr'] = "data-click=\"{'fm':'alwk','rsv_alwktag':'1','rsv_bdr':'".$data['burstFlag']."'}\"";

	//拼接title url
	$tplData['comm_titleUrl'] = "http://wenku.baidu.com/search?word=".modifier_vui_escape($queryInfo['wordNoSyntax'],'url')."&ie=utf-8&lm=0&od=0";

	//拼接title
	$data['offsetInfo']['title'] = "\2".$queryInfo['wordNoSyntax']."\3_百度文库";

	//拼接摘要
	$tplData['comm_summary_escaped'] = "共有".$tplData['articlenumswk']."篇和<em>".modifier_vui_escape($queryInfo['wordNoSyntax'])."</em>相关的文档。";
	//拼接showurl
	$tplData['DispUrl'] = "wenku.baidu.com/search?word=".modifier_vui_escape($queryInfo['wordNoSyntax']);

	//拼接tag
	if(!empty($tplData['subclasswk1tag1'])||!empty($tplData['subclasswk2tag1'])){
		$tplData['comm_subtag'] = array();

		//tag前缀词
		if(isset($tplData['subclasswk1'])){
			$tplData['comm_subtag_label'] = $tplData['subclasswk1'];
		}
		elseif (isset($tplData['subclasswk2'])) {
			$tplData['comm_subtag_label'] = $tplData['subclasswk2'];
		}
		else{
			$tplData['comm_subtag_label'] = "类别：";
		}
		
		//tag间隔符
		//$tplData['comm_subtag_break'] = "";
		if(isset($tplData['subclasswk1'])){
			for($i = 1; $i <= 4; $i++){
				$tmp = array();
				$tmp['txt'] = $tplData['subclasswk1tag'.$i];
				$tmp['url'] = "http://wenku.baidu.com/search?word=".$queryInfo['wordNoSyntax']." ".modifier_vui_escape($tplData['subclasswk1tag'.$i],'url')."&ie=utf-8&lm=0&od=0";
				$tmpNull = array_push($tplData['comm_subtag'],$tmp);
			}
		}
		elseif(isset($tplData['subclasswk2'])){
			for($i = 1; $i <= 4; $i++){
				$tmp = array();
				$tmp['txt'] = $tplData['subclasswk2tag'.$i];
				$tmp['url'] = "http://wenku.baidu.com/search?word=".$queryInfo['wordNoSyntax']." ".modifier_vui_escape($tplData['subclasswk2tag'.$i],'url')."&ie=utf-8&lm=0&od=0";
				$tmpNull = array_push($tplData['comm_subtag'],$tmp);
			}
		}
		elseif(!isset($tplData['subclasswk1'])&&!isset($tplData['subclasswk2'])&&isset($tplData['subclasswk1tag1'])){
				for($i = 1; $i <= 4; $i++){
				$tmp = array();
				$tmp['txt'] = $tplData['subclasswk1tag'.$i];
				$tmp['url'] = "http://wenku.baidu.com/search?word=".modifier_vui_escape($tplData['subclasswk1tag'.$i],'url')."&ie=utf-8&lm=0&od=0";
				$tmpNull = array_push($tplData['comm_subtag'],$tmp);
			}

		}
	}

	//拼接子链
	if(!empty($data['offsetInfo']['urlEncoded']) || !empty($tplData['WenkuTitle_1']) || !empty($tplData['WenkuTitle_2'])){
		$tplData['comm_sublink'] = array();
		$tplData['comm_sublink_align'] = 'right';//子链对其方式
		$tplData['comm_sublink_colNum'] = 3;//子链单元格数
		$tplData['comm_sublink_more'] = array();//子链下方更多连接
		$tplData['comm_sublink_more']['mergeQuery'] = true;//子链下方更多连接是否需要拼接query
		$tplData['comm_sublink_more']['queryPre'] ="http://wenku.baidu.com/search?word=";//子链下方更多连接query前半段
		$tplData['comm_sublink_more']['querySuffix'] ="&ie=utf-8&lm=0&od=0";//子链下方更多连接query后半段
		$tplData['comm_sublink_more']['text'] ="更多文库相关文档&gt;&gt;";//子链下方更多连接文案

	}
	if(!empty($data['offsetInfo']['urlEncoded'])){
		$tmp = array();
		$tmp['title'] = $tplData['WenkuTitle_0'];
		switch($tplData['WenkuMdocType']){
		case 1:$tmp['titleSuffix'] = ".doc";break; 
		case 2:$tmp['titleSuffix'] = ".pdf";break; 
		case 3:$tmp['titleSuffix'] = ".ppt";break; 
		case 4:$tmp['titleSuffix'] = ".xls";break; 
		case 5:$tmp['titleSuffix'] = ".wps";break; 
		case 6:$tmp['titleSuffix'] = ".rtf";break; 
		case 7:$tmp['titleSuffix'] = ".lrc";break; 
		case 8:$tmp['titleSuffix'] = ".txt";break; 
		case 9:$tmp['titleSuffix'] = ".vsd";break; 
		case 0:$tmp['titleSuffix'] = "";
		}
		$tmp['url']  = $tplData['WenkuUrl_0'];
		if(isset($tplData['WenkuValue'])){
			$tmp['col1'] = "评分:".((int)($tplData['WenkuValue'])/2)."/5";
		}
		else{
			$tmp['col1'] = "";
		}
		if(isset($tplData['WenkuPage'])){
			$tmp['col2'] = $tplData['WenkuPage']."页";
			$tmp['col2type'] = "right";
		}
		$tmpNull = array_push($tplData['comm_sublink'],$tmp);
	}
	if(!empty($tplData['WenkuTitle_1'])){
		$tmp = array();
		$tmp['title'] = $tplData['WenkuTitle_1'];
		switch($tplData['WenkuMdocType_1']){
		case 1:$tmp['titleSuffix'] = ".doc";break; 
		case 2:$tmp['titleSuffix'] = ".pdf";break; 
		case 3:$tmp['titleSuffix'] = ".ppt";break; 
		case 4:$tmp['titleSuffix'] = ".xls";break; 
		case 5:$tmp['titleSuffix'] = ".wps";break; 
		case 6:$tmp['titleSuffix'] = ".rtf";break; 
		case 7:$tmp['titleSuffix'] = ".lrc";break; 
		case 8:$tmp['titleSuffix'] = ".txt";break; 
		case 9:$tmp['titleSuffix'] = ".vsd";break; 
		case 0:$tmp['titleSuffix'] = "";
		}
		$tmp['url']  = $tplData['WenkuUrl_1'];
		if(isset($tplData['WenkuValue_1'])){
			$tmp['col1'] = "评分:".((int)($tplData['WenkuValue_1'])/2)."/5";
		}
		else{
			$tmp['col1'] = "";
		}
		if(isset($tplData['WenkuPage_1'])){
			$tmp['col2'] = $tplData['WenkuPage_1']."页";
			$tmp['col2type'] = "right";
		}
		$tmpNull = array_push($tplData['comm_sublink'],$tmp);
	}
	if(!empty($tplData['WenkuTitle_2'])){
		$tmp = array();
		$tmp['title'] = $tplData['WenkuTitle_2'];
		switch($tplData['WenkuMdocType_2']){
		case 1:$tmp['titleSuffix'] = ".doc";break; 
		case 2:$tmp['titleSuffix'] = ".pdf";break; 
		case 3:$tmp['titleSuffix'] = ".ppt";break; 
		case 4:$tmp['titleSuffix'] = ".xls";break; 
		case 5:$tmp['titleSuffix'] = ".wps";break; 
		case 6:$tmp['titleSuffix'] = ".rtf";break; 
		case 7:$tmp['titleSuffix'] = ".lrc";break; 
		case 8:$tmp['titleSuffix'] = ".txt";break; 
		case 9:$tmp['titleSuffix'] = ".vsd";break; 
		case 0:$tmp['titleSuffix'] = "";
		}
		$tmp['url']  = $tplData['WenkuUrl_2'];
		if(isset($tplData['WenkuValue_2'])){
			$tmp['col1'] = "评分:".((int)($tplData['WenkuValue_2'])/2)."/5";
		}
		else{
			$tmp['col1'] = "";
		}
		if(isset($tplData['WenkuPage_2'])){
			$tmp['col2'] = $tplData['WenkuPage_2']."页";
			$tmp['col2type'] = "right";
		}
		$tmpNull = array_push($tplData['comm_sublink'],$tmp);
	}

	//file_put_contents("/home/work/search/logs/map_wenkutag.log",var_export($format_data,true),FILE_APPEND);
	//file_put_contents("/home/work/search/logs/map_wenkutag.log","=================\n",FILE_APPEND);
}

//se_st_zhidao_highquality
function se_com_structure_img_1505_old(&$data,$queryInfo){

    $tplData = &$data['dispData'];
	
	$tplData['comm_hideExtQuery'] = true;//不显示拓展query
	$tplData['comm_hideSnapShoot'] =true;//不显示快照
	
	if(isset($tplData['general_pic']['url'])){
		$tplData['comm_general_pic']=$tplData['general_pic'];
		$tplData['comm_generaPicHeight'] = "75px";//出图高度
	}

	if(isset($tplData['ZhidaoReplyNum'])&&isset($tplData['ZhidaoUpdateTime'])){
		if($tplData['ZhidaoCreateTime']){
			$tplData['comm_subtitle_structure'] = $tplData['ZhidaoReplyNum']."个回答 - 提问时间: ".Volatile::date('Y年m月d日',strtotime($tplData['ZhidaoCreateTime']));
		}
		else{
			$tplData['comm_subtitle_structure'] = $tplData['ZhidaoReplyNum']."个回答 - 最新回答: ".$tplData['ZhidaoUpdateTime'];
		}
	}

	//高质量问答人物头像
	if(isset($tplData['zhidao_highquality']['picture'])){
		$tplData['comm_subtitle_stucture_img']['picture'] = $tplData['zhidao_highquality']['picture'];
		$tplData['comm_subtitle_stucture_img']['link'] = $tplData['zhidao_highquality']['link'];
	}

	if(isset($tplData['zhidao_highquality']['type'])&&isset($tplData['zhidao_highquality']['name']) ){
		switch($tplData['zhidao_highquality']['type']){
			case "达人":$tplData['comm_subtitle_structure_img_right'] = "知道达人: ";break;
			case "专家":$tplData['comm_subtitle_structure_img_right'] = "权威专家: ";break;
			case "企业":$tplData['comm_subtitle_structure_img_right'] = "官方机构: ";break;
		}
		$tplData['comm_subtitle_structure_img_right'] .= "<a href=".$tplData['zhidao_highquality']['link']." target=\"_blank\" class=\"c\" >".$tplData['zhidao_highquality']['name']."</a>";
	}

	if(isset($tplData['zhidao_highquality']['content'])){
		$tplData['comm_summary_pre'] = "最佳答案: ";
		$data['offsetInfo']['summary'] = $tplData['zhidao_highquality']['content'];
	}
	elseif(isset($tplData['ZhidaoBestAnswer'])){
		$tplData['comm_summary_pre'] = "最佳答案: ";
		$data['offsetInfo']['summary'] = $tplData['ZhidaoBestAnswer'];
	}
	elseif(isset($tplData['ZhidaoNormalAnswer'])){
		$data['offsetInfo']['summary'] = $tplData['ZhidaoNormalAnswer'];
	}

	//拼接子链
	if(!empty($tplData['ZhidaoTitle_1']) || !empty($tplData['ZhidaoTitle_2']) || !empty($tplData['ZhidaoTitle_3'])){
		$tplData['comm_sublink'] = array();
		$tplData['comm_sublink_align'] = 'right';//子链对其方式
		$tplData['comm_sublink_colNum'] = 3;//子链单元格数
		$tplData['comm_sublink_more'] = array();//子链下方更多连接
		$tplData['comm_sublink_more']['mergeQuery'] = true;//子链下方更多连接是否需要拼接query
		$tplData['comm_sublink_more']['queryPre'] ="http://zhidao.baidu.com/q?ct=17&pn=0&tn=ikaslist&rn=10&word=";//子链下方更多连接query前半段
		$tplData['comm_sublink_more']['querySuffix'] ="";//子链下方更多连接query后半段
		$tplData['comm_sublink_more']['text'] ="更多知道相关问题&gt;&gt;";//

	}
	if(!empty($tplData['ZhidaoTitle_1'])){
		$tmp = array();
		$tmp['title'] = $tplData['ZhidaoTitle_1'];
		$tmp['url']  = $tplData['ZhidaoUrl_1'];
		if(isset($tplData['ZhidaoReplyNum_1'])){
			$tmp['col1'] = $tplData['ZhidaoReplyNum_1']."个回答";
		}
		else{
			$tmp['col1'] = "";
		}

		if(isset($tplData['ZhidaoCreateTime_1'])){
			$tmp['col2'] = Volatile::date("Y-m-d",strtotime($tplData['ZhidaoCreateTime_1']));
		}
		elseif(isset($tplData['ZhidaoUpdateTimeSub_1'])){
			$tmp['col2'] = $tplData['ZhidaoUpdateTimeSub_1'];
		}
		else{
			$tmp['col2'] = $tplData['ZhidaoFinishTime_1'];
		}

		$tmp['col2type'] = "right";
		$tmpNull = array_push($tplData['comm_sublink'],$tmp);
	}

	if(!empty($tplData['ZhidaoTitle_2'])){
		$tmp = array();
		$tmp['title'] = $tplData['ZhidaoTitle_2'];
		$tmp['url']  = $tplData['ZhidaoUrl_2'];
		if(isset($tplData['ZhidaoReplyNum_2'])){
			$tmp['col1'] = $tplData['ZhidaoReplyNum_2']."个回答";
		}
		else{
			$tmp['col1'] = "";
		}

		if(isset($tplData['ZhidaoCreateTime_2'])){
			$tmp['col2'] = Volatile::date("Y-m-d",strtotime($tplData['ZhidaoCreateTime_2']));
		}
		elseif(isset($tplData['ZhidaoUpdateTimeSub_2'])){
			$tmp['col2'] = $tplData['ZhidaoUpdateTimeSub_2'];
		}
		else{
			$tmp['col2'] = $tplData['ZhidaoFinishTime_2'];
		}
		$tmp['col2type'] = "right";
		
		$tmpNull = array_push($tplData['comm_sublink'],$tmp);
	}

	if(!empty($tplData['ZhidaoTitle_3'])){
		$tmp = array();
		$tmp['title'] = $tplData['ZhidaoTitle_3'];
		$tmp['url']  = $tplData['ZhidaoUrl_3'];
		if(isset($tplData['ZhidaoReplyNum_3'])){
			$tmp['col1'] = $tplData['ZhidaoReplyNum_3']."个回答";
		}
		else{
			$tmp['col1'] = "";
		}

		if(isset($tplData['ZhidaoCreateTime_3'])){
			$tmp['col2'] = Volatile::date("Y-m-d",strtotime($tplData['ZhidaoCreateTime_3']));
		}
		elseif(isset($tplData['ZhidaoUpdateTimeSub_3'])){
			$tmp['col2'] = $tplData['ZhidaoUpdateTimeSub_3'];
		}
		else{
			$tmp['col2'] = $tplData['ZhidaoFinishTime_3'];
		}
		$tmp['col2type'] = "right";
		
		$tmpNull = array_push($tplData['comm_sublink'],$tmp);
	}

	//file_put_contents("/home/work/search/logs/map_zhidao.log",var_export($format_data,true),FILE_APPEND);
	//file_put_contents("/home/work/search/logs/map_zhidao.log","=================\n",FILE_APPEND);
} 

//原se_st_zhidao
function se_com_default_1529_old(&$data,$queryInfo){
    $tplData = &$data['dispData'];
	
	$tplData['comm_hideExtQuery'] = true;//不显示拓展query
	
	if(isset($tplData['general_pic']['url'])){
		$tplData['comm_general_pic']=$tplData['general_pic'];
		$tplData['comm_generaPicHeight'] = "75px";//出图高度
	}

	if(isset($tplData['ZhidaoReplyNum'])&&isset($tplData['ZhidaoUpdateTime'])){
		if($tplData['ZhidaoCreateTime']){
			$tplData['comm_subtitle_structure'] = $tplData['ZhidaoReplyNum']."个回答 - 提问时间: ".Volatile::date('Y年m月d日',strtotime($tplData['ZhidaoCreateTime']));
		}
		else{
			$tplData['comm_subtitle_structure'] = $tplData['ZhidaoReplyNum']."个回答 - 最新回答: ".$tplData['ZhidaoUpdateTime'];
		}
	}

	if(isset($tplData['ZhidaoQuestionDescription'])){
		$tplData['comm_sup_summary_pre'] = "问题描述: ";
		$tplData['comm_sup_summary'] = $tplData['ZhidaoQuestionDescription'];
	}

	if(isset($tplData['ZhidaoBestAnswer'])){
		$tplData['comm_summary_pre'] = "最佳答案: ";
		$data['offsetInfo']['summary'] = $tplData['ZhidaoBestAnswer'];
	}
	elseif(isset($tplData['ZhidaoNormalAnswer'])){
		$data['offsetInfo']['summary'] = $tplData['ZhidaoNormalAnswer'];
	}

	//file_put_contents("/home/work/search/logs/map_zhidao.log",var_export($format_data,true),FILE_APPEND);
	//file_put_contents("/home/work/search/logs/map_zhidao.log","=================\n",FILE_APPEND);
} 

//原se_st_zhidaoaladdin
function se_com_default_1528_old(&$data,$queryInfo){
    $tplData = &$data['dispData'];
	$tplData['comm_hideExtQuery'] = true;//不显示拓展query

	$tplData['comm_hideSnapShoot'] =true;//不显示快照
	
	if(isset($tplData['general_pic']['url'])){
		$tplData['comm_general_pic']=$tplData['general_pic'];
		$tplData['comm_generaPicHeight'] = "75px";//出图高度
	}

	if(isset($tplData['ZhidaoReplyNum'])&&isset($tplData['ZhidaoUpdateTime'])){
		if($tplData['ZhidaoCreateTime']){
			$tplData['comm_subtitle_structure'] = $tplData['ZhidaoReplyNum']."个回答 - 提问时间: ".Volatile::date('Y年m月d日',strtotime($tplData['ZhidaoCreateTime']));
		}
		else{
			$tplData['comm_subtitle_structure'] = $tplData['ZhidaoReplyNum']."个回答 - 最新回答: ".$tplData['ZhidaoUpdateTime'];
		}
	}

	if(isset($tplData['ZhidaoQuestionDescription'])){
		$tplData['comm_sup_summary_pre'] = "问题描述: ";
		$tplData['comm_sup_summary'] = $tplData['ZhidaoQuestionDescription'];
	}

	if(isset($tplData['ZhidaoBestAnswer'])){
		$tplData['comm_summary_pre'] = "最佳答案: ";
		$data['offsetInfo']['summary'] = $tplData['ZhidaoBestAnswer'];
	}
	elseif(isset($tplData['ZhidaoNormalAnswer'])){
		$data['offsetInfo']['summary'] = $tplData['ZhidaoNormalAnswer'];
	}

	//拼接子链
	if(!empty($tplData['ZhidaoTitle_1']) || !empty($tplData['ZhidaoTitle_2']) || !empty($tplData['ZhidaoTitle_3'])){
		$tplData['comm_sublink'] = array();
		$tplData['comm_sublink_align'] = 'right';//子链对其方式
		$tplData['comm_sublink_colNum'] = 3;//子链单元格数
		$tplData['comm_sublink_more'] = array();//子链下方更多连接
		$tplData['comm_sublink_more']['mergeQuery'] = true;//子链下方更多连接是否需要拼接query
		if($tplData['AsClusterSiteName']){
			$tplData['comm_sublink_more']['queryPre'] ="http://www.baidu.com/s?wd=";//子链下方更多连接query前半段
			$tplData['comm_sublink_more']['querySuffix'] ="+site%3A".modifier_vui_escape($tplData['AsClusterSiteName'],'url');//子链下方更多连接query后半段
			$tplData['comm_sublink_more']['text'] ="更多".modifier_vui_escape($tplData['AsClusterRealName'])."相关问题&gt;&gt;";//子链下方更多连接文案
		}
		else{
			$tplData['comm_sublink_more']['queryPre'] ="http://zhidao.baidu.com/q?ct=17&pn=0&tn=ikaslist&rn=10&word=";//子链下方更多连接query前半段
			$tplData['comm_sublink_more']['querySuffix'] ="";//子链下方更多连接query后半段
			$tplData['comm_sublink_more']['text'] ="更多知道相关问题&gt;&gt;";//子链下方更多连接文案

		}

	}
	if(!empty($tplData['ZhidaoTitle_1'])){
		$tmp = array();
		$tmp['title'] = $tplData['ZhidaoTitle_1'];
		$tmp['url']  = $tplData['ZhidaoUrl_1'];
		if(isset($tplData['ZhidaoReplyNum_1'])){
			$tmp['col1'] = $tplData['ZhidaoReplyNum_1']."个回答";
		}
		else{
			$tmp['col1'] = "";
		}

		if(isset($tplData['ZhidaoCreateTime_1'])){
			$tmp['col2'] = Volatile::date("Y-m-d",strtotime($tplData['ZhidaoCreateTime_1']));
		}
		elseif(isset($tplData['ZhidaoUpdateTimeSub_1'])){
			$tmp['col2'] = $tplData['ZhidaoUpdateTimeSub_1'];
		}
		else{
			$tmp['col2'] = $tplData['ZhidaoFinishTime_1'];
		}
		$tmp['col2type'] = "right";

		$tmpNull = array_push($tplData['comm_sublink'],$tmp);
	}

	if(!empty($tplData['ZhidaoTitle_2'])){
		$tmp = array();
		$tmp['title'] = $tplData['ZhidaoTitle_2'];
		$tmp['url']  = $tplData['ZhidaoUrl_2'];
		if(isset($tplData['ZhidaoReplyNum_2'])){
			$tmp['col1'] = $tplData['ZhidaoReplyNum_2']."个回答";
		}
		else{
			$tmp['col1'] = "";
		}

		if(isset($tplData['ZhidaoCreateTime_2'])){
			$tmp['col2'] = Volatile::date("Y-m-d",strtotime($tplData['ZhidaoCreateTime_2']));
		}
		elseif(isset($tplData['ZhidaoUpdateTimeSub_2'])){
			$tmp['col2'] = $tplData['ZhidaoUpdateTimeSub_2'];
		}
		else{
			$tmp['col2'] = $tplData['ZhidaoFinishTime_2'];
		}
		$tmp['col2type'] = "right";
		
		$tmpNull = array_push($tplData['comm_sublink'],$tmp);
	}

	if(!empty($tplData['ZhidaoTitle_3'])){
		$tmp = array();
		$tmp['title'] = $tplData['ZhidaoTitle_3'];
		$tmp['url']  = $tplData['ZhidaoUrl_3'];
		if(isset($tplData['ZhidaoReplyNum_3'])){
			$tmp['col1'] = $tplData['ZhidaoReplyNum_3']."个回答";
		}
		else{
			$tmp['col1'] = "";
		}

		if(isset($tplData['ZhidaoCreateTime_3'])){
			$tmp['col2'] = Volatile::date("Y-m-d",strtotime($tplData['ZhidaoCreateTime_3']));
		}
		elseif(isset($tplData['ZhidaoUpdateTimeSub_3'])){
			$tmp['col2'] = $tplData['ZhidaoUpdateTimeSub_3'];
		}
		else{
			$tmp['col2'] = $tplData['ZhidaoFinishTime_3'];
		}
		$tmp['col2type'] = "right";
		
		$tmpNull = array_push($tplData['comm_sublink'],$tmp);
	}

	//file_put_contents("/home/work/search/logs/map_zhidao_al.log","=================\n",FILE_APPEND);
} 

//原se_st_tieba
function se_com_default_1530_old(&$data,$queryInfo){
    $tplData = &$data['dispData'];
	
	$tplData['comm_hideExtQuery'] = true;//不显示拓展query

	$tplData['comm_hideSnapShoot'] =true;//不显示快照
	
	if(isset($tplData['general_pic']['url'])){
		$tplData['comm_general_pic']=$tplData['general_pic'];
		$tplData['comm_generaPicHeight'] = "75px";//出图高度
	}

	if(isset($tplData['BBSRecount'])||isset($tplData['BBSPostTime'])){
        if($tplData['StdStg']!=1000&&$tplData['StdStg']!=1001&&$tplData['StdStg']!=13){
            if($tplData['BBSRecount']){
                $tplData['comm_subtitle_structure'] = $tplData['BBSRecount']."条回复";
            }
            if(isset($tplData['BBSRecount'])&&isset($tplData['BBSPostTime'])){
                $tplData['comm_subtitle_structure'] = $tplData['comm_subtitle_structure']." - ";
            }
            if(isset($tplData['BBSPostTime'])){
                $tplData['comm_subtitle_structure'] = $tplData['comm_subtitle_structure']."发帖时间: ".$tplData['BBSPostTime'];
            }
        }
	  }

	//拼接子链
	if(!empty($tplData['AsNormalSubTitle_1']) || !empty($tplData['AsNormalSubTitle_2']) || !empty($tplData['AsNormalSubTitle_3'])){
		$tplData['comm_sublink'] = array();
		$tplData['comm_sublink_align'] = 'right';//子链对其方式
		$tplData['comm_sublink_colNum'] = 3;//子链单元格数
		$tplData['comm_sublink_more'] = array();//子链下方更多连接
		$tplData['comm_sublink_more']['mergeQuery'] = true;//子链下方更多连接是否需要拼接query
		$tplData['comm_sublink_more']['queryPre'] ="http://www.baidu.com/s?wd=";//子链下方更多连接query前半段
		$tplData['comm_sublink_more']['querySuffix'] ="%20site:".$tplData['AsClusterSiteName'];//子链下方更多连接query后半段
		$tplData['comm_sublink_more']['text'] ="更多贴吧相关帖子&gt;&gt;";//子链下方更多连接文案
	}
	$temArr = array("年","月","日");
	if(!empty($tplData['AsNormalSubTitle_1'])){
		$tmp = array();
		$tmp['title'] = $tplData['AsNormalSubTitle_1'];
		$tmp['url']  = $tplData['AsNormalSubUrl_1'];
		if(isset($tplData['AsNormalSubBBSRecount_1'])){
			$tmp['col1'] = $tplData['AsNormalSubBBSRecount_1']."条回复";
		}
		else{
			$tmp['col1'] = "";
		}

		if(isset($tplData['AsNormalSubBBSPostTime_1'])){
			$tmpDate_1 = str_replace($temArr,"-",$tplData['AsNormalSubBBSPostTime_1']);
			$tmpDate_1 = preg_replace("/-$/","",$tmpDate_1);
			$tmp['col2'] = Volatile::date("Y-m-d",strtotime($tmpDate_1));
		}
		else{
			$tmp['col2'] = "";
		}
		$tmp['col2type'] = "right";

		$tmpNull = array_push($tplData['comm_sublink'],$tmp);
	}
	if(!empty($tplData['AsNormalSubTitle_2'])){
		$tmp = array();
		$tmp['title'] = $tplData['AsNormalSubTitle_2'];
		$tmp['url']  = $tplData['AsNormalSubUrl_2'];
		if(isset($tplData['AsNormalSubBBSRecount_2'])){
			$tmp['col1'] = $tplData['AsNormalSubBBSRecount_2']."条回复";
		}
		else{
			$tmp['col1'] = "";
		}

		if(isset($tplData['AsNormalSubBBSPostTime_2'])){
			$tmpDate_2 = str_replace($temArr,"-",$tplData['AsNormalSubBBSPostTime_2']);
			$tmpDate_2 = preg_replace("/-$/","",$tmpDate_2);
			$tmp['col2'] = Volatile::date("Y-m-d",strtotime($tmpDate_2));
		}
		else{
			$tmp['col2'] = "";
		}
		$tmp['col2type'] = "right";

		$tmpNull = array_push($tplData['comm_sublink'],$tmp);
	}
	if(!empty($tplData['AsNormalSubTitle_3'])){
		$tmp = array();
		$tmp['title'] = $tplData['AsNormalSubTitle_3'];
		$tmp['url']  = $tplData['AsNormalSubUrl_3'];
		if(isset($tplData['AsNormalSubBBSRecount_3'])){
			$tmp['col1'] = $tplData['AsNormalSubBBSRecount_3']."条回复";
		}
		else{
			$tmp['col1'] = "";
		}

		if(isset($tplData['AsNormalSubBBSPostTime_3'])){
			$tmpDate_3 = str_replace($temArr,"-",$tplData['AsNormalSubBBSPostTime_3']);
			$tmpDate_3 = preg_replace("/-$/","",$tmpDate_3);
			$tmp['col2'] = Volatile::date("Y-m-d",strtotime($tmpDate_3));
		}
		else{
			$tmp['col2'] = "";
		}
		$tmp['col2type'] = "right";

		$tmpNull = array_push($tplData['comm_sublink'],$tmp);
	}
	

	//file_put_contents("/home/work/search/logs/map_tieba.log","=================\n",FILE_APPEND);
} 

function best_answer_1532_old(&$data,$queryInfo){
	$tplData = &$data['dispData'];
	$tplData['result'] = array();
	$tplData['result'][0] = $tplData['BestAnswerCand'];
}

function generalqa_1536_old(&$data,$queryInfo){
	$tplData = &$data['dispData'];
	$tplData['title'] = $queryInfo['wordNoSyntax'];
	$tplData['answer'] = array();
	for($i = 0; $i <= 3; $i++){
		//处理字段后缀
		$j = ($i == 0) ? '' : '_'.$i;
		if ($tplData['ValidAggregate'.$j] == 1) {
			//创建一条结果，存入临时变量$answer中
			$answer = array();
			$answer['title'] = $tplData['ZhidaoTitle'.$j];
			$answer['url'] = $tplData['ZhidaoUrl'.$j];
			$answer['content'] = str_replace(array(chr(1), chr(2), chr(3)), "", $tplData['ZhidaoBestAnswer'.$j]);
			$answer['source'] = $tplData['Source'.$j];
			$answer['sourceurl'] = $tplData['SourceUrl'.$j];
			$answer['append'] = $tplData['ZhidaoReplyNum'.$j].'个回答';
			$answer['date'] = ($tplData['ZhidaoCreateTime'.$j]) ? date('Y-m-d',strtotime($tplData['ZhidaoCreateTime'.$j])) : $tplData['ZhidaoUpdateTime'.$j];
			$arr = array_push($tplData['answer'], $answer);
		}
	}
}

//原 文库复用tieb2样式
function tieba2_1527_old(&$data,$queryInfo){
    $tplData = &$data['dispData'];
	
	$tplData['DetailResult'] = true;//使用tieb2富展现

	//拼接title url
	$tplData['url'] = "http://wenku.baidu.com/search?word=".modifier_vui_escape($queryInfo['wordNoSyntax'],'url')."&ie=utf-8&lm=0&od=0";

	//拼接title
	$tplData['wenkutitle'] = "\2".$queryInfo['wordNoSyntax']."\3_百度文库";

	//拼接摘要
	$tplData['wenku_summary_escaped'] = "共有<strong>".$tplData['articlenumswk']."</strong>篇和<em>".modifier_vui_escape($queryInfo['wordNoSyntax'])."</em>相关的文档。";
	//拼接showurl
	$tplData['showurl'] = "wenku.baidu.com/search?word=".modifier_vui_escape($queryInfo['wordNoSyntax']);

	//拼接date
	$tplData['date'] = date("Y-m-d", $tplData['newTimeFactor']);

	//拼接tag
	if(!empty($tplData['subclasswk1tag1'])||!empty($tplData['subclasswk2tag1'])){
		
		if(isset($tplData['subclasswk1'])){
			for($i = 1; $i <= 4; $i++){
				$tplData['resource'.$i] = array();
				$tplData['resource'.$i][0]['num'] = 1; //为了tieba2大于0的判断。trick全是trick。
				$tplData['resource'.$i][0]['type'] = "wenku"; //为了tieba2大于0的判断。trick全是trick。
				$tplData['resource'.$i][0]['name'] = $tplData['subclasswk1tag'.$i];
				$tplData['resource'.$i][0]['url'] = "http://wenku.baidu.com/search?word=".$queryInfo['wordNoSyntax']." ".modifier_vui_escape($tplData['subclasswk1tag'.$i],'url')."&ie=utf-8&lm=0&od=0";
			}
		}
		elseif(isset($tplData['subclasswk2'])){
			for($i = 1; $i <= 4; $i++){
				$tplData['resource'.$i] = array();
				$tplData['resource'.$i][0]['num'] = 1; //为了tieba2大于0的判断。trick全是trick。
				$tplData['resource'.$i][0]['type'] = "wenku"; //为了tieba2大于0的判断。trick全是trick。
				$tplData['resource'.$i][0]['name'] = $tplData['subclasswk2tag'.$i];
				$tplData['resource'.$i][0]['url'] = "http://wenku.baidu.com/search?word=".$queryInfo['wordNoSyntax']." ".modifier_vui_escape($tplData['subclasswk2tag'.$i],'url')."&ie=utf-8&lm=0&od=0";
			}
		}
		elseif(!isset($tplData['subclasswk1'])&&!isset($tplData['subclasswk2'])&&isset($tplData['subclasswk1tag1'])){
				for($i = 1; $i <= 4; $i++){
				$tplData['resource'.$i] = array();
				$tplData['resource'.$i][0]['num'] = 1; //为了tieba2大于0的判断。trick全是trick。
				$tplData['resource'.$i][0]['type'] = "wenku"; //为了tieba2大于0的判断。trick全是trick。
				$tplData['resource'.$i][0]['name'] = $tplData['subclasswk1tag'.$i];
				$tplData['resource'.$i][0]['url'] = "http://wenku.baidu.com/search?word=".modifier_vui_escape($tplData['subclasswk1tag'.$i],'url')."&ie=utf-8&lm=0&od=0";
			}

		}
	}

	//拼接子链
	if(!empty($data['offsetInfo']['urlEncoded']) || !empty($tplData['WenkuTitle_1']) || !empty($tplData['WenkuTitle_2'])){
		
		$tplData['wenku_more']['url'] ="http://wenku.baidu.com/search?word=".modifier_vui_escape($queryInfo['wordNoSyntax'],'url')."&ie=utf-8&lm=0&od=0";
		$tplData['wenku_more']['text'] ="更多文库相关文档&gt;&gt;";//子链下方更多连接文案

	}
	if(!empty($data['offsetInfo']['urlEncoded'])){
		$tmp = array();
		$tmp['title'] = $tplData['WenkuTitle_0'];
		switch($tplData['WenkuMdocType']){
		case 1:$tmp['titleSuffix'] = ".doc";break; 
		case 2:$tmp['titleSuffix'] = ".pdf";break; 
		case 3:$tmp['titleSuffix'] = ".ppt";break; 
		case 4:$tmp['titleSuffix'] = ".xls";break; 
		case 5:$tmp['titleSuffix'] = ".wps";break; 
		case 6:$tmp['titleSuffix'] = ".rtf";break; 
		case 7:$tmp['titleSuffix'] = ".lrc";break; 
		case 8:$tmp['titleSuffix'] = ".txt";break; 
		case 9:$tmp['titleSuffix'] = ".vsd";break; 
		case 0:$tmp['titleSuffix'] = "";
		}
		$tmp['title'] .= $tmp['titleSuffix'];
		$tmp['url']  = $tplData['WenkuUrl_0'];
		if(isset($tplData['WenkuValue'])){
			$tmp['col1'] = "评分:".((int)($tplData['WenkuValue'])/2)."/5";
		}
		else{
			$tmp['col1'] = "";
		}
		if(isset($tplData['WenkuPage'])){
			$tmp['col2'] = $tplData['WenkuPage']."页";
			$tmp['col2type'] = "right";
		}
		$tmp['type'] = "wenku";
		$tplData['mthread1'] = array();
		$tplData['mthread1'][0] = $tmp;
	}
	if(!empty($tplData['WenkuTitle_1'])){
		$tmp = array();
		$tmp['title'] = $tplData['WenkuTitle_1'];
		switch($tplData['WenkuMdocType_1']){
		case 1:$tmp['titleSuffix'] = ".doc";break; 
		case 2:$tmp['titleSuffix'] = ".pdf";break; 
		case 3:$tmp['titleSuffix'] = ".ppt";break; 
		case 4:$tmp['titleSuffix'] = ".xls";break; 
		case 5:$tmp['titleSuffix'] = ".wps";break; 
		case 6:$tmp['titleSuffix'] = ".rtf";break; 
		case 7:$tmp['titleSuffix'] = ".lrc";break; 
		case 8:$tmp['titleSuffix'] = ".txt";break; 
		case 9:$tmp['titleSuffix'] = ".vsd";break; 
		case 0:$tmp['titleSuffix'] = "";
		}
		$tmp['title'] .= $tmp['titleSuffix'];
		$tmp['url']  = $tplData['WenkuUrl_1'];
		if(isset($tplData['WenkuValue_1'])){
			$tmp['col1'] = "评分:".((int)($tplData['WenkuValue_1'])/2)."/5";
		}
		else{
			$tmp['col1'] = "";
		}
		if(isset($tplData['WenkuPage_1'])){
			$tmp['col2'] = $tplData['WenkuPage_1']."页";
			$tmp['col2type'] = "right";
		}

		$tmp['type'] = "wenku";
		$tplData['mthread2'] = array();
		$tplData['mthread2'][0] = $tmp;
	}
	if(!empty($tplData['WenkuTitle_2'])){
		$tmp = array();
		$tmp['title'] = $tplData['WenkuTitle_2'];
		switch($tplData['WenkuMdocType_2']){
		case 1:$tmp['titleSuffix'] = ".doc";break; 
		case 2:$tmp['titleSuffix'] = ".pdf";break; 
		case 3:$tmp['titleSuffix'] = ".ppt";break; 
		case 4:$tmp['titleSuffix'] = ".xls";break; 
		case 5:$tmp['titleSuffix'] = ".wps";break; 
		case 6:$tmp['titleSuffix'] = ".rtf";break; 
		case 7:$tmp['titleSuffix'] = ".lrc";break; 
		case 8:$tmp['titleSuffix'] = ".txt";break; 
		case 9:$tmp['titleSuffix'] = ".vsd";break; 
		case 0:$tmp['titleSuffix'] = "";
		}
		$tmp['title'] .= $tmp['titleSuffix'];
		$tmp['url']  = $tplData['WenkuUrl_2'];
		if(isset($tplData['WenkuValue_2'])){
			$tmp['col1'] = "评分:".((int)($tplData['WenkuValue_2'])/2)."/5";
		}
		else{
			$tmp['col1'] = "";
		}
		if(isset($tplData['WenkuPage_2'])){
			$tmp['col2'] = $tplData['WenkuPage_2']."页";
			$tmp['col2type'] = "right";
		}
		$tmp['type'] = "wenku";
		$tplData['mthread3'] = array();
		$tplData['mthread3'][0] = $tmp;
	}

	//file_put_contents("/home/work/search/logs/map_wenkutag.log",var_export($format_data,true),FILE_APPEND);
	//file_put_contents("/home/work/search/logs/map_wenkutag.log","=================\n",FILE_APPEND);
}

//原se_st_image_baike
function baikeperson_1521_old(&$data,$queryInfo){
    $tplData = &$data['dispData'];
    $tplData = array_merge($tplData,$tplData['image_baike']); //转换为阿拉丁格式
}
//right_commontable
function right_commontable_6830_old(&$data,$queryInfo){
    $tplData = &$data['dispData']['resultData']['tplData'];
    $tplData['subtitle'] = '同名失信被执行人';
    $tplData['countnumber'] = 5;
    $tplData['showMark'] = 1;
    $tplData['txtmore'][0]['tip'] = '来源：';
    $tplData['txtmore'][0]['txt'] = '失信被执行人名单';
    $tplData['txtmore'][0]['url'] = 'http://www.baidu.com/s?wd='.(urlencode('失信被执行人名单')).'&rsv_dl=0_right_commomtable_6830';
    if (count($tplData['result']) > 20) {
        $tplData['more'][0]['txt'] = '查看全部>>';
        $tplData['more'][0]['link'] = 'http://www.baidu.com/s?wd='.(urlencode($tplData['queryparser'][0]['iname'].' 失信被执行人')).'&rsv_dl=0_right_commomtable_6830';;
    }
    $tplData['list'] = array();
    for ($i=0; $i < count($tplData['result']) && $i < 21; $i++) { 
    	$tplData['list'][$i]['txt1'] = $tplData['result'][$i]['iname'];
    	$tplData['list'][$i]['params'] = 'wd='.(urlencode($tplData['result'][$i]['iname'].' '.$tplData['result'][$i]['cardNum'])).'&rsv_dl=0_right_commomtable_6830';
    	$tplData['list'][$i]['txt2'] = $tplData['result'][$i]['areaName'];
    	$tplData['list'][$i]['txt3'] = $tplData['result'][$i]['cardNum'];
    }
}

//se_st_general_image
function se_com_default_1524_old(&$data,$queryInfo){
    $tplData = &$data['dispData'];
    if(isset($tplData['general_pic']['url'])){
		$tplData['comm_general_pic'] = $tplData['general_pic'];
		$tplData['comm_generaPicHeight'] = "75px";//出图高度
	}
}


//se_st_single_video
function se_st_single_video_zhanzhang_1506_old(&$data,$queryInfo){
    $tplData = &$data['dispData'];
    $tplData['se_st_single_video_zhanzhang'] =  $tplData['se_st_single_video'];
}

//se_st_scholar
function se_com_default_1520_old(&$data,$queryInfo){
    $tplData = &$data['dispData'];

	if(isset($tplData['scholar']['scholarAuthor'])){ 
        $tplData['comm_subtitle_structure'] = modifier_vui_escape(modifier_limitlen($tplData['scholar']['scholarAuthor'],33),'html');
	}
	if(isset($tplData['scholar']['scholarMagazine'])){ 
        $tplData['comm_subtitle_structure'] .= " - ".modifier_vui_escape(modifier_limitlen($tplData['scholar']['scholarMagazine'],30),'html');
	}
	if(isset($tplData['scholar']['scholarTime'])){ 
        $tplData['comm_subtitle_structure'] .= " ".modifier_vui_escape(modifier_limitlen($tplData['scholar']['scholarTime'],4),'html');
	}
	if(isset($tplData['scholar']['scholarCite'])){ 
        $tplData['comm_subtitle_structure'] .= " - ".modifier_vui_escape(modifier_limitlen($tplData['scholar']['scholarCite'],16),'html');
	}
	if(isset($tplData['scholar']['scholarFrom'])){ 
        $tplData['comm_subtitle_structure'] .= " - ".modifier_vui_escape(modifier_limitlen($tplData['scholar']['scholarFrom'],15),'html');
	}


	if(isset($tplData['scholar']['scholarAbstract'])){
		 $data['offsetInfo']['summary'] = $tplData['scholar']['scholarAbstract'];
	}   
}

//se_st_schema_software
function se_com_default_1513_old(&$data,$queryInfo){
    $tplData = &$data['dispData'];
    $tplData['comm_subtitle_structure'] = "大小: ".$tplData['schema_software']['fileSize']."  更新时间: ".$tplData['schema_software']['dateModified']."  ".$tplData['schema_software']['inLanguage'].$tplData['schema_software']['license'];
}


//se_st_document
function se_com_default_1514_old(&$data,$queryInfo){
    $tplData = &$data['dispData'];

    if(isset($tplData['document']['filepage'])){
    	$tplData['comm_subtitle_structure'] = "";
    	//文档类
    	if(isset($tplData['document']['filetype'])){
    		$tplData['comm_subtitle_structure'] .=  $tplData['document']['filetype']."(";
    	}
    	$tplData['comm_subtitle_structure'] .= "共".$tplData['document']['filepage']."页";
    	if(isset($tplData['document']['filetype'])){
    		$tplData['comm_subtitle_structure'] .=  ")";
    	}

    	if(isset($tplData['document']['downloadcredit'])){
    		$tplData['comm_subtitle_structure'] .=  " - 下载需".$tplData['document']['downloadcredit'];
    		if(is_integer($tplData['document']['downloadcredit'])){
    			$tplData['comm_subtitle_structure'] .= "积分";
    		}
    	}
    }
    else if(isset($tplData['document']['datacapacity'])){
    	$tplData['comm_subtitle_structure'] = "";
    	//资料类
    	if(isset($tplData['document']['datatype']) && trim($tplData['document']['datatype']) != "其他"){
    		$tplData['comm_subtitle_structure'] .=  $tplData['document']['datatype']."(";
    	}
    	$tplData['comm_subtitle_structure'] .= $tplData['document']['datacapacity'];
    	if(isset($tplData['document']['datatype'])){
    		$tplData['comm_subtitle_structure'] .=  ")";
    	}

    	if(isset($tplData['document']['downloadcredit'])){
    		$tplData['comm_subtitle_structure'] .=  " - 下载需".$tplData['document']['downloadcredit'];
    		if(is_integer($tplData['document']['downloadcredit'])){
    			$tplData['comm_subtitle_structure'] .= "积分";
    		}
    	}

    }
}

//se_st_original
function se_com_default_1511_old(&$data,$queryInfo){
    $tplData = &$data['dispData'];
    if(isset($tplData['original']['source_name'])){
    	$tplData['comm_original'] = true;
    	$tplData['comm_hideTimeFactor'] = true;
    	$tplData['comm_subtitle_structure'] = "";
    	if(isset($tplData['original']['author'])){
    		if(is_array($tplData['original']['author'])){
				$tplData['comm_subtitle_structure'] .= "作者：".implode(" ",$tplData['original']['author'])." - ";
    		}
    		else{
				$tplData['comm_subtitle_structure'] .= "作者：".$tplData['original']['author']." - ";    			
    		}
    	}
    	if(!isset($tplData['general_pic']['url'])){
    		$tplData['comm_subtitle_structure'] .= "来源：".$tplData['original']['source_name'];
    		if(isset($tplData['original']['release_time'])){
    			$tplData['comm_subtitle_structure'] .= " - ";
    		}
    	}

    	if(isset($tplData['original']['release_time'])){
    		$tplData['comm_subtitle_structure'] .= "发表时间：".Volatile::date('Y年m月d日',strtotime($tplData['original']['release_time']));
    	}
    }
    if(isset($tplData['general_pic']['url'])){
		$tplData['comm_general_pic'] = $tplData['general_pic'];
		$tplData['comm_generaPicHeight'] = "75px";//出图高度
	}
}

//se_st_guanwang
function se_com_default_1509_old(&$data,$queryInfo){
    $tplData = &$data['dispData'];
    $tplData['sublink']['is_main'] = true;
}

//se_st_cosmetic
function se_com_default_1534_old(&$data,$queryInfo){
    $tplData = &$data['dispData'];
    if(isset($tplData['cosmetic']['img'])){
		$tplData['comm_general_pic']['url'] = $tplData['cosmetic']['img'];
		$tplData['comm_generaPicHeight'] = "75px";//出图高度
	}

	$tplData['comm_hideTimeFactor'] = true; //不显示摘要前时间

	$tplData['notice_info'] = '';
	if(isset($tplData['cosmetic']['genre'])){
		$tplData['notice_info']['notice1'] .= modifier_limitlen($tplData['cosmetic']['genre'],20);
		if(isset($tplData['cosmetic']['capacity']) && isset($tplData['cosmetic']['unit'])){
			$tplData['notice_info']['notice1'] .= " (".$tplData['cosmetic']['capacity'].$tplData['cosmetic']['unit'].")";
		}
		if(isset($tplData['cosmetic']['price']) && isset($tplData['cosmetic']['currency'])){
			$tplData['notice_info']['notice1'] .= " - ";
		}
	}
	if(isset($tplData['cosmetic']['price']) && isset($tplData['cosmetic']['currency'])){
		if($tplData['cosmetic']['price'] >= 100000000){
			$showPrcie = floor($tplData['cosmetic']['price']/100000000)."亿";
		}
		elseif ($tplData['cosmetic']['price'] >= 10000) {
			$showPrcie = floor($tplData['cosmetic']['price']/10000)."万";
		}
		else{
			$showPrcie = $tplData['cosmetic']['price'];
		}
		$tplData['notice_info']['notice1'] .="参考价".$tplData['cosmetic']['currency'].$showPrcie;
	}

	if(isset($tplData['cosmetic']['effect'])){
		$tplData['comm_sup_summary'] = modifier_limitlen($tplData['cosmetic']['effect'],60);

	}

	if(isset($tplData['cosmetic']['info'])){
		$data['offsetInfo']['summary'] = "";
		if(isset($tplData['cosmetic']['brand'])){
			$data['offsetInfo']['summary'] .= $tplData['cosmetic']['brand']."旗下产品";
			if(isset($tplData['cosmetic']['info'])&&$tplData['cosmetic']['info'] !=""){
				$data['offsetInfo']['summary'] .= "，";
			}
		}
		if(isset($tplData['cosmetic']['ename'])&&$tplData['cosmetic']['ename']!=""){
			$data['offsetInfo']['summary'] .= "全称".$tplData['cosmetic']['ename']."";
			if(isset($tplData['cosmetic']['info'])&&$tplData['cosmetic']['info'] !=""){
				$data['offsetInfo']['summary'] .= "，";
			}
		}
		$data['offsetInfo']['summary'] .= $tplData['cosmetic']['info'];
	}

	
}

//经验多图
function jingyan_summary_1537_old(&$data,$queryInfo){
    $tplData = &$data['dispData'];
    $tplData = array_merge($tplData,$tplData['gallery']); //转换为阿拉丁格式
    foreach($tplData['img'] as &$imgitem){
            $imgitem['imglinkurl'] = $imgitem['@attr']['imglinkurl'];
            $imgitem['imgtext'] = $imgitem['@attr']['imgtext'];
            $imgitem['imgurl'] = $imgitem['@attr']['imgurl'];
            unset($imgitem['@attr']);
    }       
}

function se_com_image_s_1535_old(&$data,$queryInfo){
    $tplData = &$data['dispData'];
    $tplData['comm_subtitles'] = array();

    if(isset($data['dispData']['original_author']['Article']['author']['name']) ) {
        array_push($tplData['comm_subtitles'], array("key" => "作者", "value"=> $data['dispData']['original_author']['Article']['author']['name']) );
    }
    if(isset($data['dispData']['original_author']['Article']['author']['jobTitle']) ) {
        array_push($tplData['comm_subtitles'], array("key" => "", "value"=> $data['dispData']['original_author']['Article']['author']['jobTitle']) );
    }
    if(isset($data['dispData']['original_author']['Article']['author']['icon']['url']) ) {
        $tplData['comm_general_pic']['url'] = $data['dispData']['original_author']['Article']['author']['icon']['url'];
    }

}

?>
