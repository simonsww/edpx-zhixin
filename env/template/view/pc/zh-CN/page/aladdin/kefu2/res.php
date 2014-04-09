<?php 
  class CssJs_Util_kefu2
   {
      private static $cssStr = '.op_kefu2_icon{display:block;}.op_kefu2_border{border-left:1px solid #eee;padding-left:10px;min-height:56px;_height:56px;}.op_kefu2_td{font-size:16px;font-family:arial,\'微软雅黑\',\'黑体\';}.op_kefu2_td2{padding-top:2px;}.op_kefu2_one{font-size:24px;}.op_kefu2_committel{color:#666;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'tool';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
