<?php 
  class CssJs_Util_right_dongjing
   {
      private static $cssStr = '.opr-dongjing-narrow{width:259px;}.opr-dongjing{font-weight:bold;font-size:1.1em;display:block;padding-bottom:4px;}.opr-dongjing-new{line-height:22px;}.opr-dongjing-new ul li{list-style:none;clear:both;}.opr-dongjing-left{white-space:nowrap;color:#666;vertical-align:top;}.opr-dongjing-des{padding-top:15px;line-height:22px;clear:both;}';  // css字串，不含<style>和</style>标签
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
