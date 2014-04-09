<?php 
  class CssJs_Util_ag_live04
   {
      private static $cssStr = '.op_ag_live04_img_con a{display:block;text-decoration:none;zoom:1;}.op_ag_live04_img_con div{width:100%;position:absolute;color:#fff;left:0;bottom:0;background:#000;text-align:center;opacity:.65;-moz-opacity:.65;-webkit-opacity:.65;-ms-opacity:.65;filter:alpha(opacity=65);height:30px;line-height:30px;}.op_ag_live04_img_con i{width:100%;position:absolute;color:#fff;left:0;bottom:0;height:30px;line-height:30px;font-size:1.08em;font-style:normal;text-align:center;}.op_ag_live04_news_list li{float:left;width:50%;}.op_ag_live04_img_con{position:relative;}.op_ag_live04_img_con span{position:absolute;left:0;top:0;width:36px;height:22px;line-height:22px;display:block;background:#f54040;color:#fff;text-align:center;font-size:1.08em;z-index:10;}.op_ag_live04_news_title{font-size:1.85em;font-family:\'微软雅黑\';line-height:100%;}.op_top_title_hot{width:36px;height:22px;line-height:22px;display:block;background:#f54040;color:#fff;text-align:center;font-size:1.08em;font-family:arial;}.op_ag_live04_news_title a:link,.op_ag_live04_news_title a:visited{text-decoration:none;}.op_ag_live04_news_title a:hover,.op_ag_live04_news_title a:active{text-decoration:underline;}.op_ag_live04_news_type2_title a:link,.op_ag_live04_news_type2_title a:visited{text-decoration:none;}.op_ag_live04_news_type2_title a:hover,.op_ag_live04_news_type2_title a:active{text-decoration:underline;}.op_ag_live04_news_type2_title{font-size:1.077em;font-weight:bold;}.op_ag_live04_news_type3_title,.op_ag_live04_news_type4_title{font-size:1.69em;font-family:\'微软雅黑\';line-height:100%;}.op_ag_live04_type2news_list li{width:33%;}.op_ag_live04_type2_pagraph{font-size:12px;}.op_ag_live04_type2news_list{font-size:12px;}.op_ag_live04_news_type2_title em{text-decoration:none;}.op_ag_live04_player{width:0;height:1;overflow:hidden;}.op_ag_live04_woman{position:absolute;right:10px;top:23px;z-index:10000000;}.op_ag_live04_share .bdsharebuttonbox a{margin:7px 6px 0 0;}.op_ag_live04_share{width:100px;}.op_ag_live04_womanbtn_wrap,.op_ag_live04_share{float:right;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'img,btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
      public static function getHeadCss()
      {
         if (!is_string(self::$cssStr))
         {
            return '';
         }
         return self::$cssStr;
      }
      
      public static function getFootJs()
      {
         if (!is_string(self::$jsStr))
         {
            return '';
         }
         return self::$jsStr;
      }
      
      // 返回数组
      public static function getCssUI()
      {
		 if ( empty(self::$uiList) ) return array();

         $arr = @explode(',', self::$uiList);
         if (!is_array($arr))
         {
            $arr = array();
         }
         return $arr;
      }
   }
