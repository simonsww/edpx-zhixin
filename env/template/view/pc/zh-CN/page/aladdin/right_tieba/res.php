<?php 
  class CssJs_Util_right_tieba
   {
      private static $cssStr = '.opr-tieba-main h3{font-weight:normal;}.opr-tieba-summary{margin-bottom:8px;}.opr-tieba-summary span{padding-left:5px;}.opr-tieba-table{display:none;}.opr-tieba-table i{font-style:normal;color:#ff8a00;}.opr-tieba-table a{text-decoration:underline;color:#666;}.opr-tieba-table table{width:100%;}.opr-tieba-replynum{float:right;}.opr-tieba-table td.opr-tieba-table-ltd{text-align:left;}.opr-tieba-table td.opr-tieba-table-rtd{text-align:right;width:40px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_tieba",function(){A.setup(function(){var f=this,n=[],o=[],k=false,a=null,j=$(".opr-tieba-table"),c=f.data.fid,e=f.data.tid,d=f.data.talkid,m=(new Date().getTime()),h="http://tieba.baidu.com/zhibo/talk/talk?rn=2&cb=bd_cb_tieba_broadcast&direction=0&fid="+c+"&tid="+e+"&talkid="+d+"&t="+m,i="http://tieba.baidu.com/zhibo/talk/post?rn=3&cb=bd_cb_tieba_broadcast&fid="+c+"&tid="+e+"&t="+m;$.ajax({url:i,dataType:"jsonp",timeout:5000});$.ajax({url:h,dataType:"jsonp",timeout:5000});window.bd_cb_tieba_broadcast=function(s){if(k){return}if(s&&s.data&&s.data.talk){var r=s.data.server_time;var p=s.data.talk;for(var t=p.length-1;t>0;t--){if(p[t].comment&&p[t].comment.del==1){continue}else{if(p[t].answer){continue}else{if(p[t].question){continue}else{var q="嘉宾";var w=6;var x=p[t].comment.user.type;if(x==1){txtCon="主持"}else{if(x==2){txtCon="嘉宾"}}if(p[t]&&p[t].comment){var v=[\'<tr><td class="opr-tieba-table-ltd"><i>[\',q,\']</i><a target="_blank" href="http://www.baidu.com/p/\'];w=w+b(p[t].comment.user.name);v=v.concat([p[t].comment.user.name,\'?from=ala_right_tieba">\',p[t].comment.user.name,"</a>：",$.subByte(p[t].comment.contents,54-w),\'</td><td class="opr-tieba-table-rtd">\',l(r,p[t].comment.time),"</td></tr>"])}n.push(v.join(""));break}}}}}if(s&&s.data&&s.data.post_list){var r=s.data.server_time;var p=s.data.post_list;var u=s.data.join_num;$(".opr-tieba-replynum").html(f.data.titlemid+u+f.data.titleright);for(var t=0;t<p.length&&t<4;t++){var w=b(p[t].user.name);var v=[\'<tr><td class="opr-tieba-table-ltd"><a target="_blank" href="http://www.baidu.com/p/\',p[t].user.name,\'?from=ala_right_tieba">\',p[t].user.name,"</a>：",$.subByte(p[t].contents,54-w),\'</td><td class="opr-tieba-table-rtd">\',l(r,p[t].time),"</td></tr>"];o.push(v.join(""))}}};a=setInterval(function(){if(o.length<0){return}var q=[];if(n.length>0){q=q.concat(n)}q=q.concat(o);f.find(".opr-tieba-table tbody").append($(q.join("")));var p=j.height();j.slideDown(1000);clearInterval(a)},1000);function l(q,r){var t=q-parseInt(r,10);var s=parseInt(r,10);var p="";if(t<=0){p="刚刚"}else{if(t<60){p=t+"秒前"}else{if(t<60*60){p=parseInt(t/60)+"分前"}else{if(t<60*60*24){p=g(s,q)}else{return parseInt(t/60/60/24)+"天前"}}}}return p}function g(v,s){var p=new Date(s*1000);var q=p.getDate();var w=new Date(v*1000);var t=w.getDate();var x=w.getHours();var r=w.getMinutes();if(x<10){x="0"+x}if(r<10){r="0"+r}var u=x+":"+r;if(q==t){return u}else{return"1天前"}}function b(s){var r=[];var p=s.split("");for(var q=0,t=p.length;q<t;q++){if(p[q].charCodeAt(0)>255){r.push("*")}r.push(p[q])}return r.length}f.dispose=function(){k=true;j.stop();clearInterval(a);bd_cb_tieba_broadcast=function(){}}})});';   // js字串，不含<script标签
      private static $uiList = 'table';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
