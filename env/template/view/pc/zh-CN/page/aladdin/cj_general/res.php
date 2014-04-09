<?php 
  class CssJs_Util_cj_general
   {
      private static $cssStr = '.op_cj_general_play{background:url("http://www.baidu.com/aladdin/img/chunjie/cj_g_play.gif") no-repeat scroll 0 0 transparent;padding-left:16px;}a.op_cj_general_btn{margin-right:18px;text-decoration:none;color:#000;font-size:13px;float:left;color:#00C;}a.op_cj_general_btn div{background:url(http://www.baidu.com/aladdin/img/chunjie/cj_g_btn.gif) 0 -52px repeat-x;line-height:26px;height:26px;cursor:pointer;float:left;}a.op_cj_general_btn div div{background:url(http://www.baidu.com/aladdin/img/chunjie/cj_g_btn.gif) 0 0 no-repeat;}a.op_cj_general_btn div div div{background:url(http://www.baidu.com/aladdin/img/chunjie/cj_g_btn.gif) right -26px no-repeat;padding:0 7px;white-space:nowrap;}.op_cj_general_btn2{padding:0 10px 0 0;}.op_cj_general_btn2 div{padding:0 2px;height:16px;line-height:16px;background:#68b0da;color:#fff;text-align:center;font-size:12px;}.op_cj_general_table td{line-height:22px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("cj_general",function(){A.init(function(){var b=A.baidu,h=this;var c=h.find(".op_cj_general_timeDiv")[0];var d;function a(o,p,l,n,r,m){var q=new Date();q.setFullYear(o,p-1,l);q.setHours(n);q.setMinutes(r);q.setSeconds(m);return q.getTime()}var g;if(this.data&&this.data.springInfo){g=this.data.springInfo}else{g={year:2011,month:2,day:3,shengxiao:"兔"}}var i=a(g.year,g.month,g.day,0,0,0);function k(){}var f=function(l){op_cj_general_serverTime=parseInt(l);e()};function j(){var o=new Date(op_cj_general_serverTime);var u=new Date(i);var r=u.getTime()-o.getTime();if(r<0){clearTimeout(d);c.style.display="none"}else{var t=parseInt(r/86400000);var q=parseInt(r%86400000/3600000);var n=parseInt(r%86400000%3600000/60000);var p=parseInt(r%86400000%3600000%60000/1000);t=\'<span class="op_cj_general_b">\'+t+"</span>";q=\'<span class="op_cj_general_b">\'+q+"</span>";n=\'<span class="op_cj_general_b">\'+n+"</span>";p=\'<span class="op_cj_general_b">\'+p+"</span>";var l=\'距<span class="op_cj_general_b"> \'+g.year+\' </span>年<span class="op_cj_general_b"> \'+g.month+\' </span>月<span class="op_cj_general_b"> \'+g.day+" </span>日"+g.shengxiao+"年春节还有 "+t+" 天 "+(q<10?("0"+q):q)+" 时 "+(n<10?("0"+n):n)+" 分 "+(p<10?("0"+p):p)+" 秒 ";h.find(".op_cj_general_showTime").html(l)}}function e(){op_cj_general_serverTime+=1000;j();d=setTimeout(e,1000)}f(bdServerTime*1000);this.dispose=function(){clearTimeout(d)}})});';   // js字串，不含<script标签
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
