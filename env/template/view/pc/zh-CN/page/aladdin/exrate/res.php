<?php 
  class CssJs_Util_exrate
   {
      private static $cssStr = '.op_exrate_sub_title{font-family:"微软雅黑" arial;font-size:1.23em;}.op_exrate_result{font-family:"微软雅黑" arial;font-size:1.69em;}.op_exrate_table .c-dropdown2{width:120px;}.op_exrate_table .c-dropdown2-option{padding-left:10px;}.op_exrate_table .op_exrate_td_sp{vertical-align:middle;font-weight:bold;}.op_exrate_errors{position:relative;top:26px;}.op_exrate_errors span{display:none;color:#f00;}.op_exrate_txt_e,.op_exrate_from_e,.op_exrate_to_e,.op_exrate_addmodle{float:left;}.op_exrate_txt_e,.op_exrate_from_e,.op_exrate_to_e{position:absolute;width:140px;}.op_exrate_txt_e{left:0;}.op_exrate_from_e{left:110px;}.op_exrate_to_e{left:291px;}.op_exrate_tiptop{margin-top:20px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'tool,btn,input,dropdown2';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
