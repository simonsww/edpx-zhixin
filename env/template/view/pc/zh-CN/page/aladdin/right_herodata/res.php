<?php 
  class CssJs_Util_right_herodata
   {
      private static $cssStr = '.opr-herodata-con td{line-height:1.69em;}.container_l .opr-herodata-sti{display:none;}.container_s .opr-herodata-lti{display:none;}.opr-herodata-data{_margin-top:1px;*margin-top:1px;float:right;}.opr-herodata-con span,.opr-herodata-ano{white-space:nowrap;}.opr-herodata-data span{color:#000;display:inline-block;}.opr-herodata-back{height:6px;background:#ededed;position:relative;top:-2px;}.container_l .opr-herodata-backls{width:150px;}.container_s .opr-herodata-backls{width:112px;}.container_s .opr-herodata-lasta{display:none;}.opr-herodata-fontl{background:#308fff;position:absolute;height:6px;overflow:hidden;}';  // css字串，不含<style>和</style>标签
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
