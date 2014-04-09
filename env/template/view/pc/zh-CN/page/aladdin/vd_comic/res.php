<?php 
  class CssJs_Util_vd_comic
   {
      private static $cssStr = '.vd-comic-icon{width:16px;height:16px;margin:4px 2px 0 0;background-repeat:no-repeat;float:left;}.vd-comic-new-jmore{clear:both;}.vd-comic-jmoreo,.vd-comic-jmorec{position:relative;}.vd-comic-jmoreo a.vd-comic-jmoreo-a{display:block;}.vd-comic-jmoreo a.vd-comic-jmorec-a{display:none;}.vd-comic-jmorec a.vd-comic-jmoreo-a{display:none;}.vd-comic-jmorec a.vd-comic-jmorec-a{display:block;}.vd-comic-jmoreo .c-icon,.vd-comic-jmorec .c-icon{_vertical-align:middle;}.vd-comic-jmoreo a,.vd-comic-jmorec a{cursor:pointer;color:#00c;text-decoration:underline;}.vd-comic-pagebar{border-bottom:1px solid #eee;color:#666;padding:5px 0 10px 0;}.vd-comic-pagebar div{cursor:pointer;zoom:1;display:inline-block;width:16.6%;color:#0000ce;float:left;}.vd-comic-pagebar a{text-decoration:underline;}.vd-comic-pagebar .vd-comic-pageon a{cursor:default;color:#000;text-decoration:none;}.vd-comic-content{position:relative;height:1%;}.vd-comic-loading{position:absolute;left:0;top:0;height:77px;width:100%;background:#fff;z-index:1;text-align:center;display:none;}.vd-comic-loading-icon{width:30px;height:30px;display:inline-block;background:url(http://www.baidu.com/aladdin/img/videoidea/loading_L.gif) no-repeat;}.vd-comic-new-ulbox li{position:relative;}.vd-comic-new-ulbox li i{position:absolute;overflow:hidden;display:none;}.vd-comic-new-ulbox li div{display:none;}.vd-comic-new-ulbox li.vd-comic-new i{*zoom:1;display:block;right:-10px;top:-3px;}.vd-comic-finish,.vd-comic-update{padding:0 1px;text-align:center;color:#fff;font-size:.92em;background:#2b99ff;}.vd-comic-first{width:100%;text-overflow:ellipsis;overflow:hidden;white-space:nowrap;color:#333;}.vd-comic-split{color:#d8d8d8;}.vd-comic-summary{padding-left:3em;text-indent:-3em;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("vd_comic",function(){A.setup(function(){var h=this;sites=h.data.sites,lessSize=h.data.lessSize,pageSize=h.data.pageSize,finish=h.data.finish,initIndex=0,ajaxFinished=false,loading=h.find(".vd-comic-loading")[0],$tabs=h.find(".c-tabs-li"),$contents=h.find(".vd-comic-box"),episode=sites[initIndex].episode,$curTab=$tabs.eq(initIndex),$curContent=$contents.eq(initIndex),$loading=$(loading);c();a();i(initIndex);function c(){$tabs.click(function(){var q=$(this);var p=q.index(".c-tabs-li");var o=$contents.eq(p);if(q.get(0)!==$curTab.get(0)){g();$curTab.toggleClass("c-tabs-nav-selected");$curTab.prev(".c-tabs-nav-sep").css("visibility","visible");$curTab.next(".c-tabs-nav-sep").css("visibility","visible");q.toggleClass("c-tabs-nav-selected");q.prev(".c-tabs-nav-sep").css("visibility","hidden");q.next(".c-tabs-nav-sep").css("visibility","hidden");o.show();$curContent.hide()}$curTab=q;$curContent=o;if(p>0&&!$curContent.data("loaded")){a();i(p)}})}function a(){$curContent.css({height:"77px"});$loading.show()}function n(){$curContent.css("height","");$loading.hide()}function i(q){var o=h.data.ty;if(o.indexOf("22")>=0){var p="http://v.baidu.com/htvplaysingles/?id="}else{var p="http://v.baidu.com/hcomicsingles/?id="}$.ajax({url:p+h.data.videoResourceId+"&site="+sites[q]["site_url"],dataType:"jsonp",success:function(r){if(ajaxFinished){return}j(l(r.videos,finish),q);n()}})}function l(p,o){return o?p:p.reverse()}function j(r,q){var p=$contents.eq(q);var t=p.find(".vd-comic-new-ulbox:first");var s=b(r,q);if(!t.find("ul.vd-comic-new-ulbox_ul_less").length){t.append(s[0])}t.append(s[1]);var u=$(d(r,q));t.after(u);e(u);var o=p.find(".vd-comic-new-jmore");if(!o.length&&r.length>lessSize){o=$(m(r));p.append(o)}k(o);p.data("loaded",true)}function b(s,q){var o=0,p="",r="";p+=\'<ul class="vd-comic-new-ulbox_ul_less">\';$.each(s,function(u,t){if(u==lessSize){return false}liHtmlClass="";if(u==0&&!finish){liHtmlClass+="vd-comic-new"}if((u+1)%8==0){liHtmlClass+=" c-numberset-last"}p+=\'<li class="c-gap-top \'+liHtmlClass+\'"><a href="\'+t.url+\'" target="_blank">\'+t.episode+\'集</a><div></div><i class="c-text c-text-danger">新</i></li>\'});p+="</ul>";if(s.length>lessSize){r=\'<ul class="vd-comic-new-ulbox_ul_more vd-comic-new-ulbox_ul_more_1" style="display:none;">\';$.each(s,function(u,t){o=u+1;liHtmlClass="";if(u==0&&!finish){liHtmlClass+="vd-comic-new"}if((u+1)%8==0){liHtmlClass+=" c-numberset-last"}r+=\'<li class="c-gap-top \'+liHtmlClass+\'"><a href="\'+t.url+\'" target="_blank">\'+t.episode+\'集</a><div></div><i class="c-text c-text-danger">新</i></li>\';if(o&&o%pageSize==0&&o!=s.length){r+=\'</ul><ul class="vd-comic-new-ulbox_ul_more vd-comic-new-ulbox_ul_more_\'+(o/pageSize+1)+\'" style="display:none;">\'}});r+="</ul>"}return[p,r]}function d(r,o){var q="";var u=Math.floor(r.length/pageSize);if(r.length%pageSize>0){u++}if(u>1){q=\'<div class="c-gap-top c-gap-bottom vd-comic-pagebar" style="display:none;overflow:hidden;zoom:1">\';for(var v=0;v<u;v++){var p=(v==0)?"vd-comic-pageon":"";var t,s;if(finish){t=pageSize*v+1;s=((t+pageSize-1)>r.length)?r.length:t+pageSize-1;q+=\'<div class="\'+p+\' OP_LOG_BTN"><a>\'+t+"~"+s+"集</a></div>"}else{t=r.length-pageSize*v;s=((t-pageSize+1)<=0)?1:t-pageSize+1;q+=\'<div class="\'+p+\' OP_LOG_BTN"><a>\'+s+"~"+t+"集</a></div>"}}q+="</div>"}return q}function e(q){var p=q.parent().find("ul.vd-comic-new-ulbox_ul_more");var o=q.find("div");o.click(function(){var r=$(this);if(!r.is(".vd-comic-pageon")){o.filter(".vd-comic-pageon").removeClass("vd-comic-pageon");r.addClass("vd-comic-pageon");p.filter(":visible").hide();p.eq(r.index()).show()}})}function m(p){var o=\'<div class="vd-comic-new-jmore vd-comic-jmoreo OP_LOG_BTN" style="display:block"><a class="vd-comic-jmoreo-a"><i class="c-icon c-icon-unfold c-gap-icon-right-small"></i>显示全部《<em>\'+h.data.title+\'</em>》视频</a><a class="vd-comic-jmorec-a"><i class="c-icon c-icon-fold c-gap-icon-right-small"></i>收起</a></div>\';return o}function k(o){o.click(function(){o.is(".vd-comic-jmoreo")?f():g()})}function f(){$curContent.find(".vd-comic-new-ulbox_ul_less").hide();$curContent.find(".vd-comic-new-ulbox_ul_more_1").show();$curContent.find(".vd-comic-pagebar").show();$curContent.find(".vd-comic-new-jmore").removeClass("vd-comic-jmoreo").addClass("vd-comic-jmorec")}function g(){$curContent.find(".vd-comic-new-ulbox_ul_less").show();$curContent.find(".vd-comic-pagebar>div:first").click();$curContent.find(".vd-comic-new-ulbox_ul_more").hide();$curContent.find(".vd-comic-pagebar").hide();$curContent.find(".vd-comic-new-jmore").removeClass("vd-comic-jmorec").addClass("vd-comic-jmoreo")}this.dispose=function(){if(!ajaxFinished){ajaxFinished=true}}})});';   // js字串，不含<script标签
      private static $uiList = 'img,tabs,numberset';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
