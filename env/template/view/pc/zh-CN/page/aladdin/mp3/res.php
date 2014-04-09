<?php 
  class CssJs_Util_mp3
   {
      private static $cssStr = '#op_mp3_link{margin-bottom:2px;}.op_mp3_showurl{color:#008000;clear:both;}.op_mp3_morelink{color:#7577cc;}.op_mp3_btn{display:block;float:left;margin-top:2px;width:15px;height:15px;overflow:hidden;background-image:url(http://www.baidu.com/aladdin/img/mp3/paly_btn.gif);}.op_mp3_btn:hover,.op_mp3_btn:active{background-position:0 -15px;}';  // css字串，不含<style>和</style>标签
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
