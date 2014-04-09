<?php 
  class CssJs_Util_charitytelephone
   {
      private static $cssStr = '.op_charitytelephone_left{padding-top:8px;padding-right:10px;vertical-align:top;}.op_charitytelephone_pt4{padding-top:4px;}.op_charitytelephone_right{margin:0;font-size:1.4em;line-height:26px;font-family:arial;}.op_charitytelephone_foot{font-size:1em;color:#080;display:block;}.op_charitytelephone_content{font-size:1em;line-height:22px;color:#666;display:block;}';  // css字串，不含<style>和</style>标签
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
