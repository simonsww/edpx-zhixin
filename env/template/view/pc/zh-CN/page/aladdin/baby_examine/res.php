<?php 
  class CssJs_Util_baby_examine
   {
      private static $cssStr = '';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("baby_examine",function(){A.setup(function(){var a=function(c){return c.replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/"/g,"&quot;").replace(/\'/g,"&#39;")};var b=this;A.use("tabs5",function(){var c=new Array(10);c[b.data.selectedTid]=true;A.ui.tabs5(b.find(".c-tabs")[0],{toggleSep:true,current:b.data.selectedTid,onChange:function(k,j){if(c[k]){return}var i=$(j);var h=i.closest(".c-tabs").find(".c-tabs-nav-li").eq(k).text();i.addClass("op-baby-examine-loading");b.ajax(b.data.q,b.data.srcid,{co:$.format("tab[text=#{0}]",$.trim(h)),success:function(l){var m;if(!l[0]||!l[0].tab||!l[0].tab[0]){i.find(".op-baby-examine-content").html(\'<p class="op-baby-examine-none">暂无信息</p>\');i.removeClass("op-baby-examine-loading");return}m=l[0].tab[0];i.find(".op-baby-examine-content").html(g(m));i.removeClass("op-baby-examine-loading");e(i);c[k]=true}})}});function d(k,j){k.toggleClass("op-baby-examine-collapse");if(k.hasClass("op-baby-examine-collapse")){if(!j){var i=b.find(".op-baby-examine").offset().top;var h=$("html").scrollTop()||$("body").scrollTop();if(i<h){$("html,body").animate({scrollTop:i-36},"fast","linear")}}k.find(".op-baby-examine-handle-text").text("显示完整内容");k.find(".c-icon-chevron-top").removeClass("c-icon-chevron-top").addClass("c-icon-chevron-bottom")}else{k.find(".op-baby-examine-handle-text").text("收起");k.find(".c-icon-chevron-bottom").removeClass("c-icon-chevron-bottom").addClass("c-icon-chevron-top")}}function g(k){var i=[],j=k.p,h=k.title;if(h){if(h.detailText&&h.detailUrl){i.push($.format(\'<h4 class="op-baby-examine-title">#{0}<a href="#{1}" target="_blank" class="op-baby-examine-link">[#{1}]</a></h4>\',a(h.text),a(h.detailText),a(h.detailUrl)))}else{i.push($.format(\'<h4 class="op-baby-examine-title">#{0}</h4>\',a(h.text)))}}$.each(j,function(m,l){if(l.title){i.push($.format(\'<h5 class="op-baby-examine-ptitle" style="visibility:visible">#{0}</h5>\',a(l.title)))}i.push($.format(\'<p class="op-baby-examine-p" style="visibility:visible">#{0}</p>\',f(a(l.content))))});return i.join("")}function f(h){h=h.replace(/\\\\n/g,\'<br/><span class="op-baby-examine-jg"></span>\');h=h.replace(/\\[url\\](.*?)\\[\\/url\\]/g,\'<a href="$1" target="_blank" class="OP_LOG_LINK">$1</a>\');return h}function e(i){var h=i.find(".op-baby-examine-content").height();if(h>b.data.maxHeight){i.addClass("op-baby-examine-show-handle");d(i,true)}}b.find(".op-baby-examine-p,.op-baby-examine-ptitle").each(function(){var h=$(this).html();$(this).html(f(h)).css("visibility","visible")});e($(".op-baby-examine-selected-panel"));b.find(".op-baby-examine").delegate(".op-baby-examine-handle","click",function(){var h=$(this).closest(".op-baby-examine-panel");d(h)})})})});';   // js字串，不含<script标签
      private static $uiList = 'tabs,img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
