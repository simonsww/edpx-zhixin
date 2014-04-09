<?php 
  class CssJs_Util_lottery_new
   {
      private static $cssStr = '.op_lottery_dropdown1,.op_lottery_dropdown2{width:6.55em;float:left;}.op_lottery_dropdown2 li{padding-left:10px;}.op_lottery_date{float:left;line-height:2em;}.op_lottery_hidden{display:none;}.op_lottery_cont li{border-right:1px solid #FFF;float:left;text-align:center;}.op_lottery_cont li.op_lottery_last{border:none;}.op_lottery_list li{padding-top:10px;padding-bottom:5px;}.op_lottery_list2 li{padding-top:10px;padding-bottom:10px;}.op_lottery_list li.op_lottery_nosp{padding:0;color:#666;}.op_lottery_list li.op_lottery_nospT{height:30px;padding-top:0;padding-bottom:0;line-height:30px;color:#666;}.op_lottery_box{display:none;}.op_lottery_box ul{background:#F8F8F8;font-size:12px;line-height:1.2;}.op_lottery_box ul.timer{background:#F0F0F0;font-size:12px;}.op_lottery_succ li{width:23px;padding-left:5px;padding-right:5px;height:56px;}.op_lottery_succ li.op_lottery_title{width:23px;height:56px;padding-left:9px;padding-right:9px;font-weight:bold;}.op_lottery_vs{height:12px;overflow:hidden;}.op_lottery_vs li{color:#ccc;padding-top:0;height:12px;}.op_lottery_vs li.op_lottery_title{-height:4px;}.op_lottery_result li{background:#F25355;color:#FFF;color:#FFF;font-size:14px;font-family:Arial Black;border-right:1px solid #F5696B;height:30px;line-height:30px;overflow:hidden;}.op_lottery_result li.op_lottery_titleCom{font-size:12px;line-height:1.4;font-weight:bold;}.op_lottery_result li.op_lottery_titleDif{width:31px;font-weight:bold;font-size:12px;}.op_lottery_result li.op_lottery_titleDif2{width:106px;font-weight:bold;}.op_lottery_result li.op_lottery_titleDif3{width:44px;font-weight:bold;}.op_lottery_result li.op_lottery_title{font-size:12px;height:30px;line-height:30px;width:41px;padding-left:0;padding-right:0;}.op_lottery_ann{font-weight:bold;}.op_lottery_in li{width:102px;}.op_lottery_in li.op_lottery_title{width:106px;font-weight:bold;}.op_lottery_full li{width:78px;}.op_lottery_full li.op_lottery_title{width:44px;font-weight:bold;}.op_lottery_modleresu span{display:inline-block;width:38px;}.op_lottery_modle span{display:inline-block;width:38px;height:30px;line-height:30px;}.op_lottery_modle span.space{border-right:1px solid #f5f5f5;}.op_lottery_pk{padding-left:15px;padding-right:15px;}.op_lottery_gapdif{margin-bottom:-4px;margin-top:6px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("lottery_new",function(){A.setup(function(){var i=this,l=i.data.phase,a=i.data.typeId;var p={},b={},d=[],o="";var g=i.find(".op_lottery_date_val")[0],k=i.find(".op_lottery_dropdown1")[0],j=i.find(".op_lottery_dropdown2")[0],c=j.getElementsByTagName("ul")[0],m=i.find(".op_lottery_dropdown2").eq(0).find(".c-dropdown2-btn")[0],n=f("op_lottery_box");function f(v,t){t=t||document;if(t.getElementsByClassName){return t.getElementsByClassName(v)}var u=t.getElementsByTagName("*");var s=new RegExp("(^|\\\\s)"+v+"(\\\\s|$)","i");var q=[];for(var r=0;r<u.length;r++){s.test(u[r].className)&&q.push(u[r])}return q}function h(s,r){for(var q=0;q<s.length;q++){r(s[q])}}function e(t,z,u,O,M){h(n,function(R){R.style.display="none"});var q=n[z-1];q.style.display="block";function H(R){result=R.split("/");return result}function x(T){var R="";for(var S=0;S<T.length;S++){if(S==T.length-1){R+=\'<li class="op_lottery_last">\'+T[S]+"</li>"}else{R+="<li>"+T[S]+"</li>"}}return R}function Q(W,U){var S="";var V="";var R=10;if(U){V=""}else{R=6;V=\'<span class="op_lottery_pk">:</span>\'}for(var T=0;T<W.length;T+=2){if(T==R){if(U){S+=\'<li class="op_lottery_last"><span>\'+W[T]+"</span><span>"+W[T+1]+"</span></li>"}else{S+=\'<li class="op_lottery_last">\'+W[T]+V+W[T+1]+"</li>"}}else{if(U){S+="<li><span>"+W[T]+"</span><span>"+W[T+1]+"</span></li>"}else{S+="<li>"+W[T]+V+W[T+1]+"</li>"}}}return S}var w=[];var u=u,O=O;var N=[],F=[],J=[];$.each(t.split("/"),function(S,R){w.push(["<span>",R,"</span>"].join(""))});$.each(u.split("/"),function(S,R){N.push(R)});F=H(O);J=H(t);var G=\'<li class="op_lottery_title">主队</li>\',E=\'<li class="op_lottery_title">客队</li>\',D=\'<li class="op_lottery_title">彩果</li>\',P=\'<li class="op_lottery_titleDif">彩果</li>\';var r=q.getElementsByTagName("ul")[0],L=q.getElementsByTagName("ul")[2],y=q.getElementsByTagName("ul")[3],C=q.getElementsByTagName("ul")[4],s=q.getElementsByTagName("p")[0].getElementsByTagName("span")[1];var K=x(N),I=x(F),B=x(J);G+=K;E+=I;D+=B;P+=B;if(z-1==0){r.innerHTML=G;L.innerHTML=E;y.innerHTML=P;s.innerHTML="";$.each(M.split(" "),function(S,R){s.innerHTML+=\'<span class="c-gap-right">\'+R+"</span>"})}else{if(z-1==1){D=\'<li class="op_lottery_title">彩果</li>\';var v=D+Q(J);r.innerHTML=G;L.innerHTML=E;y.innerHTML=v;s.innerHTML="";$.each(M.split(" "),function(S,R){s.innerHTML+=\'<span class="c-gap-right">\'+R+"</span>"})}else{D=\'<li class="op_lottery_title">彩果</li>\';var v=D+Q(J,true);r.innerHTML=G;L.innerHTML=E;C.innerHTML=v;s.innerHTML="";$.each(M.split(" "),function(S,R){s.innerHTML+=\'<span class="c-gap-right">\'+R+"</span>"})}}}$.each(l,function(t,r){var s={datamain:r.main,visitor:r.visitor,ann:r.ann};if(a==r.id){if(r.selected){e(r.number,a,s.datamain,s.visitor,s.ann);g.innerHTML=r.date}}var u=a!=r.id?" op_lottery_hidden":"",w=r.selected?" op_lottery_selected":"",q=a==r.id&&r.selected?"selected":"";o+=\'<li class="c-dropdown2-option op_lottery_type_\'+r.id+u+w+\'" data-value="\'+r.number+\'" data-ann="\'+r.ann+\'" data-date="\'+r.date+\'" date-main="\'+r.main+\'" date-visitor="\'+r.visitor+\'" data-selected="\'+q+\'" >\'+r.name+"</li>"});c.innerHTML=o;A.use("dropdown21",function(){p=A.ui.dropdown21(k,{onchange:function(s){$.each(f("op_lottery_type_"+a),function(u,t){$(t).addClass("op_lottery_hidden");if(t.getAttribute("data-selected")){t.removeAttribute("data-selected")}$.each(f("op_lottery_type_"+p.getValue()),function(x,w){$(w).removeClass("op_lottery_hidden");if($(w).hasClass("op_lottery_selected")){b.setValue(w.getAttribute("data-value"));w.setAttribute("data-selected","selected");m.innerHTML=w.innerHTML;g.innerHTML=w.getAttribute("data-date");e(b.getValue(),p.getValue(),w.getAttribute("date-main"),w.getAttribute("date-visitor"),w.getAttribute("data-ann"))}});a=p.getValue()})}});var r=i.find(".op_lottery_type_1").length;var q=r*26<260?r*26:260;b=A.ui.dropdown21(j,{onchange:function(s){$.each(f("op_lottery_type_"+a),function(u,t){if(t.getAttribute("data-value")==b.getValue()){g.innerHTML=t.getAttribute("data-date");e(b.getValue(),p.getValue(),t.getAttribute("date-main"),t.getAttribute("date-visitor"),t.getAttribute("data-ann"))}})},type:"custom",height:q})});this.dispose=function(){p&&p.dispose&&p.dispose();b&&b.dispose&&b.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'btn,input,dropdown2';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
