<?php 
  class CssJs_Util_right_entitymsg
   {
      private static $cssStr = '.opr-entitymsg-table td{padding:0;}.opr-entitymsg-left{white-space:nowrap;}.opr-entitymsg-provide{color:#666;text-align:right;}.opr-entitymsg-more{cursor:pointer;}.opr-entitymsg-business-full{display:none;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_entitymsg",function(){A.setup(function(){var b=this;var a=b.find(".opr-entitymsg-more").eq(0);a.click(function(){b.find(".opr-entitymsg-business").eq(0).css("display","none");b.find(".opr-entitymsg-business-full").eq(0).css("display","inline-block")})})});';   // js字串，不含<script标签
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
