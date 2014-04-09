<?php 
  class CssJs_Util_qunar_hotel01
   {
      private static $cssStr = '';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("qunar_hotel01",function(){A.setup(function(){var c=this;function b(g){return"op-"+c.data.TPL_NAME+"-"+g}var f=/msie 6/i.test(navigator.userAgent);var e=c.find("."+b("jssearch"));if(e.size()>0){e.removeClass(b("hide"));if(f){var d=e[0];var a=d.offsetHeight;if(a>48){d.style.height="48px";d.style.overflow="hidden"}}}c.dispose=function(){}})});';   // js字串，不含<script标签
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
