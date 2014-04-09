<?php 
  class CssJs_Util_qunar_dujia02
   {
      private static $cssStr = '';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("qunar_dujia02",function(){A.setup(function(){var b=A.baidu,f=this;var e=f.data.dep||"";var c=function(g){return(g||"").replace(/##tpl##/g,"op-"+f.data.tpl)};var d=(function(){var i;var h=f.find("."+c("##tpl##-title"));var g=f.find("."+c("##tpl##-dep-container"));if(g.length){A.use("dropdown21",function(){i=A.ui.dropdown21(g.get(0),{type:"custom",width:350,onchange:function(){e=i.getValue();k()}});var k=function(){e=i.getValue();if(e.length>3){h.find("."+c("##tpl##-title-longdep"))}else{h.find("."+c("##tpl##-title-longdep"))}};if(e){i.setValue(e)}k();var j=f.find("."+c("##tpl##-dep-tab"));var m=f.find("."+c("##tpl##-dep-panel"));var l=0;var n=c("##tpl##-dep-tab-active");var o=c("##tpl##-dep-panel-active");j.each(function(p,q){if(p<m.length){$(q).bind("click",function(){j.eq(l).removeClass(n);m.eq(l).removeClass(o);l=p;j.eq(l).addClass(n);m.eq(l).addClass(o)})}})})}return{dispose:function(){if(i&&i.dispose){i.dispose()}}}})();var a=(function(){var l=f.find("."+c("##tpl##-query-container"));var k=f.find("."+c("##tpl##-query"));var j=false;var m=c("##tpl##-query-container-active");k.bind("focus",function(p){if(!k.val()){l.addClass(m)}});k.bind("keyup",function(p){if(!k.val()){l.addClass(m)}else{l.removeClass(m)}});l.bind("mouseenter",function(){j=true});l.bind("mouseleave",function(){j=false});var h=function(){if(!j){l.removeClass(m)}};$(document).bind("mousedown",h);var o=function(){var p=k.val();var q=[];if(e){q.push("dep="+encodeURIComponent(e))}if(p){q.push("query="+encodeURIComponent(p))}return"http://dujia.qunar.com/p/slist?"+q.join("&")};var i=f.find("."+c("##tpl##-hot-query-link")),n;i.each(function(q,p){var r=(p.innerText||p.textContent);$(p).bind("click",function(s){l.removeClass(m);k.val(r)})});var g=f.find("."+c("##tpl##-search-btn"));g.bind("click",function(p){g.attr("href",o()+"&tf=bd_zhixin_search_04&ex_track=bd_zhixin_dujia_theme_02")});return{dispose:function(){$(document).unbind("mousedown",h)}}})();this.dispose=function(){a.dispose();d.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'input,btn,dropdown2,img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
