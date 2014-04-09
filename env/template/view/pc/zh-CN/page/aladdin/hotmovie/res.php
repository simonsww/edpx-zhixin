<?php 
  class CssJs_Util_hotmovie
   {
      private static $cssStr = '.op_hotmovie_black{font-size:1.85em;line-height:100%;font-family:"微软雅黑";color:#333;margin-bottom:18px;}.op_hotmovie_blue{color:#388bff;}.op_hotmovie_smallbottom{margin-bottom:15px;}.op_hotmovie_black span{font-size:32px;position:relative;top:3px;color:#388bff;margin:0 3px;}.op_hotmovie_split{color:#d8d8d8;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'btn,img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
