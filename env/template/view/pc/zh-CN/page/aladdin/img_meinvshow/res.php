<?php 
  class CssJs_Util_img_meinvshow
   {
      private static $cssStr = '.op-img-show-con{display:block;position:relative;text-decoration:none;zoom:1;}.op-img-show-footnote-mask{background:#000;opacity:.65;-moz-opacity:.65;-webkit-opacity:.65;-ms-opacity:.65;filter:alpha(opacity=65);}.op-img-show-footnote,.op-img-show-footnote-mask{position:absolute;width:100%;color:#fff;left:0;bottom:0;overflow:hidden;height:20px;_bottom:-1px;}.op-img-show-footnote-left{float:left;overflow:hidden;display:block;text-align:left;margin-left:4px;}.op-img-show-mini-link{display:block;overflow:hidden;text-align:center;}';  // css字串，不含<style>和</style>标签
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
