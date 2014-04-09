<?php 
  class CssJs_Util_right_repair_warranties
   {
      private static $cssStr = '.opr-repair-warranties{width:272px;margin-bottom:20px;}.opr-repair-warranties-title{font-size:14px;font-weight:bold;background:url(http://www.baidu.com/aladdin/img/right_relainfo/horizon.png) repeat-x 0 bottom;margin-bottom:2px;}.opr-repair-warranties-title span{background:#fff;padding-right:10px;}input.opr-repair-warranties-placeholder{color:#b4b4b4;}.opr-repair-warranties-help{display:inline-block;font-size:12px;clear:both;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_repair_warranties",function(){A.setup(function(){var c=this;var b=c.find(".opr-repair-warranties-sn").eq(0);var a=c.find(".opr-repair-warranties-button").eq(0);b.on("focus",function(){if(this.value==c.data.defaulttext){this.value=""}});b.on("blur",function(){this.value=this.value.replace(/^\\s*|\\s*$/g,"");if(this.value==""){this.value=c.data.defaulttext}if(this.value==""||this.value==c.data.defaulttext){a.addClass("c-btn-disable");b.addClass("opr-repair-warranties-placeholder");a.attr("data-nolog","")}else{a.removeClass("c-btn-disable");b.removeClass("opr-repair-warranties-placeholder");a.removeAttr("data-nolog")}});b.on("keydown",function(d){b.removeClass("opr-repair-warranties-placeholder");a.removeClass("c-btn-disable");a.removeAttr("data-nolog")});b.on("paste",function(d){b.removeClass("opr-repair-warranties-placeholder");a.removeClass("c-btn-disable");a.removeAttr("data-nolog")});a.on("mousedown",function(d){this.setAttribute("href",this.getAttribute("queryUrl")+b.val())})})});';   // js字串，不含<script标签
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
