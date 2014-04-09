<?php 
  class CssJs_Util_movievideo
   {
      private static $cssStr = '.op-movievideo-a{position:relative;display:block;}.op-movievideo-poster{height:100%;}.op-movievideo-playicon{width:42px;height:42px;position:absolute;top:50%;left:50%;margin-left:-21px;margin-top:-21px;cursor:pointer;z-index:2;background:url(http://www.baidu.com/aladdin/img/movievideo/playicon.png) no-repeat;_background:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src="http://www.baidu.com/aladdin/img/movievideo/playicon.png");}.op-movievideo-mask{width:100%;height:100%;position:absolute;top:0;left:0;background:#000;filter:alpha(opacity=20);opacity:.2;-moz-opacity:.2;cursor:pointer;display:none;z-index:1;}.op-movievideo-over .op-movievideo-mask{display:block;}.op-movievideo-right{position:relative;}.op-movievideo-finish,.op-movievideo-update{padding:0 1px;text-align:center;color:#fff;font-size:.92em;background:#2b99ff;}.op-movievideo-tvplay div{float:left;line-height:14px;margin-bottom:3px;}.op-movievideo-first{width:62%;text-overflow:ellipsis;overflow:hidden;white-space:nowrap;}.op-movievideo-tip{color:#666;}.op-movievideo-info{color:#666;}.op-movievideo-rate{text-align:right;line-height:20px;position:absolute;right:0;top:-2px;color:#666;}.op-movievideo-rateleft{text-align:left;line-height:20px;}.op-movievideo-rate i,.op-movievideo-rateleft i{color:#ff4c2e;font-size:18px;}.op-movievideo-split{color:#d8d8d8;margin:0 5px;}.op-movievideo-left{float:left;}.op-movievideo-info a{padding-left:5px;}.op-movievideo-site a{padding-right:10px;}.op-movievideo-site i,.op-movievideo-info i{display:inline-block;width:16px;height:16px;vertical-align:text-bottom;font-style:normal;overflow:hidden;padding-right:3px;}.op-movievideo-summary,.op-movievideo-season{padding-left:3em;text-indent:-3em;}.op-movievideo-seasonEp{margin-right:24px;white-space:nowrap;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("movievideo",function(){A.setup(function(){var c=this;var b=c.data.isvip;if(b){$.ajax({url:b.link,dataType:"jsonp",timeout:6000,success:function(e){var d=c.find(".op-movievideo-btntxt");if(e.isvalid==1){d.html($.subByte(b.viptxt,20))}else{d.html($.subByte(b.othertxt,20))}}})}if(c.data.platform!="ipad"){var a=c.find(".op-movievideo-a");a.on("mouseover",function(){a.addClass("op-movievideo-over")});a.on("mouseout",function(){a.removeClass("op-movievideo-over")})}})});';   // js字串，不含<script标签
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
