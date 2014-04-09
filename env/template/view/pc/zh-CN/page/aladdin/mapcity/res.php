<?php 
  class CssJs_Util_mapcity
   {
      private static $cssStr = '.op-mapcity-gray{color:#999;}.op-mapcity-btm{margin-bottom:15px;}.op-mapcity-just{text-align:justify;}.op-mapcity-showurl{position:absolute;width:100%;left:276px;bottom:0;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("mapcity",function(){A.setup(function(){var h=this;var e=h.find(".op-mapcity-input");if(e.length>0){var c=e.val();var d=h.find(".op-mapcity-form")[0];var f=h.data.citycode;var g=h.data.mapurl;var b=h.data.labelplace;e.blur(function(){if(!e.val()){e.val(c);e.css("color","#999")}});e.focus(function(){if(e.val()==c){e.val("")}e.css("color","#000")});h.find(".op-mapcity-submit").click(function(){var i=e.val();if(i==""||i==c){d.action=h.data.titleUrl;d.submit()}else{i="&wd="+i+"&c="+f;i=encodeURIComponent(i);d.action=g+i;d.submit()}});function a(i){if(i&&i.preventDefault){i.preventDefault()}else{window.event.returnValue=false}}$(d).submit((function(){return function(j){var i=e.val();if(i==""){e.focus();a(j);return false}else{i="&wd="+i+"&c="+f;i=encodeURIComponent(i);d.action=g+i;return true}}})())}})});';   // js字串，不含<script标签
      private static $uiList = 'input,btn,img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
