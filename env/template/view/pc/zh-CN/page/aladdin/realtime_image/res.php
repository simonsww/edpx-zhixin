<?php 
  class CssJs_Util_realtime_image
   {
      private static $cssStr = '.op_realtime_image_images{height:175px;}.op_realtime_image_abstract{margin:4px 0;}.op_realtime_image_img{width:140px;height:87px;}.op_realtime_image_images{position:relative;}.op_realtime_image_images img.first{height:174px;width:254px;}.op_realtime_image_images img.last{width:141px;}.c-border .op_realtime_image_img,.c-border .op_realtime_image_images img.last{width:132px;}.op_realtime_image_images a{display:block;float:left;text-decoration:none;line-height:0;position:relative;}.op_realtime_image_info,.op-realtime_image_info a{color:#666;}.op_realtime_image_linkhover{box-shadow:#646464 0 0 10px;z-index:1;display:none;position:absolute;overflow:hidden;}.op_realtime_image_linkhover a{float:none;}.op_realtime_image_linkhover a img.op_realtime_image_img{width:100%;height:100%;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("realtime_image",function(){A.setup(function(){var a=A.baidu,b=this;A.use("jquery",function(){var e=A.ui.jquery;var c,g,f,d;e("a",".op_realtime_image_images").on("mouseover",function(){c=this.offsetLeft,g=this.offsetTop,f=e(this).width(),d=e(this).height();var h=Math.floor(f*1.2),i=Math.floor(d*1.2);var l=c-(h-f)/2,k=g-(i-d)/2;var j=e(this).parents(".op_realtime_image_images").children(".op_realtime_image_linkhover");j.empty();e(this).clone().prependTo(j);j.stop().css({display:"block",left:c,top:g,width:f+"px",height:d+"px"}).animate({left:l,top:k,width:h+"px",height:i+"px"},100)});e(".op_realtime_image_images").on("mouseleave",function(){e(".op_realtime_image_linkhover").stop().animate({left:c,top:g,width:f+"px",height:d+"px"},100).hide()})})})});';   // js字串，不含<script标签
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
