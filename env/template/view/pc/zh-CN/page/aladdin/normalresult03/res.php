<?php 
  class CssJs_Util_normalresult03
   {
      private static $cssStr = '.op_normalresult03_fonp p{line-height:1.4em;}.op_normalresult03_fonp a{white-space:nowrap;}.op_normalresult03_img img{width:21px;height:21px;vertical-align:middle;margin-top:0;}.op_normalresult03_img span{font-weight:bold;}';  // css字串，不含<style>和</style>标签
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
