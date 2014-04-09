<?php 
  class CssJs_Util_zx_eduexam
   {
      private static $cssStr = '';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("zx_eduexam",function(){A.setup(function(){var q=this;var g={};var c=q.data.query,e=q.data.srcid,s="",u="",B="",x;var f=q.find(".op-zx-eduexam-select").eq(0),w=q.find(".op-zx-eduexam-select-val").eq(0),l=q.find(".op-zx-eduexam-select-list").eq(0),k=q.find(".op-zx-eduexam-select-info").eq(0),z=q.find(".op-zx-eduexam-select-li");var t=q.find(".t a").eq(0),n=q.find(".op-zx-eduexam-morelink").eq(0);var v=q.find(".op-zx-eduexam-time").eq(0),i=q.find(".op-zx-eduexam-subject").eq(0),r=q.find(".op-zx-eduexam-enroll").eq(0),p=q.find(".op-zx-eduexam-inquire").eq(0),m=q.find(".op-zx-eduexam-strategy").eq(0);var j=function(C){l.length>0&&l.addClass("op-zx-eduexam-hide")};var y=z.length;if(y<6){l.length>0&&l.removeClass("op-zx-eduexam-listwide")}f.length>0&&f.click(function(C){C.stopPropagation(C);l.length>0&&l.toggleClass("op-zx-eduexam-hide")});$(document).on("click",j);z.length>0&&$.each(z,function(C,D){$(D).on("click",function(E){E.stopPropagation(E);l.length>0&&l.addClass("op-zx-eduexam-hide");clearTimeout(x);s=w.html();u=$(this).children().eq(0).html();B=$(this).attr("data-value");if(g[u]){b(g[u][0])}else{h(u)}})});function h(D){var C=A.AJAX.PARAMS;A.AJAX.PARAMS=$.extend({hilight:"list.*.area,list.*.time,list.*.subject,list.*.enrolltext,list.*.enrollinfo,list.*.inquiretext,list.*.inquireinfo",limit:"list.*.time:70,list.*.subject:70,list.*.enrolltext:70,list.*.enrollinfo:70,list.*.inquiretext:70,list.*.inquireinfo:70"},C);q.ajax(c,e,{co:"list[area="+D+"]",success:function(F){var E=[];if(F[0]&&F[0].list){E=F[0].list}if(E){g[D]=E;b(g[D][0])}else{a(D)}},error:function(E){a(D)}});A.AJAX.PARAMS=C}function a(C){w.html(s);k.html("暂未获取到"+C+"相关信息，请稍后再试。");k.removeClass("op-zx-eduexam-hide");x=setTimeout(function(){k.addClass("op-zx-eduexam-hide")},2000)}function b(C){if(C){w.html(u);v.html(C.time);i.html(C.subject);r.html(((C.enrolllink&&C.enrolltext)?\'<a target="_blank" href="\'+C.enrolllink+\'">\'+C.enrolltext+"</a> ":"")+C.enrollinfo);p.html(((C.inquirelink&&C.inquiretext)?\'<a target="_blank" href="\'+C.inquirelink+\'">\'+C.inquiretext+"</a> ":"")+C.inquireinfo);m.html(d(C.linktext));o()}}function d(C){return C&&C.length>20?C.replace(/\\[url\\s+http(.*?)\\](.*?)\\[\\/url\\]/g,\'<a href="http$1" target="_blank">$2</a>\'):""}function o(){if(B){t.attr("href",B);n.attr("href",B)}}this.dispose=function(){clearTimeout(x);$(document).unbind("click",j)}})});';   // js字串，不含<script标签
      private static $uiList = '';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
