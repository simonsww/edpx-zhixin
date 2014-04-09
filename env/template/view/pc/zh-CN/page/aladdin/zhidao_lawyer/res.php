<?php 
  class CssJs_Util_zhidao_lawyer
   {
      private static $cssStr = '';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("zhidao_lawyer",function(){A.setup(function(){var a=this,b=false;$(".op-zhidao-lawyer-more").click(function(g){g.preventDefault();$(".op-zhidao-address-more").toggle();var d=$(".c-icon"),f=$(".op-zhidao-address");if(d.hasClass("c-icon-triangle-up")){d.removeClass("c-icon-triangle-up");f.removeClass("op-zhidao-address-open")}else{d.addClass("c-icon-triangle-up");f.addClass("op-zhidao-address-open")}});$(".op-zhidao-lawyer-cate").click(function(d){d.preventDefault();$(".op-zhidao-lawyer-cate-current").removeClass("op-zhidao-lawyer-cate-current");$(this).addClass("op-zhidao-lawyer-cate-current");c()});$(".op-zhidao-lawyer-item").click(function(d){d.preventDefault();$(".op-zhidao-lawyer-item-current").removeClass("op-zhidao-lawyer-item-current");$(this).addClass("op-zhidao-lawyer-item-current");c()});function c(){var e=$(".op-zhidao-lawyer-cate-current").attr("data-index");var d=$(".op-zhidao-lawyer-item-current").attr("data-index");$.ajax({url:"http://zhidao.baidu.com/prof/api/toplawyers?from=aladdin&cate="+e+"&prov="+d+"&callback=?",dataType:"jsonp",success:function(g){if(b){return false}if(g.errno==0){var j="<tr><th class=\'op-lawyer-name\'>律师</th><th class=\'op-lawyer-anw\'>咨询量</th><th class=\'op-lawyer-goodrate\'>满意度</th><th class=\'op-lawyer-company\'>律所</th><th class=\'op_lawyer_k\'>&nbsp;</th></tr>";for(var f=0;f<g.proflist.length;f++){var h=g.proflist[f];if(h.canask==1){h.url="http://zhidao.baidu.com/profask?cid=11&from=aladdin&prof="+h.viewname2;h.fucName="免费咨询"}else{h.url="http://zhidao.baidu.com/prof/view/"+h.viewname+"?from=aladdin";h.fucName="了解更多"}j+=$.format(\'<tr><td><a target="_blank" href="http://zhidao.baidu.com/prof/view/#{viewname}?from=aladdin">#{realname}</a></td><td>#{ansnum}</td><td>#{goodrate}%</td><td>#{company}</td><td class="op-lawyer-handler"><a class="op-click-btn c-btn" target="_blank" href="#{url}">#{fucName}</a></td></tr>\',h)}j="<table class=\'c-table op-table-block\'>"+j+"</table>";$(".qq-table-block").remove();$(".op-table-div-block").html(j)}}})}c();this.dispose=function(){b=true};$(".op_zhidao_search_more").click(function(h){h.preventDefault();var g=$(".op-zhidao-lawyer-cate-current").attr("data-index");var f=$(".op-zhidao-lawyer-item-current").attr("data-index");var d={from:"aladdin",cate:g,prov:f};window.open("http://zhidao.baidu.com/prof/lawyerlist?"+$.param(d))})})});';   // js字串，不含<script标签
      private static $uiList = 'table,btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
