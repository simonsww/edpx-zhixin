<?php 
  class CssJs_Util_hangban_tab
   {
      private static $cssStr = '.op_hangban{width:100%px;font-size:13px;}.op_hangban_table td{padding-top:10px;text-align:left;vertical-align:middle;white-space:nowrap;}.op_hangban_table .tangram_sug_wpr{border:none;z-index:999;}.op_hangban_table .tangram_sug_wpr table{z-index:999;min-width:129px;width:auto;*width:136px;border:1px solid #D0D0D0;}.op_hangban_table .tangram_sug_wpr td{white-space:nowrap;padding:0 0 0 5px;}.op_hangban_number_err,.op_hangban_error{background-color:#D4443C;color:#FFF;height:25px;line-height:25px;margin-left:-5px;margin-right:0;padding-left:5px;}.op_hangban_number_err{border:1px solid #D0D0D0;margin-left:0;}.op_hangban_div{position:relative;}.op_hangban_div .op_hangban_number_err{position:absolute;top:23px;left:-1px;text-align:center;padding-right:5px;}.op_hangban_exchange{display:block;padding-left:5px;padding-right:5px;}.tangram-suggestion{cursor:default;}.tangram-suggestion table{width:100%;border:#d0d0d0 solid 1px;background:#fff;min-width:134px;_width:134px;}.tangram-suggestion td{font-size:12px;line-height:2;padding:0 5px;white-space:nowrap;}.tangram-suggestion-current{background:#3a77d2;color:#fff;}.tangram-suggestion td .op_hangban_red{margin:0 -5px;padding:0 5px;background:#d4443c;color:#fff;}.op_hangban_hilight{color:#f00;}';  // css字串，不含<style>和</style>标签
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
