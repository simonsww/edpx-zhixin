<?php 
  class CssJs_Util_right_repair_prices
   {
      private static $cssStr = '.opr-repair-prices{width:272px;margin-bottom:20px;}.opr-repair-prices-title{font-size:14px;font-weight:bold;background:url(http://www.baidu.com/aladdin/img/right_relainfo/horizon.png) repeat-x 0 bottom;margin-bottom:10px;}.opr-repair-prices-title span{background:#fff;padding-right:10px;}.opr-repair-prices table{margin-bottom:8px;}.opr-repair-prices th{background:#fafafa;text-align:left;height:25px;line-height:25px;font-weight:normal;color:#666;font-size:12px;padding-left:4px;}.opr-repair-prices td{text-align:left;height:28px;line-height:28px;border-bottom:1px solid #ebebeb;font-size:12px;padding-left:4px;}.opr-repair-prices detail{font-size:12px;}';  // css字串，不含<style>和</style>标签
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
