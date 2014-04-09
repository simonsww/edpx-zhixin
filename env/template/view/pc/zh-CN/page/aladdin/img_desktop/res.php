<?php 
  class CssJs_Util_img_desktop
   {
      private static $cssStr = '.op_img_desktop_cont{height:280px;position:relative;}.op_img_desktop_cont li{position:relative;display:block;float:left;width:179px;height:112px;overflow:hidden;}.op_img_desktop_cont .imgCont{width:179px;height:112px;display:block;overflow:hidden;}.op_img_desktop_cont img{width:100%;height:100%;}.op_img_desktop_cont .bigImg{width:269px;height:168px;}.op_img_desktop_cont .lastImg{width:180px;}.op_img_desktop_tag a{color:#ddd;text-decoration:none;}.op_img_desktop_tag,.op_img_desktop_info{padding:1px 6px;position:absolute;bottom:0;_bottom:-1px;left:0;filter:progid:DXImageTransform.Microsoft.gradient(enabled=\'true\',startColorstr=\'#99000000\',endColorstr=\'#99000000\');background-color:rgba(0,0,0,0.6);font-size:12px;color:#ddd;}:root .op_img_desktop_tag,:root .op_img_desktop_info{filter:none;background-color:rgba(0,0,0,0.6);}.op_img_desktop_info{width:100%;text-align:left;height:26px;line-height:26px;display:none;}.op_img_desktop_sub a{margin-right:16px;}.op_img_desktop_linkhover{box-shadow:#646464 0 0 10px;z-index:1;display:none;position:absolute;}.op_img_desktop_linkhover a.imgCont{width:100%;height:100%;}.op_img_desktop_tag{height:20px;line-height:20px;padding-top:0;padding-bottom:0;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("img_desktop",function(){A.setup(function(){var a=A.baidu,b=this;A.use("jquery",function(){var e=A.ui.jquery;var c,g,f,d;e("li",".op_img_desktop_cont").on("mouseover",function(){c=this.offsetLeft,g=this.offsetTop,f=e(this).width(),d=e(this).height();var h=Math.floor(f*1.2),i=Math.floor(d*1.2);var m=c-(h-f)/2,l=g-(i-d)/2;var j=e(".imgCont",this);var k=e(this).parents(".op_img_desktop_cont").children(".op_img_desktop_linkhover");k.html(e(this).html());k.stop().css({display:"block",left:c,top:g,width:f+"px",height:d+"px"}).animate({left:m,top:l,width:h+"px",height:i+"px"},100)});e(".op_img_desktop_cont").on("mouseleave",function(){e(".op_img_desktop_linkhover").stop().animate({left:c,top:g,width:f+"px",height:d+"px"},100).hide()})})})});';   // js字串，不含<script标签
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
