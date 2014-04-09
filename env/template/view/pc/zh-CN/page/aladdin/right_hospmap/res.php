<?php 
  class CssJs_Util_right_hospmap
   {
      private static $cssStr = '.opr-hospmap{font-size:12px;}.container_l .opr-hospmap{width:440px;}.container_s .opr-hospmap{width:270px;}.container_l .opr-hospmap-box{width:438px;}.container_s .opr-hospmap-box{width:268px;}.opr-hospmap-title{font-size:16px;font-weight:bold;border-bottom:1px solid #eaeaea;margin-bottom:15px;padding-bottom:10px;}.opr-hospmap-box{height:160px;border:1px solid #ccc;}.opr-hospmap-list{margin-top:10px;}.opr-hospmap-list-li{margin:4px 0;line-height:22px;}.opr-hospmap-list-li div{float:left;width:20px;height:27px;margin:5px 10px 0 0;background:url("http://www.baidu.com/aladdin/img/zxhospital/markers.png") no-repeat;_background:url("http://www.baidu.com/aladdin/img/zxhospital/markers_ie.png") no-repeat;}.opr-hospmap-list-li .opr-hospmap-li-marker0{background-position:0 -199px;}.opr-hospmap-list-li .opr-hospmap-li-marker1{background-position:-24px -199px;}.opr-hospmap-list-li .opr-hospmap-li-marker2{background-position:-48px -199px;}.opr-hospmap-list-li .opr-hospmap-li-marker0.opr-hospmap-li-marker-active{background-position:0 -231px;}.opr-hospmap-list-li .opr-hospmap-li-marker1.opr-hospmap-li-marker-active{background-position:-24px -231px;}.opr-hospmap-list-li .opr-hospmap-li-marker2.opr-hospmap-li-marker-active{background-position:-48px -231px;}.opr-hospmap-list-li b{color:#666;}.opr-hospmap-morelink{margin-left:30px;}.opr-hospmap-morelink span{font-family:simsun;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_hospmap",function(){A.setup(function(){var j=this,c,f,h,k=new Date().getTime(),d,g,e,l="right_hospmap_callback_"+new Date().getTime(),i="http://api.map.baidu.com/api?v=1.4&callback="+l;var b;var a=j.find(".opr-hospmap-list-li");d=new Date().getTime();$.getScript(i);window[l]=function(){g=new Date().getTime();f=j.find(".opr-hospmap-box").get(0);c=new BMap.Map(f);c.addEventListener("tilesloaded",function(){if(!j.maploaded){e=new Date().getTime();ns_c({tab:"hospmapspeed",mt:e-window.hospmapinittime,initTime:e-k,callTime:e-d,loadTime:e-g});j.maploaded=1}});c.disableDragging();c.setDefaultCursor("pointer");var u=j.data.point,q,o;if(u){var s=[];var r=(u.length>3)?2:u.length-1;for(var n=r;n>=0;n--){q=u[n]["lng"];o=u[n]["lat"];url=u[n]["url"];title=u[n]["name"];var t=new BMap.Point(q,o);s.push(t);p(t,title,url,n)}var m=new BMap.Point(u[0]["lng"],u[0]["lat"]);c.setViewport(s);b=function(){c.setViewport(s)};$(window).on("resize",b);h=j.find(".BMap_mask").eq(0);h.on("click",function(){window.open(j.data.link,"_blank")})}function p(v,C,y,x){var w,D="http://www.baidu.com/aladdin/img/zxhospital/markers.png",z=new BMap.Icon(D,new BMap.Size(29,31),{imageOffset:new BMap.Size(0-(x)*29,0)}),B=new BMap.Icon(D,new BMap.Size(34,37),{imageOffset:new BMap.Size(0-(x)*34,-73)});w=new BMap.Marker(v,{icon:z});w.addEventListener("mouseover",function(){w.setIcon(B);w.setTitle(C)});w.addEventListener("mouseout",function(){w.setIcon(z)});c.addOverlay(w);w.addEventListener("click",function(E){A.use("baidu",function(){E.stopPropagation();window.open(y,"_blank")})})}};this.dispose=function(){window[l]=function(){};$(window).unbind("resize",b)}})});';   // js字串，不含<script标签
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
