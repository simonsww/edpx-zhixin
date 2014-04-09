<?php 
  class CssJs_Util_text02
   {
      private static $cssStr = '.op_text02_aladdinlinks{margin-bottom:.2em;margin-top:.2em;}.op_text02_aladdinlinks td{word-break:break-all;word-wrap:break-word;border:0;cellpadding:0;}.op_text02_aladdinlinks .td1{padding-right:3.5em;}.op_text02_table td.f{width:100%;}.op_text02{line-height:1.54;}';  // css字串，不含<style>和</style>标签
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
