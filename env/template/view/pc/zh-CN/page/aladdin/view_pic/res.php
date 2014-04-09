<?php 
  class CssJs_Util_view_pic
   {
      private static $cssStr = '.op_view_pic_wrap{display:block;border:1px solid white;cursor:pointer;padding:3px 3px 4px;text-decoration:none;}.op_view_pic_icon{position:absolute;left:4px;top:4px;}.op_active{border:1px solid #ff7800;}.op_view_pic_box img{width:113px;height:113px;}.op_view_pic_img{display:block;height:113px;overflow:hidden;margin:auto;}.op_view_pic_title{color:#00c;word-break:break-all;word-wrap:break-word;text-decoration:underline;display:block;}.op_view_pic_money{line-height:19px;height:19px;overflow:hidden;font-size:.9em;}.op_view_pic_currency{font-family:arial;font-weight:bold;color:#999;}.op_view_pic_money strong{color:#ff7800;}.op_view_pic_price{color:#999;margin-left:1px;height:19px;overflow:hidden;white-space:nowrap;font-weight:normal;}.op_view_relative{position:relative;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("view_pic",function(){A.setup(function(){var a=this;a.find(".op_view_pic_wrap").hover(function(){$(this).addClass("op_active")},function(){$(this).removeClass("op_active")})})});';   // js字串，不含<script标签
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
