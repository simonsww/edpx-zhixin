<?php 
  class CssJs_Util_right_novel
   {
      private static $cssStr = '.opr-novel-alllink{font-size:13px;font-weight:normal;}.opr-novel-aimgspec{display:none;}.container_l .opr-novel-aimgspec{display:block;}.opr-novel-imglink{position:relative;display:block;}.opr-novel-name,.opr-novel-type{display:block;text-align:center;}.opr-novel-name a{word-wrap:break-word;}.opr-novel-type{color:#666;}';  // css字串，不含<style>和</style>标签
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
