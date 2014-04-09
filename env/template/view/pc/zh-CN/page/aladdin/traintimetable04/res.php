<?php 
  class CssJs_Util_traintimetable04
   {
      private static $cssStr = '.op_traintimetable04_content .op_traintimetable04_swap{padding-left:5px;padding-right:5px;}.op_traintimetable04_swap:hover{border:1px solid #388bff;}.op_traintimetable04_swap:active{border:1px solid #a2a6ab;background:#f0f0f0;}.op_traintimetable04_gap_top_small td{padding:5px 0 0 0;}.op_traintimetable04_gap_top td{padding:10px 0 0 0;}.op_traintimetable04_c666 span{color:#666;}.op_traintimetable04_default{color:#ACACAC;}.op_traintimetable04_normal{color:#000;}.tangram-suggestion{cursor:default;}.tangram-suggestion table{width:100%;border:#d0d0d0 solid 1px;background:#fff;min-width:134px;_width:134px;}.tangram-suggestion td{font-size:12px;line-height:2;padding:0 5px;white-space:nowrap;}.tangram-suggestion-current{background:#3a77d2;color:#fff;}.tangram-suggestion td .op_traintimetable04_red{margin:0 -5px;padding:0 5px;background:#d4443c;color:#fff;}.op_traintimetable04_hilight{color:#f00;}';  // css字串，不含<style>和</style>标签
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
