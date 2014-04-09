<?php 
  class CssJs_Util_map_bustime
   {
      private static $cssStr = '.op_map_bustime p.op_map_bustimefont16{font-size:1.2em;}.op_map_bustime p.op_map_bustimefont20{font-size:1.5em;}.op_map_bustime p.op_map_bustimefont14{font-size:1.1em;}.op_map_bustime p{line-height:26px;font-family:微软雅黑;_font-family:arial;letter-spacing:2px;*letter-spacing:.1em;}.op_map_bustime p.op_map_bustimefeed{color:#999;font-size:.9em;text-align:right;}.op_map_bustimesep{margin:0 8px;}.op_map_bustime p.op_map_bustimefeed{font-family:arial;margin-top:-3px;margin-bottom:-3px;}.op_map_bustimefeed a{color:#999;text-decoration:none;}.op_map_bustimefeed a:hover{text-decoration:underline;}.op_map_bustimetitle{font-size:1.17em;font-weight:bold;}.op_map_bustimeblock{display:block;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("map_bustime",function(){A.setup(function(){var b=this,a=b.find(".op_map_bustimefeed_a");$.each(a,function(c,d){$(d).click(function(){$(this).replaceWith("<span>感谢反馈</span>")})});A.use("tabs5",function(){A.ui.tabs5(b.find(".c-tabs")[0])})})});';   // js字串，不含<script标签
      private static $uiList = 'tabs';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
