<?php 
  class CssJs_Util_singer
   {
      private static $cssStr = '.op-singer-songs input{margin:0;padding:0;}.op-singer-info{position:relative;}.op-singer-logo{position:absolute;top:0;right:0;width:64px;height:21px;background:url(http://www.baidu.com/aladdin/img/music/logo.jpg) no-repeat;}.op-singer-earth{display:inline-block;width:12px;height:12px;background:url(http://www.baidu.com/aladdin/img/zx_mussong/earth.png) no-repeat;}.op-singer-hot1{width:100px;position:relative;height:6px;background-color:#fff;overflow:hidden;}.op-singer-hot2{position:absolute;top:0;left:0;height:100%;background-color:#e5e5e5;}.op-singer-mv{position:relative;top:2px;}.op-singer-icon-piao{float:left;margin-top:5px;width:14px;height:14px;background:url(http://www.baidu.com/aladdin/img/music/piao.png) no-repeat;vertical-align:text-bottom;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("singer",function(){A.setup(function(){var i=this;var e=i.find(".op-singer-check"),k=i.find(".op-singer-checkall").eq(0),d=i.find(".op-singer-btn").eq(0),j=i.find(".op-singer-btn-icon").eq(0),b=i.data.hotUrl,h="c-btn-disable",c="c-icon-play-gray",g="c-icon-play-blue";d.on("click",function(o){var n=this,l=b,m=[];$.each(e,function(q,p){if(p.checked){m.push(p.value)}});if(m.length){l=l.replace(/(__argsValue=)((\\d+_?)*)/,function(q,p,r){return(p+m.join("_"))});$(n).attr("href",l)}else{o.preventDefault()}});k.on("click",function(){var l=this;if(l.checked){$.each(e,function(n,m){m.checked=true});f()}else{$.each(e,function(n,m){m.checked=false});a()}});$.each(e,function(m,l){-$(l).on("click",function(){if(!this.checked){k.checked=false}var n=true;$.each(e,function(o,p){if(p.checked){n=false;return false}});if(n){a()}else{f()}})});function a(){d.addClass(h);j.addClass(c);j.removeClass(g)}function f(){d.removeClass(h);j.removeClass(c);j.addClass(g)}})});';   // js字串，不含<script标签
      private static $uiList = 'img,btn,table';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
