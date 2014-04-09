<?php 
  class CssJs_Util_cj_video
   {
      private static $cssStr = 'a.op_cj_video_txt_f,a.op_cj_video_txt_f:link,a.op_cj_video_txt_f:visited{text-decoration:underline;color:#00c;font-size:13px;font-family:"宋体";}a.op_cj_video_txt_f:hover{text-decoration:underline;color:#00c;font-size:13px;font-family:"宋体";}.op_cj_video_box .c-tabs-nav-li{padding-left:10px;padding-right:10px;_padding-left:6px;_padding-right:6px;}.op_cj_video_box .c-tabs-nav .op_cj_video_li{float:right;padding-right:5px;}.op_cj_video_box .c-tabs-nav .op_cj_video_li a{color:#00c;}.op_cj_video_gray{padding-top:5px;color:#666;font-size:12px;}.op_cj_video_item_mtext{text-align:center;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("cj_video",function(){A.setup(function(){var a=A.baidu,b=this;A.use("tabs5",function(){A.ui.tabs5(b.find(".c-tabs")[0])})})});';   // js字串，不含<script标签
      private static $uiList = 'tabs';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
