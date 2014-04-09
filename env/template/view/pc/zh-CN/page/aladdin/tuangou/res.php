<?php 
  class CssJs_Util_tuangou
   {
      private static $cssStr = '.op_tuangou_content{font-size:13px;padding-top:3px;}.op_tuangou_showURL{font-size:13px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("tuangou",function(){A.setup(function(){var c=this;var a=c.find(".op_tuangou_ttllink")[0];var b="http://tuan.baidu.com/"+c.data.locpinyin+"?do=search&today=1&ie=utf8&wd="+encodeURIComponent(c.data.centerword)+"&channel=ald_6670";a.href=b})});';   // js字串，不含<script标签
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
