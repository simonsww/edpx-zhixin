<?php 
  class CssJs_Util_baby_general
   {
      private static $cssStr = '.op-baby-general img{min-height:1px;}.op-baby-general-more{white-space:nowrap;}.op-baby-general-loading{background:url(http://www.baidu.com/aladdin/img/videoidea/loading_L.gif) no-repeat 50% 50%;height:110px;overflow:hidden;}.op-baby-general-loading *{visibility:hidden;}.op-baby-general-none{padding-top:20px;text-align:center;}.op-baby-general .c-tabs-nav-li{padding-left:10px;padding-right:10px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("baby_general",function(){A.setup(function(){var a=function(e){return e.replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/"/g,"&quot;").replace(/\'/g,"&#39;")};var d=this,b=false,c=new Array(10);A.use("tabs5",function(){function h(l){var k=[];if(l.stab){k.push(\'<ul class="c-tabs-nav">\');$.each(l.stab,function(n,m){if(n){k.push(\'<li class="c-tabs-nav-sep"></li>\')}k.push($.format(\'<li class="c-tabs-nav-li OP_LOG_BTN" data-click="{fm:\\\'beha\\\'}">#{0}</li>\',a(m.text)))});k.push("</ul>");$.each(l.stab,function(n,m){k.push(\'<div class="c-tabs-content">\');k.push(i(m));k.push("</div>")})}else{k.push(i(l))}return k.join("")}function i(k){if(k.image&&k.image[0]){return e(k)}else{return j(k)}}function j(l){var k=[];k.push(\'<div class="c-row"><div class="c-span24 c-span-last">\');k.push($.format(\'<div>#{0}<a href="#{1}" target="_blank" class="op-baby-general-more">#{2}</a></div>\',a(f(l.summary,d.data.maxlen)),a(l.morelink[0].url),a(l.morelink[0].text)));k.push(\'<ul class="c-row c-gap-top-small">\');$.each(l.link,function(n,m){k.push($.format(\'<li class="c-span12#{0}">• <a href="#{1}" title="#{2}" target="_blank">#{3}</a></li>\',n%2!=0?" c-span-last":"",a(m.url),a(m.text),a(f(m.text,d.data.maxlen_link))))});k.push("</ul></div></div>");return k.join("")}function e(l){var k=[];k.push(\'<div class="c-row">\');k.push($.format(\'<div class="c-span4"><a href="#{0}" target="_blank"><img class="c-img c-img4" src="#{1}" alt="#{2}" /></a></div>\',a(l.image[0].url),a(l.image[0].src),a(l.image[0].alt)));k.push(\'<div class="c-span20 c-span-last">\');k.push($.format(\'<div>#{0}<a href="#{1}" target="_blank" class="op-baby-general-more">#{2}</a></div>\',a(f(l.summary,d.data.maxlen_i)),a(l.morelink[0].url),a(l.morelink[0].text)));k.push(\'<ul class="c-row c-gap-top-small">\');$.each(l.link,function(n,m){k.push($.format(\'<li class="c-span10#{0}">• <a href="#{1}" title="#{2}" target="_blank">#{3}</a></li>\',n%2!=0?" c-span-last":"",a(m.url),a(m.text),a(f(m.text,d.data.maxlen_link_i))))});k.push("</ul></div></div>");return k.join("")}function g(p,o,k){if(c[p]){return}var n=$(o),m=false;if(!b){n.addClass("op-baby-general-loading");d.ajax(d.data.q,d.data.srcid,{success:function(q){if(!q[0]||!q[0].tab||!q[0].tab[0]){n.html(\'<p class="op-baby-general-none">暂无信息</p>\');n.removeClass("op-baby-general-loading");return}b=q[0].tab;n.html(h(b[p]));if(b[p].stab){n.addClass("c-tabs");A.ui.tabs5(n[0],{toggleSep:false,current:k})}else{n.addClass("c-gap-top")}n.removeClass("op-baby-general-loading");c[p]=true},error:function(){n.html(\'<p class="op-baby-general-none">暂无信息</p>\');n.removeClass("op-baby-general-loading").removeClass("c-tabs")}});return}n.html(h(b[p]));if(b[p].stab){n.addClass("c-tabs");var l={toggleSep:false};if(!m&&d.data.selectedTid==p){l.current=d.data.selectedStid;m=true}A.ui.tabs5(n[0],l)}else{n.addClass("c-gap-top")}c[p]=true}function f(n,k){var l="...",m=$.getByteLength(l);if($.getByteLength(n)>k){return $.subByte(n,k-m,l)}return n}A.ui.tabs5(d.find(".op-baby-general-tab")[0],{toggleSep:true,current:d.data.selectedTid,onChange:function(l,k){if(d.data.selectedTid==l){return}g(l,k,0)}});A.ui.tabs5(d.find(".op-baby-general-stab")[0],{toggleSep:false,current:d.data.selectedStid,onChange:function(l,k){if(d.data.selectedStid==l){return}var m=d.find(".op-baby-general-tab>.c-tabs-content").eq(d.data.selectedTid).removeClass("c-tabs");g(d.data.selectedTid,m,l)}})})})});';   // js字串，不含<script标签
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
