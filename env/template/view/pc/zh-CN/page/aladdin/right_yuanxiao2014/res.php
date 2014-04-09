<?php 
  class CssJs_Util_right_yuanxiao2014
   {
      private static $cssStr = '.op-yuanxiao2014-xiaoguo{width:390px;height:275px;background:url(\'http://www.baidu.com/aladdin/img/yuanxiao/yuanxiao.png\') no-repeat;position:absolute;top:0;left:50%;}.op-yuanxiao2014-yuanxiao{width:192px;height:138px;margin-top:78px;margin-left:15px;}.op-yuanxiao2014-kuaizi{width:292px;height:107px;background:url(\'http://www.baidu.com/aladdin/img/yuanxiao/kuaizi.png\') no-repeat;position:absolute;top:52px;left:10px;cursor:pointer;z-index:302;}.op-yuanxiao2014-tangyuan{position:absolute;width:132px;height:120px;background:url(\'http://www.baidu.com/aladdin/img/yuanxiao/yuanxiao.png\') 0 -860px;top:0;left:0;z-index:300;}.op-yuanxiao2014-close{position:absolute;width:24px;height:24px;background:url(\'http://www.baidu.com/aladdin/img/yuanxiao/yuanxiao.png\') -371px -880px;z-index:305;top:7px;left:360px;cursor:pointer;}.op-yuanxiao2014-banner{height:75px;background:url(\'http://www.baidu.com/aladdin/img/yuanxiao/banner.jpg\') no-repeat;display:block;}.container_l .op-yuanxiao2014-banner{width:351px;}.container_s .op-yuanxiao2014-banner{width:259px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_yuanxiao2014",function(){A.setup(function(){var g=this,h=g.find(".op-yuanxiao2014-xiaoguo").eq(0),d=h.find(".op-yuanxiao2014-yuanxiao"),b=g.find(".op-yuanxiao2014-kuaizi"),j=g.find(".op-yuanxiao2014-tangyuan"),k=g.find(".op-yuanxiao2014-close"),a=g.data.dengmi;$(g.container).css("margin-bottom","0");if(!!window.ActiveXObject&&!window.XMLHttpRequest){h.hide();return false}h.show();var f=document.documentElement.clientHeight||document.body.clientHeight,i=document.documentElement.clientWidth||document.body.clientWidth;h.css("top",f-275);d.hover(function(){j.show().animate().stop();j.hide();b.css({"background-position":"0 0",height:"107px",top:"52px",left:"10px"});$(this).parent().css("background-position","0 0");b.show()},function(){b.hide()});function c(l){j.show().animate({top:l},function(){d.parent().css("background-position","0 -568px")})}d.mousedown(function(p){$(h)[0].setCapture&&$(h)[0].setCapture();$(this).parent().css("background-position","0 -285px");b.css({"background-position":"0 -117px",left:"-118px",top:"14px",height:"190px"});var p=p||window.event,m=d.offset().left,n=b.offset().left,o=b.offset().top,l=p.clientX-n,q=p.clientY-o;$(document).mousemove(function(v){var v=v||window.event;if(v.clientX-l>i-292){var u=i-292}else{var u=v.clientX-l}if(v.clientY-q<0){var t=0}else{var t=v.clientY-q}var s=u-n-118;var r=t-o+14;b.css({left:s,top:r});return false});$(document).mouseup(function(s){var s=s||window.event;$(h)[0].releaseCapture&&$(h)[0].releaseCapture();s.cancelBubble=true;$(document).unbind();b.hide();j.css({left:s.clientX-60,top:s.clientY});var r=parseInt(b.css("left"));if(r>0&&r<65){document.location.href="http://www.baidu.com/ur/show/uhguesshome?from=seframe"}else{c(f-110)}})});var e=setInterval(function(){var l=document.documentElement.scrollTop||document.body.scrollTop;if(l){j.hide();h.hide()}else{h.show()}},1);k.click(function(){clearInterval(e);j.show().animate().stop();j.hide();h.hide()});this.dispose=function(){clearInterval(e)}})});';   // js字串，不含<script标签
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
