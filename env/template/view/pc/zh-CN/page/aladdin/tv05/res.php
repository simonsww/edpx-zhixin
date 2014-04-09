<?php 
  class CssJs_Util_tv05
   {
      private static $cssStr = '.op_tv05_nodata{text-align:center;padding:15px 0;color:#261CDC;}.op_tv05_tvlogo{width:30px;height:18px;display:block;padding:3px 0 0 0;overflow:hidden;cursor:default;background:0;}.op_tv05_hidden,.op_tv05_lihidden,.op_tv05_table_list span.op_tv05_lihidden{display:none;}.op_tv05_close,.op_tv05_open{font-weight:bold;color:#261CDC;text-decoration:underline;cursor:pointer;padding:2px 0;}.op_tv05_open{*border-top:1px solid #f3f3f3;}.op_tv05_content,.op_tv05_tvrlt,.op_tv05_table_list{position:relative;}.op_tv05_tvmore{position:absolute;top:0;right:10px;height:28px;line-height:28px;}.op_tv05_tvtime{width:13%;}.op_tv05_tvtitle{width:67%;}.op_tv05_abs{position:absolute;right:25px;top:0;width:115px;font-weight:normal;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'tabs,table';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
