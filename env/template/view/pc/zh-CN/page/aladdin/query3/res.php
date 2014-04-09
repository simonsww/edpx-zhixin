<?php 
  class CssJs_Util_query3
   {
      private static $cssStr = '.op_query3_form{position:relative;z-index:1;}.op_query3_info span{color:#666;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("query3",function(){A.setup(function(){var b=this;var a=b.find(".op_query3_submit");$.each(a,function(c,d){$(d).click(function(){var e=d;do{if(e.tagName=="FORM"){e.submit()}}while(e=e.parentNode)})})})});';   // js字串，不含<script标签
      private static $uiList = 'input,btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
