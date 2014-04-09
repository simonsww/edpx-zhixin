<?php 
  class CssJs_Util_teampic
   {
      private static $cssStr = '.op_teampic_list{position:relative;}.op_teampic_list .op_teampic_imgdes{position:absolute;bottom:0;left:0;width:100%;padding:1px 0;background:#000;filter:alpha(opacity:63);opacity:.63;}.op_teampic_list span{display:block;text-align:center;color:#fff;position:absolute;bottom:0;left:0;width:100%;padding:1px 0;}.op_teampic_list img{height:92px;}';  // css字串，不含<style>和</style>标签
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
