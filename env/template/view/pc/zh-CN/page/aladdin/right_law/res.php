<?php 
  class CssJs_Util_right_law
   {
      private static $cssStr = '.opr_law_foot{text-align:left;font-size:.9em;clear:both;}.opr_law_foot span{color:#ccc;margin:0 8px;}.opr_law_foot a{color:#999;text-decoration:none;}.opr_law_foot a.opr_law_color{color:#0100ce;}.opr_law_foot a:hover{text-decoration:underline;}.opr_law_text{margin-bottom:1px;}';  // css字串，不含<style>和</style>标签
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
