<?php 
  class CssJs_Util_zx_hospolregbj
   {
      private static $cssStr = '.op-zx-hospolregbj{overflow:hidden;}.op-zx-hospolregbj-safetip{background:url(http://www.baidu.com/aladdin/img/safe/safetip.png) no-repeat 0 4px;color:#6fba2c;font-weight:bold;padding:0 10px 0 18px;margin:0;}.op-zx-hospolregbj p{line-height:21px;}';  // css字串，不含<style>和</style>标签
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
