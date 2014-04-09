<?php 
  class CssJs_Util_newtv05
   {
      private static $cssStr = '.op-newtv05-nav li{height:47px;padding-top:3px;line-height:22px;color:#666;}.op-newtv05-nav li span{display:block;}.op-newtv05-content{overflow:hidden;}.op-newtv05-contents,.op-newtv05-contblock{padding-bottom:10px;}.op-newtv05-content ul li,.op-newtv05-contblock ul li{overflow:hidden;clear:both;}.op-newtv05-content ul li span,.op-newtv05-contblock ul li span{display:inline-block;}.op-newtv05-content ul li a,.op-newtv05-contblock ul li a{*position:relative;*+top:-2px;_top:0;cursor:pointer;}.op-newtv05-left,.op-newtv05-right,.op-newtv05-leftopen,.op-newtv05-rightopen{width:258px;float:left;}.op-newtv05-time{float:left;padding-right:10px;color:#666;line-height:18px\\9;}.op-newtv05-name{float:left;width:209px;vertical-align:middle;}.op-newtv05-oldprograme{color:#888;}.op-newtv05-ico .op-newtv05-time{background:url(\'http://www.baidu.com/aladdin/img/newtv05/ico2.png\') no-repeat 7px 6px;color:#666;}.op-newtv05-play{width:40px;height:14px;display:inline-block;background:url(\'http://www.baidu.com/aladdin/img/newtv05/ico2.png\') no-repeat 3px -18px;vertical-align:-2px;*+vertical-align:0;_vertical-align:-3px;}.op-newtv05-open,.op-newtv05-close{clear:both;border-top:1px solid #f3f3f3;margin:0 10px;text-align:center;padding-top:8px;cursor:pointer;}.op-newtv05-open .c-icon-chevron-bottom,.op-newtv05-close .c-icon-chevron-top{margin-left:10px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
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
