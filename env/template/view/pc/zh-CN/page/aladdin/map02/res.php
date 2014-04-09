<?php 
  class CssJs_Util_map02
   {
      private static $cssStr = '.op_map02_hidden_submit{position:absolute;top:-10000px;left:-10000px;width:0;height:0;}.op_map02_exchange{padding:0 5px;}.op_map02_container .c-input-xlarge{width:300px;}.op_map02_container .c-input-small{width:127px;}.op_map02_container .c-btn{vertical-align:middle;}.op_map02_tab_sep_hidden{visibility:hidden;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("map02",function(){A.setup(function(){var c=A.baidu,g=this;var b=g.find(".c-tabs-nav-li"),h=g.find(".c-tabs-nav:first li"),e=g.find(".op_map02_submit"),i=g.find(".c-tabs-content");var j=g.find(".c-tabs-nav-selected")[0],a,d;var f=function(o,k){var n,m,p=false;for(n=0,m=h.length;n<m;n++){if(o===h[n]){p=true;break}}if(p){n>0&&h.eq(n-1)[k?"removeClass":"addClass"]("op_map02_tab_sep_hidden");n<m-1&&h.eq(n+1)[k?"removeClass":"addClass"]("op_map02_tab_sep_hidden")}};$.each(b,function(k,l){if(l===j){a=d=k}$(l).click(function(){if($(this).hasClass("c-tabs-nav-selected")){return false}a=k;b.eq(d).removeClass("c-tabs-nav-selected");b.eq(a).addClass("c-tabs-nav-selected");i.eq(d).hide();i.eq(a).show();f(b[d],true);f(b[a],false);d=a})});$.each(e,function(l,k){$(k).click(function(){return k.parentNode.submit()})});$.each(g.find(".op_map02_exchange"),function(l,k){$(k).click(function(){var m=k.parentNode.getElementsByTagName("input");var o=m[0].value,n=m[1].value;m[0].value=n;m[1].value=o})})})});';   // js字串，不含<script标签
      private static $uiList = 'img,input,tabs,btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
