<?php 
  class CssJs_Util_cartoon
   {
      private static $cssStr = '.op_cartoon_i a{position:relative;text-decoration:none;}.op_cartoon_i span{position:absolute;bottom:0;left:0;width:100%;filter:alpha(opacity=70);-moz-opacity:.7;-khtml-opacity:.7;opacity:.7;background:#000;height:20px;}.op_cartoon_i b{text-align:center;color:#fff;line-height:20px;font-weight:bold;position:absolute;bottom:0;left:0;width:100%;}.op_cartoon_ta{padding:12px 0 7px;border-bottom:1px solid #eee;}.op_cartoon_hr{height:10px;line-height:0;font-size:0;overflow:hidden;}.op_cartoon_new{position:absolute;bottom:10px;right:1px;}.op_cartoon_tab{float:left;width:16.6%;}.op_cartoon_tab_cur{text-decoration:none;color:#000;}.op_cartoon_btn{display:inline-block;}.op_cartoon_btn .c-icon{_position:relative;_top:-2px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'img,numberset';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
