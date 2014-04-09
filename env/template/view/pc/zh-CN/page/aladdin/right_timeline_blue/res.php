<?php 
  class CssJs_Util_right_timeline_blue
   {
      private static $cssStr = '.opr-timeline-tt{position:relative;}.opr-timeline-logo{background:#fff url(http://www.baidu.com/aladdin/img/right_timeline/timeline.png) no-repeat -107px 2px;width:18px;height:23px;overflow:hidden;position:absolute;left:-19px;top:-1px;*top:-2px;}.opr-timeline-time{float:left;}.opr-timeline-title{float:left;overflow:hidden;}.opr-timeline-title span{padding-left:8px;color:#ccc;}.opr-timeline-box li{list-style:none;padding:4px 0;margin-left:-5px;}.opr-timeline-box .opr-timeline-sub{padding-top:0;margin-top:-4px;}.opr-timeline-box a{text-decoration:none;}.opr-timeline-box a:hover{text-decoration:underline;}.opr-timeline-subitem{padding-top:8px;padding-left:3.5em;}.opr-timeline-weibo_comment_arr{overflow:hidden;height:5px;width:80px;background:url(http://s1.bdstatic.com/r/www/cache/timeline/img/i9.png) no-repeat 35px 0;}.opr-timeline-yellowV{padding-right:15px;background:url(http://s1.bdstatic.com/r/www/cache/timeline/img/i7.png) no-repeat right;}.opr-timeline-blueV{padding-right:15px;background:url(http://s1.bdstatic.com/r/www/cache/timeline/img/i10.png) no-repeat right;}.opr-timeline-weibo_comment .opr-timeline-yellowV,.opr-timeline-weibo_comment .opr-timeline-blueV{padding-right:13px;}.opr-timeline-year_num{color:#333;white-space:nowrap;font-size:1.1em;font-weight:bold;position:relative;padding-left:.62em;}.opr-timeline-gray,.opr-timeline-hline{color:#666;}.opr-timeline-gray{font-size:.92em;}.opr-timeline-first{text-indent:-3.53em;}.opr-timeline-first .c-text{text-indent:0;}.opr-timeline-circle{display:inline-block;width:5px;height:12px;position:relative;left:-8px;overflow:hidden;*vertical-align:middle;background:#fff url(http://www.baidu.com/aladdin/img/right_timeline/timeline-1.1.png) no-repeat -59px 0;}.opr-timeline-year_num .opr-timeline-circle{background-position:-153px 0;width:20px;position:absolute;_left:-20px;}.opr-timeline-img-p{position:relative;float:left;overflow:hidden;}.opr-timeline-mask,.opr-timeline-text{position:absolute;left:0;bottom:0;width:100%;}.opr-timeline-mask{background-color:#000;opacity:.65;-moz-opacity:.65;-webkit-opacity:.65;-ms-opacity:.65;filter:alpha(opacity=65);}.opr-timeline-text{color:#fff;text-align:right;}.opr-timeline-videoicon{position:absolute;left:5px;bottom:5px;}';  // css字串，不含<style>和</style>标签
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
