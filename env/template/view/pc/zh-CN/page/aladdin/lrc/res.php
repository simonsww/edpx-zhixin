<?php 
  class CssJs_Util_lrc
   {
      private static $cssStr = '.op-lrc-info{position:relative;}.op-lrc-logo{position:absolute;top:0;right:0;width:64px;height:21px;background:url(http://www.baidu.com/aladdin/img/music/logo.jpg) no-repeat;}.op-lrc-img-p{position:relative;float:left;border-radius:50%;-moz-border-radius:50%;-webkit-border-radius:50%;-ms-border-radius:50%;overflow:hidden;}.op-lrc-earth{display:inline-block;width:12px;height:12px;background:url(http://www.baidu.com/aladdin/img/zx_mussong/earth.png) no-repeat;}.op-lrc-text-p{margin:auto -9px -10px -9px;position:relative;overflow:hidden;}.op-lrc-text{text-align:center;border-top:1px solid #f2f2f2;}.op-lrc-text-c{padding-bottom:10px;}.op-lrc-img-mask{position:absolute;top:0;left:0;width:100%;height:100%;background:url(http://www.baidu.com/aladdin/img/zxmusic/6nMask.png) no-repeat\\9;_background-image:url(http://www.baidu.com/aladdin/img/zxmusic/6nMask.gif);}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("lrc",function(){A.setup(function(){var b=this,a;A.use("scrollbarv",function(){a=A.ui.scrollbarv({content:b.find(".op-lrc-text")[0]})});this.dispose=function(){a&&a.dispose&&a.dispose()}})});';   // js字串，不含<script标签
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
