<?php 
  class CssJs_Util_postcode
   {
      private static $cssStr = '.op_postcode_icon{line-height:0;}.op_postcode_ans{width:100%;border-collapse:collapse;border-spacing:0;}.op_postcode_i{float:left;}.op_postcode_t,.op_postcode_ans{font-family:\'微软雅黑\',\'黑体\';_font-family:arial;}.op_postcode_t{font-size:1.231em;}.op_postcode_ans{font-size:1.692em;}.op_postcode_ans_mult{font-size:1.231em;}.op_postcode_note{color:#666;}';  // css字串，不含<style>和</style>标签
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
