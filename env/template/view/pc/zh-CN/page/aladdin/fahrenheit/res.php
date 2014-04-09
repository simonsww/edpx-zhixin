<?php 
  class CssJs_Util_fahrenheit
   {
      private static $cssStr = '.op_cvt{padding-top:6px;}.op_cvt_type{width:9.5em;}.op_cvt_from{width:6.5em;}.op_cvt_to{width:6.5em;}.op_cvt_table span{display:inline-block;margin-right:6px;}.op_cvt_table span.e{display:none;line-height:15px;color:#F00;}.op_cvt_table td{text-align:left;white-space:nowrap;}.op_cvt_table select{height:22px;line-height:22px;white-space:nowrap;font-size:1em;}.op_cvt_table input{height:22px;*height:18px;_height:18px;line-height:18px;padding:0 1px;}.op_cvt_txt{width:86px;}.op_cvt_btn{background:transparent url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat scroll -100px 0;color:#000;float:left;cursor:pointer;height:24px;line-height:24px;margin-left:0;text-align:center;text-decoration:none;width:81px;}.op_cvt_btn:hover,.op_cvt_btn:active,.op_cvt_btn:focus{background:transparent url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat scroll 0 0;}.op_cvt_i{padding-top:8px;padding-right:10px;}.op_cvt_t{font-weight:bold;padding-bottom:4px;}.op_cvt_r{line-height:22px;white-space:nowrap;padding-bottom:2px;}.op_cvt_s{line-height:22px;color:#666;}.op_cvt_r_box{font-size:1.38em;line-height:22px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
