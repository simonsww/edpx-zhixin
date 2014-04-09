<?php 
  class CssJs_Util_square_dance
   {
      private static $cssStr = '.op-square-dance-img{position:relative;display:block;text-decoration:none;margin-bottom:4px;}.op-square-dance-bg,.op-square-dance-info{position:absolute;left:0;bottom:0;color:#fff;text-align:center;cursor:pointer;}.op-square-dance-bg{background:#000;opacity:.65;filter:alpha(opacity=65);}.op-square-dance-center{text-align:center;}.op-square-dance-bold{font-weight:bold;}.op-square-dance-info1{float:left;display:inline;}.op-square-dance-info2{float:right;display:inline;}.op-square-dance-gapbtm{margin-bottom:8px;}.op-square-dance-gapbtm2{margin-bottom:3px;}.op-square-dance-gaptop{margin-top:3px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("square_dance",function(){A.setup(function(){var b=this;var a=b.find(".c-tabs");if(a.length>0){A.use("tabs5",function(){A.ui.tabs5(a.get(0))})}})});';   // js字串，不含<script标签
      private static $uiList = 'btn,img,tabs';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
