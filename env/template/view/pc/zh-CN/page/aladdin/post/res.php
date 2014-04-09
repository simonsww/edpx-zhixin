<?php 
  class CssJs_Util_post
   {
      private static $cssStr = '.op_post_icon{line-height:0;}.op_post_title,.op_post_content{font-family:\'微软雅黑\',\'黑体\';_font-family:arial;}.op_post_title{font-size:16px;}.op_post_content{font-size:22px;}.op_post_content_mult{font-size:16px;}.op_post_note{color:#666;}';  // css字串，不含<style>和</style>标签
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
