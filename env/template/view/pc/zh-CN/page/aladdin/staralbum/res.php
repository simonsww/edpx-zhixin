<?php 
  class CssJs_Util_staralbum
   {
      private static $cssStr = '.op_staralbum{margin:5px 0 3px 0;font-size:13px;}.op_staralbum td{font-size:13px;padding:0 20px 0 0;}.op_staralbum_l{width:560px;margin-top:6px;}.op_staralbum_l ul,.op_staralbum_l li{margin:0;padding:0;}.op_staralbum_l li{list-style:none;width:102px;display:inline-block;*display:inline;zoom:1;line-height:20px;overflow:hidden;padding-right:35px;padding-bottom:2px;}.op_staralbum_ta{background:#F8F9FF;padding:3px 0;border-top:1px solid #F0EEEF;border-bottom:1px solid #F0EEEF;color:#666;}.op_staralbum_ta span{text-decoration:underline;color:#261CDC;cursor:pointer;white-space:nowrap;zoom:1;display:inline-block;*display:inline;width:103px;text-align:right;line-height:24px;font-size:13px;}.op_staralbum_ta span.op_staralbum_on{text-decoration:none;color:#000;cursor:default;}.op_staralbum_tl ul{display:none;}.op_staralbum_close,.op_staralbum_open{display:inline-block;font-weight:bold;font-size:13px;color:#261CDC;text-decoration:underline;cursor:pointer;margin:6px 0;}.op_staralbum_close b,.op_staralbum_open b{background:url(http://www.baidu.com/aladdin/img/newvideotvplay/newvideo_new.png) 0 -24px;height:13px;width:14px;overflow:hidden;float:left;margin:3px 3px 0 0;}.op_staralbum_close{display:none;}.op_staralbum_close b{background-position:-18px -24px;}.op_staralbum_ctrl{display:none;}.op_staralbum_hr{height:10px;line-height:0;font-size:0;overflow:hidden;}.op_staralbum_new{background:none;width:20px;line-height:20px;left:82px;font-weight:normal;color:#F00;display:inline;position:absolute;top:70px;}.op_staralbum_bg{background-image:url(http://www.baidu.com/aladdin/img/staralbum/staralbum_bg.jpg);background-repeat:no-repeat;width:102px;height:102px;}.op_staralbum_title{text-align:center;font-size:13px;}.op_staralbum_img_wrapper{display:inline-block;height:90px;overflow:hidden;width:90px;margin:4px 0 0 4px;}.op_staralbum_subtitle{color:#666;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("staralbum",function(){A.setup(function(){var g=this;var b=op_staralbum_data,l=g.find(".op_staralbum_tl").get(0),c=g.find(".op_staralbum_ta").get(0),e=g.find(".op_staralbum_inithtml").get(0),k=g.find(".op_staralbum_init").get(0),h=4;per_count=8,btn_open=g.find(".op_staralbum_open").get(0),btn_close=g.find(".op_staralbum_close").get(0),ctrl=g.find(".op_staralbum_ctrl").get(0);function a(){var r=[];for(var q=0;q<h&&q<b.length;q++){r.push(i(b[q]))}e.innerHTML=r.join("");if(h==0){f(k)}tab_html=[];for(var q=0,m=Math.ceil(b.length/per_count);q<m;q++){r=[];var p=document.createElement("ul");for(var o=q*per_count,n=b.length;o<(q+1)*per_count&&o<n;o++){r.push(i(b[o]))}p.innerHTML=r.join("");l.appendChild(p);tab_html.push(\'<span class="OP_LOG_BTN">第\'+(q*per_count+1)+"~"+Math.min((q+1)*per_count,b.length)+op_staralbum_linktext+"</span>")}c.innerHTML=tab_html.join("");j(l.getElementsByTagName("ul")[0]);c.getElementsByTagName("span")[0].className="op_staralbum_on OP_LOG_BTN"}function i(m){return"<li>   <a class=\'op_staralbum_img_f\' target=\'_blank\' href=\'"+m[0]+"\'><div class=\'op_staralbum_bg\'><div class=\'op_staralbum_img_wrapper\' style=\'background:url("+m[1]+") no-repeat scroll center center transparent\'></div></div></a><div class=\'op_staralbum_title\'><a class=\'op_staralbum_txt_f target=\'_blank\' href=\'"+m[0]+"\'>"+m[2]+"</a><br><span class=\'op_staralbum_subtitle\'>"+m[3]+"</span></div>     </li>"}function d(){var p=l.getElementsByTagName("ul");var n=c.getElementsByTagName("span");var m=0;var q=function(r,s){s.onclick=function(){if(m==r){return}f(p[m]);n[m].className="OP_LOG_BTN";m=r;j(p[m]);s.className="op_staralbum_on OP_LOG_BTN"}};for(var o=0;o<p.length;o++){q.call(n[o],o,n[o])}btn_open.onclick=function(){f(btn_open);f(k);j(btn_close);j(ctrl)};btn_close.onclick=function(){j(btn_open);h!=0&&j(k);f(btn_close);f(ctrl)}}function j(m){m.style.display="inline-block"}function f(m){m.style.display="none"}a();if(b.length>h){d()}else{f(btn_open);f(btn_close)}})});';   // js字串，不含<script标签
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
