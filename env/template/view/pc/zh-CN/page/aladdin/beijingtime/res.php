<?php 
  class CssJs_Util_beijingtime
   {
      private static $cssStr = '.op-beijingtime{position:relative;height:105px;}.op-beijingtime-box{position:absolute;left:0;top:0;height:65px;padding:18px 0 17px 51px;font-family:\'Microsoft Yahei\',Arial;}.op-beijingtime-mark{position:absolute;left:51px;top:18px;}.op-beijingtime-box{color:#fff;font-family:Microsoft Yahei;}.op-beijingtime-hands{position:relative;display:block;float:left;margin-right:20px;}.op-beijingtime-box p{float:left;white-space:nowrap;}.op-beijingtime-time{margin-right:7px;font-size:55px;line-height:65px;width:228px;letter-spacing:1px;}.op-beijingtime-time span{position:relative;top:-5px;}.op-beijingtime-time .op-beijingtime-small{top:0;font-size:30px;}.op-beijingtime-datebox{padding-top:6px;}.op-beijingtime-datebox span{display:block;text-align:center;}.op-beijingtime-datebox .op-beijingtime-week{text-align:left;font-size:20px;}.op-beijingtime-date{font-size:15px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("beijingtime",function(){A.setup(function(){var u=A.baidu,C=this,F,v,s,h,a=200,r=8,g,k,E=C.data.timeZone||8,q,x,G=C.data.dst,m,t=C.data.dayLight,e,j,l,f,p,D,z,d,c,w,b=60*60*1000,y=!!document.createElement("canvas").getContext,B=C.find(".op-beijingtime"),o,n,i;k=function(N,L){var H=N.getTimezoneOffset(),K,M,J,I;K=new Date(N.getTime()+H*60000);K.setTime(K.getTime()+L*b);if(G){if(new Date(K.year,G.month-1,G.day,G.hour,0,0)<K&&new Date(K.year,G.endMonth-1,G.endDay,G.endHour,0,0)){K.setTime(K.getTime()+b)}}return K};q=function(J,I){var H=J.getTimezoneOffset();return new Date(J.getTime()+(J.getTimezoneOffset()-I)*60000)};F=function(I){if(typeof I!="function"){return}$.ajax({url:"/?t="+new Date().getTime(),type:"HEAD"}).done(function(K,L,J){H(J)}).fail(function(J,L,K){H(J)});function H(J){var K=J&&J.getResponseHeader("Date");if(K){I(new Date(K))}}};p=function(H,J){var I=J.split(":");H.setHours(I[0]);H.setMinutes(I[1]||0);H.setSeconds(I[2]||0);return H};m=function(){var I=t.start,H=t.end;I=p(new Date(g.getTime()),I);H=p(new Date(g.getTime()),H);return I<g&&H>g?"daylight":"night"};v=function(K){var J=o.getContext("2d"),M=o.offsetWidth,H=o.offsetHeight,I,L;if(e&&e==K){return}e=K;J.clearRect(0,0,M,H);L=function(){var R,O,U,P,N,T,Q,S;S=y?1:0.5;for(R=0;R<a;R++){O=Math.random()*M;U=Math.random()*H;N=Math.random()+S;Q=N-S;y&&(Q/=2);P=J.createRadialGradient(O,U,1,O,U,N);P.addColorStop(0,"rgba( 175, 175, 175, "+Q+" )");P.addColorStop(1,"rgba( 175, 175, 175, 0 )");J.fillStyle=P;J.beginPath();J.arc(O,U,N,0,Math.PI*2,true);J.fill();J.closePath()}};if(K){I=J.createLinearGradient(0,0,0,H);I.addColorStop(0,"rgb(24, 50, 89)");I.addColorStop(1,"rgb(52, 130, 186)")}else{I=J.createLinearGradient(0,0,0,H);I.addColorStop(0,"#0067bf");I.addColorStop(1,"#6eabe2")}J.fillStyle=I;J.fillRect(0,0,M,H);if(K){L()}};s=function(){var J=n.getContext("2d"),K,I,H=n.offsetWidth/2;J.translate(H,H);for(K=0;K<60;K++){J.lineWidth=1;J.strokeStyle="rgba( 255, 255, 255, 0.3 )";I=4;if(K%5==0){I=8;J.strokeStyle="#fff"}J.beginPath();J.moveTo(0,I-H);J.lineTo(0,-H);J.stroke();J.closePath();J.rotate(Math.PI/30)}};h=function(M){var K=M.getHours(),N=M.getMinutes(),L=M.getSeconds(),J=i.getContext("2d"),I=i.offsetWidth/2,H;K>12&&(K-=12);K+=N/60;N+=L/60;J.clearRect(0,0,I*2,I*2);H=function(O,S,Q,R,P){J.save();J.lineWidth=O;J.strokeStyle=S;J.translate(I,I);J.rotate(Q);J.beginPath();J.moveTo(0,R);J.lineTo(0,P);J.stroke();J.closePath();J.restore()};H(3,"#fff",Math.PI/6*K,6,-16);H(2,"#fff",Math.PI/30*N,6,-24);H(1,"#d93c3c",Math.PI/30*L,6,-24)};f=function(H){return("0"+H).slice(-2)};D={time:null,week:null,date:null,init:function(){this.time=C.find(".op-beijingtime-time")[0];this.week=C.find(".op-beijingtime-week")[0];this.date=C.find(".op-beijingtime-date")[0];this.setTime();this.minuteSet()},setTime:function(){this.time.innerHTML=f(g.getHours())+"<span>:</span>"+f(g.getMinutes())+\'<span class="op-beijingtime-small c-gap-left">\'+f(g.getSeconds())+"</span>"},setWeek:function(){this.week.innerHTML="星期"+"日一二三四五六".charAt(g.getDay())},setDate:function(){this.date.innerHTML=g.getFullYear()+"年"+(g.getMonth()+1)+"月"+g.getDate()+"日"},minuteSet:function(){this.setWeek();this.setDate()}};l=function(){F(function(H){g=k(H,E);D.minuteSet();v(m()=="night")})};x=function(){z=true};d=function(){$(document).bind("contextmenu",x)};c=function(){var H=\'<canvas class="op-beijingtime-background" width="#{width}" height="100"></canvas>            <div class="op-beijingtime-box c-clearfix">                <canvas class="op-beijingtime-hands" width="65" height="65"></canvas>                <canvas class="op-beijingtime-mark" width="65" height="65"></canvas>                <p class="op-beijingtime-time"></p>                <p class="op-beijingtime-datebox"><span class="op-beijingtime-week"></span><span class="op-beijingtime-date"></span>            </div>\';B.html($.format(H,{width:C.container.offsetWidth}));o=C.find(".op-beijingtime-background")[0];n=C.find(".op-beijingtime-mark")[0];i=C.find(".op-beijingtime-hands")[0];if(!y){A.ui.canvas.init([o,n,i])}$(document).ready(function(){F(function(I){g=I;d();g=k(g,E);v(m()=="night");s();h(g);D.init();j=window.setInterval(function(){var K,J;if(g.getSeconds()==0||z==true){l();z=false}J=g.getTimezoneOffset();g=new Date(g.getTime()+1000);if(g.getTimezoneOffset()!=J){g=q(g,J)}h(g);D.setTime()},1000)})})};if(y){c()}else{A.use("canvas",function(){c()})}this.dispose=function(){window.clearInterval(j);$(document).unbind("contextmenu",x)}})});';   // js字串，不含<script标签
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
