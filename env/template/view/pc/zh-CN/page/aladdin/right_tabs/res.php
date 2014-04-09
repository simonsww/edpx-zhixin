<?php 
  class CssJs_Util_right_tabs
   {
      private static $cssStr = '';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_tabs",function(){A.setup(function(){var a=this,c;var b=a.find(".opr_tabs_content");A.use("tabs5",function(){c=A.ui.tabs5(a.find(".c-tabs")[0],{onChange:function(){var d=b.eq(this.current).find("img");if(d.attr("link")){d.attr("src",d.attr("link"));d.removeAttr("link")}}})});this.dispose=function(){c&&c.dispose&&c.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'tabs';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
