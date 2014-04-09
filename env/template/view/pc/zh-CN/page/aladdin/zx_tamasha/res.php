<?php 
  class CssJs_Util_zx_tamasha
   {
      private static $cssStr = '.op_zx_tamasha_left{float:left;}.op_zx_tamasha_a{display:block;position:relative;overflow:hidden;background-color:#000;text-decoration:none;}.op_zx_tamasha_info{padding-left:18px;}.op_zx_tamasha_site i{display:inline-block;width:16px;height:16px;vertical-align:text-bottom;font-style:normal;overflow:hidden;padding-right:3px;}.op_zx_tamasha_split{color:#d8d8d8;}.op_zx_tamasha_ratebg,.op_zx_tamasha_rate{height:20px;position:absolute;bottom:0;left:0;}.op_zx_tamasha_ratebg{background:#000;filter:alpha(opacity=70);opacity:.7;-moz-opacity:.7;}.op_zx_tamasha_rate{color:#fff;}.op_zx_tamasha_summary{padding-left:3em;text-indent:-3em;}.op_zx_tamasha_play{float:left;margin-top:2px;}.op_zx_tamasha_cont{height:20px;overflow:hidden;}.op_zx_tamasha_rlt .op_zx_tamasha_su{margin-top:18px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("zx_tamasha",function(){A.setup(function(){var b=this;if(b.find(".c-tabs-nav").length>0){var a=b.find(".op_zx_tamasha_ratebg");A.use("tabs5",function(){A.ui.tabs5(b.find(".c-tabs")[0],{onChange:function(){var e=this,c=a.eq(e.current);nowSrc=c.attr("data-img");if(nowSrc){var d=$(\'<img class="c-img6" src="\'+nowSrc+\'" />\');d.insertBefore(c);c.attr("data-img","")}}})})}})});';   // js字串，不含<script标签
      private static $uiList = 'btn,img,tabs';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
