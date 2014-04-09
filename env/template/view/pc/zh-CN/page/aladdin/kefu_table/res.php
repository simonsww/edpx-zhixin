<?php 
  class CssJs_Util_kefu_table
   {
      private static $cssStr = '.op_kefutable_icon{display:block;}.op_kefutable_td_l{padding-right:16px;vertical-align:top;}.op_kefutable_border{border-left:1px solid #eee;padding-left:10px;min-height:56px;_height:56px;}.op_kefutable_table{border-collapse:collapse;}.op_kefutable_table td{padding-top:0;white-space:nowrap;font-size:16px;line-height:1.54;}.op_kefutable_td1,.op_kefutable_td2{padding-bottom:2px;padding-right:14px;font-family:arial,\'微软雅黑\',\'黑体\';}.op_kefutable_one td{font-size:24px;}.op_kefutable_committel{color:#666;}';  // css字串，不含<style>和</style>标签
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
