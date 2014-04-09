<?php 
  class CssJs_Util_ip
   {
      private static $cssStr = '.op-ip-icon{line-height:0;}.op-ip-detail table{width:100%;height:56px;}.op-ip-detail td{vertical-align:middle;font-size:22px;line-height:22px;font-family:"微软雅黑" arial;}.op-ip-tip{color:#aaa;}.op-ip-no-tip{color:#000;}.op-ip-query-e,.op-ip-query-res{display:none;}.op-ip-query-e span{color:#f00;}.op-ip-help-link a{color:#666;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("ip",function(){A.setup(function(){var k=this;var r=!-[1,];var q=r&&!window.XMLHttpRequest;var o={"65297":"1","65298":"2","65299":"3","65300":"4","65301":"5","65302":"6","65303":"7","65304":"8","65305":"9","65296":"0","65294":"."};var n=k.find(".op-ip-input")[0];var g=k.find(".op-ip-do-submit")[0];var s=k.find(".op-ip-query-res")[0];var z=k.find(".op-ip-query-res-txt")[0];var l=k.find(".op-ip-query-e")[0];var m="抱歉没有找到此ip地址的信息";var w=false;var b=0;var c=null;if(q){try{document.execCommand("BackgroundImageCache",false,true);n.setAttribute("placeholder","")}catch(d){}$(n).addClass("op-ip-tip");n.value=n.getAttribute("tip")||"";$(n).on("focus",function(B){var t=u(n.value);if(t==n.getAttribute("tip")){n.value="";$(n).removeClass("op-ip-tip");$(n).addClass("op-ip-no-tip")}});$(n).on("blur",function(B){var t=u(n.value);if(t==""){n.value=n.getAttribute("tip");$(n).removeClass("op-ip-no-tip");$(n).addClass("op-ip-tip")}})}function j(){s.style.display="none";l.style.display="block"}function u(B){var t=new RegExp("[\\\\s\\\\t\\\\xa0\\\\u3000]","g");return B.replace(t,"")}function i(t){return t.replace(/./g,function(C,B,E){var D=C.charCodeAt(0);if(typeof(o[D])!="undefined"){return o[D]}else{return C}})}function y(E){if(!E){return false}if(!(/\\d\\./g.test(E))){return false}var D=E.split(".");if(D.length!=4){return false}var B;for(var C=0,t=D.length;C<t;C++){B=D[C];if(B===""){return false}B=B*1;if(C==0&&B<=0){return false}if(isNaN(B)||B>255||B<0){return false}}return true}function e(C){var B=C.split(".");for(var t=0;t<B.length;t++){B[t]=B[t]*1}return B.join(".")}function f(){w=true;n.disabled=true}function h(){w=false;n.disabled=false;try{if(n.disabled==false){c=setTimeout(function(){n.focus()},50)}}catch(t){}}function v(t){return function(){if(b==t&&w){z.innerHTML=\'<span style="color:#F00">\'+m+"</span>";h()}}}function p(t){b++;if(y(t)){n.value=t=e(t);l.style.display="none";s.style.display="block";z.innerHTML=\'<span style="color:#666">查询中...</span>\';var B=k.srcid;k.ajax(t,B,{success:function(C){if(C){var D=C[0];if(D){z.innerHTML="<b>"+D.origip+\'来自<span style="color:#f00">\'+D.location+"</span></b>"}else{z.innerHTML=\'<span style="color:#F00">\'+m+"</span>";h()}}h()},error:function(C){z.innerHTML=\'<span style="color:#F00">\'+m+"</span>";h()},timeout:function(C){z.innerHTML=\'<span style="color:#F00">\'+m+"</span>";h()}});f();if(window.baidu_aladdin_mid_temp_ip_timer){clearTimeout(window.baidu_aladdin_mid_temp_ip_timer)}window.baidu_aladdin_mid_temp_ip_timer=setTimeout(function(C){return v(C)}(b),6000)}else{j()}}function x(t){t=t||window.event;if(w){return false}var B=u(n.value);B=i(B);p(B);if(t){t.preventDefault();t.stopPropagation()}}function a(){$(n).keydown(function(t){var t=t||window.event;if(t&&t.keyCode==13){x(t)}});$(n).mouseover(function(t){if(this.value!="请输入ip地址"){this.select()}});$(g).click(function(t){x(t)});$(g).keydown(function(t){t=t||window.event;if(t&&t.keyCode==13){x(t)}})}a();this.dispose=function(){window.opuiLikeShareContent6006=null;clearTimeout(c);clearTimeout(window.baidu_aladdin_mid_temp_ip_timer)}})});';   // js字串，不含<script标签
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
