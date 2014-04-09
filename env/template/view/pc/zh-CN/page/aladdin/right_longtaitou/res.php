<?php 
  class CssJs_Util_right_longtaitou
   {
      private static $cssStr = '.op-longtaitou-longdian{width:260px;height:205px;background:url(\'http://www.baidu.com/aladdin/img/longtaitou/longbg.gif\') #f9e9e5 no-repeat;position:relative;margin-top:35px;}.op-longtaitou-longdianlong,.op-longtaitou-longdianlong2{width:319px;height:214px;background:url(\'http://www.baidu.com/aladdin/img/longtaitou/longmo.png\') no-repeat;position:absolute;top:-61px;left:-53px;cursor:pointer;}.op-longtaitou-longdianlong2{background-position:0 -215px;}.op-longtaitou-long1{width:522px;height:163px;position:absolute;right:0;top:100px;background:url(\'http://www.baidu.com/aladdin/img/longtaitou/feilong1.png\') no-repeat;}.op-longtaitou-long2{width:522px;height:250px;position:absolute;right:0;top:100px;background:url(\'http://www.baidu.com/aladdin/img/longtaitou/feilong2.png\') no-repeat;}.op-longtaitou-longdianbtn,.op-longtaitou-longdianbtnhuan1,.op-longtaitou-longdianbtnhuan2{width:84px;height:98px;background:url(\'http://www.baidu.com/aladdin/img/longtaitou/huan.png\') no-repeat;position:absolute;top:104px;left:22px;cursor:pointer;}.op-longtaitou-longdianbtnhuan1{background-position:0 -104px;left:180px;top:220px;}.op-longtaitou-longdianbtnhuan2{background-position:0 -202px;left:180px;top:220px;}.op-longtaitou-dianwo{width:112px;height:52px;position:absolute;top:142px;left:135px;background:url(\'http://www.baidu.com/aladdin/img/longtaitou/dianwo.png\') no-repeat;}.op-longtaitou-longfu{width:243px;height:350px;position:absolute;top:-8px;left:-76px;background:url(\'http://www.baidu.com/aladdin/img/longtaitou/longfu.png\') no-repeat;}.op-longtaitou-word{position:absolute;left:19px;top:127px;font-size:25px;font-weight:bold;line-height:40px;color:#d03232;font-family:"微软雅黑";}.op-longtaitou-word a{color:#d03232;text-decoration:none;}.op-longtaitou-share{position:absolute;left:170px;top:10px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_longtaitou",function(){A.setup(function(){var j=this,i=j.find(".op-longtaitou-long1"),h=j.find(".op-longtaitou-long2"),o=j.find(".op-longtaitou-longdianlong"),s=j.find(".op-longtaitou-longdianbtn"),f=j.find(".op-longtaitou-longfu"),a=j.find(".op-longtaitou-word"),q=j.find(".op-longtaitou-word a"),d=j.find(".op-longtaitou-share"),c=0,e=0,k=0,t=0,l=document.documentElement.clientWidth||document.body.clientWidth,b=document.documentElement.clientHeight||document.body.clientHeight;if(!!window.ActiveXObject&&!window.XMLHttpRequest){$(j.container).hide();return false}i.prev().show();if(window.location&&window.location.hash=="#___bdshare__velocity__"+(new Date()/3600000/location.pathname.length|0)){}else{var p=p||{};p.ready=p.ready||function(w,v){v=v||document;if(/complete/.test(v.readyState)){w()}else{if(v.addEventListener){if("interactive"==v.readyState){w()}else{v.addEventListener("DOMContentLoaded",w,false)}}else{var u=function(){u=new Function;w()};void function(){try{v.body.doScroll("left")}catch(x){return setTimeout(arguments.callee,10)}u()}();v.attachEvent("onreadystatechange",function(){("complete"==v.readyState)&&u()})}}};p.loadScript=p.loadScript||function(v){var u=document.createElement("script");u.src=v;p.ready(function(){document.getElementsByTagName("script")[0].parentNode.appendChild(u)})};p.loadTime=+new Date;if(!p.ApiPVLogger){p.loadScript("http://bdimg.share.baidu.com/static/js/logger.js?cdnversion="+Math.ceil(new Date()/3600000))}$.getScript("http://bdimg.share.baidu.com/static/js/bds_s_v2.js?cdnversion="+Math.ceil(new Date()/3600000))}h.css({right:l-530});function m(){i.show();i.animate({right:l-530,"background-position":"0 -"+c*173+"px"},3000,function(){clearInterval(u);i.hide();h.show();h.animate({right:l-$(j.container).offset().left,top:100},700,function(){$(this).hide();f.show().parent().css({height:292,"margin-top":0});if(v){clearInterval(v)}s.hide().prev().show();a.show();d.show()});var v=setInterval(function(){h.css({"background-position":"0 -"+e*253+"px"});e++;if(e>3){clearInterval(v)}},100)});var u=setInterval(function(){i.css({"background-position":"0 -"+c*173+"px"});if(!k&&c<8){c++}if(c==8||k){k=1;c--}if(c==0){k=0}},100)}o.click(function(){$(this).hide();s.hide().next().hide();m()});s.click(function(){$(this).hide().next().hide();o.hide();m()});o.bind("mouseover",function(){$(this).addClass("op-longtaitou-longdianlong2")});o.bind("mouseout",function(){$(this).removeClass("op-longtaitou-longdianlong2")});s.prev().bind("mouseover",function(){$(this).addClass("op-longtaitou-longdianbtnhuan2")});s.prev().bind("mouseout",function(){$(this).removeClass("op-longtaitou-longdianbtnhuan2")});var g=0,r=q.eq(n());r.css("display","block");function n(){return Math.round(Math.random()*49)}s.prev().click(function(){if(g==q.length-1){g=-1}g++;r.hide();if(q.eq(n())!=r){var u=q.eq(n())}u.css("display","block");r=u});this.dispose=function(){if(longfeiTime){clearInterval(longfeiTime)}if(longfe2Time){clearInterval(longfe2Time)}}})});';   // js字串，不含<script标签
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
