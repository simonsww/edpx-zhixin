<?php 
  class CssJs_Util_right_newaction
   {
      private static $cssStr = '.opr-newaction-subtitle{padding:4px 0;background:#fafafa;border-bottom:1px solid #f3f3f3;}.opr-newaction-change{float:right;}.opr-newaction-center{text-align:center;}.opr-newaction-video{position:relative;}.opr-newaction-video .c-icon{position:absolute;left:5px;bottom:5px;}.opr-newaction-share-pre{float:left;line-height:2;}.opr-newaction-lastspan{display:none;}.container_l .opr-newaction-lastspan{display:block;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_newaction",function(){A.setup(function(){var k=this,a=k.data.card,e=a.length,h=[],d=k.find(".opr-newaction-subtitle-cont"),g=k.find(".opr-newaction-change"),c=k.find(".opr-newaction-card-content").eq(0),m=k.find(".opr-newaction-share"),f,b=false,i=16,l=function(p){return Math.ceil(Math.random()*p)};var j=l(e);o(a[j-1]);function o(u){var q,r,t=u.item,p={};d.text(u.title);h=[];if(u.displayType==="text"){q=2;r="<tr><td><strong>#{subtitle}</strong><div>#{abs}</div></td></tr>";h.push(\'<table class="c-table">\');n(u,p,q,r);h.push("</table>")}else{if(u.displayType==="pic"){for(var s=0;s<2;s++){q=4;r=\'<a target="_blank" href="#{link}" class="c-span4 #{lastClass} opr-newaction-center" data-click="{\\\'rsv_re_ename\\\':\\\'#{text}\\\'}"><img src="#{img}" class="c-img c-img4 opr-newaction-img"/><div class="c-gap-top-small">#{text}</div></a>\';h.push(\'<div class="c-row c-gap-top">\');n(u,p,q,r);h.push("</div>")}}else{if(u.displayType==="video"){q=3;r=\'<tr class=""><td><a target="_blank" href="#{link}" class="c-span4 opr-newaction-video c-gap-top"><img src="#{img}" class="c-img c-img4 opr-newaction-img"/><div><i class="c-icon c-icon-play-black"></i></div></a></td><td><div class="c-gap-top"><a target="_blank" href="#{link}">#{text}</a><div class="c-gray">来源：#{from}</div><div class="c-gray">时长：#{time}</div></div></td></tr>\';h.push(\'<table class="opr-newaction-video-table">\');n(u,p,q,r);h.push("</table>")}}}h.push($.format(\'<div class="c-gap-top"><a target="_blank" href="#{link}">#{text}</a></div>\',{link:u.more.link,text:u.more.text}));c.html(h.join(""))}function n(t,v,u,C){var y,w=t.item.length;var x=C.match(/#{\\w+}/g),q=[],B,p={},s=0;if(x&&x.length){while(B=x.pop()){q.push(B.replace(/#|\\{|\\}/g,""))}}while(s<u){if(!v[y=(l(w)-1)]){v[y]=1;var z=t.item[y];for(var r=0;r<q.length;r++){if(q[r]==="cur"){p[q[r]]=y}else{if(q[r]!=="lastClass"){p[q[r]]=z[q[r]]}}}if(t.displayType==="pic"){if(s===(u-1)){p.lastClass="c-span-last opr-newaction-lastspan"}else{if(s===(u-2)){p.lastClass="c-span-last-s"}}}h.push($.format(C,p));s++}}}A.use("share",function(){if(k.data.platform=="ipad"){b=true}f=A.ui.share(m.get(0),{text:m.attr("data-title"),desc:m.attr("data-desc"),hideMore:b,iconSize:i})});g.bind("click",function(){o(a[l(e)-1])});k.dispose=function(){f&&f.dispose&&f.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'table,img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
