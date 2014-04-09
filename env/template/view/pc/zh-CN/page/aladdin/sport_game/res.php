<?php 
  class CssJs_Util_sport_game
   {
      private static $cssStr = '.op-sport-game-hidden{display:none;}.op-sport-game-center{text-align:center;}.op-sport-game-li{float:left;display:inline;}.op-sport-game-li span{color:#00c;cursor:pointer;padding-left:4px;padding-right:4px;}.op-sport-game-li-active span{background-color:#388bff;color:#fff;}.op-sport-game-img{display:block;position:relative;text-decoration:none;}.op-sport-game-more,.op-sport-game-less{border-top:1px solid #f3f3f3;width:100%;cursor:pointer;padding-top:9px;}.op-sport-game-hot,.op-sport-game-new{position:absolute;top:0;left:0;width:31px;height:31px;background-image:url(http://www.baidu.com/aladdin/img/sport_game/sj.png);background-repeat:no-repeat;background-position:0 0;}.op-sport-game-new{background-position:0 -31px;}.op-sport-game-main .op-sport-game-isshow{display:none;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("sport_game",function(){A.setup(function(){var e=this;var c=e.find(".op-sport-game-li");var b=e.find(".op-sport-game-cont");var a=e.find(".op-sport-game-more");var d=e.find(".op-sport-game-less");c.on("click",function(){var g=$(this);var f=c.index(g);var h=b.eq(f);var i=h.find(".op-sport-game-img img");i.each(function(l,j){var k=$(j);var m=k.attr("srctxt");if(m){k.attr("src",m);k.attr("srctxt","")}});g.addClass("op-sport-game-li-active").siblings(".op-sport-game-li-active").removeClass("op-sport-game-li-active");h.removeClass("op-sport-game-hidden").siblings(".op-sport-game-cont:visible").addClass("op-sport-game-hidden");if(h.find(".op-sport-game-tag").length<=4){a.addClass("op-sport-game-hidden");d.addClass("op-sport-game-hidden")}else{if(h.hasClass("op-sport-game-main")){a.removeClass("op-sport-game-hidden");d.addClass("op-sport-game-hidden")}else{a.addClass("op-sport-game-hidden");d.removeClass("op-sport-game-hidden")}}});a.on("click",function(){a.addClass("op-sport-game-hidden");d.removeClass("op-sport-game-hidden");b.removeClass("op-sport-game-main");var f=b.filter(":visible").find(".op-sport-game-img img:gt(3)");f.each(function(j,g){var h=$(g);var k=h.attr("srctxt");if(k){h.attr("src",k);h.attr("srctxt","")}})});d.on("click",function(){d.addClass("op-sport-game-hidden");a.removeClass("op-sport-game-hidden");b.addClass("op-sport-game-main")})})});';   // js字串，不含<script标签
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
