<?php 
  class CssJs_Util_singlequerybox2
   {
      private static $cssStr = '.op_singlequerybox2_subtitle{font-size:1.08em;font-weight:bold;}.op_singlequerybox2 td{vertical-align:middle;}.op_singlequerybox2_init{color:#ccc;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("singlequerybox2",function(){A.setup(function(){var h=this;var b=null,a=null;var g=h.find("#op_singlequerybox2_i").eq(0);var e=g.attr("tip");var d;g.val(e);var c=document.op_singlequerybox2_f;g.on("focus",function(){d=$(this).val();$(this).removeClass("op_singlequerybox2_init");if(e!==""&&d==e){$(this).val("")}});g.on("blur",function(){d=$(this).val();if(e!==""&&(d==""||d==e)){$(this).val(e);$(this).addClass("op_singlequerybox2_init")}});g.on("keydown",function(f){f=window.event||f;d=$(this).val();if(f.keyCode==13&&d==""){return false}});window.op_singlequerybox2_s=function(){var f=g.val();if(f==e||f==""){return true}g.val(c.job_cit.value+" "+f);c.submit();b=setTimeout(function(){g.val(f)},100);return false};window.op_singlequerybox2_ons=function(){var f=g.val();if(f==e&&f==""){return false}else{g.val(c.job_cit.value+" "+f);a=setTimeout(function(){g.val(f)},100)}return true};window.op_singlequerybox2_l=function(){d=g.val();return d==e?"":d};this.dispose=function(){clearTimeout(b);clearTimeout(a)}})});';   // js字串，不含<script标签
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
