<?php 
  class CssJs_Util_car_info
   {
      private static $cssStr = '';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("car_info",function(){A.setup(function(){var f=this;var d=f.find(".op_car_info_option"),c=null,e=null,a,b=f.find(".op_car_info_moreBtn");d.each(function(h,k){var k=$(k),g=$(k).find("a"),j="";g.each(function(l,m){var m=$(m);m.click(function(){k.find("a").removeClass("op_car_info_active");$(this).addClass("op_car_info_active");j=$(this);while(!j.hasClass("c-tabs-content")){j=j.parent()}var i=$(this).attr("type")+$(this).parent().index();j.find(".op_car_info_appraise").hide();j.find(".op_car_info_"+i+":first").show();j.find(".op_car_info_"+i+" .op_car_info_discusstit em:first").html($(this).html().split("(")[0]);c=$(this);e=j})})});b.click(function(){var j=5;if(!$(this).data("index")){$(this).data("index",0)}var g=$(this).data("index");$(this).data("index",g+1);var k=$(this).parent().prev().find("li");for(var h=1;h<6;h++){k.eq(g*j+h+2).show();if(!k.eq(g*j+h+2)[0]){$(this).hide();break}}if(g+1==4){$(this).hide()}});A.use("tabs5",function(){a=A.ui.tabs5(f.find(".car_info_cont"))});this.dispose=function(){a&&a.dispose&&a.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'tabs,img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
