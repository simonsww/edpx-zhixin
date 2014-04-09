<?php 
  class CssJs_Util_tieba_kv
   {
      private static $cssStr = '.op_tieba_kv_center,.op_tieba_kv_right{color:#666;}.op_tieba_kv_header_right{color:#000;}.op_tieba_kv_line{height:0;border:none;border-top:1px solid #efefef;display:block;overflow:hidden;}.op_tieba_kv_list_table .op_tieba_kv_list_table_td{color:#666;}';  // css字串，不含<style>和</style>标签
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
