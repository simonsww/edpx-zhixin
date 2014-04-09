<?php 
  class CssJs_Util_sp_realtime
   {
      private static $cssStr = '.op_sp_realtime_preBox{text-decoration:none;position:relative;overflow:hidden;}.op_sp_realtime_preBox img{vertical-align:top;float:left;height:79px;}.op_sp_realtime_preBox span,.op_sp_realtime_preBox b{display:block;position:absolute;bottom:0;left:1px;height:20px;cursor:pointer;}.op_sp_realtime_preBox span{display:block;background:#000;opacity:.65;filter:alpha(opacity=65);width:119px;}.op_sp_realtime_preBox b{font:400 13px/20px arial;color:#fff;background:url(http://s1.bdstatic.com/r/www/cache/realtime/img/play-1.0.png) no-repeat 4px center;padding-left:20px;}';  // css字串，不含<style>和</style>标签
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
