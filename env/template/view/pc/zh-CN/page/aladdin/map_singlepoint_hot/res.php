<?php 
  class CssJs_Util_map_singlepoint_hot
   {
      private static $cssStr = '';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("map_singlepoint_hot",function(){A.setup(function(){var n=this,b,p=null,f=n.find(".op-map-singlepoint-hothotmap").eq(0),l=new Date().getTime(),e,j;var q="[,10)稀少 [10,70)密集 [70,)拥挤";var o={"稀少":"xishao","密集":"miji","拥挤":"yongji"};var k=n.find(".op-map-singlepoint-hothothot-level-tag");var g=n.find(".op-map-singlepoint-hothothot-update-time");var i=n.find(".op-map-singlepoint-hothothot-tip");var m=n.data.tplData.poiname;var a=n.data.tplData.titleUrl;var h={"拥挤":"拥挤拥挤拥挤拥挤拥挤拥挤拥挤拥挤拥挤拥挤拥挤拥挤拥挤","密集":"密集密集密集密集密集密集密集密集密集密集密集密集密集","稀少":"稀少稀少稀少稀少稀少稀少稀少稀少稀少稀少稀少稀少稀少"};A._____map_singlepoint_hot=function(){var O=false;var y=new BMap.Size(0,-115),G=new BMap.Size(0,-156),H={lng:n.data.tplData.lng,lat:n.data.tplData.lat},N=new BMap.Point(H.lng,H.lat);map=new BMap.Map(n.find(".op-map-singlepoint-hothotmap").get(0),{enableMapClick:false});map.addControl(new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_SMALL}));map.enableScrollWheelZoom();map.centerAndZoom(N,10);var r="http://www.baidu.com/aladdin/img/jigou/markers.png",x=new BMap.Marker(N),M=new BMap.Icon(r,new BMap.Size(34,39),{imageOffset:y}),B=new BMap.Icon(r,new BMap.Size(34,39),{imageOffset:G});x.setIcon(M);x.setTitle(m);map.addOverlay(x);var z=new BMap.Label(\'<a hideFocus="true" data-click="{fm:\\\'alxr\\\'}" href="\'+a+\'" target="_blank" class="op-map-singlepoint-hothotmap-label">\'+C(m,20)+"<a>",{offset:new BMap.Size(20,-10)});z.setStyle({border:"none",backgroundColor:"none"});x.setLabel(z);x.addEventListener("click",function(){window.open(a,"_blank");c({fm:"alxr",rsv_srcid:n.srcid,p1:n.p1,p5:n.p1,mu:n.mu,title:"point",rsv_xpath:"div-div3-div",rsv_tpl:"map_singlepoint_hot"})});map.addEventListener("dragstart",function(){c({fm:"beha",rsv_srcid:n.srcid,p1:n.p1,p5:n.p1,mu:n.mu,title:"drag",rsv_xpath:"div-div3-div",rsv_tpl:"map_singlepoint_hot"})});map.addEventListener("zoomstart",function(){c({fm:"beha",rsv_srcid:n.srcid,p1:n.p1,p5:n.p1,mu:n.mu,title:"zoom",rsv_xpath:"div-div3-div",rsv_tpl:"map_singlepoint_hot"})});map.addEventListener("tilesloaded",function(){if(!n.maploaded){n.maploaded=1;p=setTimeout(function(){f.attr("background","none")},500);j=new Date().getTime();ns_c({tab:"map_singlepoint_hot",waitTime:e-l,loadTime:j-e});var Q=n.find(".BMap_stdMpPan .BMap_button");$.each(Q,function(R,S){$(S).on("click",function(){c({fm:"beha",rsv_srcid:n.srcid,p1:n.p1,p5:n.p1,mu:n.mu,title:"control",rsv_xpath:"div-div3-div",rsv_tpl:"map_singlepoint_hot"})})})}});function C(W,Q,T){var S=[],V=W.split("");T=T||"…";for(var U=0,R=V.length;U<R;U++){if(V[U].charCodeAt(0)>255){S.push("*")}S.push(V[U])}if(Q&&Q>0&&S.length>Q){V=S.join("").substring(0,Q-1).replace(/\\*/g,"")+T}else{return W}return V}if(n.data.isHotMap){var L=window.navigator.userAgent.match(/MSIE\\s*(\\d+)/);var I=L&&L[1]&&parseInt(L[1])<9;var K="rgb(215,57,32)";if(!m){return}var t=n.data.tplData.cityname;var w=(bds&&bds.comm&&bds.comm.serverTime)?bds.comm.serverTime-60:parseInt(new Date().getTime()/1000)-60;var v;var D="http://spotshot.baidu.com/getPoint.php?poiname="+encodeURIComponent(m)+"&city="+encodeURIComponent(t)+"&time="+w;var J="http://spotshot.baidu.com/getHotW.php?poiname="+encodeURIComponent(m)+"&city="+encodeURIComponent(t)+"&time="+w;var s="http://spotshot.baidu.com/getRankHotView.php?poiname="+encodeURIComponent(t)+"&subpoiname="+encodeURIComponent(m)+"&time="+w;$.ajax({url:s,dataType:"jsonp",timeout:6000}).done(function(R){if(O){return}if(R&&R.data&&R.data.hot!==undefined){var S=R.data.hot;var Q=d(S,q);k.html(Q).addClass("op-map-singlepoint-hothothot-level-"+o[Q]+"-font-color");g.html(R.NearestTime.length==19?R.NearestTime.substr(0,16):R.NearestTime)}});if(I){$.ajax({url:"http://spotshot.baidu.com/getVersion.php",dataType:"jsonp",timeout:6000,jsonp:"callback",success:function(Q){if(O){return}v=Q.version;P();return}})}else{var F=document.createElement("script");n.container.appendChild(F);F.src="http://spotshot.baidu.com/js/heatmap.js";var E=document.createElement("script");n.container.appendChild(E);E.src="http://spotshot.baidu.com/js/heatmap-bmaps.js";$.ajax({url:J,dataType:"jsonp",timeout:6000,jsonp:"callback",success:function(S){if(O){return}var R=new HeatmapOverlay(map,{radius:10,visible:true,opacity:30});map.addOverlay(R);function T(V){var X=null;var Z=null;var W=null;var U=null;Q.data=[];for(var Y=0;Y<V.length;Y++){tmpp=V[Y];Z=tmpp.x;W=tmpp.y;U=tmpp.hot;Q.data.push({lat:Z,lng:W,count:U})}}var Q={max:4,data:[]};T(S.data);R.setDataSet(Q)}});$.ajax({url:D,dataType:"jsonp",timeout:6000,jsonp:"callback",success:function(R){if(O){return}var X=R.point;t=R.city?R.city:t;var U=[];for(var T=0,V;V=X[T];T++){var W=V.split("|");var S=new BMap.Pixel(W[0],W[1]);U[T]=map.getMapType().getProjection().pointToLngLat(S)}var Q="http://spotshot.baidu.com/getRankHotView.php?poiname="+encodeURIComponent(t)+"&time="+w;$.ajax({url:Q,dataType:"jsonp",timeout:6000,jsonp:"callback",success:function(Y){for(var aa=0,ab;ab=Y.data[aa];aa++){if(ab.poiname==m){K=u(ab.hot)}}var Z=new BMap.Polygon(U,{strokeColor:K,strokeWeight:2,strokeOpacity:0.7,fillColor:K,fillOpacity:0.2});map.addOverlay(Z);map.setViewport(Z.getPath())}})}})}function u(R){var Q=parseInt(R);if(1<=Q&&Q<10){return"rgb(44,200,2)"}else{if(10<=Q&&Q<25){return"rgb(255,201,115)"}else{if(25<=Q&&Q<40){return"rgb(254,170,58)"}else{if(40<=Q&&Q<55){return"rgb(254,135,0)"}else{if(55<=Q&&Q<70){return"rgb(255,84,18)"}else{if(70<=Q&&Q){return"rgb(215,57,32)"}}}}}}}function P(){var Q=["http://shangetu0.map.bdimg.com/it/","http://shangetu1.map.bdimg.com/it/","http://shangetu2.map.bdimg.com/it/","http://shangetu3.map.bdimg.com/it/","http://shangetu4.map.bdimg.com/it/"];var T=new BMap.TileLayer({isTransparentPng:true});var R={x:H.lng,y:H.lat};var S=15;T.getTilesUrl=function(V,X){var Y=V.x;var W=V.y;var U=Q[Math.abs(Y+W)%Q.length]+"u=x="+Y+";y="+W+";z="+X+";v="+v+";type=hot&fm=44&t="+parseInt((new Date().getTime())/1000*60*10);return U.replace(/-(\\d+)/gi,"M$1")};map.addTileLayer(T)}}};function d(r,s){return s.replace(/(\\[|\\()(\\s?|\\d+)\\,(\\s?|\\d+)(\\]|\\))([^\\s]+)\\s?/g,function(y,w,v,t,u,x){v=w==="["?v:v===""?"":v-1;t=u==="]"?t:t===""?"":t-1;return(v===""?r<=t:r>=v&&(t===""?true:r<=t))?x:""})}bds.ready(function(){e=new Date().getTime();$.getScript("http://api.map.baidu.com/api?v=1.4&callback=A._____map_singlepoint_hot")});this.dispose=function(){ajaxFinished=true;p&&clearTimeout(p)}})});';   // js字串，不含<script标签
      private static $uiList = 'input,tabs,btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
