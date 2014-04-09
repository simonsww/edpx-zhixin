<?php 
  class CssJs_Util_right_officalschedule
   {
      private static $cssStr = '.opr-officalschedule-title-subtitle{font-size:1.077em;font-weight:bold;margin-right:8px;}.opr-officalschedule-title{position:relative;}.opr-officalschedule-title a{position:absolute;right:0;top:0;}.opr-officalschedule-list{border-bottom:1px solid #F3F3F3;padding-bottom:5px;padding-top:5px;}.opr-officalschedule-list a,.opr-officalschedule-list a:visited{text-decoration:none;}.opr-officalschedule-list a:hover,.opr-officalschedule-list a:active{text-decoration:underline;}';  // css字串，不含<style>和</style>标签
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
