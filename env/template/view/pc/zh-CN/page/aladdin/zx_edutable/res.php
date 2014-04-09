<?php 
  class CssJs_Util_zx_edutable
   {
      private static $cssStr = '.op-zx-edutable{width:100%;text-align:left;border-collapse:collapse;}.op-zx-edutable th{width:5.4em;white-space:nowrap;vertical-align:top;}.op-zx-edutable th,.op-zx-edutable td{padding:2px 0;}.op-zx-edutable-limit{overflow:hidden;width:36.15em;line-height:20px;height:20px;}.op-zx-edutable-limit a{margin-right:25px;display:inline-block;}';  // css字串，不含<style>和</style>标签
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
