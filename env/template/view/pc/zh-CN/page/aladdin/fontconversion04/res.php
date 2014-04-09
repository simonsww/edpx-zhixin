<?php 
  class CssJs_Util_fontconversion04
   {
      private static $cssStr = '.op_fontconver{padding:0;margin:0;}.op_fontconver_canvas{position:relative;z-index:1;}.op_fontconver_text{word-wrap:break-word;word-break:keep-all;padding:2px;font-family:arial,simsun;resize:none;overflow-y:hidden;border:1px solid #999;border-color:#999 #d8d8d8 #d8d8d8 #999;outline:none;color:#ACACAC;width:534px;height:124px;text-align:left;margin:0;display:block;font-size:1em;}.op_fontconver_text_normal{color:#000;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
