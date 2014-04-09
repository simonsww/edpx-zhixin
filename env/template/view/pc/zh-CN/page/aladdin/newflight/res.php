<?php 
  class CssJs_Util_newflight
   {
      private static $cssStr = '.op_flight_content{margin:9px 0 0;}.op_flight_action{font-weight:bold;}.op_flight_action_pass{font-size:.923em;color:#fff;background:#0090cc;padding:0 3px;_padding-top:2px;*padding-top:2px;}.op_flight_up{font-size:.923em;color:#fff;background:#cc8b00;padding:0 2px;_padding-top:2px;*padding-top:2px;}.op_flight_down{font-size:.923em;color:#fff;background:#008000;padding:0 2px;_padding-top:2px;*padding-top:2px;}.op_flight_actualtime{font-weight:bold;}.op_flight_arrange{color:#7f7f7f;}.op_flight_morelink{font-size:.923em;margin:7px 0 0;}.op_flight_morelink a{color:#7b78c7;font-family:宋体;}.op_flight_content td{white-space:nowrap;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'table';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
