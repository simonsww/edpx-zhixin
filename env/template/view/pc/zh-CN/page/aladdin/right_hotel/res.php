<?php 
  class CssJs_Util_right_hotel
   {
      private static $cssStr = '.opr-hotel-name{line-height:normal;}.opr-hotel-conten{margin-top:7px;}.opr-hotel-links{cursor:pointer;}.opr-hotel-detail{padding-left:10px;vertical-align:top;}.opr-hotel-price{color:#ff8a00;font-weight:bold;}.opr-hotel-referprice{color:#ff8a00;font-weight:bold;min-width:35px;_width:35px;}.opr-hotel-links td,.opr-hotel-detail p{line-height:1.8em;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_hotel",function(){A.setup(function(){var b=this,a=b.find(".opr-hotel-links").eq(0);a.find("tr").click(function(){var c=$(this).find(".opr-hotel-hidden-a")[0];c&&c.click()})})});';   // js字串，不含<script标签
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
