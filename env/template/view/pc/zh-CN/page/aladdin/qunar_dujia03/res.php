<?php 
  class CssJs_Util_qunar_dujia03
   {
      private static $cssStr = '';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("qunar_dujia03",function(){A.setup(function(){var a=A.baidu,d=this;var e=d.data.dep||"";var b="";var g="";if(d.data.type=="sight"){g="02";b="&ex_track=bd_zhixin_dujia_jingdian_02"}else{if(d.data.type=="resort"){g="03";b="&ex_track=bd_zhixin_dujia_hotel_02"}}var f=function(j){return(j||"").replace(/##tpl##/g,"op-"+d.data.tpl)};var i=(function(){var l;var k=d.find("."+f("##tpl##-title"));var j=d.find("."+f("##tpl##-dep-container"));if(j.length){A.use("dropdown21",function(){l=A.ui.dropdown21(j.get(0),{type:"custom",width:350,onchange:function(){e=l.getValue();if(h&&h.changeDep){h.changeDep(e)}n()}});var n=function(){e=l.getValue();if(e.length>3){k.find("."+f("##tpl##-title-longdep"))}else{k.find("."+f("##tpl##-title-longdep"))}};if(e){l.setValue(e)}n();var m=d.find("."+f("##tpl##-dep-tab"));var p=d.find("."+f("##tpl##-dep-panel"));var o=0;var q=f("##tpl##-dep-tab-active");var r=f("##tpl##-dep-panel-active");m.each(function(s,t){if(s<p.length){$(t).bind("click",function(){m.eq(o).removeClass(q);p.eq(o).removeClass(r);o=s;m.eq(o).addClass(q);p.eq(o).addClass(r)})}})})}return{dispose:function(){if(l&&l.dispose){l.dispose()}}}})();var c=(function(){var o=d.find("."+f("##tpl##-query-container"));var n=d.find("."+f("##tpl##-query"));var l=false;var p=f("##tpl##-query-container-active");n.bind("focus",function(s){if(!n.val()){o.addClass(p)}});n.bind("keyup",function(s){if(!n.val()){o.addClass(p)}else{o.removeClass(p)}});o.bind("mouseenter",function(){l=true});o.bind("mouseleave",function(){l=false});var m=function(){if(!l){o.removeClass(p)}};$(document).bind("mousedown",m);var r=function(){var s=n.val();var t=[];if(e){t.push("dep="+encodeURIComponent(e))}if(s){t.push("query="+encodeURIComponent(s))}if(s==d.data.key){t.push("sight_id="+encodeURIComponent(d.data.sightid))}return"http://dujia.qunar.com/p/slist?"+t.join("&")};var k=d.find("."+f("##tpl##-hot-query-link")),q;k.each(function(t,s){var u=(s.innerText||s.textContent);$(s).bind("click",function(){o.removeClass(p);n.val(u)})});var j=d.find("."+f("##tpl##-search-btn"));j.bind("click",function(s){j.attr("href",r()+"&tf=bd_zhixin_search_"+g+b)});return{dispose:function(){$(document).unbind("mousedown",m)}}})();var h=(function(){var k=false;var l=function(s,p){if(p<$.getByteLength(s.replace(/(<em>|<\\/em>)/g,""))){var r=[];s=s.replace(/<em>.*?<\\/em>/g,function(v,u){var t={start:u,end:u+v.length-9};r.push(t);return v.substring(4,v.length-5)});var q=$.subByte(s,p);for(var o=0;o<r.length;o++){if(r[o].start>=q.length-1){break}if(r[o].end>q.length-1){r[o].end=q.length-1}q=q.substring(0,r[o].start)+"<em>"+q.substring(r[o].start,r[o].end)+"</em>"+q.substring(r[o].end)}return q}return s};var j=function(p){if(k){return}var o="http://www.baidu.com/qunarui/api/zhixin/searchSightRoute?query="+encodeURIComponent(d.data.key)+"&departure="+encodeURIComponent(p);$.ajax({url:o,dataType:"jsonp",success:n,error:function(){},timeout:5000})};var m=\'<li class="c-span24 #{cls}">#{icon}<a href="#{link}" target="_blank">#{title}</a><span class="##tpl##-price">&yen;#{price}起</span></li>\';var n=function(p){if(k){return}if(p.ret&&p.data&&p.data.length){var o=[];$.each(p.data,function(r,q){if(r==3){q.cls="c-span-last"}var s=62;if(q.type){if(q.type=="tuan"){q.icon=\'<i class="c-text c-text-warning">团</i> \'}else{if(q.type=="discount"){q.icon=\'<i class="c-text c-text-warning">惠</i> \'}else{if(q.type=="ticket"){q.icon=\'<i class="c-text c-text-warning">票</i> \'}}}s-=2}q.title=l(q.title,s);if(q.link.indexOf("?")>-1){q.link+="&amp;"}else{q.link+="?"}q.link+="tf="+d.data.tf+"route_"+(r+1)+"&amp;ex_track="+d.data.extrack+"03";o.push($.format(m,q))});d.find("."+f("##tpl##-routes-list")).html(f(o.join("")))}};return{changeDep:j,dispose:function(){if(!k){k=true}}}})();this.dispose=function(){i.dispose();c.dispose();h.dispose()}})});';   // js字串，不含<script标签
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
