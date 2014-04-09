<?php 
  class CssJs_Util_mapsite
   {
      private static $cssStr = '';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("mapsite",function(){A.setup(function(){var e=this,a=("placeholder" in document.createElement("input"));A.use("tabs5",function(){A.ui.tabs5(e.find(".op-mapsite-tabs")[0],{toggleSep:false})});d();function d(){var f=e.find(".op-mapsite-content");f.each(function(j,k){var h=$(k);var l=h.find(".op-mapsite-input").eq(0);if(!a){b(l)}var g=h.find(".op-mapsite-btn");g.each(function(n,m){var o=$(m);o.click(function(){var r=$.trim(l.val());var q=l.attr("data-placeholder");if(r===""||r===q){return false}var p=o.attr("data-d")==="bus"?"bse":"nse";var i=o.attr("data-b");c(p,i,r)})})})}function c(j,f,h){var i="http://map.baidu.com/?newmap=1&s=";var g=j+"&wd="+h+"&t="+(+(f=="sn"))+"&"+f+"=1$$$$"+e.data.coord+"$$"+e.data.name+"$$$$$$";g=encodeURIComponent(g+e.data.mapurl);g="http://map.baidu.com/?newmap=1&s="+g+"&req="+encodeURIComponent(g);window.open(g)}function b(g){var f=$.trim(g.attr("data-placeholder"));if(f){g.val(f).css("color","#666").focus(function(){if(g.val()==f){g.val("").css("color","")}}).blur(function(){if($.trim(g.val())==""){g.val(f).css("color","#666")}})}}})});';   // js字串，不含<script标签
      private static $uiList = 'img,input,tabs,btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
