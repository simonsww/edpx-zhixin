<?php 
  class CssJs_Util_videolive
   {
      private static $cssStr = '.op-videolive-right-label{color:#666;float:left;}.op-videolive-right-content{float:left;}.op-videolive-nowrap{white-space:nowrap;}.op-videolive-sep{color:#d8d8d8;}.op-videolive-right{position:relative;top:-3px;*top:-1px;_top:0;}.op-videolive-update-tag{background:url(http://www.baidu.com/aladdin/img/chinavoice/chinavoice-bg.png) no-repeat;color:#fff;display:inline-block;width:38px;height:16px;line-height:16px;position:relative;top:4px;*top:1px;}.op-videolive-update-tag-updateto{background-position:0 -270px;}.op-videolive-update-tag-casting{background-position:0 -304px;}.op-videolive-update-tag-empty{background:#1cb7fd;font-size:12px;top:0;*top:-1px;}.op-videolive-update-text{color:#c00;}.op-videolive-btn-box{margin-top:13px;}.op-videolive-back{position:relative;top:3px;*top:0;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'img,btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
