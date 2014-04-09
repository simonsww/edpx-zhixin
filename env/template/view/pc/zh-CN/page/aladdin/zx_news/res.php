<?php 
  class CssJs_Util_zx_news
   {
      private static $cssStr = '.op_zx_renwu_news{overflow:hidden;background-color:#fafafa;padding:15px 10px;margin-right:1px;}.op_zx_renwu_news a,.op_zx_renwu_news a em{text-decoration:none;}.op_zx_renwu_news a:hover,.op_zx_renwu_news a:hover em{text-decoration:underline;}.op_zx_renwu_news table{border-collapse:collapse;}.op_zx_renwu_news td{padding:0;vertical-align:top;}.op_zx_renwu_news h2{font-size:14px;font-weight:bold;line-height:30px;margin:0 0 5px;}.op_zx_renwu_news h2 a,.op_zx_renwu_news h2 a em{text-decoration:underline;}.op_zx_renwu_news_content,.op_zx_renwu_news_content a{font-size:13px;}.op_zx_renwu_news_content_left a{outline:none;}.op_zx_renwu_news_content_right{padding:0 20px!important;line-height:20px;}.op_zx_renwu_news_content_from{color:green;}.op_zx_renwu_news_content_time{color:#666;}';  // css字串，不含<style>和</style>标签
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
