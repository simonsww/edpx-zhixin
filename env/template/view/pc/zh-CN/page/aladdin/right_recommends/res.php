<?php 
  class CssJs_Util_right_recommends
   {
      private static $cssStr = '.opr-recommends-imgtext{display:block;}.opr-recommends-hide{display:none;}.opr-recommends-p{position:relative;_zoom:1;}.opr-recommends-item{text-align:center;}.opr-recommends-layerbtn{position:absolute;right:0;bottom:0;width:1.23em;height:1.23em;background:url(http://www.baidu.com/aladdin/img/right_recommends/layericon.png) no-repeat;_background-image:url(http://www.baidu.com/aladdin/img/right_recommends/layericon.gif);}.opr-recommends-layerbtn1,.opr-recommends-layerbtn2{background-position:-48px 0;}.opr-recommends-layerbtn1,.opr-recommends-layerbtn3{background-color:#999;}.opr-recommends-layerbtn1:hover,.opr-recommends-layerbtn3:hover,.opr-recommends-layerbtn2,.opr-recommends-layerbtn4{background-color:#38f;}.opr-recommends-layerbtn3:hover,.opr-recommends-layerbtn4:hover{background-position:-24px 0;}.opr-recommends-layer{padding:4px 9px;width:350px;}.opr-recommends-layer table{border-collapse:collapse;border-padding:0;}.opr-recommends-layer td{font-size:1em;line-height:1.67;vertical-align:top;}.opr-recommends-lastspan{display:none;}.container_l .opr-recommends-lastspan{display:block;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_recommends",function(){A.setup(function(){var f=this,d=f.find(".opr-recommends-layerbtn"),e=[],c=bds.comm.containerSize,a=function(h){h=$(h);var j=$(f.container),g=j.width()-(h.offset().left-j.offset().left)-h.width();var i=370/2;if(g<0){g=0}else{if(g>i){g=i}}return g};bds.event.on("se.window_resize",function(){if(bds.comm.containerSize===c){return}c=bds.comm.containerSize;$.each(e,function(j,g){var k=g.tip,h=a(g.dom);k.setOffset({x:h});k.setArrow({offset:h})})});function b(){if(bds.se&&bds.se.tip){$.each(d,function(j,h){var m=$(h),l=m.parents(".opr-recommends-item"),n=l.find("textarea").val(),g=a(m);var k=new bds.se.tip({target:h,align:"right",content:n,arrow:{offset:g},offset:{x:g,y:25}});e.push({dom:h,tip:k})})}}bds.event.on("se.api_tip_ready",function(){b()});b()})});';   // js字串，不含<script标签
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
