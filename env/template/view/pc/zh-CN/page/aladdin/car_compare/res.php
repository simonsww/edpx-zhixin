<?php 
  class CssJs_Util_car_compare
   {
      private static $cssStr = '.op_car_compare_content{margin-top:-9px;}.op_car_compare_content td.op_car_compare_tdLeft{text-align:right;padding-right:10px;padding-left:0;border-right:1px solid #f5f5f5;}.op_car_compare_content td.op_car_compare_tdLeft div.c-dropdown2-btn{text-align:left;}.op_car_compare_content td.op_car_compare_br{border-right:none;text-align:right;padding-left:0;padding:0 10px 0 0;}.op_car_compare_content td.op_car_compare_textWidth{width:80px;}.op_car_compare_content td.op_car_compare_tr{text-align:center;background:#fafafa;padding-left:0;width:63px;}.op_car_compare_tdR{border-left:1px solid #f5f5f5;}.op_car_compare_content td.op_car_compare_sel{padding-top:10px;padding-bottom:10px;}.op_car_compare_tdImg{width:110px;}.op_car_compare_tc{text-align:center;}.op_car_compare_value{font-weight:bold;font-size:1.1em;}.op_car_compare_gap{margin-bottom:17px;}.op_car_compare_list li{text-align:left;padding-left:10px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'table,btn,dropdown2,img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
