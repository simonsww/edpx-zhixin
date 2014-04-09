<?php 
  class CssJs_Util_viewpoints
   {
      private static $cssStr = '';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("viewpoints",function(){A.setup(function(){var d=this,k=false;var j=d.srcid,i=encodeURIComponent(d.data.OriginQuery),a=d.data.AnswerNum,e=2,g=5;var l=d.find(".op_viewpoints_more_answer");d.find(".op_viewpoints_feedback_a").on("click",function(){$(this).replaceWith("<span>感谢反馈</span>")});c();function c(){d.find(".op_viewpoints_answer_showall").on("click",function(){$(this).parent().html($(this).attr("content"))})}d.find(".op_viewpoints_more_answer_btn").on("click",function(){f(e,g)});function f(n,o){var m="http://opendata.baidu.com/api.php?resource_id="+j+"&format=json&ie=utf-8&oe=utf-8&query="+i+"&apn="+n+"&arn="+o+"&co=answer";$.ajax({dataType:"jsonp",scriptCharset:"utf-8",jsonp:"cb",timeout:6000,url:m,success:h})}function h(o){if(k){return}if(o.status=="0"&&o.data[0].answer){var q=o.data[0].answer,n=[];for(var m=0;m<q.length;m++){var p=($.getByteLength(q[m].content)>226)?200:226;n=n.concat([\'<div class="op_viewpoints_answer c-gap-bottom-small">\',\'<i class="c-icon c-icon-circle-blue-s op_viewpoints_answer_icon"></i>\',\'<p class="op_viewpoints_answer_content">\',\'<span class="c-gap-right-small">\'+$.subByte(q[m].content,p)+"</span>",$.getByteLength(q[m].content)>p?\'<a href="javascript:;" class="op_viewpoints_answer_showall OP_LOG_BTN" data-click="{fm:\\\'beha\\\'}" content="\'+q[m].content+\'">显示全部<i class="c-icon c-icon-triangle-down-blue"></i></a>\':"","</p>",\'<p class="op_viewpoints_answer_info">\',(q[m].sourceurl&&q[m].source)?\'来自<a href="\'+q[m].sourceurl+\'" target="_blank">\'+q[m].source+"</a>":"",q[m].date?\'<span class="op_viewpoints_sep">|</span>\'+q[m].date:"",(q[m].originalurl&&q[m].original)?\'<span class="op_viewpoints_sep">|</span>原问题：<a href="\'+q[m].originalurl+\'" target="_blank">\'+q[m].original+"</a>":"","</p>","</div>"])}b(n.join(""))}}function b(n){var m=d.find(".op_viewpoints_ext_body");m.append(n);c();e+=g;if(a<=e){l.remove()}}this.dispose=function(){if(!k){k=true}}})});';   // js字串，不含<script标签
      private static $uiList = 'img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
