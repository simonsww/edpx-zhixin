<?php 
  class CssJs_Util_right_favorvideo
   {
      private static $cssStr = '.opr-favorvideo-aimgspec{display:none;}.container_l .opr-favorvideo-aimgspec{display:block;}.opr-favorvideo-name,.opr-favorvideo-type{display:block;text-align:center;width:75px;}.opr-favorvideo-name a{word-wrap:break-word;}.opr-favorvideo-type{color:#666;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;}.opr-favorvideo-imga{position:relative;width:75px;display:block;}.opr-favorvideo-imga span{width:75px;position:absolute;top:0;left:0;filter:alpha(opacity=10);opacity:.1;-moz-opacity:.1;display:block;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
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
