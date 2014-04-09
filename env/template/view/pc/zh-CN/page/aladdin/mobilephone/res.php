<?php 
  class CssJs_Util_mobilephone
   {
      private static $cssStr = '.op_mobilephone_logo{display:block;}.op_mobilephone_t,.op_mobilephone_r{font-weight:normal;font-family:\'微软雅黑\',\'黑体\';_font-family:arial;}.op_mobilephone_t{font-size:1.23em;}.op_mobilephone_r{font-size:1.69em;line-height:30px;}.op_mobilephone_s{color:#666;}.op_mobilephone_txt.tip{color:#AAA;}.op_mobilephone_txt.no{color:#000;}.op_mobilephone_err{color:#F00;display:none;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("mobilephone",function(){A.setup(function(){var m=this;var l=!-[1,];var k=l&&!window.XMLHttpRequest;var f=m.find(".op_mobilephone_btn")[0];var j=m.find(".op_mobilephone_txt")[0];var i=m.find(".op_mobilephone_err")[0];var s=m.find(".op_mobilephone_r")[0];var q=false;var a=0;var b=null;if(k){try{document.execCommand("BackgroundImageCache",false,true)}catch(d){}}$(j).keydown(function(t){t=t||window.event;if(t&&t.keyCode==13){if(q){return false}r(o(j.value))}});$(f).click(function(){if(q){return false}r(o(j.value))});function n(t){return(new RegExp("^\\\\d{7,11}\\x24")).test(t)}function c(t){$(t).addClass("tip");t.value=t.getAttribute("tip")||"";$(t).focus(function(){var u=o(t.value);if(u==t.getAttribute("tip")){t.value="";$(t).removeClass("tip");$(t).addClass("no")}});$(t).blur(function(){var u=o(t.value);if(u==""){t.value=t.getAttribute("tip");$(t).removeClass("no");$(t).addClass("tip")}})}c(j);function o(t){t=t.replace(/(\\u3000+)|(\\u3000+)/g,"");t=t.replace(/( +)|( +)/g,"");return t}function h(t){i.style.display="block";i.innerHTML=t}function e(){q=true;j.disabled=true}function g(){q=false;j.disabled=false;try{if(j.disabled==false){b=setTimeout(function(){j.focus()},50)}}catch(t){}}function p(t){return function(){if(a==t&&q){h("抱歉，没有找到“"+(j.value)+"”的归属地信息");g()}}}function r(t){a++;if(n(t)){if(t.length<11){t=t+" 手机号段"}i.style.display="none";var u=6004;m.ajax(t,u,{success:function(v){if(v){var w=v[0];if(w){s.innerHTML=w.querytype+\'"\'+w.phoneno+\'"&nbsp;\'+w.prov+"&nbsp;"+w.city+"&nbsp;&nbsp;"+w.type}else{h("抱歉，没有找到“"+t+"”的归属地信息");g()}}g()},error:function(v){h("抱歉，没有找到“"+t+"”的归属地信息");g()},timeout:function(v){h("抱歉，没有找到“"+t+"”的归属地信息");g()}});e();if(window.baidu_aladdin_openala_temp_phoneajax_timer){clearTimeout(window.baidu_aladdin_openala_temp_phoneajax_timer)}window.baidu_aladdin_openala_temp_phoneajax_timer=setTimeout(function(v){return p(v)}(a),6000)}else{h("请输入7-11位手机号码或号段")}}this.dispose=function(){clearTimeout(b);clearTimeout(window.baidu_aladdin_openala_temp_phoneajax_timer)}})});';   // js字串，不含<script标签
      private static $uiList = 'img,btn,input';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
