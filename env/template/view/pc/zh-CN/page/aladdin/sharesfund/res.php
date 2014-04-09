<?php 
  class CssJs_Util_sharesfund
   {
      private static $cssStr = '.op_sharesfund_tdl{vertical-align:top;width:184px;}.op_sharesfund_tdr{padding-left:9px;vertical-align:top;}.op_sharesfund_lefta{position:relative;}.op_sharesfund_lefta img{width:180px;height:106px;}.op_sharesfund_tdr p{line-height:22px;font-size:13px;}.op_sharesfund_pricedata{margin:4px 0;}.op_sharesfund_pricedata.positive{color:#c60a00;}.op_sharesfund_pricedata.negative{color:#008000;}.op_sharesfund__price .op_sharesfund_pricedata_1{color:#c60a00;}.op_sharesfund_pricedata_1{font-size:1.4em;line-height:22px;font-weight:bold;}.op_sharesfund_pricedata_2{font-size:1.1em;line-height:22px;font-weight:bold;}.op_sharesfund_pricedata_3{font-size:1.1em;line-height:22px;}.op_sharesfund_sharesdata2{color:#008000;}.op_sharesfund_sharesdata span{margin-right:12px;}.op_sharesfund_tiptitle,span.op_sharesfund_tiptime,.op_sharesfund_updatetime{color:#666;}.op_sharesfund_bottom{line-height:22px;font-size:13px;}.op_sharesfund_sublink{margin:4px 0;}.op_sharesfund_sublink a{margin-right:8px;}.op_sharesfund_funddata_1{font-family:\'宋体\';}.op_sharesfund_funddata_2{padding-left:91px;font-family:\'宋体\';}.op_sharesfund_funddata strong{padding-right:0;}.op_sharesfund_funddata span{padding-right:6px;}.op_sharesfund_funddata em{padding-left:6px;font-family:arial;}';  // css字串，不含<style>和</style>标签
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
