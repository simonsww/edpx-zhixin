<?php 
  class CssJs_Util_softwarebind
   {
      private static $cssStr = '.op-softwarebind{padding-top:4px;}.op-softwarebind-left{float:left;padding-top:4px;}.op-softwarebind-right{float:left;margin-left:10px;display:inline;}.op-softwarebind-content{display:block;font-size:13px;line-height:22px;}.op-softwarebind-tip{display:block;color:#73b338;font-size:13px;margin-bottom:8px;font-weight:bold;}.op-softwarebind-checkbox{width:13px;font-size:14px;position:relative;top:1px;margin-left:0;margin-right:3px;*top:0;}.op-softwarebind-downbtn,.op-softwarebind-btntext,.op-softwarebind-btnbg{display:inline-block;background:url(\'http://www.baidu.com/aladdin/img/newsoftdown/temp_tick.btn.big.gif\') no-repeat 0 -64px;height:32px;cursor:pointer;}.op-softwarebind-downbtn{background-repeat:repeat-x;text-decoration:none;}.op-softwarebind-btnbg{background-position:0 0;}.op-softwarebind-btntext{background-position:right -32px;line-height:32px;font-size:13px;color:#333;padding:0 36px;}.op-softwarebind-downbtn:hover{background-position:0 -128px;}.op-softwarebind-downbtn:hover .op-softwarebind-btnbg{background-position:0 -96px;}.op-softwarebind-downbtn:hover .op-softwarebind-btntext{background-position:right -160px;}.op-softwarebind .op_url3_renzheng{margin:0 3px;}.op-softwarebind .op_url3_tips_renzheng{background:#FFF;border:1px solid #CCC;color:#575757;font-size:13px;line-height:16px;padding:8px;min-width:230px;_width:230px;position:absolute;text-align:left;z-index:15;box-shadow:1px 1px 1px #dfdfdf;top:26px;}.op-softwarebind .op_url3_baidu{display:block;line-height:14px;margin-bottom:8px;color:#575757;}.op-softwarebind .op_url3_clearfix{zoom:1;}.op-softwarebind .op_url3_tip_logo{border:0 none;height:22px;left:10px;overflow:hidden;display:inline-block;vertical-align:middle;}.op-softwarebind .op_url3_tip_text{margin:0 0 0 5px;}.op-softwarebind .op_url3_tip_arrow{background:transparent url(\'http://a.baidu.com/xianzhi/ec_new_rz.png\') no-repeat scroll 6px -140px;width:252px;height:9px;position:absolute;top:-9px;left:0;}.op-softwarebind .op_url3_tip_arrowre{background-position:2px -140px;}.op-softwarebind .op_url3_hidden{display:none;}.op-softwarebind .op_url3_showurl{position:relative;font-size:13px;margin-top:4px;}.op-softwarebind .op_url3_showurl{zoom:1;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("softwarebind",function(){A.setup(function(){var h=this,a,j,c=new Image(),l=h.find(".op-softwarebind-icon")[0],g=h.find(".op-softwarebind-checkbox")[0],d=h.find(".op-softwarebind-downbtn")[0],i=h.data.url,k=d.getAttribute("href");var n=false;function b(){if(n){return}var o=c.width,p=c.height;if(o>70||p>70){if(o<p){o=70*o/p;p=70}else{p=70*p/o;o=70}l.style.width=o+"px";l.style.height=p+"px"}}c.onload=b;c.src=l.src;function m(p){clearTimeout(j);var p=p||event;this.parentNode.style.zIndex=h.p1+2;var q=this.className.substring(8);if(h.find(".op_url3_tips_"+q).length){var o=h.find(".op_url3_tips_"+q).eq(0);o.attr("style","left:"+this.offsetLeft+"px");o.on("mouseover",function(){clearTimeout(j);o.removeClass("op_url3_hidden")});o.on("mouseout",function(){clearTimeout(j);j=setTimeout(function(){o.addClass("op_url3_hidden")},100)});a=setTimeout(function(){o.removeClass("op_url3_hidden")},100)}}function f(){clearTimeout(a);var p=this.className.substring(8);this.parentNode.style.zIndex=h.p1+2;if(h.find(".op_url3_tips_"+p).length){var o=h.find(".op_url3_tips_"+p).eq(0);j=setTimeout(function(){o.addClass("op_url3_hidden")},100)}}if(h.find(".op_url3_renzheng").length){var e=h.find(".op_url3_renzheng")[0];e.onmouseover=m;e.onmouseout=f}g.onclick=function(){if(this.checked===true){d.href=k}else{d.href=i}};this.dispose=function(){clearTimeout(a);clearTimeout(j);if(!n){n=true}}})});';   // js字串，不含<script标签
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
