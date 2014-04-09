<?php 
  class CssJs_Util_zhaopinhui
   {
      private static $cssStr = '.OP_TABLE_COMMON a,.OP_TABLE_COMMON a em{text-decoration:none;}.OP_TABLE_COMMON a:hover,.OP_TABLE_COMMON a:hover em{text-decoration:underline;}.op_zhaopinhui_map,.op_zhaopinhui_tip{background:url(http://open.baidu.com/static/zhaopinhui/img/sprites.png) no-repeat;}.op_zhaopinhui_map{padding:0 4px;margin-left:6px;background-position:0 0;text-decoration:none;}.OP_TABLE_COMMON .op_zhaopinhui_map:hover{text-decoration:none;}.op_zhaopinhui_tip{width:60px;height:21px;background-position:-12px 0;display:none;position:absolute;z-index:100;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'table';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
