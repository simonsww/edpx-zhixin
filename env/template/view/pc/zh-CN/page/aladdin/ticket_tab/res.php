<?php 
  class CssJs_Util_ticket_tab
   {
      private static $cssStr = '.op_ticket_tab_table{border-collapse:collapse;border-spacing:0;}.op_ticket_tab_table td{padding:0;padding-top:5px;}.op_ticket_tab_large td{padding-top:10px;}.op_ticket_tab_safetip{color:#4bad37;font-weight:bold;}.op_ticket_tab_safetip .c-icon{_vertical-align:middle;}.op_ticket_tab td{padding:0 5px;height:28px;text-align:left;vertical-align:middle;}.op_ticket_tab_hilight{color:#f00;}.op_ticket_tab_btns a{float:left;margin-right:10px;}.op_ticket_tab_pos_start,.op_ticket_tab_pos_end,.op_ticket_tab_exchange{float:left;}.op_ticket_tab_exchange{padding-left:5px;padding-right:5px;}.tangram-suggestion{cursor:default;}.tangram-suggestion table{width:100%;border:#d0d0d0 solid 1px;background:#fff;min-width:134px;_width:134px;}.tangram-suggestion td{font:12px verdana;height:22px;line-height:22px;padding:0 5px;white-space:nowrap;}.tangram-suggestion-current{background:#3a77d2;color:#fff;}.tangram-suggestion td .op_ticket_tab_red{margin:0 -5px;padding:0 5px;background:#d4443c;color:#fff;}.op_ticket_tab_none,.op_ticket_tab_input2{display:none;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'input,btn,tabs';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
