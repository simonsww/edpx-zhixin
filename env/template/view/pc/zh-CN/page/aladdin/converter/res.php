<?php 
  class CssJs_Util_converter
   {
      private static $cssStr = '.op_converter{padding-top:6px;}.op_converter_type{width:100px;white-space:nowrap;}.op_converter_from{width:74px;white-space:nowrap;}.op_converter_to{width:74px;white-space:nowrap;}.op_converter_table optgroup option{padding-left:-60px;}.op_converter_table td{padding:0 6px 0 0;font-size:1em;text-align:left;}.op_converter_table span{white-space:nowrap;}.op_converter_table select{height:22px;line-height:22px;}.op_converter_table input{height:22px;*height:18px;_height:18px;line-height:18px;}.op_converter_txt{width:86px;}.op_converter_btn{background:url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat -100px 0;color:#000;float:left;cursor:pointer;height:24px;line-height:24px;text-align:center;text-decoration:none;width:81px;}.op_converter_btn:hover,.op_converter_btn:active,.op_converter_btn:focus{background:url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat;}.op_converter_logo{width:64px;height;64px;}.op_converter_title{font-weight:bold;padding-bottom:4px;}.op_converter_result{font-size:1.4em;line-height:22px;}.op_converter_support{line-height:22px;color:#666;}.op_converter_error{display:none;color:#F00;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = '';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
