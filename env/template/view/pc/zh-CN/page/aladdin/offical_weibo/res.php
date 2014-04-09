<?php 
  class CssJs_Util_offical_weibo
   {
      private static $cssStr = '.op_offical_weibo_info .op_offical_weibo_name{color:#CD0000;text-decoration:none;font-weight:bold;font-size:14px;}.op_offical_weibo_info .op_offical_weibo_fans,.op_offical_weibo_info .op_offical_weibo_num{color:#00C;margin-right:17px;}.op_offical_weibo_info,.op_offical_weibo_info a{color:#666;text-decoration:none;}.op_offical_weibo_content a{text-decoration:none;}.op_offical_weibo_other{display:inline;padding-left:17px;}.op_offical_weibo_info a:hover,.op_offical_weibo_content a:hover{text-decoration:underline;}.op_offical_weibo_level_icon{background-image:url(http://www.baidu.com/aladdin/img/offical_weibo/weibo_level_icon.png);width:16px;height:14px;background-repeat:no-repeat;display:inline-block;vertical-align:text-bottom;}.op_offical_weibo_level_icon_1{background-position:0 0;}.op_offical_weibo_level_icon_2{background-position:-20px 0;}.op_offical_weibo_level_icon_3{background-position:-40px 0;}.op_offical_weibo_level_icon_11{background-position:-80px 0;}.op_offical_weibo_level_icon_12{background-position:-60px 0;}.op_offical_weibo_level_icon_13{background-position:-100px 0;}.op_offical_weibo_crown_icon_1{background-position:-135px 0;}.op_offical_weibo_pz{float:right;}.op_offical_weibo_pz a{color:#00C;}.op_offical_weibo_img,.op_offical_weibo_video{color:#77c;white-space:nowrap;text-decoration:none;}.op_offical_weibo_detail{*font-family:simsun;white-space:nowrap;}';  // css字串，不含<style>和</style>标签
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
