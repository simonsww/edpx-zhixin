<?php 
  class CssJs_Util_right_special
   {
      private static $cssStr = '.opr-special-img{position:relative;display:block;text-decoration:none;}.opr-special-info,.opr-special-bg{position:absolute;bottom:0;left:0;}.opr-special-info{color:#fff;z-index:100;padding-left:10px;}.opr-special-bg{width:100%;background:#000;opacity:.65;fliter:alpha(opacity=65);}.opr-special-gapt{margin-top:18px;}';  // css字串，不含<style>和</style>标签
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
