<?php 
  class CssJs_Util_right_train_ticket
   {
      private static $cssStr = '.opr-train-ticket-container{color:#333;}.opr-train-ticket-title{font-size:1.077em;padding-right:10px;background:#fff;padding:0;margin-top:0;}.opr-train-ticket-content{margin-bottom:4px;}.opr-train-ticket-content td{padding-left:5px;cursor:pointer;}.container_l .opr-train-ticket-price-td{display:inline;}.container_s .opr-train-ticket-price-td{display:none;}.opr-train-ticket-price{color:#ff8a00;font-weight:bold;}.opr-train-ticket-content td{line-height:1.8;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_train_ticket",function(){A.setup(function(){var b=this,a=b.find(".opr-train-ticket-content").eq(0);a.find("tr").click(function(){var c=$(this).find(".opr-train-ticket-number a.opr-train-ticket-hidden-a").get(0);c&&c.click()})})});';   // js字串，不含<script标签
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
