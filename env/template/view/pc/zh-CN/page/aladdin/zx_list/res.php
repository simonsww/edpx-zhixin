<?php 
  class CssJs_Util_zx_list
   {
      private static $cssStr = '.op_zx_list_A_title{font-weight:bold;font-size:1.23em;border-left:3px solid #38f;padding-left:7px;}.op_zx_list_A_title a{color:#333;text-decoration:none;}.op_zx_list_A_title a:hover{text-decoration:underline;}.op_zx_list_A_title i{position:relative;top:-2px;-moz-transform:rotate(90deg);-o-transform:rotate(90deg);-webkit-transform:rotate(90deg);transform:rotate(90deg);filter:progid:DXImageTransform.Microsoft.BasicImage(rotation=1);-ms-filter:"progid:DXImageTransform.Microsoft.BasicImage(rotation=1)";}.op_zx_list_A_border{border-left:1px solid #e3e3e3;}.op_zx_list_C_sublink p{line-height:1.8;}.op_zx_list_D_sublink{border-top:1px solid #f2f2f2;}.op_zx_list_D_sublink td{line-height:1.23;}.op_zx_list_D_sublink .op_zx_list_f14,.op_zx_list_f14{font-size:1.07em;padding-left:0;}.op_zx_list_title{font-weight:normal;}.op_zx_list_source{color:#008000;}.op_zx_list_date{color:#666;}.op_zx_list_more a{color:#77c;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'img,table';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
