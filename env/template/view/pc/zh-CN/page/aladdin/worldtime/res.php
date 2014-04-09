<?php 
  class CssJs_Util_worldtime
   {
      private static $cssStr = '.op-worldtime{position:relative;height:170px;font-family:\'Microsoft Yahei\',Arial;}.op-worldtime-box{position:absolute;left:51px;top:47px;height:65px;}.op-worldtime-mark{position:absolute;left:0;top:0;}.op-worldtime-box{color:#fff;font-family:Microsoft Yahei;}.op-worldtime-hands{position:relative;display:block;float:left;margin-right:18px;}.op-worldtime-box p{float:left;white-space:nowrap;}.op-worldtime-time{margin-right:40px;font-size:55px;line-height:65px;width:200px;letter-spacing:1px;overflow:hidden;height:65px;}.op-worldtime-time span{position:relative;top:-5px;}.op-worldtime-time .op-worldtime-small{top:0;font-size:30px;}.op-worldtime-datebox{padding-top:6px;}.op-worldtime-datebox span{display:block;text-align:center;}.op-worldtime-datebox .op-worldtime-week{font-size:20px;text-align:left;}.op-worldtime-date{font-size:15px;}.op-worldtime-toptext{position:absolute;top:10px;left:10px;color:#fff;font-size:1.15em;line-height:1;z-index:1;zoom:1;}.op-worldtime-bottomtext{position:absolute;bottom:0;left:0;color:#fff;height:35px;width:100%;font-size:1.15em;display:none;}.op-worldtime-bjbg{position:absolute;top:0;left:0;background:#000;opacity:.1;filter:alpha(opacity = 10);width:100%;height:100%;}.op-worldtime-bjbox{position:relative;z-index:1;padding:0 10px;line-height:35px;}.op-worldtime-bjtime{width:60px;margin:0 15px;}.op-worldtime-compare{float:right;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("worldtime",function(){A.setup(function(){var d=this,r,k,z,E,n=200,L=8,u,G,g,c=d.data.timeZone||8,a,C=d.data.dst,J,F,D=d.data.dayLight,v,t=d.data.toptext,p,l,B,b,y,x,i,K,I,f,e,o=60*60*1000,s,q,M=!!document.createElement("canvas").getContext,h=d.find(".op-worldtime"),w,H,m,j;x=function(O){var N=O.split(/:|\\s|-/);return new Date(N[0],N[1]-1,N[2],N[3],N[4],N[5])};g=function(T,R,U){var N=T.getTimezoneOffset(),Q,S,P,O;Q=new Date(T.getTime()+N*60000);Q.setTime(Q.getTime()+R*o);if(U){if(x(U.start)<Q&&x(U.end)>Q){Q.setTime(Q.getTime()+o);J=true}else{J=false}}return Q};a=function(P,O){var N=P.getTimezoneOffset();return new Date(P.getTime()+(P.getTimezoneOffset()-O)*60000)};r=function(P){var O,N;if(typeof P!="function"){return}N=function(){var Q=O&&O.getResponseHeader("Date");if(Q){P(new Date(Q))}};O=$.ajax({url:"/?t="+new Date().getTime(),success:N,error:N})};b=function(N,P){var O=P.split(":");N.setHours(O[0]);N.setMinutes(O[1]||0);N.setSeconds(O[2]||0);return N};F=function(){var O=D.start,N=D.end;O=b(new Date(G.getTime()),O);N=b(new Date(G.getTime()),N);return O<G&&N>G?"daylight":"night"};k=function(Q){var P=w.getContext("2d"),S=w.offsetWidth,N=w.offsetHeight,O,R;if(v&&v==Q){return}v=Q;P.clearRect(0,0,S,N);R=function(){var X,U,aa,V,T,Z,W,Y;Y=M?1:0.5;for(X=0;X<n;X++){U=Math.random()*S;aa=Math.random()*N;T=Math.random()+Y;W=T-Y;M&&(W/=2);V=P.createRadialGradient(U,aa,1,U,aa,T);V.addColorStop(0,"rgba( 175, 175, 175, "+W+" )");V.addColorStop(1,"rgba( 175, 175, 175, 0 )");P.fillStyle=V;P.beginPath();P.arc(U,aa,T,0,Math.PI*2,true);P.fill();P.closePath()}};if(Q){O=P.createLinearGradient(0,0,0,N);O.addColorStop(0,"rgb(24, 50, 89)");O.addColorStop(1,"rgb(52, 130, 186)")}else{O=P.createLinearGradient(0,0,0,N);O.addColorStop(0,"#0067bf");O.addColorStop(1,"#6eabe2")}P.fillStyle=O;P.fillRect(0,0,S,N);if(Q){R()}};z=function(){var P=H.getContext("2d"),Q,O,N=H.offsetWidth/2;P.translate(N,N);for(Q=0;Q<60;Q++){P.lineWidth=1;P.strokeStyle="rgba( 255, 255, 255, 0.3 )";O=4;if(Q%5==0){O=8;P.strokeStyle="#fff"}P.beginPath();P.moveTo(0,O-N);P.lineTo(0,-N);P.stroke();P.closePath();P.rotate(Math.PI/30)}};E=function(S){var Q=S.getHours(),T=S.getMinutes(),R=S.getSeconds(),P=m.getContext("2d"),O=m.offsetWidth/2,N;Q>12&&(Q-=12);Q+=T/60;T+=R/60;P.clearRect(0,0,O*2,O*2);N=function(U,Y,W,X,V){P.save();P.lineWidth=U;P.strokeStyle=Y;P.translate(O,O);P.rotate(W);P.beginPath();P.moveTo(0,X);P.lineTo(0,V);P.stroke();P.closePath();P.restore()};N(3,"#fff",Math.PI/6*Q,6,-16);N(2,"#fff",Math.PI/30*T,6,-24);N(1,"#d93c3c",Math.PI/30*R,6,-24)};B=function(N){return("0"+N).slice(-2)};y={time:null,week:null,date:null,init:function(){this.$time=d.find(".op-worldtime-time");this.$week=d.find(".op-worldtime-week");this.$date=d.find(".op-worldtime-date");this.$bjbox=d.find(".op-worldtime-bjbox");this.setTime();this.minuteSet();this.setBjbox()},setTime:function(){this.$time.html(B(G.getHours())+"<span>:</span>"+B(G.getMinutes())+\'<span class="op-worldtime-small c-gap-left">\'+B(G.getSeconds())+"</span>")},setWeek:function(){this.$week.html("星期"+"日一二三四五六".charAt(G.getDay()))},setDate:function(){this.$date.html(G.getFullYear()+"年"+(G.getMonth()+1)+"月"+G.getDate()+"日")},minuteSet:function(){this.setWeek();this.setDate()},setBjbox:function(){var N=g(u,8);this.$bjbox.html(\'<span class="op-worldtime-compare">比北京\'+(c>8?"快":"慢")+Math.abs(8-c-(J?1:0))+\'小时</span>北京时间<span class="op-worldtime-bjtime"></span>星期\'+"日一二三四五六".charAt(N.getDay())+"，"+(N.getMonth()+1)+"月"+N.getDate()+"日"),this.$bjtime=d.find(".op-worldtime-bjtime");this.setBjtime(N)},setBjtime:function(O){var N=O||g(u,8);this.$bjtime.html([B(N.getHours()),B(N.getMinutes()),B(N.getSeconds())].join(":"))}};l=function(){r(function(N){u=N;G=g(N,c,C);q();k(F()=="night");y.minuteSet()})};K=function(){j=function(){i=true};$(document).on("contextmenu",j)};q=function(){if(!s){s=d.find(".op-worldtime-toptext")}s.html(t+(J?"-正在实行夏令时":""))};f=function(){var N=\'<p class="op-worldtime-toptext">\'+t+\'</p>			<canvas class="op-worldtime-background" width="\'+d.container.offsetWidth+\'" height="170"></canvas>            <div class="op-worldtime-box c-clearfix">                <canvas class="op-worldtime-hands" width="65" height="65"></canvas>                <canvas class="op-worldtime-mark" width="65" height="65"></canvas>                <p class="op-worldtime-time"></p>                <p class="op-worldtime-datebox"><span class="op-worldtime-week"></span><span class="op-worldtime-date"></span>            </div>            <div class="op-worldtime-bottomtext">				<div class="op-worldtime-bjbg"></div>				<div class="op-worldtime-bjbox"></div>			</div>\';h.html(N);w=d.find(".op-worldtime-background")[0];H=d.find(".op-worldtime-mark")[0];m=d.find(".op-worldtime-hands")[0];I=d.find(".op-worldtime-bottomtext")[0];if(!M){A.ui.canvas.init([w,H,m])}d.ready(function(O){r(function(P){G=u=P;K();G=g(G,c,C);q();k(F()=="night");z();E(G);y.init();I.style.display="block";p=window.setInterval(function(){var R,Q;if(G.getSeconds()==0||i==true){l();i=false}Q=G.getTimezoneOffset();G=new Date(G.getTime()+1000);if(G.getTimezoneOffset()!=Q){G=a(G,Q)}u=new Date(u.getTime()+1000);E(G);y.setTime();y.setBjtime()},1000)})})};if(M){f()}else{A.use("canvas",function(){f()})}this.dispose=function(){window.clearInterval(p);$(document).unbind("contextmenu",j)}})});';   // js字串，不含<script标签
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
