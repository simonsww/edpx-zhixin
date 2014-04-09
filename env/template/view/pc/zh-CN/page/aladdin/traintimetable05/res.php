<?php 
  class CssJs_Util_traintimetable05
   {
      private static $cssStr = '.op-traintimetable05-table .op-traintimetable05-swap{padding-left:5px;padding-right:5px;}.op-traintimetable05-table td{padding-bottom:10px;}.op-traintimetable05-thead{width:50px;padding-right:10px;white-space:nowrap;}.op-traintimetable05-table .op-traintimetable05-btnbox{padding-bottom:0;}.op-traintimetable05-submitbtn{display:inline-block;width:104px;height:26px;background:url(http://www.baidu.com/aladdin/img/traintimetable05/bg.png) no-repeat;color:#fff;line-height:26px;_line-height:28px;_overflow:hidden;font-size:1.077em;padding-left:10px;text-decoration:none;font-weight:bold;}.op-traintimetable05-submitbtn:hover{background-position:0 -40px;box-shadow:1px 1px 1px rgba(0,0,0,0.4);-webkit-box-shadow:1px 1px 1px rgba(0,0,0,0.4);-moz-box-shadow:1px 1px 1px rgba(0,0,0,0.4);-o-box-shadow:1px 1px 1px rgba(0,0,0,0.4);}.op-traintimetable05-submitbtn:active{background-position:0 -80px;}.op-traintimetable05-red{color:#f00;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("traintimetable05",function(){A.setup(function(){var h=this,b,g,c=h.data.today,e=h.data.selectDay||c,d=h.data.week,f=h.find(".op-traintimetable05-form"),a=h.find("input");A.use("jquery",function(){var m=window.jQuery;var k=false;var n=function(){return false};var p="http://opendata.baidu.com/ala_sug/ala_sug.php?ie=utf-8&sug_type=station&cb=op_func";var l=[],o,j;var i={getData:function(u){if(n()){return}var q=this;var s=function(w){if(k){return}var x=[];if(w.status==0){var v=w.data;var t=v.length;if(t>0){m.each(v,function(z,y){x.push(y.s)})}else{x.push("dataerror")}r(x)}};m.ajax(p,{data:{query:u,t:new Date().getTime()},dataType:"jsonp",jsonp:"cb",success:function(t){s(t)}});function r(v){var t=[];l=[];if(v[0]=="dataerror"){if(u=="城市名"){return false}t.push(\'<p class="op-traintimetable05-red">不支持该目的地</p>\');l.push("")}else{m.each(v,function(B,E){var z=E.split("|"),y=u.toLowerCase(),x=u.toUpperCase();var D=z[0]+"("+z[1].toLowerCase()+")",C=z[0]+"("+z[2].toUpperCase()+")";l.push(z[0]);if(y&&D.indexOf(y)!=-1){t.push(D.replace(y,"<span class=\'op-traintimetable05-red\'>"+y+"</span>"))}else{if(x&&C.indexOf(x)!=-1){t.push(C.replace(x,"<span class=\'op-traintimetable05-red\'>"+x+"</span>"))}}})}q.show(u,t);q.highLight(0)}},onpick:function(r){if(isNaN(r.data.index)){return}else{var q=l[r.data.index].split("|");r.data.item.value=q[0]}}};m(function(){A.use("suggestion",function(){var q=function(s){var r=h.find("."+s),t=m(r).position();return{top:t.top+26,left:t.left,width:r[0].offsetWidth}};i.view=function(){return q("op-traintimetable05-startcity")};o=A.ui.suggestion(i);i.view=function(){return q("op-traintimetable05-endcity")};j=A.ui.suggestion(i);b=setTimeout(function(){o.render("op-traintimetable05-startinput");j.render("op-traintimetable05-endinput")},0)});A.use("calendar",function(){var r=h.find(".op-traintimetable05-calendar")[0],q=true,s=e.split("-"),t=new Date(s[0],s[1]-1,s[2]);r.value=e+"(周"+"日一二三四五六".charAt(t.getDay())+")";c=c.split("-").join("");g=A.ui.calendar({input:r,position:h.find(".op-traintimetable05-calendarcon")[0],element:h.find(".op-traintimetable05-calendarbox")[0],count:2,date:c,today:c,between:[c,99999999],onShow:function(){if(q){this.setDay(s.join(""));q=false}}});m("i",r.parentNode).click(function(u){u.stopPropagation();g.show()})});h.find(".op-traintimetable05-swap").click(function(){var q=a[0].value;n=(function(){var r=0;return function(){r++;if(r>=2){n=function(){return false}}return true}})();a[0].value=a[1].value;a[1].value=q});m.each(a,function(q,s){var r=s.getAttribute("tip"),t=m(s);if(r&&r.length){t.focus(function(){if(m.trim(this.value)==r){t.val("");t.css("color","#000")}});t.blur(function(){if(m.trim(this.value)==""){t.val(r);t.css("color","#666")}});t.blur()}});h.find(".op-traintimetable05-submitbtn").click(function(){var q=a[2].value;a[2].value=a[2].value.replace(/\\(.+\\)/g,"");f.submit();a[2].value=q})});h.dispose=function(){k=true;clearTimeout(b);o&&o.dispose&&o.dispose();j&&j.dispose&&j.dispose();g&&g.dispose&&g.dispose()}})})});';   // js字串，不含<script标签
      private static $uiList = 'input,btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
