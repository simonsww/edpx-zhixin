<?php 
  class CssJs_Util_right_personinfo
   {
      private static $cssStr = '.opr-personinfo-rankup,.opr-personinfo-rankdown{background:url(http://www.baidu.com/aladdin/img/zhixin/updown.gif) no-repeat;}.container_s .opr-personinfo-searchnum{display:none;}.container_s .opr-personinfo-todaypvonly .opr-personinfo-searchnum{display:inline;}.opr-personinfo-rankup{background-position:right 3px;padding-right:16px;}.opr-personinfo-rankdown{background-position:right -26px;padding-right:16px;}.opr-personinfo-todaypvonly .opr-personinfo-rankup,.opr-personinfo-todaypvonly .opr-personinfo-rankdown{background:none;}.opr-personinfo-infoname{white-space:nowrap;}.opr-personinfo-title{float:left;}';  // css字串，不含<style>和</style>标签
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
