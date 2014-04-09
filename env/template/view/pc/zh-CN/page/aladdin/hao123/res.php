<?php 
  class CssJs_Util_hao123
   {
      private static $cssStr = '.op_hao123_url span{color:#008000;}.op_hao123_link{margin:5px 0 0 15px;width:31%;}.op_hao123_link li{float:left;width:50%;}.op_hao123_link li a{text-decoration:none;}.op_hao123_link li a:hover{text-decoration:underline;}';  // css字串，不含<style>和</style>标签
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
