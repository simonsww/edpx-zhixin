<?php 
  class CssJs_Util_baiduworld
   {
      private static $cssStr = '.op-baiduworld .icon-gw{*vertical-align:baseline;}.op-baiduworld-topblock{position:relative;height:93px;}.op-baiduworld-btn{position:absolute;bottom:0;}.op-baiduworld-link{margin-right:10px;display:inline-block;}.op-baiduworld-gap{margin-top:28px;overflow:hidden;height:0;}.op-baiduworld-icon{width:0;height:0;margin-right:3px;border-width:7px;border-style:solid;border-color:#388bff #388bff #388bff #fff;font-size:0;line-height:0;}.op-baiduworld-tr th,.op-baiduworld-tr td{text-align:center;}.op-baiduworld-trh{display:none;}.op-baiduworld-seph{visibility:hidden;}.op-baiduworld .op-baiduworld-tab{padding-left:10px;padding-right:10px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("baiduworld",function(){A.setup(function(){var c=A.baidu;var g=this;var e=0;var a=g.find(".op-baiduworld-tr"),d=g.find(".op-baiduworld-tab"),f=g.find(".op-baiduworld-sep");d.each(function(h,i){$tab=$(i);$tab.click(function(){b();e=parseInt($(this).attr("data-index"));$(this).addClass("c-tabs-nav-selected");if(f.eq(e).length){f.eq(e).addClass("op-baiduworld-seph")}if(f.eq(e-1).length){f.eq(e-1).addClass("op-baiduworld-seph")}$(".op-baiduworld-tr"+e).each(function(j,k){$(k).removeClass("op-baiduworld-trh")})})});function b(){if(d.eq(e).length){d.eq(e).removeClass("c-tabs-nav-selected")}if(f.eq(e).length){f.eq(e).removeClass("op-baiduworld-seph")}if(f.eq(e-1).length){f.eq(e-1).removeClass("op-baiduworld-seph")}$(".op-baiduworld-tr"+e).each(function(h,i){$(i).addClass("op-baiduworld-trh")})}})});';   // js字串，不含<script标签
      private static $uiList = 'img,btn,table,tabs';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
