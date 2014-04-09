<?php 
  class CssJs_Util_zx_normalbaike
   {
      private static $cssStr = '.op_zx_normalbake{line-height:22px;padding:15px;background:#f8f8f8;width:606px;font-size:13px;overflow:hidden;}.op_zx_normalbake h3{font-size:14px;}.op_zx_normalbake_link{margin-top:2px;}.op_zx_normalbake_link span{padding:0 4px;}.op_zx_normalbake_link span,.op_zx_normalbake_link a{float:left;}';  // css字串，不含<style>和</style>标签
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
