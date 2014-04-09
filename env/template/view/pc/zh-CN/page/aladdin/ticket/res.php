<?php 
  class CssJs_Util_ticket
   {
      private static $cssStr = '.op_ticket_title,.op_ticket_notitle{font-size:1.07em;font-weight:bold;}.op_ticket_safetip{color:#4bad37;font-weight:bold;}.op_ticket_safetip .c-icon{_vertical-align:middle;}.op_ticket_table{border-collapse:collapse;}.op_ticket_table td{padding:0;font-size:1em;line-height:1.54;}.op_ticket_col{display:inline-block;vertical-align:middle;}.op_ticket_exchange{padding-left:5px;padding-right:5px;}#op_ticket_input2,#op_ticket_span2{display:none;}.tangram_sug_wpr{border:none;}.tangram_sug_wpr table{z-index:999;min-width:129px;width:auto;*width:136px;border:1px solid #D0D0D0;}.tangram_sug_wpr td{white-space:nowrap;}.op_ticket_error{margin:-2px;padding-left:5px;background-color:#D4443C;color:#fff;}.op_ticket_noairplane{background:#f5f5f5;padding:4px 0;}.op_ticket_noairplane p{margin:4px 4px 4px 7px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'input,btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
