<?php 
  class CssJs_Util_tv_video
   {
      private static $cssStr = '.op_tv_video_left{float:left;}.op_tv_video_textgap{margin-top:2px;}.op_tv_video_grey{color:#666;}.op_tv_video_grey2{color:#404040;}.op_tv_video_a{height:161px;overflow:hidden;position:relative;display:block;}.op_tv_video_info{padding-left:18px;}.op_tv_video_site i{display:inline-block;width:16px;height:16px;vertical-align:text-bottom;font-style:normal;overflow:hidden;padding-right:3px;}.op_tv_video_split{color:#d8d8d8;}.op_tv_video_playicon{width:42px;height:42px;position:absolute;top:50%;left:50%;margin-left:-21px;margin-top:-21px;cursor:pointer;z-index:2;background:url(http://www.baidu.com/aladdin/img/movievideo/playicon.png) no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src="http://www.baidu.com/aladdin/img/movievideo/playicon.png");}.op_tv_video_mask{width:100%;height:100%;position:absolute;top:0;left:0;background:#000;filter:alpha(opacity=20);opacity:.2;-moz-opacity:.2;cursor:pointer;display:none;z-index:1;}.op_tv_video_over .op_tv_video_mask{display:block;}.op_tv_video_ratebg,.op_tv_video_rate{width:100%;height:20px;position:absolute;bottom:0;left:0;}.op_tv_video_ratebg{background:#000;filter:alpha(opacity=70);opacity:.7;-moz-opacity:.7;}.op_tv_video_rate{color:#fff;text-align:center;}.op_tv_video_block{color:#333;font-size:13px;}.op_tv_video_summary{padding-left:3em;text-indent:-3em;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("tv_video",function(){A.setup(function(){var b=this;var a=b.find(".op_tv_video_a").eq(0);a.on("mouseover",function(){a.addClass("op_tv_video_over")});a.on("mouseout",function(){a.removeClass("op_tv_video_over")})})});';   // js字串，不含<script标签
      private static $uiList = 'btn,img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
