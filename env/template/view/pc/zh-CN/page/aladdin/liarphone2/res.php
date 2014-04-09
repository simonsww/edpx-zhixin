<?php 
  class CssJs_Util_liarphone2
   {
      private static $cssStr = '.op_liarphone2_label{width:87px;height:22px;text-align:center;font-family:Microsoft YaHei;font-size:16px;line-height:22px;margin-right:6px;display:inline-block;vertical-align:text-bottom;}.op_liarphone2_label_qz{color:#f8f8f8;background-color:#cb0000;}.op_liarphone2_label_tx{color:#fff;background-color:#b75a00;}.op_liarphone2_number{font-size:22px;font-family:arial;color:#000;white-space:nowrap;}.op_liarphone2_addr,.op_liarphone2_net{font-size:22px;white-space:nowrap;font-family:SimHei;}.op_liarphone2_word{font-size:13px;color:#000;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("liarphone2",function(){A.setup(function(){var a=!-[1,];var c=a&&!window.XMLHttpRequest;if(a){try{document.execCommand("BackgroundImageCache",false,true)}catch(b){}}})});';   // js字串，不含<script标签
      private static $uiList = 'tool';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
