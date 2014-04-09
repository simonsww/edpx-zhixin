<?php 
  class CssJs_Util_traintimetable03
   {
      private static $cssStr = '.op_traintable03_act_station .op_traintable03_swap{padding-left:5px;padding-right:5px;}.op-traintable03_c666 span{color:#666;}.op_traintable03_ipt_default{color:#ACACAC;}.op_traintable03_ipt_normal{color:#000;}.op_traintable03_tangram_sug_wpr{position:absolute;z-index:999;}.op_traintable03_tangram_sug_wpr table{border:1px solid #D0D0D0;width:100%;background:#fff;cursor:default;color:#666;z-index:999;}.op_traintable03_tangram_sug_wpr td{font:13px verdana;padding:0;margin:0;height:25px;white-space:nowrap;z-index:999;}.op_traintable03_sug_en{font-size:12px;font-family:sans-serif;}.op_traintable03_sug_key{color:#C60A00;}.op_traintable03_sug_error_info{background:#C30;line-height:20px;height:20px;width:100%;overflow:hidden;color:#FFF;padding:0 2px;margin:-2px -2px;}.op_traintable03_sug_j{margin:0 2px;}.op_traintable03_act_station form,.op_traintable03_act_train form,.op_traintable03_act_trainstation form{position:static;z-index:0;}';  // css字串，不含<style>和</style>标签
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
