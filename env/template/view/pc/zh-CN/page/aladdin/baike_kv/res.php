<?php 
  class CssJs_Util_baike_kv
   {
      private static $cssStr = '.op_baike_kv a,.op_baike_kv a:visited{text-decoration:none;}.op_baike_kv a:hover,.op_baike_kv a:active{text-decoration:underline;}.op_position{position:relative;}.op_baike_kv_concern{height:22px;line-height:1.69em;margin-bottom:2px;position:relative;padding-left:56px;}.op_baike_kv_concerntext{position:absolute;height:22px;width:40px;padding:0 8px;left:0;top:0;background:#3288ff;color:#fff;}.op_baike_kv_concernright{display:inline-block;height:20px;border-top:1px solid #e6e6e6;border-bottom:1px solid #e6e6e6;background:#f7f7f7;}.op_baike_kv_concernright a{display:inline-block;height:20px;line-height:1.54em;float:left;border-right:2px solid #3288ff;padding:0 8px;text-decoration:none;color:#333;}';  // css字串，不含<style>和</style>标签
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
