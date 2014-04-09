<?php 
  class CssJs_Util_xueshu
   {
      private static $cssStr = '.op_xueshu_wrap .op_xueshu_special{color:#666;}.op_xueshu_wrap .op_xueshu_exactMatch *,.op_xueshu_wrap ul *{text-decoration:none;}.op_xueshu_wrap .op_xueshu_exactMatch a:hover,.op_xueshu_wrap ul a:hover,.op_xueshu_wrap ul a:hover em{text-decoration:underline;}.op_xueshu_sources{padding-top:7px;}.op_xueshu_sources_col1,.op_xueshu_sources_col2,.op_xueshu_sources_col3{float:left;}.op_xueshu_width .op_xueshu_sources_col1{width:84px;}.op_xueshu_sources_col2{padding:0 15px;}.op_xueshu_site{color:#008000;padding-bottom:3px;}.op_xueshu_briefsource,.op_xueshu_moresource{zoom:1;}.op_xueshu_open,.op_xueshu_close{color:#77c;font-size:12px;}.op_xueshu_close{background-position:right -20px;background-position:right -21px\\9;*background-position:right -21px;}.op_xueshu_hide{display:none;}.op_xueshu_lamp{color:#008000;margin-top:2px;*margin-top:-2px;}.op_xueshu_wrap li .op_xueshu_aTitle{text-decoration:underline;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("xueshu",function(){A.setup(function(){var e=this,c=[];var a=false;function d(){var g=(new Date()).getTime();var f=$.format("http://opendata.baidu.com/api.php?resource_id=6660&query=#{0}&title_sign=#{1}&ie=utf-8&format=json&from_mid=1&cluster=0&t=#{2}",encodeURIComponent(op_xueshu_query),encodeURIComponent(op_xueshu_titlesign),g);return f}window.op_xueshu_callback=function(m){if(a){return}if(m.status=="0"){if(!!(m.data[0]["disp_data"])){var t=["免费下载","在线阅读","付费下载"];var q=["PDF格式","CAJ格式","DOC格式","XLS格式","PPT格式","其他格式"];var u=m.data[0]["disp_data"];for(var n=0,j=u.length;n!=j;n++){if(u[n].loc!=op_xueshu_articleLoc){if(parseInt(u[n].authority,10)===3){var p=[q[parseInt(u[n]["format"])-1],u[n]["method"]||""].join(" ");var g=50;if($.getByteLength(p)>g){u[n]["showcol3"]=$.subByte(p,g)+"..."}else{u[n]["showcol3"]=p}}else{u[n]["showcol3"]=q[parseInt(u[n]["format"])-1]}u[n]["authority"]=t[u[n]["authority"]-1];u[n]["site"]=$.subByte(u[n]["site"],12);var o=\'<div class="op_xueshu_sources_col1">#{site}</div><div class="op_xueshu_sources_col2"><a href="#{loc}" class="op_xueshu_dl" title="该结果由#{sitelink}提供" target="_blank">#{authority}</a></div><div class="op_xueshu_sources_col3">#{showcol3}</div><div style="clear:both;"></div>\';c.push($.format(o,u[n]))}}if(u.length>0){var f=e.find(".op_xueshu_open").eq(0);var k=e.find(".op_xueshu_close").eq(0);var s=e.find(".op_xueshu_briefsource").eq(0);var r=e.find(".op_xueshu_moresource").eq(0);r.html(c.join(""));f.removeClass("op_xueshu_hide");k.removeClass("op_xueshu_hide");s.removeClass("op_xueshu_width");r.removeClass("op_xueshu_hide")}}}else{var h=window["BD_PS_E"+(new Date()).getTime()]=new Image();h.src="http://open.baidu.com/stat/al_e.gif?ajax_err_url="+encodeURIComponent(d())}};function b(){var h=e.find(".op_xueshu_briefsource").eq(0),j=e.find(".op_xueshu_moresource").eq(0),g=e.find(".op_xueshu_exactButtons").eq(0),f=e.find(".op_xueshu_open").eq(0),i=e.find(".op_xueshu_close").eq(0);h.html(op_xueshu_briefhtml);g.on("click",function(m){var m=m||window.event,n=m.target||m.srcElement,k=$(n);if(k.hasClass("op_xueshu_open")||k.hasClass("c-icon-unfold")){if(c.length==0){var l="bd_cb_xueshu_"+new Date().getTime();$.ajax({url:d()+"&cb="+l,dataType:"jsonp",jsonpCallback:l,scriptCharset:"gb2312",success:window.op_xueshu_callback})}else{f.removeClass("op_xueshu_hide");i.removeClass("op_xueshu_hide");j.removeClass("op_xueshu_hide");h.removeClass("op_xueshu_width")}}else{if(k.hasClass("op_xueshu_close")||k.hasClass("c-icon-fold")){i.removeClass("op_xueshu_hide");f.removeClass("op_xueshu_hide");j.removeClass("op_xueshu_hide");h.removeClass("op_xueshu_width")}}})}if(op_xueshu_exactMatch_flag){b()}this.dispose=function(){if(!a){a=true}}})});';   // js字串，不含<script标签
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
