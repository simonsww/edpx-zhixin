<?php 
  class CssJs_Util_right_favorvideo1
   {
      private static $cssStr = '.opr-favorvideo1-name,.opr-favorvideo1-type{text-align:center;}.opr-favorvideo1-name a{display:block;}.opr-favorvideo1-type{color:#666;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;}.opr-favorvideo1-aimgspec{display:none;}.container_l .opr-favorvideo1-aimgspec{display:block;}a.opr-favorvideo1-imga{position:relative;display:block;overflow:hidden;text-decoration:none;}.opr-favorvideo1-ratebg,.opr-favorvideo1-rate{width:100%;position:absolute;bottom:0;left:0;}.opr-favorvideo1-ratebg{background:#000;filter:alpha(opacity=70);opacity:.7;-moz-opacity:.7;}.opr-favorvideo1-rate{color:#fff;text-align:center;}.opr-favorvideo1-over .opr-favorvideo1-rate,.opr-favorvideo1-over .opr-favorvideo1-ratebg{display:none;}.opr-favorvideo1-mask{width:100%;height:100%;position:absolute;top:0;left:0;background:#000;filter:alpha(opacity=70);opacity:.7;-moz-opacity:.7;border:0;display:none;text-decoration:none;}.opr-favorvideo1-info{position:absolute;top:17%;left:0;width:100%;color:#fff;text-align:center;display:none;}.opr-favorvideo1-over .opr-favorvideo1-info,.opr-favorvideo1-over .opr-favorvideo1-mask{display:block;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_favorvideo1",function(){A.setup(function(){var c=this,a=A.baidu,b;A.use("jquery",function(){var f=A.ui.jquery;var d=f(c.container),e=d.find(".opr-favorvideo1-imga");e.hover(function(){var g=this;if(!b){b=setTimeout(function(){f(g).addClass("opr-favorvideo1-over")},200)}},function(){var g=this;clearTimeout(b);b=undefined;f(g).removeClass("opr-favorvideo1-over")})});this.dispose=function(){clearTimeout(b)}})});';   // js字串，不含<script标签
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
