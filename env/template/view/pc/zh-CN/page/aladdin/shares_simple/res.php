<?php 
  class CssJs_Util_shares_simple
   {
      private static $cssStr = '.op_shares_simple{position:relative;zoom:1;}.op_shares_simple_cur{height:34px;line-height:34px;*margin-top:0;}.op_shares_simple_cur_num{font-size:30px;}.op_shares_simple_cur_info{font-size:22px;position:relative;top:-2px;margin-right:5px;}.op_shares_simple_cur_status_icon{position:relative;top:-2px;*top:-5px;display:inline-block;width:17px;height:16px;background:url(http://www.baidu.com/aladdin/img/stockdynamic/arrow.png) no-repeat;}.op_shares_simple_cur_status_red_up{background-position:0 0;}.op_shares_simple_cur_status_red_down{background-position:0 -25px;}.op_shares_simple_cur_status_green_up{background-position:0 -51px;}.op_shares_simple_cur_status_green_down{background-position:0 -77px;}.op_shares_simple_info ul li{float:left;}.op_shares_simple_info ul li.op_stockdynamic_pt32{padding-right:32px;}.op_shares_simple_info ul li.op_stockdynamic_tr{text-align:right;float:right;}';  // css字串，不含<style>和</style>标签
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
