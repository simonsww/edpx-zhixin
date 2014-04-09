<?php 
  class CssJs_Util_right_result
   {
      private static $cssStr = '.opr-result{font-size:12px;color:#333;width:270px;}.container_l .opr-result-l{width:440px;}.opr-result-title{font-size:16px;}.opr-result-content,.opr-result-summary em{text-decoration:none;}.opr-result-summary{color:#000;}.opr-result-showurl{color:#008000;}';  // css字串，不含<style>和</style>标签
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
