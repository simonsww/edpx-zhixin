<?php 
  class CssJs_Util_qunar_dujia04
   {
      private static $cssStr = '';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("qunar_dujia04",function(){A.setup(function(){var b=A.baidu,d=this;A.use("tabs5",function(){A.ui.tabs5(d.find(".c-tabs")[0])});var h=d.data.dep||"";var k=function(m){return(m||"").replace(/##tpl##/g,"op-"+d.data.tpl)};var i=d.find("."+k("##tpl##-query-container"));var g=d.find("."+k("##tpl##-query"));var e=false;g.bind("focus",function(m){if(!g.val()){i.addClass(k("##tpl##-query-container-active"))}});g.bind("keyup",function(m){if(!g.val()){i.addClass(k("##tpl##-query-container-active"))}else{i.removeClass(k("##tpl##-query-container-active"))}});i.bind("mouseenter",function(){e=true});i.bind("mouseleave",function(){e=false});var f=function(){if(!e){i.removeClass(k("##tpl##-query-container-active"))}};$(document).bind("mousedown",f);var l=function(){var n=g.val();var o=["p"];var m=["list"];if(h){o.push("d");m.push(h)}if(n){o.push("q");m.push(n)}return"http://dujia.qunar.com/"+o.join("")+"/"+m.join("_")};var c=d.find("."+k("##tpl##-hot-query-link")),j;c.each(function(m){var n=(m.innerText||m.textContent);$(m).bind("click",function(){i.removeClass(k("##tpl##-query-container-active"));g.val(n)})});var a=d.find("."+k("##tpl##-search-btn"));a.bind("click",function(m){a.attr("href",l()+"?tf=bd_zhixin_search_05&ex_track=bd_zhixin_dujia_visa_02")});this.dispose=function(){$(document).unbind("mousedown",f)}})});';   // js字串，不含<script标签
      private static $uiList = 'input,btn,tabs,img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
