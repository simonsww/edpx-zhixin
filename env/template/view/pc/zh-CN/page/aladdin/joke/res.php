<?php 
  class CssJs_Util_joke
   {
      private static $cssStr = '.op-joke-titlerow{padding-bottom:10px;position:relative;}.op-joke-title{font-size:16px;text-align:center;font-weight:bold;color:#333;text-align:center;padding-top:2px;}.op-joke-content{font-size:14px;padding:9px 0 0;border-top:1px solid #f5f5f5;text-indent:2em;color:#333;}.op-joke-contentimg{text-indent:0;text-align:center;}.op-joke-aimg{max-height:450px;overflow:hidden;}.op-joke-btn{padding-left:30px;background-image:url(\'http://www.baidu.com/aladdin/img/joke/ico.png\');_background-image:url(\'http://www.baidu.com/aladdin/img/joke/ico8.png\');background-repeat:no-repeat;background-position:10px 5px;position:absolute;right:10px;top:0;}.op-joke-btn:hover{background-image:url(\'http://www.baidu.com/aladdin/img/joke/ico.png\');_background-image:url(\'http://www.baidu.com/aladdin/img/joke/ico8.png\');background-repeat:no-repeat;background-position:10px 5px;}.op-joke-btnnone{background-color:#f9f9f9;cursor:default;border:1px solid #ccc;color:#ccc!important;}.op-joke-btnnone:hover{background-color:#f9f9f9;cursor:default;border:1px solid #ccc;color:#ccc!important;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("joke",function(){A.setup(function(){var f=this,i=f.find(".op-joke-title")[0],h=f.find(".op-joke-content")[0],a=f.find(".op-joke-btn")[0],j=f.data.originQuery,k=f.srcid,d=f.data.pnMax,g=f.data.rn;function c(p,m){if(p.length*2<=m){return p}var q=0;var o="";for(var n=0;n<p.length;n++){if(p.charCodeAt(n)>128){q=q+2;if(q>m){return o.substring(0,o.length-1)+"..."}}else{q=q+1;if(q>m){return o.substring(0,o.length-2)+"..."}}o=o+p.charAt(n)}return o}var e=0,b=0,l=0;$(a).click(function(){if(b==d&&l>=e.length){return false}if(l>=g&&b<d||b==0){if(b==0){var m=1;l=1}else{var m=0;l=0}b++;f.ajax(j,k,{co:"data[pn="+b+"]",success:function(n){e=n[0].data;i.innerHTML=c(e[m].title,36);if(e[m].tag==1){$(h).addClass("op-joke-contentimg");$(h).html(\'<a class="op-joke-aimg" href="\'+e[m].href+\'" target="_blank"><img src="\'+e[m].imgsrc+\'" /></a>\')}else{$(h).removeClass("op-joke-contentimg");$(h).html(e[m].content)}},error:function(){}})}else{if(b){i.innerHTML=c(e[l].title,36);if(e[l].tag==1){$(h).addClass("op-joke-contentimg");$(h).html(\'<a class="op-joke-aimg" href="\'+e[l].href+\'" target="_blank"><img src="\'+e[l].imgsrc+\'" /></a>\')}else{$(h).removeClass("op-joke-contentimg");$(h).innerHTML(e[l].content)}}}l++;if(b==d&&l>=e.length){$(a).addClass("op-joke-btnnone")}})})});';   // js字串，不含<script标签
      private static $uiList = 'btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
