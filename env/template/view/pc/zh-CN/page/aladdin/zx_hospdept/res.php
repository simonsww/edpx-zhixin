<?php 
  class CssJs_Util_zx_hospdept
   {
      private static $cssStr = '.op-zx-hospdept{width:600px;position:relative;font-size:13px;line-height:22px;}.op-zx-hospdept-title{font-size:16px;font-weight:normal;}.op-zx-hospdept-list{width:420px;}.op-zx-hospdept-list-short{height:22px;}.op-zx-hospdept-li{float:left;display:inline-block;width:90px;}.op-zx-hospdept-lii{float:left;width:110px;}.op-zx-hospdept-liii{float:left;width:150px;}.op-zx-hospdept-morelink span{font-family:simsun;}';  // css字串，不含<style>和</style>标签
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
