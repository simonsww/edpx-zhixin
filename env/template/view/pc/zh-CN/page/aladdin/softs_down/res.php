<?php 
  class CssJs_Util_softs_down
   {
      private static $cssStr = '.op-softs-down-nav{padding:10px 0 5px;background-color:#fafafa;border-bottom:1px solid #f5f5f5;}.op-softs-down-tab{text-align:center;}.op-softs-down-tab span{padding-left:7px;padding-right:7px;color:#0000d0;cursor:pointer;display:inline-block;}.op-softs-down-active span{color:#fff;background:#3188ff;}.op-softs-down-hidden{display:none;}.op-softs-down-tag{text-align:center;text-decoration:none;color:#000333;cursor:pointer;}.op-softs-down-info{margin-top:3px;margin-bottom:3px;display:block;}.op-softs-down-down{margin:0;}.op-softs-down-more{border-top:1px solid #f5f5f5;padding-top:6px;margin-bottom:-4px;display:block;}.op-softs-down-more:hover{text-decoration:underline;}.op-softs-down-img{background-repeat:no-repeat;background-position:center center;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("softs_down",function(){A.setup(function(){var f=this;var d=f.find(".op-softs-down-tab");var c=f.find(".op-softs-down-cont");var a=f.find(".op-softs-down-tag");var b=f.data.tip;var e;d.on("click",function(){var h=$(this);h.addClass("op-softs-down-active").siblings(".op-softs-down-active").removeClass("op-softs-down-active");var g=d.index(h);c.filter(":visible").addClass("op-softs-down-hidden");c.eq(g).removeClass("op-softs-down-hidden").find(".op-softs-down-img").each(function(k,l){var j=l.getAttribute("data-style");if(j){l.setAttribute("data-style","");l.style.backgroundImage="url("+j+")"}})});a.on("mouseover",function(){var g=$(this).find(".op-softs-down-info");e=g.html();g.html(b);g.addClass("c-btn op-softs-down-down")});a.on("mouseout",function(){var g=$(this).find(".op-softs-down-info");g.html(e);g.removeClass("c-btn op-softs-down-down")})})});';   // js字串，不含<script标签
      private static $uiList = 'btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
