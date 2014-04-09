<?php 
  class CssJs_Util_newsoftdown4
   {
      private static $cssStr = '.op_newsoftdown4_left{float:left;text-align:center;}.op_newsoftdown4_left img{border:0;}.op_newsoftdown4_main{float:left;margin-top:-6px;margin-left:8px;margin-bottom:0;}.op_newsoftdown4_main td .op_newsoftdown4_links span{color:#008000;font-family:Arial;}.op_newsoftdown4_main td .op_newsoftdown4_links{padding-top:0;}.op_newsoftdown4_buttons{padding-top:0;}.op_newsoftdown4_links{color:#008000;font-size:13px;clear:left;padding-top:4px;}.op_newsoftdown4{padding:0;margin-top:8px;}.op_newsoftdown4_main span{color:#010101;font-size:13px;line-height:21px;padding-right:10px;font-family:Arial 宋体;}a.op_newsoftdown4_btn{margin-right:10px;text-decoration:none;color:#000;font-size:13px;float:left;height:32px;line-height:32px;display:inline-block;}a.op_newsoftdown4_btn div{background:url(http://www.baidu.com/aladdin/img/newsoftdown/temp_tick.btn.big.gif) 0 -64px repeat-x;}a.op_newsoftdown4_btn div div{background:url(http://www.baidu.com/aladdin/img/newsoftdown/temp_tick.btn.big.gif) 0 0 no-repeat;}a.op_newsoftdown4_btn div div div{background:url(http://www.baidu.com/aladdin/img/newsoftdown/temp_tick.btn.big.gif) right -32px no-repeat;padding:0 36px;white-space:nowrap;}a.op_newsoftdown4_btn:hover,a.op_newsoftdown4_btn:focus{border:none;}a.op_newsoftdown4_btn:hover div,a.op_newsoftdown4_btn:focus div{background:url(http://www.baidu.com/aladdin/img/newsoftdown/temp_tick.btn.big.gif) 0 -128px repeat-x;border:none;}a.op_newsoftdown4_btn:hover div div,a.op_newsoftdown4_btn:focus div div{background:url(http://www.baidu.com/aladdin/img/newsoftdown/temp_tick.btn.big.gif) 0 -96px no-repeat;}a.op_newsoftdown4_btn:hover div div div,a.op_newsoftdown4_btn:focus div div div{background:url(http://www.baidu.com/aladdin/img/newsoftdown/temp_tick.btn.big.gif) right -160px no-repeat;padding:0 36px;}.op_newsoftdown4_space{padding-top:18px;white-space:nowrap;}.op_calc_close,.op_calc_open{font-size:13px;display:block;font-weight:bold;color:#261CDC;text-decoration:underline;cursor:pointer;padding-top:6px;}.op_calc_close b,.op_calc_open b{background:url(http://www.baidu.com/aladdin/img/newvideotvplay/newvideo_new.png) 0 -24px;height:13px;width:14px;overflow:hidden;float:left;margin:3px 3px 0 0;}.op_calc_close b{background-position:-18px -24px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("newsoftdown4",function(){A.setup(function(){var i=this,m=i.find("#op_newsoftdown4_icon")[0];var o=false;var j=new Image();j.onload=l;j.src=m.src;function l(){if(o){return}var b=j.width,a=j.height;if(b>64||a>64){if(b<a){b=64*b/a;a=64}else{a=64*a/b;b=64}}m.style.width=b+"px";m.style.height=a+"px"}var d=i.find(".op_calc_open")[0],k=i.find(".op_calc_close")[0];if(d){$(d).on("click",g)}if(k){$(k).on("click",f)}var r=function(w,x,y){var s=[],t,z,u,v;y&&(y=y.toUpperCase());if(x.getElementsByClassName){u=x.getElementsByClassName(w);t=u.length;for(z=0;z<t;z++){v=u[z];if(y&&v.tagName!=y){continue}s[s.length]=v}}else{w=new RegExp("(^|\\\\s)"+w+"(\\\\s|\\x24)");u=y?x.getElementsByTagName(y):(x.all||x.getElementsByTagName("*"));t=u.length;for(z=0;z<t;z++){v=u[z];w.test(v.className)&&(s[s.length]=v)}}return s};function n(b){b.style.display=""}function h(b){b.style.display="none"}function g(){var s=r("op_newsoftdown4_f",G("op_newsoftdown4_main"),"tr");for(var c=0;c<s.length;c++){n(s[c])}h(i.find("#op_calc_open")[0]);n(i.find("#op_calc_close")[0])}function f(){var s=r("op_newsoftdown4_f",G("op_newsoftdown4_main"),"tr");for(var c=0;c<s.length;c++){h(s[c])}h(i.find("#op_calc_close")[0]);n(i.find("#op_calc_open")[0])}function q(v){var u=r("op_newsoftdown4_txt_f",G("op_newsoftdown4_main"),"a");for(var s=0,t=u.length;s<t;s++){if(u[s]==v){return s+1}}}function e(v){var u=r("op_newsoftdown4_btn_f",G("op_newsoftdown4_main"));for(var s=0,t=u.length;s<t;s++){if(u[s]==v){return s+1}}}function p(){var b=r("op_newsoftdown4_txt_f",G("op_newsoftdown4_main"),"a");return b.length+1}this.dispose=function(){if(!o){o=true}}})});';   // js字串，不含<script标签
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
