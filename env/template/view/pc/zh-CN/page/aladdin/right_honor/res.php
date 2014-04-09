<?php 
  class CssJs_Util_right_honor
   {
      private static $cssStr = '.opr-honor{font-size:12px;color:#333;}.container_l .opr-honor{width:440px;}.container_s .opr-honor{width:270px;}.opr-honor a{text-decoration:none;}.opr-honor a:hover{text-decoration:underline;}.opr-honor-subtitle{position:relative;height:22px;line-height:22px;font-size:14px;}.opr-honor-subtitle-tip{position:absolute;padding-right:10px;background:#fff;font-weight:bold;z-index:2;}.opr-honor-subtitle-line{position:absolute;top:11px;width:100%;height:0;border-top:1px solid #eaeaea;z-index:1;}.opr-honor-info p{line-height:27px;}';  // css字串，不含<style>和</style>标签
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
