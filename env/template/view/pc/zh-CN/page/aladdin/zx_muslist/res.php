<?php 
  class CssJs_Util_zx_muslist
   {
      private static $cssStr = '.op-zx-muslist-playbutton{padding-left:8px;padding-right:10px;}.op-zx-muslist .op-zx-muslist-list-more,.op-zx-muslist .op-zx-muslist-list-more em{font-family:simsun;}.op-zx-muslist-list-new{position:relative;top:-4px;}.op-zx-muslist-list-index{margin:0 2px;color:#666;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("zx_muslist",function(){A.setup(function(){var g=this;var f;var d=g.data.hotsongs;var e=g.find(".op-zx-muslist-checkall").get(0),b=g.find(".op-zx-muslist-checkbox"),c=g.find(".op-zx-muslist-list-play"),a=g.find(".op-zx-muslist-playbutton");A.use("mboxsingleton",function(){f=new A.ui.mboxsingleton();var h=b.length;c.click(function(){f.openBox("mbc.ps",$(this).attr("songid"),{fr:"altg8"})});$(e).click(function(){b.each(function(j,k){k.checked=e.checked;if(e.checked){h=b.length;a.removeClass("op-zx-muslist-disabled")}else{h=0;a.addClass("op-zx-muslist-disabled")}})});b.click(function(){if($(this).get(0).checked){h++}else{h--}if(h==b.length){e.checked=true}else{e.checked=false}if(h==0){a.addClass("op-zx-muslist-disabled")}else{a.removeClass("op-zx-muslist-disabled")}});a.length>0&&a.on("click",function(){if(!a.hasClass("op-zx-muslist-disabled")){var i="";b.each(function(j,k){if(k.checked){i=i+$(k).attr("songid")+"_"}});f.openBox("mbc.ps",i,{fr:"altg8"})}})});this.dispose=function(){f&&f.dispose&&f.dispose()}})});';   // js字串，不含<script标签
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
