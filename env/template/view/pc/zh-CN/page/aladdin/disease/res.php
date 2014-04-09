<?php 
  class CssJs_Util_disease
   {
      private static $cssStr = '.op-disease-main{font-size:13px;width:600px;}.op-disease-t{font-size:16px;font-weight:bold;}.op-disease-a{margin:4px 0;}.op-disease-d{width:600px;height:20px;line-heigth:20px;overflow:hidden;white-space:nowrap;}.op-disease-d a{display:inline-block;}.op-disease-main span{margin-right:10px;display:inline-block;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("disease",function(){A.init(function(){var c=this;var b=c.find(".op-disease-td");for(var a=0;a<b.length;a++){b[a].style.width=b[a].offsetWidth+"px"}})});';   // js字串，不含<script标签
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
