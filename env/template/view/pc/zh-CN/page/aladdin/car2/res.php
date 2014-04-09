<?php 
  class CssJs_Util_car2
   {
      private static $cssStr = '>.op_car1_icon_container{position:relative;display:block;text-decoration:none;}.op_car1_icon_container span{position:absolute;right:0;bottom:0;display:block;background:#707070;color:#fff;line-height:18px;padding:0 1px;}.op_car1_table td{font-size:13px;line-height:1.54;}.op_car1_color span{float:left;}.op_car1_color div{float:left;margin:5px 5px 0 0;vertical-align:middle;width:9px;height:9px;overflow:hidden;}.op_car1_red{color:#ff8a00;font-weight:bold;}';  // css字串，不含<style>和</style>标签
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
