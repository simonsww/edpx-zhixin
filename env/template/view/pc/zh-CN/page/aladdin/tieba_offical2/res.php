<?php 
  class CssJs_Util_tieba_offical2
   {
      private static $cssStr = '.op-tieba-offical2-pic{position:relative;}.op-tieba-offical2-pic span{position:absolute;left:0;bottom:0;text-align:center;color:#fff;display:block;width:100%;background:#1da5ff;}.op-tieba-offical2-left{position:relative;}.op-tieba-offical2-left span{position:absolute;left:0;top:130px;height:30px;line-height:30px;opacity:.65;-moz-opacity:.65;-webkit-opacity:.65;-ms-opacity:.65;filter:alpha(opacity=65);background:#000;display:block;width:100%;z-index:1;}.op-tieba-offical2-left i{position:absolute;left:0;top:130px;height:30px;line-height:30px;text-align:center;color:#fff;z-index:3;width:100%;font-style:normal;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'img,btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
