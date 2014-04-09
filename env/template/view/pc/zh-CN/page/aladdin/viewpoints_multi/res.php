<?php 
  class CssJs_Util_viewpoints_multi
   {
      private static $cssStr = '';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("viewpoints_multi",function(){A.setup(function(){var l=this,q=false,p;var f=l.srcid,b=encodeURIComponent(l.data.OriginQuery),o=$(".c-tabs-nav-selected",l.find(".op_viewpoints_mulit_tabs")).attr("num"),o=Math.min(o,22),a=$(".c-tabs-nav-selected",l.find(".op_viewpoints_mulit_tabs")).attr("key"),h=2,d=5,m=1;var j=l.find(".op_viewpoints_mulit_more_answer"),g=l.find(".c-tabs-nav-li"),c=l.find(".op_viewpoints_mulit_tabs_ring");if(c.length){var n={circle:function(B,w,v,u,z,x,t,y){cxt=B.getContext("2d");cxt.beginPath();cxt.arc(v,u,z,Math.PI*x,Math.PI*t,y);cxt.lineTo(v,u);cxt.closePath();cxt.fillStyle=w;cxt.fill()},ring:function(x,v,u,t,y,D,C,w,B){var z="#FFF";n.circle(x,v,u,t,y,C,w,B);n.circle(x,z,u,t,D,0,2,B)}};c.each(function(w,y){var v=$(y),x=v.attr("rate"),u=v.attr("color"),t=0.02*x+1.5;n.ring(y,"#d9d9d9",28,28,27,22,0,2,false);n.ring(y,u,28,28,28,21,1.5,t,false)})}A.use("tabs5",function(){p=A.ui.tabs5(l.find(".c-tabs")[0],{onChange:function(){var t=g.eq(this.current);a=t.attr("key");o=Math.min(t.attr("num"),22);m=0;k(0,2,a)}})});e();s();function e(){l.find(".op_viewpoints_mulit_answer_showall").on("click",function(){$(this).parent().html($(this).attr("content"))})}function s(){if(o<=2){j.css({display:"none"})}else{j.html(\'<p class="op_viewpoints_mulit_more_answer_btn c-gap-top-small OP_LOG_BTN" data-click="{fm:\\\'beha\\\'}">展开更多<i class="c-icon c-icon-triangle-down"></i></p>\').css({display:"block"});h=2;l.find(".op_viewpoints_mulit_more_answer_btn").on("click",function(){m=1;k(h,d,a)})}}function k(u,w,v){var t="http://opendata.baidu.com/api.php?resource_id="+f+"&format=json&ie=utf-8&oe=utf-8&query="+b+"&apn="+u+"&arn="+w+"&co=answer[key="+v+"]&limit=answer.*.original:46&hilight=answer.*.original";$.ajax({dataType:"jsonp",scriptCharset:"utf-8",jsonp:"cb",timeout:6000,url:t,success:r})}function r(v){if(q){return}if(v.status=="0"&&v.data[0].answer){var x=v.data[0].answer,u=[];for(var t=0;t<x.length;t++){var w=($.getByteLength(x[t].content)>226)?200:226;u=u.concat([\'<div class="op_viewpoints_mulit_answer c-gap-bottom-small\'+(m==0&&t==0?" op_viewpoints_mulit_answer_first":"")+\'">\',\'<i class="c-icon c-icon-circle-blue-s op_viewpoints_mulit_answer_icon"></i>\',\'<p class="op_viewpoints_mulit_answer_title">\',\'<a href="\'+x[t].originalurl+\'" target="_blank">\'+x[t].original+"_"+x[t].source+"</a>","</p>",\'<p class="op_viewpoints_mulit_answer_content">\',\'<span class="c-gap-right-small">\'+$.subByte(x[t].content,w)+"</span>",$.getByteLength(x[t].content)>w?\'<a href="javascript:;" class="op_viewpoints_mulit_answer_showall OP_LOG_BTN" data-click="{fm:\\\'beha\\\'}" content="\'+x[t].content+\'">显示全部<i class="c-icon c-icon-triangle-down-blue"></i></a>\':"","</p>",\'<p class="op_viewpoints_mulit_answer_info">\',(x[t].sourceurl&&x[t].source)?\'来自<a href="\'+x[t].sourceurl+\'" target="_blank">\'+x[t].source+"</a>":"",x[t].date?\'<span class="op_viewpoints_mulit_sep">|</span>\'+x[t].date:"","</p>","</div>"])}i(u.join(""))}}function i(v){var u=l.find(".op_viewpoints_mulit_ext_body");if(m==0){u.html(v);s()}else{if(m==1){u.append(v);h+=d}}e();if(o<=h){var t=$(l.container).attr("id");j.html(\'<a href="#\'+t+\'" class="op_viewpoints_mulit_hide_answer_btn c-gap-top-small OP_LOG_BTN" data-click="{fm:\\\'beha\\\'}">收起<i class="c-icon c-icon-triangle-up"></i></a>\');l.find(".op_viewpoints_mulit_hide_answer_btn").on("click",function(){$(".op_viewpoints_mulit_answer:gt(1)",u).remove();s()})}}this.dispose=function(){if(!q){q=true}p&&p.dispose&&p.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'img,tabs';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
