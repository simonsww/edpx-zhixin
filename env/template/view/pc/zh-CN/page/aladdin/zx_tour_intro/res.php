<?php 
  class CssJs_Util_zx_tour_intro
   {
      private static $cssStr = '.op-zx-tour-intro-left a,.op-zx-tour-intro-left img{display:block;}.op-zx-tour-intro-showurl{margin-top:3px;}.op-zx-tour-intro-country{margin-right:16px;}.op-zx-tour-intro-info{margin-left:16px;}.op-zx-tour-intro-tag a{white-space:nowrap;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
