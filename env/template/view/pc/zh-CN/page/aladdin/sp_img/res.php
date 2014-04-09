<?php 
  class CssJs_Util_sp_img
   {
      private static $cssStr = '#ala_img_report{font-size:13px;}#ala_img_report a{color:#77c;}#ala_img_pics{position:relative;}#ala_img_pics input{position:absolute;display:none;bottom:3px;right:3px;border:1px solid #CCC;background:#FAFAFA;width:36px;height:23px;padding:0 4px;text-align:center;cursor:pointer;opacity:.8;white-space:nowrap;filter:alpha(opacity=80);}#ala_img_bigpic{display:inline-block;position:relative;float:left;overflow:hidden;vertical-align:middle;outline:none;_margin-top:1px;}#ala_img_hoverview{position:absolute;display:none;width:0;height:0;overflow:hidden;outline:none;box-shadow:#646464 0 0 10px;}#ala_img_desc a{color:#666;}';  // css字串，不含<style>和</style>标签
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
