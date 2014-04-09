<?php 
  class CssJs_Util_moviepost
   {
      private static $cssStr = '.op_moviepost_video{width:144px;height:92px;position:relative;}.op_moviepost_video img{width:144px;height:92px;}.op_moviepost_mask{width:144px;height:92px;position:absolute;top:0;left:0;background:#000;filter:alpha(opacity=1);opacity:.1;-moz-opacity:.1;cursor:pointer;}.op_moviepost_playicon{width:36px;height:36px;position:absolute;top:50%;left:50%;margin-left:-18px;margin-top:-18px;cursor:pointer;background:url(http://www.baidu.com/aladdin/img/hotmovie/playicon.png) no-repeat;_background:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src="http://www.baidu.com/aladdin/img/hotmovie/playicon.png");}.op_moviepost_img a{float:left;display:block;width:92px;height:92px;}.op_moviepost_img img{width:92px;height:92px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
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
