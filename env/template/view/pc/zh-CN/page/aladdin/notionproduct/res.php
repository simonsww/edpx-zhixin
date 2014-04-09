<?php 
  class CssJs_Util_notionproduct
   {
      private static $cssStr = '.op-notionproduct-dl dt{float:left;width:121px;}.op-notionproduct-dl dd{float:left;}.op-notionproduct-title{font-weight:bold;font-size:1.077em;}.op-notionproduct-subtitle{font-weight:bold;font-size:.923em;}.op-notionproduct-from{text-align:right;color:#999;}.op-notionproduct-summary{font-size:.923em;}.op-notionproduct-summary a,.op-notionproduct-summary a:visited{text-decoration:none;}.op-notionproduct-summary a:hover,.op-notionproduct-summary a:active{text-decoration:underline;}.op-notionproduct-maindl{margin-top:0;margin-bottom:0;}.op-notionproduct-maindl2{margin-bottom:0;}.op-notionproduct-maindl dd,.op-notionproduct-maindl2 dd{margin-left:0;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("notionproduct",function(){A.setup(function(){var a=this})});';   // js字串，不含<script标签
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
