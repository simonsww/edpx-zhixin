<?php 
  class CssJs_Util_right_yaopininfo
   {
      private static $cssStr = '.container_l .opr-yaopininfo{width:440px;}.container_s .opr-yaopininfo{width:270px;}.opr-yaopininfo-title{line-height:20px;}.opr-yaopininfo-label{font-size:16px;font-weight:bold;}.opr-yaopininfo-subtitle{position:relative;height:22px;line-height:22px;}.opr-yaopininfo-subtitle-line{position:absolute;top:11px;width:100%;height:0;border-top:1px solid #eaeaea;z-index:1;}.opr-yaopininfo-fl{float:left;white-space:nowrap;}.opr-yaopininfo-cb{clear:both;}.opr-yaopininfo-more{display:inline-block;margin-left:14px;font-family:\'宋体\';}.opr-yaopininfo-links{margin-top:4px;}.opr-yaopininfo-links td{font-size:13px;}.opr-yaopininfo-links span{display:inline-block;white-space:nowrap;margin-right:12px;}.container_s .opr-yaopininfo-links span.opr-yaopininfo-a1{margin-right:0;}.opr-yaopininfo-ftd{white-space:nowrap;vertical-align:top;}';  // css字串，不含<style>和</style>标签
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
