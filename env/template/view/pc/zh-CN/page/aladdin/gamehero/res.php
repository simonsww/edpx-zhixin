<?php 
  class CssJs_Util_gamehero
   {
      private static $cssStr = '.op-gamehero-top{position:relative;}.op-gamehero-portrait{height:78px;}.op-gamehero-top td{height:37px;vertical-align:top;}.op-gamehero-td{min-width:40px;_width:42px;zoom:1;white-space:nowrap;}.op-gamehero-other{margin-top:12px;}.op-gamehero-other a{margin-right:15px;}.op-gamehero-other b{color:#cfcfcf;margin-right:3px;font-weight:normal;}.op-gamehero-tabcnt{display:none;}.op-gamehero-tabshow{display:block;}.op-gamehero-tabs p{font-size:12px;width:15px;height:45px;float:left;position:relative;padding:5px 0 0 3px;margin-right:8px;background:#4a9dff;color:#fff;}.op-gamehero-tabs p b{position:absolute;top:14px;left:11px;color:#4a9dff;}.op-gamehero-tabs img{width:50px;height:50px;margin-right:8px;float:left;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'img,btn,tabs';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
