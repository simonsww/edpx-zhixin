<?php 
  class CssJs_Util_zx_repair_hotline
   {
      private static $cssStr = '.op-repair-hotline{overflow:hidden;zoom:1;}.op-repair-hotline-info{padding-left:22px;border-left:1px solid #eee;overflow:hidden;vertical-align:top;}.op-repair-hotline-info table{border-collapse:collapse;}.op-repair-hotline-info td{height:25px;vertical-align:top;}.op-repair-hotline-info .op_repair_hotline_last td{padding-bottom:0;height:24px;}.op-repair-hotline-info p{_font-family:simsun;}.op-repair-hotline-info p a{font-family:simsun;_font-family:arial;}.op-repair-hotline-leb{padding-right:18px;font-size:16px;font-family:simsun;}.op-repair-hotline-hotline{font-size:16px;}.op-repair-hotline-sublink{margin-top:3px;}.op-repair-hotline-sublink a{margin-right:13px;*margin-right:10px;display:inline-block;}';  // css字串，不含<style>和</style>标签
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
