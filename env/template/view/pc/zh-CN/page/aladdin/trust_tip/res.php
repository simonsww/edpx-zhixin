<?php 
  class CssJs_Util_trust_tip
   {
      private static $cssStr = '.op_trust_tip{border:3px solid #fd9162;}.op_trust_tip strong{display:inline-block;height:16px;line-height:16px;font-size:1.1em;font-family:"宋体";color:#666;}.op_trust_tip p{display:block;color:#333;margin-top:6px;text-indent:2em;line-height:20px;}.op_trust_tip td{padding:10px 14px 6px 9px;font-size:1em;}.op_trust_label{height:18px;}.op_trust_label i{margin-right:4px;}.op_trust_color{color:#c00;}.op_trust_size{letter-spacing:-1px;}';  // css字串，不含<style>和</style>标签
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
