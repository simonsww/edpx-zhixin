<?php 
  class CssJs_Util_gamequest
   {
      private static $cssStr = '.op_gamequest_subitem{font-weight:bold;}.op_gamequest_ll{float:left;width:70px;}.op_gamequest_rl{float:left;width:470px;}.op_gamequest_icon{width:235px;float:left;}.op_gamequest_text{padding-left:22px;display:inline-block;height:24px;line-height:24px;cursor:pointer;}.op_gamequest_links a{margin-right:4px;}';  // css字串，不含<style>和</style>标签
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
