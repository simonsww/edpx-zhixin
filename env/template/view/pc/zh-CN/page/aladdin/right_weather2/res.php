<?php 
  class CssJs_Util_right_weather2
   {
      private static $cssStr = '.opr-weather2-container{color:#333;}.opr-weather2-content p{height:26px;line-height:26px;}.opr-weather2-container h2{position:relative;height:22px;line-height:22px;padding:0;margin-top:0;}.opr-weather2-title{font-size:1.077em;position:absolute;z-index:2;padding-right:10px;background:#fff;}.opr-weather2-table{margin-bottom:4px;width:100%;}.opr-weather2-table td{height:26px;line-height:26px;}.opr-weather2-table td.opr-weather2-icon{width:24px;}.opr-weather2-icon img{border:none;width:24px;height:24px;vertical-align:middle;margin-right:40px;}.opr-weather2-comefrom{color:#666;margin-left:20px;}.opr-weather2-desc{padding-right:20px;}.container_l .opr-weather2-desc{display:normal;}.container_s .opr-weather2-desc{display:none;}';  // css字串，不含<style>和</style>标签
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
