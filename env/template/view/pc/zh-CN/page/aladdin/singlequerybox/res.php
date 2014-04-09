<?php 
  class CssJs_Util_singlequerybox
   {
      private static $cssStr = '.op_singlequerybox_none{display:none;}.op_singlequerybox_init{color:#666;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("singlequerybox",function(){A.setup(function(){var c=this;var b=c.find("#op_singlequerybox_i").eq(0);var a=c.find("#op_singlequerybox_tip")[0].innerHTML;b.val(a);b.on("focus",function(){$(this).removeClass("op_singlequerybox_init");var d=$(this).val();if(a!==""&&d==a){$(this).val("")}});b.on("blur",function(){var d=$(this).val();if(a!==""&&(d==""||d==a)){$(this).val(a);$(this).addClass("op_singlequerybox_init")}});window.op_singlequerybox_s=function(){var d=b.val();if(d==a){b.val("")}document.op_singlequerybox_f.submit()};window.op_singlequerybox_l=function(){var d=b.val();return d==a?"":d}})});';   // js字串，不含<script标签
      private static $uiList = 'btn,input';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
