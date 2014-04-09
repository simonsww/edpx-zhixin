<?php 
  class CssJs_Util_spring_video
   {
      private static $cssStr = '.op-spring-video-box{text-align:center;}.op-spring-video-list{margin-bottom:-15px;}.op-spring-video-list a{text-decoration:none;}.op-spring-video-list li{padding-bottom:15px;}.op-spring-video-img{display:block;position:relative;overflow:hidden;}.op-spring-video-img span{height:43px;position:absolute;bottom:0;left:0;color:#fff;font-size:.923em;padding-top:3px;line-height:20px;overflow:hidden;}.op-spring-video-img .op-spring-video-guestbg{background:#000;opacity:.65;filter:alpha(opacity=65);_bottom:-1px;}.op-spring-video-guestTitle{width:2.769em;text-align:right;}.op-spring-video-guest{margin-left:2.923em;width:6.385em;text-align:left;*word-spacing:-2px;}.op-spring-video-time{display:block;}.op-spring-video-stbox{display:block;*word-spacing:-4px;}.op-spring-video-st1text,.op-spring-video-st2text,.op-spring-video-st3text{padding-top:1px;display:none;}.op-spring-video-st1 .op-spring-video-st1text{display:inline;}.op-spring-video-st2 .op-spring-video-st2text{position:relative;*top:-1px;display:inline;}.op-spring-video-st3 .op-spring-video-st3text{display:inline;}.op-spring-video-st2text i{_margin:3px;}.op-spring-video-btn{border-top:1px solid #f3f3f3;margin:9px 0 -9px;cursor:pointer;padding:7px 0;zoom:1;}.op-spring-video-btnshow .op-spring-video-hidetext,.op-spring-video-btnshow .c-icon-chevron-top{display:none;}.op-spring-video-btnhide .op-spring-video-showtext,.op-spring-video-btnhide .c-icon-chevron-bottom{display:none;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("spring_video",function(){A.setup(function(){var p=this,n=p.data.videoList,o=p.data.status,h=p.data.st1spec,e=p.data.time,q=p.data.guestTitle,g=p.find(".op-spring-video-btn"),f=p.find(".op-spring-video-list"),s=p.find("li"),l,d,m,a,k,b,i,j,r="op-spring-video-btnshow",c="op-spring-video-btnhide";m=function(){var t=new Date()-e.JSTime;return new Date(t+e.realTime.getTime())};j=function(t){return[t.getFullYear(),t.getMonth(),t.getDate()].join("-")};a=function(u){var t=u.split(/:|\\s+|-/);return new Date(t[0],t[1]-1,t[2],t[3],t[4],t[5])};d=function(x,w){var v=0;for(var u=0,t=x.length;u<t;u++){v+=x.charCodeAt(u)>255?2:1;if(v>w){u-=x.charCodeAt(u-1)>255?1:2;break}}return x.substr(0,u)+(u==x.length?"":"...")};b=[];k=setInterval(function(){var v=m(),w,t,u;for(w=0,t=b.length;w<t;w++){if(b[w]){u=b[w](v);if(u===false){b[w]=null}}}},1000);l=function(w,x){var z=\'<li class="c-span6 #{last} op-spring-video-st#{status}">					<a href="#{url}" class="op-spring-video-img" target="_blank">						<img src="#{img}" class="c-img c-img6" />                		<span class="op-spring-video-guestbg"></span>                           <span class="op-spring-video-guestTitle">#{guestTitle}</span>                           <span class="op-spring-video-guest">#{guest}</span>            		</a>                     <a href="#{url}" target="_blank">#{title}</a>                    <span class="op-spring-video-time">#{showtime}</span>					<span class="op-spring-video-stbox">                         <span class="op-spring-video-st1text">#{status1}</span>                         <a href="#{url}" target="_blank" class="op-spring-video-st2text">#{status2}</a>                         <a href="#{url}" target="_blank" class="op-spring-video-st3text">#{status3}</a>					</span>        		</li>\',u=m(),v=a(w.startTime),y=a(w.endTime),C=2,B,t;B=o.st1;if(u<v){C=1;if(j(u)!=j(v)){B=h}}if(u>y){C=3}t=$($.format(z,{last:x?"c-span-last":"",status:C,url:w.url,img:w.img,guestTitle:q,guest:d(w.guest,28),title:d(w.title,18),showtime:w.showtime,status1:B,status2:o.st2,status3:o.st3}));i(C,v,y,t);return t};i=function(t,v,u,w){if(t<3){b.push(function(x){if(x>u&&!w.hasClass("op-spring-video-st3")){w.removeClass("op-spring-video-st1 op-spring-video-st2").addClass("op-spring-video-st3");return false}if(x>v&&!w.hasClass("op-spring-video-st2")){w.removeClass("op-spring-video-st1").addClass("op-spring-video-st2")}})}};s.each(function(w,u){var x=$(u),t=$.parseJSON(x.attr("spring-video"));i(t.status,t.startTime,t.endTime,x)});g.click(function(){var t=g.hasClass(r),v=t?n.length:4,u,w;f.html("");b=[];g.toggleClass(r,!t);g.toggleClass(c,t);for(u=0;u<v;u++){w=(u+1)%4==0;l(n[u],w).appendTo(f)}});this.dispose=function(){clearInterval(k)}})});';   // js字串，不含<script标签
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
