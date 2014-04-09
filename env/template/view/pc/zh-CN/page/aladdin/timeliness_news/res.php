<?php 
  class CssJs_Util_timeliness_news
   {
      private static $cssStr = '.op-timeliness-summary{text-indent:2em;}.op_timeliness_news_subtitle{font-size:1.077em;}.op-timeliness-news-ul a{float:left;background:url(http://www.baidu.com/aladdin/img/timeliness_news/icon.gif) no-repeat left center;padding-left:10px;}.op-timeliness-news-ul span{float:right;color:#666;}.op-timeliness-news-dl dd{float:left;position:relative;overflow:hidden;}.op-timeliness-news-dl dd span{background:#000;text-align:center;opacity:.65;-moz-opacity:.65;-webkit-opacity:.65;-ms-opacity:.65;filter:alpha(opacity=65);display:block;position:absolute;left:0;bottom:0;height:30px;line-height:30px;width:100%;}.op-timeliness-news-dl dd em{display:block;position:absolute;left:0;bottom:0;height:30px;line-height:30px;color:#fff;width:100%;text-align:center;text-decoration:none;}.op_timeliness_news_title{font-size:1.69em;font-family:\'微软雅黑\';line-height:100%;}.op-timeliness-outer{width:320px;height:160px;position:relative;overflow:hidden;}.op-timeliness-inner{width:960px;height:160px;position:absolute;top:0;left:0;}.op-timeliness-inner div{position:relative;width:320px;height:160px;float:left;overflow:hidden;z-index:9;}.op-timeliness-inner div span{position:absolute;left:0;top:0;width:36px;height:22px;line-height:22px;display:block;background:#f54040;color:#fff;text-align:center;font-size:1.08em;z-index:10;}.op-timeliness-inner div.op-timeliness-news-txt{position:absolute;bottom:0;left:0;opacity:.65;-moz-opacity:.65;-webkit-opacity:.65;-ms-opacity:.65;filter:alpha(opacity=65);background:#000;color:#fff;height:30px;line-height:30px;width:100%;z-index:10;}.op-timeliness-inner div em{color:#fff;height:30px;line-height:30px;display:block;position:absolute;bottom:0;left:0;padding-left:10px;z-index:11;}.op-timeliness-outer ul{margin:0;padding:0;list-style:none;position:absolute;right:20px;bottom:0;height:25px;z-index:12;}.op-timeliness-outer ul li{float:left;margin-right:6px;cursor:pointer;}.op-timeliness-left a,.op-timeliness-right a{display:block;width:32px;height:32px;background:url(http://www.baidu.com/aladdin/img/timeliness_news/icon_sword_original.gif) 0 -32px no-repeat;cursor:pointer;position:absolute;top:63px;z-index:10;}.op-timeliness-left a{left:10px;}.op-timeliness-right a{right:10px;background-position:0 0;}.op-timeliness-left a:hover{background-color:#5c5c5c;}.op-timeliness-right a:hover{background-color:#5c5c5c;}.op-timeliness-new-from{text-align:right;}.op-timeline-news-border{border:2px solid #f00;padding-left:8px;padding-right:8px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("timeliness_news",function(){A.setup(function(){var i=this;var d=null;var e=null;var n=i.data.last-1;var b=false;var m;var h=0;var l;var a;var k;i.data.tabflag>1&&A.use("tabs5",function(){k=A.ui.tabs5(i.find(".c-tabs")[0],{onChange:function(){if(k.current!=n){g();j();$(k.conts[k.last]).find(".op-timeliness-inner").css("left","0px");h=0;l.css("width","0");l.remove();$(k.conts[k.last]).find(".op-timeliness-inner").css("width","960px");$(k.conts[k.last]).find(".op-timeliness-left").unbind("click");$(k.conts[k.last]).find(".op-timeliness-right").unbind("click");for(var q=0;q<a.length;q++){a.eq(q).unbind("click")}p(k.conts[k.current]);n=k.current}}});p(k.conts[n])});if(i.data.tabflag==1){var o=i.find(".c-tabs-content");p(o)}function g(){i.find(".op-timeliness-inner:animated").stop()}function j(){window.clearTimeout(d);d=null;window.clearTimeout(e);e=null;b=false}function c(){e=window.setTimeout(f,2000)}function f(){h++;if(h==4){h=1;m.css("left","0")}if(!b){for(var r=0;r<a.length;r++){var q=a.eq(r).find("a:first");q.removeClass("c-icon-circle-blue").addClass("c-icon-circle-gray")}if(h==3){var s=a.eq(0).find("a:first");s.removeClass("c-icon-circle-gray").addClass("c-icon-circle-blue")}else{var t=a.eq(h).find("a:first");t.removeClass("c-icon-circle-gray").addClass("c-icon-circle-blue")}b=true;m.animate({left:-320*h},"slow",function(){b=false;d=window.setTimeout(function(){f()},4000)})}}function p(y){var w=$(y);a=w.find(".op-timeliness-btn li");var v=w.find(".op-timeliness-outer");m=w.find(".op-timeliness-inner");var q=w.find(".op-timeliness-inner>div");l=m.find("div:first").clone(true);var x=w.find(".op-timeliness-left");var u=w.find(".op-timeliness-right");m.append(l);m.css("width","1280px");q.each(function(z,B){$(B).find("img").css({width:"320px",height:"160px",overflow:"hidden"})});for(var r=0;r<a.length;r++){a.eq(r).attr("index",r);var t=a.eq(r).find("a:first");t.removeClass("c-icon-circle-blue").addClass("c-icon-circle-gray");var s=a.eq(0).find("a:first");s.removeClass("c-icon-circle-gray").addClass("c-icon-circle-blue");a.eq(r).bind("click",function(){if(b){return}b=true;m.animate({left:-320*$(this).attr("index")},"slow",function(){b=false});h=$(this).attr("index");for(var B=0;B<a.length;B++){var z=a.eq(B).find("a:first");z.removeClass("c-icon-circle-blue").addClass("c-icon-circle-gray")}var C=$(this).find("a:first");C.removeClass("c-icon-circle-gray").addClass("c-icon-circle-blue")})}c();u.bind("click",function(){if(b){return}h++;if(h==4){h=1;m.css("left","0")}b=true;m.animate({left:-320*h},"slow",function(){b=false});for(var B=0;B<a.length;B++){var z=a.eq(B).find("a:first");z.removeClass("c-icon-circle-blue").addClass("c-icon-circle-gray")}if(h==3){var C=a.eq(0).find("a:first");C.removeClass("c-icon-circle-gray").addClass("c-icon-circle-blue")}else{var D=a.eq(h).find("a:first");D.removeClass("c-icon-circle-gray").addClass("c-icon-circle-blue")}});v.bind("mouseenter",function(z){j()});v.bind("mouseleave",function(z){j();c()});x.bind("click",function(){if(b){return}h--;if(h==-1){h=2;m.css("left","-960px")}b=true;m.animate({left:-320*h},"slow",function(){b=false});for(var B=0;B<a.length;B++){var z=a.eq(B).find("a:first");z.removeClass("c-icon-circle-blue").addClass("c-icon-circle-gray")}if(h==3){var C=a.eq(2).find("a:first");C.removeClass("c-icon-circle-gray").addClass("c-icon-circle-blue")}else{var D=a.eq(h).find("a:first");D.removeClass("c-icon-circle-gray").addClass("c-icon-circle-blue")}})}this.dispose=function(){window.clearTimeout(d);window.clearTimeout(e);k&&k.dispose&&k.dispose()}})});';   // js字串，不含<script标签
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
