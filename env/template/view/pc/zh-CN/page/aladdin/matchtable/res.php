<?php 
  class CssJs_Util_matchtable
   {
      private static $cssStr = '.op_mt_abstract{font-weight:bold;line-height:1.4em;color:#515151;}.op_mt_abstract span{padding-right:30px;}.op_matchtable_tsd .op_matchtable_detailr{text-align:right;}.op_matchtable_tsd .op_matchtable_showlook{text-align:center;}.op_matchtable_matchscore span{white-space:nowrap;}.op_matchtable_left{float:left;}.op_matchtable_right{float:right;}.op_matchtable_contest a.op_matchtable_pt6{padding-right:12px;}.op_matchtable_contest span{padding-left:14px;padding-right:14px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'table';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
