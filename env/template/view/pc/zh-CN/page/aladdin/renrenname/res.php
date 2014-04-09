<?php 
  class CssJs_Util_renrenname
   {
      private static $cssStr = '.op-renrenname p{color:#666;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("renrenname",function(){A.setup(function(){var f=this;var e=f.data.searchurl;var j=f.find(".op-renrenname-dropdown1")[0],i=f.find(".op-renrenname-dropdown2")[0],h=f.find(".op-renrenname-dropdown3")[0],g=f.find(".op-renrenname-dropdown4")[0],d=f.find(".op-renrenname-button")[0],c,b,a,k;A.use("dropdown21",function(){var l={vscrollbar:true};c=j&&A.ui.dropdown21(j,{onchange:function(n){}});b=i&&A.ui.dropdown21(i,{onchange:function(n){}});a=h&&A.ui.dropdown21(h,{onchange:function(n){}});k=g&&A.ui.dropdown21(g,{onchange:function(n){}});m();$(d).on("click",function(){m()});function m(){var n=$.format(e,[c.getValue(),b.getValue(),a.getValue(),k.getValue()]);$(d).attr("href",n)}});this.dispose=function(){c&&c.dispose&&c.dispose();b&&b.dispose&&b.dispose();a&&a.dispose&&a.dispose();k&&k.dispose&&k.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'btn,dropdown2';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
