<?php 
  class CssJs_Util_email3
   {
      private static $cssStr = '.op_email3_header{text-align:right;color:#666;float:right;}.op_email3_table td{padding-bottom:10px;font-size:13px;}.op_email3_last_row td{padding-bottom:0;}.op_email3_first_col{padding-right:10px;}.op_email3 td{font-size:13px;padding-left:5px;height:28px;}.op_email3_link{color:#666;}.op_email3_name{color:#666;padding-right:10px;}.op_email3_last_row{padding-left:10px;}.op_email3_label{position:relative;top:-2px;}.op_email3_radio{_position:relative;_top:-1px;}.op_email3_table span.c-input input{margin-left:5px;width:155px;}.op_email3_table span.c-input .c-icon-left{margin-right:0;border-right:1px solid #d8d8d8;padding-right:3px;}.op_email3_table label{margin-right:10px;float:left;}.op_email3_padding_left{padding-left:10px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("email3",function(){A.setup(function(){var c=this;var b=c.data.urls;var a=c.find(".op_email3_radio");a.each(function(d,e){$(e).click(function(){c.find(".op_email3_fpsw")[0].href=b[d][0];c.find(".op_email3_reg")[0].href=b[d][1]}).change(function(){c.find(".op_email3_fpsw")[0].href=b[d][0];c.find(".op_email3_reg")[0].href=b[d][1]})})})});';   // js字串，不含<script标签
      private static $uiList = 'input,btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
