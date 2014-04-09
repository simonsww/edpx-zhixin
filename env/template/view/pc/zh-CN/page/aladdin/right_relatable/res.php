<?php 
  class CssJs_Util_right_relatable
   {
      private static $cssStr = '.opr-rightrelatable{color:#333;}.opr_rightrelatable_narrow{width:259px;}.opr-rightrelatable-title{font-size:1.08em;}.opr-rightrelatable-label{font-weight:bold;padding-right:10px;margin-right:30px;background:#FFF;}.opr-rightrelatable-tb,.opr-rightrelatable-tbtwo{width:100%;margin-top:8px;}.opr-rightrelatable-tb th,.opr-rightrelatable-tbtwo th{height:22px;font-weight:normal;color:#666;background-color:#FAFAFA;text-align:left;border-bottom:1px solid #F0F0F0;padding-left:5px;}.opr-rightrelatable-tb td{padding-top:5px;padding-bottom:5px;text-align:left;border-bottom:1px solid #F3F3F3;padding-left:5px;}.opr-rightrelatable-tbtwo td{line-height:normal;vertical-align:middle;padding-top:5px;padding-bottom:5px;text-align:left;border-bottom:1px solid #F3F3F3;padding-left:5px;}.opr-rightrelatable-widtha{display:none;}.opr-rightrelatable-narrowa{display:block;}.opr-rightrelatable-widthspan{display:none;}.opr-rightrelatable-narrowspan{display:block;}.container_l .opr-rightrelatable-widtha{display:block;}.container_l .opr-rightrelatable-narrowa{display:none;}.container_l .opr-rightrelatable-widthspan{display:block;}.container_l .opr-rightrelatable-narrowspan{display:none;}.opr-rightrelatable-colwidth2{white-space:nowrap;}.opr-rightrelatable-colwidth3{white-space:nowrap;}.opr-rightrelatable-more{margin-top:9px;font-family:simsun;text-align:right;color:#666;}.opr-rightrelatable-more a{color:#666;}.opr-rightrelatable-tip{color:#666;}.opr-rightrelatable-onecolwidth{white-space:nowrap;}.opr-rightrelatable-twocolwidth{white-space:nowrap;padding-right:10px;}.opr-rightrelatable-lastcolwidth{line-height:20px;}.opr-rightrelatable-more{padding-right:10px;}.opr-right-relatable-linebg{background:#fafafa;}.opr-rightrelatable-sword-red-up,.opr-rightrelatable-sword-red-down,.opr-rightrelatable-sword-green-up,.opr-rightrelatable-sword-green-down{background:url(http://www.baidu.com/aladdin/img/right_relatable/gupiao_bg.png) no-repeat;float:left;margin-top:6px;width:7px;height:9px;margin-right:5px;overflow:hidden;}.opr-rightrelatable-sword-red-up{background-position:0 -9px;}.opr-rightrelatable-sword-red-down{background-position:0 0;}.opr-rightrelatable-sword-green-up{background-position:0 -18px;}.opr-rightrelatable-sword-green-down{background-position:0 -27px;}.opr-rightrelatable-sword-line{width:7px;margin-top:9px;margin-right:5px;height:3px;font-style:normal;overflow:hidden;float:left;background:none;background-color:#999;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_relatable",function(){A.setup(function(){var a=this;a.find(".opr-rightrelatable-tb").find("tr:gt(0)").each(function(b,d){var c=$(d);if(c.find(".opr-right-relatable-hidden-a").length>0){c.hover(function(){c.addClass("opr-right-relatable-linebg").css("cursor","pointer")},function(){c.removeClass("opr-right-relatable-linebg")});c.click(function(){var e=c.find("td:first a.opr-right-relatable-hidden-a").get(0);e&&e.click()})}})})});';   // js字串，不含<script标签
      private static $uiList = 'table';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
