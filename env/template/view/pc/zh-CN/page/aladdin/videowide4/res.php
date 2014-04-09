<?php 
  class CssJs_Util_videowide4
   {
      private static $cssStr = '.op_videowide4_main{width:48.15em;background:#fafafa;padding:10px 5px;}.op_videowide4_main h3{font-size:1.08em;color:#333;font-weight:bold;}.op_videowidr4_contmain{padding:0 19px 7px 21px;}.op_videowide4_cnt{position:relative;width:9.38em;height:17.08em;margin:10px 16px 0 0;padding:5px;border:1px solid #fafafa;cursor:pointer;float:left;}.op_videowide4_cntbg{background:#fdfdfd;border:1px solid #d9d9d9;}.op_videowide4_imgcnt{position:absolute;top:.46em;left:6px;width:9.23em;height:12.69em;overflow:hidden;z-index:4;}.op_videowide4_imgcnt img{width:9.23em;height:12.69em;}.op_videowide4_imgcnt span{position:absolute;top:0;left:0;width:9.08em;height:98.8%;border:1px solid black;filter:alpha(opacity=10);opacity:.1;-moz-opacity:.1;display:block;}.op_videowide4_cntbg .op_videowide4_imgcnt{height:7.31em;}.op_videowide4_cntbg .op_videowide4_imgcnt span{height:7.15em;}.op_videowide4_cntbg .op_videowide4_imgcnt div{position:absolute;top:29px;left:44px;width:36px;height:36px;background:url("http://www.baidu.com/aladdin/img/videowide4/playicon.png") no-repeat;_background-image:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src="http://www.baidu.com/aladdin/img/videowide4/playicon.png");}.op_videowide4_info{position:absolute;top:47%;left:6px;font-size:.92em;line-height:1.54em;color:#666;z-index:1;}.op_videowide4_name{position:absolute;top:73.4%;width:90%;text-align:center;line-height:2em;height:2em;color:#00C;}.op_videowide4_cntbg .op_videowide4_name{font-weight:bold;}.op_videowide4_type{position:absolute;top:82.9%;width:90%;text-align:center;font-size:.92em;color:#333;}.op_videowide4_star{position:absolute;top:88.9%;left:20px;font-size:.92em;}.op_videowide4_star span{display:inline-block;height:1.85em;line-height:1.85em;float:left;}.op_videowide4_starbg{width:69px;background:url("http://www.baidu.com/aladdin/img/videowide4/star.png") no-repeat 0 6px;margin-right:4px;}.op_videowide4_starft{background:url("http://www.baidu.com/aladdin/img/videowide4/star.png") no-repeat 0 -13px;}.op_videowide4_baidu{background:url("http://www.baidu.com/aladdin/img/videowide4/footlogo.png") no-repeat 0 3px;margin-top:15px;padding-left:18px;color:#666;font-size:.92em;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("videowide4",function(){A.setup(function(){var c=this,b=c.find(".op_videowide4_cnt"),a=c.find(".op_videowide4_tempdata");if(b.length>0){b.click(function(){var d=$(this).attr("data-src");a.html(d);window.open(d,"_blank")});b.hover(function(){$(this).addClass("op_videowide4_cntbg")},function(){$(this).removeClass("op_videowide4_cntbg")})}})});';   // js字串，不含<script标签
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
