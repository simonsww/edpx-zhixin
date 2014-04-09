<?php 
  class CssJs_Util_vd_tamasha
   {
      private static $cssStr = '.op_vd_tamasha_grey{color:#666;}.op_vd_tamasha_red{color:#cd0000;}.op_vd_tamasha_rlt{position:relative;}.op_vd_tamasha_a{overflow:hidden;position:relative;display:block;text-decoration:none;}.op_vd_tamasha_site i{width:16px;height:16px;margin:2px 2px 0 0;background-repeat:no-repeat;float:left;}.op_vd_tamasha_playicon{width:42px;height:42px;position:absolute;top:50%;left:50%;margin-left:-21px;margin-top:-21px;cursor:pointer;z-index:2;background:url(http://www.baidu.com/aladdin/img/movievideo/playicon.png) no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src="http://www.baidu.com/aladdin/img/movievideo/playicon.png");}.op_vd_tamasha_mask{width:100%;height:100%;position:absolute;top:0;left:0;background:#000;filter:alpha(opacity=20);opacity:.2;-moz-opacity:.2;cursor:pointer;display:none;z-index:1;}.op_vd_tamasha_over .op_vd_tamasha_mask{display:block;}.op_vd_tamasha_ratebg,.op_vd_tamasha_rate{width:100%;position:absolute;bottom:0;left:0;cursor:pointer;}.op_vd_tamasha_ratebg{background:#000;filter:alpha(opacity=65);opacity:.65;-moz-opacity:.65;}.op_vd_tamasha_newbg .op_vd_tamasha_ratebg{background:#2c99fe;filter:alpha(opacity=100);opacity:1;-moz-opacity:1;}.op_vd_tamasha_rate{color:#fff;z-index:100;text-align:center;}.op_vd_tamasha_summary{padding-left:3em;text-indent:-3em;}.op_vd_tamasha_aitem{overflow:hidden;position:relative;display:block;text-decoration:none;overflow:hidden;}.op_vd_tamasha_net{position:absolute;right:0;top:0;color:#666;}.op_vd_tamasha_new{position:absolute;right:3px;top:-11px;}.op_vd_tamasha_play{float:left;margin-top:2px;}.op_vd_tamasha_newbg .op_vd_tamasha_play{width:16px;height:16px;background:url(http://www.baidu.com/aladdin/img/vd_tamasha/play.png);background-position:0 0;}.op_vd_tamasha_fl{float:left;display:inline;}.op_vd_tamasha_tip{position:absolute;right:0;top:0;color:#fff;padding:0 8px;background:#2c99fe;}.op_vd_tamasha_tgap{margin-top:7px;}.op_vd_tamasha_sites i{display:inline-block;width:16px;height:16px;background-repeat:no-repeat;vertical-align:text-bottom;margin-right:3px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("vd_tamasha",function(){A.setup(function(){var b=this;var a=b.find(".c-tabs").get(0);if(a){A.use("tabs5",function(){A.ui.tabs5(a,{onChange:function(){var d=this,e=d.conts[d.current],c=$(e).find(".op_vd_tamasha_ratebg");if(!c.first().attr("data-img")){return}c.each(function(f,i){var j=$(i),h=j.attr("data-img");if(h){var g=$(\'<img class="c-img6" />\');g.attr("src",h);g.insertBefore(j);j.attr("data-img","")}})}})})}})});';   // js字串，不含<script标签
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
