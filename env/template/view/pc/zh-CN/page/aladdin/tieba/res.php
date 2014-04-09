<?php 
  class CssJs_Util_tieba
   {
      private static $cssStr = '.op_tb_hotlink{margin-right:1em;}.op_tb_morelink{font-family:simsun;}.op_tb_pad{padding-left:10px;}.op_tb_hr{height:0;border-top:1px solid #f4f4f4;overflow:hidden;}.op_tb_gap_top{margin-top:6px;}.op_tb_more span{float:right;color:#666;}';  // css字串，不含<style>和</style>标签
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
