<?php 
  class CssJs_Util_right_birthday
   {
      private static $cssStr = '';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_birthday",function(){A.setup(function(){var f=this,h=false,b=false,a=f.find(".opr-birthday-btn").eq(0),m=f.find(".opr-birthday-graystyle").get(0),l=f.find(".opr-birthday-player").get(0),g=f.data.upurl,e=f.data.fetchurl,d=0,k=false,j;a.on("click",function(){if(b){return}a.addClass("opr-birthday-btn2");var n=f.find(".opr-birthday-num").get(0).getElementsByTagName("b")[0];if(n&&n.innerHTML!=""){d=parseInt(n.innerHTML,10);n.innerHTML=d+1}c();if(m){m.parentNode.removeChild(m);m=null}b=true});function i(n){return n+(n.indexOf("?")>-1?"&t=":"?t=")+new Date().getTime()}function c(){$.ajax({url:i(g),dataType:"jsonp"})}$.ajax({url:i(e),dataType:"jsonp",success:function(n){if(k){return}d=n.data.sum||0;f.find(".opr-birthday-num").get(0).getElementsByTagName("b")[0].innerHTML=d},error:function(){d=-1},timeout:5000});j=(function(){var o,p,n;if(b){return}try{if(document.createElement("audio").play){o=true;l.innerHTML=\'<audio class="opr-birthday-music-player"></audio>\';p=f.find(".opr-birthday-music-player").get(0)}}catch(q){}if(!o){l.innerHTML=\'<object id="opr-birthday-music-player" width="1" height="1" type="application/x-shockwave-flash" data="http://www.baidu.com/aladdin/img/right_gaokao/audioplayer.swf"><param name="movie" value="http://www.baidu.com/aladdin/img/right_gaokao/audioplayer.swf"><param name="allowScriptAccess" value="always" /></object>\';n=f.find("#opr-birthday-music-player").get(0)}return{play:function(t){var r=this;try{p&&(p.src=t,p.play());n&&(n.uri(t),n.playMp3())}catch(s){rmtimer=setTimeout(function(){r.play(t)},13)}},pause:function(){p?(p.pause()):(n.stopMp3())}}}());if(f.data.musicUrl){j.play(f.data.musicUrl)}this.dispose=function(){if(!k){k=true}}})});';   // js字串，不含<script标签
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
