<?php 
  class CssJs_Util_right_commontable
   {
      private static $cssStr = '.opr_commontable_moreshow a{padding-right:3px;}.opr_commontable_tab tr.opr_commontable_trmore,.opr_commontable_dishonestymore{display:none;}.opr_commontable_tab tr td:last-child{text-align:right;}.opr_commontable_linebg{background:#fafafa;}.opr_commontable_more{float:right;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_commontable",function(){A.setup(function(){var g=this,d=g.find(".opr_commontable_moreshow").eq(0),e=g.find(".opr_commontable_tab").find("tr");e.each(function(h,k){var j=$(k);j.find("td:last-child").attr("style","text-align:right");j.find("td:first-child").attr("style","padding-left:0;");if(j.find(".opr_commontable_hidden_a").length>0){j.hover(function(){j.addClass("opr_commontable_linebg").css("cursor","pointer")},function(){j.removeClass("opr_commontable_linebg")});j.click(function(){var i=j.find("td:first a.opr_commontable_hidden_a").get(0);i&&i.click()})}});if(d.length){var c=d.find("a").eq(0);var a=d.find("i").eq(0);var f=g.find(".opr_commontable_trmore");var b=g.find(".opr_commontable_dishonestymore");d.on("click",function(){if(c.html()=="展开"){if(b.length){b.show()}f.show();c.html("收起");a.addClass("c-icon-chevron-top")}else{if(b.length){b.hide()}f.hide();c.html("展开");a.removeClass("c-icon-chevron-top")}})}})});';   // js字串，不含<script标签
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
