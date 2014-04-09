<?php 
  class CssJs_Util_zx_tour_map
   {
      private static $cssStr = '.op-zx-tour-map-container{color:#333;overflow:hidden;}.op-zx-tour-map-box{height:268px;border:1px solid #ccc;}.op-zx-tour-map-label{width:100;height:100%;display:block;border:1px solid #61a9d8;background-color:#eff8ff;border-radius:4px;padding:4px;color:#6599be;font-weight:bold;box-shadow:2px 2px 2px #aaacad;text-decoration:none;out-line:none;}.op-zx-tour-map-container .h{margin-left:0;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("zx_tour_map",function(){A.setup(function(){var e=this,c,b="zx_tour_map_callback_"+new Date().getTime(),d="http://api.map.baidu.com/api?v=1.4&callback="+b;window[b]=function(){var t=e.data.point,r,p;$mapContainer=e.find(".op-zx-tour-map-box");c=new BMap.Map($mapContainer[0]);var j=[];for(var m=0,h=t.length;m<h;m++){if(!t[m]["nozoom"]||t[m]["nozoom"]=="0"){j.push(t[m])}}var k=c.getViewport(j);var s=new BMap.Point(e.data.lng,e.data.lat);c.centerAndZoom(s,(k&&k.zoom)||e.data.zoom);c.addControl(new BMap.NavigationControl());var n=false;var f=null;if(t){for(var m=0;m<t.length;m++){r=t[m]["lng"];p=t[m]["lat"];url=t[m]["url"];title=t[m]["title"];var s=new BMap.Point(r,p);q(s,title,url,m)}var o;if(k&&k.center&&k.center.lng&&k.center.lat){o=new BMap.Point(k.center.lng,k.center.lat)}else{o=new BMap.Point(t[0]["lng"],t[0]["lat"])}c.panTo(o)}c.getPanes().markerPane.style.zIndex=701;$mapContainer.click(function(){if(!n){c.enableScrollWheelZoom();n=true}});$mapContainer.hover(function(i){if(!f){f=setTimeout(function(){c.enableScrollWheelZoom();n=true},800)}},function(i){if(!g($mapContainer[0],i.relatedTarget)){if(f){clearTimeout(f);f=null;c.disableScrollWheelZoom();n=false}}});function g(i,l){while(l!=null&&typeof(l.tagName)!="undefined"){if(l==i){return true}l=l.parentNode}return false}function q(i,y,w,v){var l=new BMap.Marker(i);var x=new BMap.Icon("http://www.baidu.com/aladdin/img/mapapi/map-icon.png",new BMap.Size(30,31),{imageOffset:new BMap.Size(0-(v)*30,0)});l.setIcon(x);c.addOverlay(l);var u=new BMap.Label(\'<a hideFocus="true" data-click="{fm:\\\'alxl\\\'}" href="\'+w+\'" target="_blank" class="op-zx-tour-map-label">\'+y+"<a>",{offset:new BMap.Size(20,-10)});u.setStyle({border:"none",backgroundColor:"none"});l.setLabel(u);l.addEventListener("click",function(z){window.open(w,"_blank");return false})}};function a(g){var f=document.createElement("script");f.setAttribute("type","text/javascript");f.setAttribute("src",g);f.setAttribute("defer","defer");document.getElementsByTagName("head")[0].appendChild(f)}e.ready(function(f){a(d)});this.dispose=function(){clearTimeout(mapMouseOverTimer);window[b]=function(){}}})});';   // js字串，不含<script标签
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
