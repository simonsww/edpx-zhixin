<?php 
  class CssJs_Util_weather4_twoico_simple
   {
      private static $cssStr = '.op_weather4_twoicon_simple_u{font-size:13px;color:#999;font-weight:normal;display:none;letter-spacing:-4px;}.op_weather4_twoicon_simple_u i{color:#999;font-weight:normal;font-style:normal;letter-spacing:0;}.op_weather4_twoicon_u a,.op_weather4_twoicon_search a{margin-right:10px;white-space:nowrap;color:#261CDC;letter-spacing:0;}.op_weather4_twoicon_simple_day{width:106px;text-decoration:none;border:none;z-index:20;float:left;border-right:1px solid #ededed;text-align:center;margin:10px 0;color:#333;}.op_weather4_twoicon_simple_icon{width:50px;height:50px;background:no-repeat;margin:5px auto;cursor:pointer;}.op_weather4_twoicon_simple_weath{margin-top:4px;}.op_weather4_twoicon_simple_wlink{font-size:12px;color:#666;padding:12px 0 5px;line-height:20px;}.op_weather4_twoicon_simple_wlink a{color:#77c;margin:0 5px;}';  // css字串，不含<style>和</style>标签
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
