<?php 
  class CssJs_Util_pcsoft
   {
      private static $cssStr = '.op_pcsoft_table th{width:100%;}.op_pcsoft_table td{white-space:nowrap;}.op_pcsoft_spancolor,.op_pcsoft_spangray{display:inline-block;padding:1px 0;line-height:12px;width:14px;color:#fff;font-size:12px;text-align:center;}.op_pcsoft_spancolor{background-color:#e44d4b;}.op_pcsoft_spangray{background-color:#68b0da;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'table,index';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
