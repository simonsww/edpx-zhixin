<?php 
  class CssJs_Util_constellation04
   {
      private static $cssStr = '.op_constellation04{font-size:1em;margin-top:5px;}.op_constellation04_item{width:180px;height:40px;float:left;margin-bottom:10px;margin-right:2px;}.op_constellation04_left{float:left;cursor:pointer;margin-top:2px;margin-left:2px;}.op_constellation04_right{width:134px;float:left;padding-left:2px;height:36px;}.op_constellation04_title{font-size:1em;font-weight:bold;color:#0000ce;margin-top:2px;}.op_constellation04_subtitle{font-size:1em;color:#666;}a.op_constellation04_anchor{text-decoration:none;cursor:pointer;}.op_constellation04_link{padding-right:20px;}.op_constellation04_vs{float:left;text-align:center;padding:10px 16px 0 8px;font-size:1em;font-weight:bold;color:#666;}';  // css字串，不含<style>和</style>标签
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
