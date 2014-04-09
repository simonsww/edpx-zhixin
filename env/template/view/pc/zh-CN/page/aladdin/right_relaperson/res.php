<?php 
  class CssJs_Util_right_relaperson
   {
      private static $cssStr = '.opr-relaperson-content a.opr-relaperson-title{text-decoration:none;}.opr-relaperson-content a.opr-relaperson-title:hover{text-decoration:underline;}.opr-relaperson-otherrow{margin-top:12px;}.opr-relaperson-showall{display:none;}.opr-relaperson-moreshow{cursor:pointer;}.opr-relaperson-moreshow a{padding-right:3px;}.opr-relaperson-aimgspec{display:none;}.container_l .opr-relaperson-aimgspec{display:block;}.opr-relaperson-name,.opr-relaperson-type{text-align:center;}.opr-relaperson-name a{word-wrap:break-word;}.opr-relaperson-type{color:#666;line-height:1.38em;margin-top:2px;}.opr-relaperson-narrow .opr-relaperson-aimgspec{display:none;}.opr-relaperson-narrow .c-span-last-s{margin-right:0;}.opr-relaperson-maskcon{position:relative;}.opr-relaperson-imgmask{position:absolute;top:0;left:0;width:100%;}.opr-relaperson-maskgray{background:-webkit-gradient(radial,center center,0,38 38,38,from(rgba(255,255,255,0)),to(rgba(0,0,0,0.03)));background:-moz-radial-gradient(circle closest-side,rgba(255,255,255,0) 0,rgba(0,0,0,0.03) 100%);background:-ms-radial-gradient(center center,circle,#f00,#ff0,#080);background:#000\\9;filter:alpha(opacity=3)\\9;background:-ms-radial-gradient(center center,circle,rgba(255,255,255,0),rgba(0,0,0,0.03));background:-o-radial-gradient(center center,circle,rgba(255,255,255,0),rgba(0,0,0,0.03));}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_relaperson",function(){A.setup(function(){var h=this,e=h.find(".opr-relaperson-moreshow").eq(0),f=h.find(".opr-relaperson-showall").eq(0),g=document.documentElement.currentStyle,b="opr-relaperson-maskgray",c=navigator.userAgent.match(/MSIE (\\d+)/i);if(e.length){var d=e.find("a").eq(0);var a=e.find("i").eq(0);e.on("click",function(j){j.preventDefault();if(d.html()=="展开"){var i=f.find(".opr-relaperson-centerimg");$(i).each(function(l,k){var n=$(k).find("img").eq(0);if(n.length){var o=n.attr("data-src");n.attr("src",o)}else{var m=$(k).attr("data-style");$(k).attr("style",m)}});f.show();d.html("收起");a.addClass("c-icon-chevron-top")}else{f.hide();d.html("展开");a.removeClass("c-icon-chevron-top")}})}if(g&&g.filter.length&&c&&c[1]<10){h.find("."+b).removeClass(b)}})});';   // js字串，不含<script标签
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
