<?php 
  class CssJs_Util_car3
   {
      private static $cssStr = '.op_car3_icon_container{position:relative;display:block;text-decoration:none;}.op_car3_icon_container span{position:absolute;right:0;bottom:0;display:block;background:#707070;color:#fff;line-height:18px;padding:0 1px;}.op_car3_sub_title span{font-size:14px;font-weight:bold;}.op_car3_link_container a{float:left;}.op_car3_link_container span{float:right;color:#656565;}';  // css字串，不含<style>和</style>标签
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
