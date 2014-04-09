<?php 
  class CssJs_Util_zipcode
   {
      private static $cssStr = '.op_zipcode_title{font-weight:bold;font-size:1.08em;font-family:\'微软雅黑\';}.op_zipcode_linklabel{color:gray;}.op_zipcode_result{display:none;}.op_zipcode_tip{color:gray;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("zipcode",function(){A.setup(function(){var f=this;var b=f.find(".op_zipcode_form");var a=f.find(".op_zipcode_txt");var d=f.find(".op_zipcode_btn");var e=a.val();function c(){var g=$.trim(a.val());if(g!=""&&g!=e){b.get(0).submit()}}a.focus(function(){var g=$.trim(a.val());if(g==e){a.val("");a.removeClass("op_zipcode_tip")}});a.blur(function(){var g=$.trim(a.val());if(g==""){a.val(e);a.addClass("op_zipcode_tip")}});b.submit(c);d.click(c)})});';   // js字串，不含<script标签
      private static $uiList = 'img,btn,input,tool';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
