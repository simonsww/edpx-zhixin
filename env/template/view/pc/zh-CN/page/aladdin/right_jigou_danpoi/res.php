<?php 
  class CssJs_Util_right_jigou_danpoi
   {
      private static $cssStr = '';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_jigou_danpoi",function(){A.setup(function(){var f=this,b,i=null,h=null,g=f.find(".opr-jigou-danpoi-map").eq(0),a=new Date().getTime(),e,d;A._____right_jigou_danpoi_map=function(){var I=false;var q=new BMap.Size(0,-115),y=new BMap.Size(0,-156),B=f.data.tplData.point[0],H=new BMap.Point(B.lng,B.lat);map=new BMap.Map(f.find(".opr-jigou-danpoi-map").get(0),{enableMapClick:false});map.addControl(new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_SMALL}));map.enableScrollWheelZoom();map.centerAndZoom(H,15);var j="http://www.baidu.com/aladdin/img/jigou/markers.png",p=new BMap.Marker(H),G=new BMap.Icon(j,new BMap.Size(34,39),{imageOffset:q}),s=new BMap.Icon(j,new BMap.Size(34,39),{imageOffset:y});p.setIcon(G);p.setTitle(B.title);map.addOverlay(p);var r=new BMap.Label(\'<a hideFocus="true" data-click="{fm:\\\'alxr\\\'}" href="\'+B.link+\'" target="_blank" class="opr-jigou-danpoi-map-label" title="\'+B.title+\'">\'+t(B.title,20)+"<a>",{offset:new BMap.Size(20,-10)});r.setStyle({border:"none",backgroundColor:"none"});p.setLabel(r);p.addEventListener("click",function(){window.open(B.link,"_blank");c({fm:"alxr",rsv_srcid:f.srcid,p1:f.p1,p5:f.p1,mu:f.mu,title:"point",rsv_xpath:"div-div3-div",rsv_tpl:"right_jigou_danpoi"})});map.addEventListener("dragstart",function(){c({fm:"beha",rsv_srcid:f.srcid,p1:f.p1,p5:f.p1,mu:f.mu,title:"drag",rsv_xpath:"div-div3-div",rsv_tpl:"right_jigou_danpoi"})});map.addEventListener("zoomstart",function(){c({fm:"beha",rsv_srcid:f.srcid,p1:f.p1,p5:f.p1,mu:f.mu,title:"zoom",rsv_xpath:"div-div3-div",rsv_tpl:"right_jigou_danpoi"})});map.addEventListener("tilesloaded",function(){if(!f.maploaded){f.maploaded=1;i=setTimeout(function(){g.attr("background","none")},500);d=new Date().getTime();ns_c({tab:"jigou_right_danpoi",waitTime:e-a,loadTime:d-e});var K=f.find(".BMap_stdMpPan .BMap_button");$.each(K,function(L,M){$(M).on("click",function(){c({fm:"beha",rsv_srcid:f.srcid,p1:f.p1,p5:f.p1,mu:f.mu,title:"control",rsv_xpath:"div-div3-div",rsv_tpl:"right_jigou_danpoi"})})})}});$(window).on("resize",z);var x=window.document.documentElement.clientWidth;function t(Q,K,N){var M=[],P=Q.split("");N=N||"…";for(var O=0,L=P.length;O<L;O++){if(P[O].charCodeAt(0)>255){M.push("*")}M.push(P[O])}if(K&&K>0&&M.length>K){P=M.join("").substring(0,K-1).replace(/\\*/g,"")+N}else{return Q}return P}function z(){var K=window.document.documentElement.clientWidth;if((x<1207&&K>1207)||(x>1207&&K<1207)){x=K;h=setTimeout(function(){map.centerAndZoom(H,15)},100)}}if(f.data.isHotMap){var F=window.navigator.userAgent.match(/MSIE\\s*(\\d+)/);var C=F&&F[1]&&parseInt(F[1])<9;var E="rgb(215,57,32)";var m=f.data.tplData.poiname;if(!m){return}var k=f.data.tplData.city;var o=new Date().getTime();var n=1314;o=parseInt(o/1000);var n;var u="http://spotshot.baidu.com/getPoint.php?poiname="+encodeURIComponent(m)+"&time="+o;var D="http://spotshot.baidu.com/getHotW.php?poiname="+encodeURIComponent(m)+"&time="+o;if(!C){var w=document.createElement("script");f.container.appendChild(w);w.src="http://spotshot.baidu.com/js/heatmap.js";var v=document.createElement("script");f.container.appendChild(v);v.src="http://spotshot.baidu.com/js/heatmap-bmaps.js"}if(C){$.ajax({url:"http://spotshot.baidu.com/getVersion.php",dataType:"jsonp",timeout:6000,jsonp:"callback",success:function(K){if(I){return}n=K.version;J();return}})}else{$.ajax({url:D,dataType:"jsonp",timeout:6000,jsonp:"callback",success:function(M){if(I){return}var L=new HeatmapOverlay(map,{radius:10,visible:true,opacity:30});map.addOverlay(L);function N(P){var R=null;var T=null;var Q=null;var O=null;K.data=[];for(var S=0;S<P.length;S++){tmpp=P[S];T=tmpp.x;Q=tmpp.y;O=tmpp.hot;K.data.push({lat:T,lng:Q,count:O})}}var K={max:4,data:[]};N(M.data);L.setDataSet(K)}});$.ajax({url:u,dataType:"jsonp",timeout:6000,jsonp:"callback",success:function(L){if(I){return}var R=L.point;k=L.city?L.city:k;var O=[];for(var N=0,P;P=R[N];N++){var Q=P.split("|");var M=new BMap.Pixel(Q[0],Q[1]);O[N]=map.getMapType().getProjection().pointToLngLat(M)}var K="http://spotshot.baidu.com/getRankHotView.php?poiname="+encodeURIComponent(k)+"&time="+o;$.ajax({url:K,dataType:"jsonp",timeout:6000,jsonp:"callback",success:function(S){for(var U=0,V;V=S.data[U];U++){if(V.poiname==m){E=l(V.hot)}}var T=new BMap.Polygon(O,{strokeColor:E,strokeWeight:2,strokeOpacity:0.7,fillColor:E,fillOpacity:0.2});map.addOverlay(T);map.setViewport(T.getPath())}})}})}function l(L){var K=parseInt(L);if(1<=K&&K<10){return"rgb(44,200,2)"}else{if(10<=K&&K<25){return"rgb(255,201,115)"}else{if(25<=K&&K<40){return"rgb(254,170,58)"}else{if(40<=K&&K<55){return"rgb(254,135,0)"}else{if(55<=K&&K<70){return"rgb(255,84,18)"}else{if(70<=K&&K){return"rgb(215,57,32)"}}}}}}}function J(){var K=["http://shangetu0.map.bdimg.com/it/","http://shangetu1.map.bdimg.com/it/","http://shangetu2.map.bdimg.com/it/","http://shangetu3.map.bdimg.com/it/","http://shangetu4.map.bdimg.com/it/"];var N=new BMap.TileLayer({isTransparentPng:true});var L={x:B.lng,y:B.lat};var M=15;N.getTilesUrl=function(P,R){var S=P.x;var Q=P.y;var O=K[Math.abs(S+Q)%K.length]+"u=x="+S+";y="+Q+";z="+R+";v="+n+";type=hot&fm=44&t="+parseInt((new Date().getTime())/1000*60*10);return O.replace(/-(\\d+)/gi,"M$1")};map.addTileLayer(N)}}};bds.ready(function(){e=new Date().getTime();$.getScript("http://api.map.baidu.com/api?v=1.4&callback=A._____right_jigou_danpoi_map")});this.dispose=function(){ajaxFinished=true;clearTimeout(i);clearTimeout(h)}})});';   // js字串，不含<script标签
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
