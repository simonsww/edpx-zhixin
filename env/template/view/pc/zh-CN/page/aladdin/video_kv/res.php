<?php 
  class CssJs_Util_video_kv
   {
      private static $cssStr = '.op_video_kv_pic{display:block;position:relative;overflow:hidden;background-color:#000;}.op_video_kv_list_info{display:block;position:absolute;bottom:0;left:0;padding:1px 0;background:#000;filter:alpha(opacity:63);opacity:.63;}.op_video_kv_list_duration,.op_video_kv_list_origin{display:block;color:#fff;position:absolute;bottom:0;right:5px;padding:1px 0;}.op_video_kv_list_origin{left:5px;}.op_video_kv_list_item_name{width:100%;display:block;text-align:center;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
