<?php 
  class CssJs_Util_zx_baike
   {
      private static $cssStr = '#content_left .result-zxl{margin-bottom:10px;}.op_zx_baike_main{background:#f8f8f8;padding:15px 10px;width:615px;}.op_zx_baike_main h3{font-size:14px;margin:0 0 8px;}.op_zx_baike_abstract dd{font-size:13px;line-height:22px;}.op_zx_baike_other_ep{font-size:14px;margin-top:5px;font-family:arial;}.op_zx_baike_other_ep span{float:left;color:#03c;}.op_zx_baike_other_ep span a{font-size:13px;}.op_zx_baike_other_ep .op_zx_baike_other_ep_split{padding:0 4px;}.op_zx_baike_clearfix:after{content:"\\0020";display:block;height:0;clear:both;visibility:hidden;}.op_zx_baike_clearfix{zoom:1;}';  // css字串，不含<style>和</style>标签
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
