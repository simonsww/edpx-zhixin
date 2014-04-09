<?php 
  class CssJs_Util_right_school
   {
      private static $cssStr = '.container_l .opr-school{width:440px;}.container_s .opr-school{width:270px;}.container_s .opr-school-intro-links{clear:both;margin-bottom:5px;}.container_s .opr-school-intro-logo{margin-bottom:0;}.opr-school-title{font-size:14px;background:url(http://www.baidu.com/aladdin/img/right_relainfo/horizon.png) repeat-x 0 bottom;font-weight:bold;color:#333;}.opr-school-title span{background:#fff;padding-right:10px;}.opr-school-intro{padding-top:10px;}.opr-school-intro-logo{float:left;display:block;width:70px;height:70px;margin:0 10px 10px 0;}.opr-school-intro-logo a{display:block;width:69px;height:69px;border:1px solid #d3d2d3;}.opr-school-intro-title{display:block;font-size:14px;margin-bottom:5px;}.opr-school-intro-msg{margin:-2px 0 0 80px;}.opr-school-intro-links{margin:3px 0 10px;}.opr-school-info{clear:both;line-height:22px;}.opr-school-infotitle{float:left;display:block;width:70px;}.opr-school-info-linkbox{margin-left:70px;display:block;}.opr-school-info-linkbox a{display:inline-block;}.opr-school-more{margin-top:10px;color:#666;}';  // css字串，不含<style>和</style>标签
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
