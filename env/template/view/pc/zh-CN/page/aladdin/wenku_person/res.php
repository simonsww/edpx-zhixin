<?php 
  class CssJs_Util_wenku_person
   {
      private static $cssStr = '.op-wenku-person-list .op-wenku-person-link{padding-right:75px;}.op-wenku-person-list .op-wenku-person-valuescore{padding-right:26px;}.op-wenku-person-list .op-wenku-person-pagenum{text-align:right;}.op-wenku-person-list span{color:#666;}.op-wenku-ic-verify{display:inline-block;zoom:1;width:16px;height:16px;background:url(\'http://www.baidu.com/aladdin/img/wenku/verifyIcon.png\') no-repeat;vertical-align:-3px;}';  // css字串，不含<style>和</style>标签
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
