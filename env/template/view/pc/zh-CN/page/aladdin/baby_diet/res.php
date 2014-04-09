<?php 
  class CssJs_Util_baby_diet
   {
      private static $cssStr = '.op-baby-diet-label{text-align:center;}.op-baby-diet img{min-height:1px;}.op-baby-diet-more{white-space:nowrap;}.op-baby-diet-loading{background:url(http://www.baidu.com/aladdin/img/videoidea/loading_L.gif) no-repeat 50% 50%;height:100px;overflow:hidden;}.op-baby-diet-loading *{visibility:hidden;}.op-baby-diet-none{padding-top:20px;text-align:center;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("baby_diet",function(){A.setup(function(){var a=function(e){return e.replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/"/g,"&quot;").replace(/\'/g,"&#39;")};var d=this,b=false,c=new Array(10);A.use("tabs5",function(){function g(k){var j=[];if(k.stab){j.push(\'<ul class="c-tabs-nav">\');$.each(k.stab,function(m,l){if(m){j.push(\'<li class="c-tabs-nav-sep"></li>\')}j.push($.format(\'<li class="c-tabs-nav-li OP_LOG_BTN" data-click="{fm:\\\'beha\\\'}">#{0}</li>\',a(l.text)))});j.push("</ul>");$.each(k.stab,function(m,l){j.push(\'<div class="c-tabs-content c-gap-top-small">\');j.push(h(l));j.push("</div>")})}else{j.push(h(k))}return j.join("")}function h(k){var j=[];if(k.image&&k.image[0]){j.push(e(k));j.push(\'<div class="c-row c-gap-top">\')}else{j.push(i(k));j.push(\'<div class="c-row c-gap-top-small">\')}if(k.morecat&&k.morecat.link){j.push(\'<div class="c-span6">\')}else{j.push(\'<div class="c-span24">\')}$.each(k.morelink||[],function(m,l){j.push($.format(\'#{0}<a href="#{1}" target="_blank">#{2}</a>\',m==0?"":" - ",a(l.url),a(l.text)));if(k.morecat&&k.morecat.link){return false}});j.push("</div>");if(k.morecat&&k.morecat.link){j.push($.format(\'<div class="c-span18 c-span-last"><b>#{0}</b>\',a(k.morecat.text)));$.each(k.morecat.link||[],function(m,l){j.push($.format(\'#{0}<a href="#{1}" target="_blank">#{2}</a>\',m!=0?" - ":"",a(l.url),a(l.text)))});j.push("</div>")}j.push("</div>");return j.join("")}function i(k){var j=[];j.push(\'<div class="c-row">\');$.each(k.tip,function(m,l){j.push($.format("<div>#{0}</div>",a(l.text)))});j.push("</div>");return j.join("")}function e(k){var j=[];j.push(\'<div class="c-row">\');$.each(k.image,function(m,l){j.push($.format(\'<div class="c-span6#{0}">\',m==3?" c-span-last":""));j.push($.format(\'<a href="#{0}" target="_blank"><img class="c-img c-img6" src="#{1}" /></a>\',a(l.url),a(l.src)));j.push($.format(\'<div class="op-baby-diet-label c-gap-top"><a href="#{0}" target="_blank">#{1}</a></div></div>\',a(l.textUrl),a(l.text)))});j.push("</div>");return j.join("")}function f(o,n,j){if(c[o]){return}var m=$(n),l=false;if(!b){m.addClass("op-baby-diet-loading");d.ajax(d.data.q,d.data.srcid,{success:function(p){if(!p[0]||!p[0].tab||!p[0].tab[0]){m.html(\'<p class="op-baby-diet-none">暂无信息</p>\');m.removeClass("op-baby-diet-loading");return}b=p[0].tab;m.html(g(b[o]));if(b[o].stab){m.addClass("c-tabs");A.ui.tabs5(m[0],{toggleSep:false,current:j})}else{m.addClass("c-gap-top")}m.removeClass("op-baby-diet-loading");c[o]=true},error:function(){m.html(\'<p class="op-baby-diet-none">暂无信息</p>\');m.removeClass("op-baby-diet-loading").removeClass("c-tabs")}});return}m.html(g(b[o]));if(b[o].stab){m.addClass("c-tabs");var k={toggleSep:false};if(!l&&d.data.selectedTid==o){k.current=d.data.selectedStid;l=true}A.ui.tabs5(m[0],k)}else{m.addClass("c-gap-top")}c[o]=true}A.ui.tabs5(d.find(".op-baby-diet-tab")[0],{toggleSep:true,current:d.data.selectedTid,onChange:function(k,j){if(d.data.selectedTid==k){return}f(k,j,0)}});A.ui.tabs5(d.find(".op-baby-diet-stab")[0],{toggleSep:false,current:d.data.selectedStid,onChange:function(k,j){if(d.data.selectedStid==k){return}var l=d.find(".op-baby-diet-tab>.c-tabs-content").eq(d.data.selectedTid).removeClass("c-tabs");f(d.data.selectedTid,l,k)}})})})});';   // js字串，不含<script标签
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
