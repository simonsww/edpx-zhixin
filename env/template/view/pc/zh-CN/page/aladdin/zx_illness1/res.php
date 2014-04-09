<?php 
  class CssJs_Util_zx_illness1
   {
      private static $cssStr = '.op_zx_illness1_top h3{font-size:16px;font-weight:normal;}.op_zx_illness1_main{width:598px;background:#fdfdfd;margin-top:8px;border:1px solid #f5f5f5;font-size:13px;overflow:hidden;}.op_zx_illness1_condition{margin:5px 10px;width:580px;}.op_zx_illness1_condition td{padding:3px 0;}.op_zx_illness1_condition input{margin:0 3px 0;_margin-top:-3px;}.op_zx_illness1_condition input,.op_zx_illness1_condition label{vertical-align:middle;}.op_zx_illness1_condition b{vertical-align:bottom;}.op_zx_illness1_sex label{margin-right:16px;*margin-right:10px;}.op_zx_illness1_age label{margin-right:16px;*margin-right:10px;}.op_zx_illness1_sign label{margin-right:16px;*margin-right:10px;}.op_zx_illness1_sign span{white-space:nowrap;display:inline-block;}.op_zx_illness1_condition b{color:#333;}.op_zx_illness1_infomain{color:#666;width:598px;font-size:13px;border-left:1px solid #f5f5f5;border-right:1px solid #f5f5f5;}.op_zx_illness1_info div{padding:0 10px;line-height:30px;height:30px;border-bottom:1px solid #f5f5f5;}.op_zx_illness1_info a{color:#666;outline:none;}.op_zx_illness1_info a.op_zx_illness1_infoB{color:#00c;text-decoration:none;}.op_zx_illness1_info a.op_zx_illness1_infoB:hover,.op_zx_illness1_info a:hover em{text-decoration:underline;}.op_zx_illness1_info a em{text-decoration:none;}.op_zx_illness1_split{margin:0 3px;}.op_zx_illness1_infotitle{width:220px;text-overflow:ellipsis;overflow:hidden;white-space:nowrap;display:inline-block;margin-right:10px;}.op_zx_illness1_infosign{width:260px;text-overflow:ellipsis;overflow:hidden;white-space:nowrap;display:inline-block;margin-right:10px;}.op_zx_illness1_site{width:70px;text-overflow:ellipsis;overflow:hidden;white-space:nowrap;display:inline-block;}.op_zx_illness1_info a.op_zx_illness1_morelink{color:#00c;text-decoration:none;}.op_zx_illness1_info a.op_zx_illness1_morelink:link,.op_zx_illness1_info a.op_zx_illness1_morelink:visited{text-decoration:none;}.op_zx_illness1_info a.op_zx_illness1_morelink:hover{text-decoration:underline;}.op_zx_illness1_morelink b{font-family:simsun;font-weight:normal;}.op_zx_illness1_no,.op_zx_illness1_bad{border-bottom:1px solid #f5f5f5;}.op_zx_illness1_open{margin-top:2px;font-size:13px;clear:left;float:none;display:inline-block;}.op_zx_illness1_open span{font-size:13px;color:#008000;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("zx_illness1",function(){A.init(function(){var s=this,e=A.baidu,f=container.getElementsByTagName("label"),g=s.qq("op_zx_illness1_sex"),p=s.qq("op_zx_illness1_age"),y=s.qq("op_zx_illness1_sign"),u=s.qq("op_zx_illness1_info"),h=g.getElementsByTagName("input"),w=p.getElementsByTagName("input"),b=g.getElementsByTagName("label"),q=p.getElementsByTagName("label"),c=s.qq("op_zx_illness1_no"),d=s.qq("op_zx_illness1_bad"),t=s.qq("op_zx_illness1_mainlink"),i=0,r=0,l=[];if(s.data.sex!=""){i=s.data.sex}if(s.data.age!=""){r=s.data.age}e.each(g.getElementsByTagName("input"),function(B){e.event.on(B,"click",function(){i=B.value;o();a();if(i=="1"){if(w[3]){w[3].disabled=true}if(w[4]){w[4].disabled=true}if(q[3]){q[3].style.color="gray"}if(q[4]){q[4].style.color="gray"}}else{for(var C=0;C<w.length;C++){if(w[C]){w[C].disabled=false}if(q[C]){q[C].style.color="#000"}}}})});e.each(p.getElementsByTagName("input"),function(B){e.event.on(B,"click",function(){r=B.value;o();a();if((r=="1"||r=="6")&&h[1]){h[1].disabled=true;b[1].style.color="gray"}else{for(var C=0;C<h.length;C++){if(w[C]){h[C].disabled=false;b[C].style.color="#000"}}}})});e.each(y.getElementsByTagName("input"),function(B){e.event.on(B,"click",function(){if(B.getAttribute("data-flag")==1){B.setAttribute("data-flag",0)}else{B.setAttribute("data-flag",1)}o();a()})});function o(){var C="http://zhidao.baidu.com/search/api/symptom?query=#{0}&tosymptom=1&ie=utf-8&symptom_query=#{1}&sex=#{2}&grouptype=#{3}&t=#{5}",D=k().join("_"),B=n();e.sio.callByServer(e.format(C,encodeURIComponent(s.data.originQuery),encodeURIComponent(D),encodeURIComponent(i),encodeURIComponent(r),s.data.srcid,(new Date().getTime())),function(E){if(E.data[0]&&E.data[0].result){x(u);j(c);j(d);u.innerHTML=z(E.data[0].result);e.event.on(s.qq("op_zx_illness1_morelink"),"click",a)}else{j(u);j(d);x(c,B)}},{queryField:"cb",charset:"utf-8",timeOut:6000,onfailure:function(){x(d,B);j(u);j(c)}})}function z(E){var B=E.length,D=[];for(var C=0;C<B&&C<3;C++){D=D.concat([\'<div><span class="op_zx_illness1_infotitle"><a class="op_zx_illness1_infoB" hidefocus="true" target="_blank" href="\',E[C].loc,\'" title="\',E[C].title,\'">\',v(E[C].title),\'</a></span><span class="op_zx_illness1_infosign">症状：\',v(E[C].tag),\'</span><span class="op_zx_illness1_site"><a target="_blank" hidefocus="true" href="\',E[C].from?E[C].from:"http://www.haodf.com/",\'">\',E[C].fromsite?E[C].fromsite:"好大夫在线","</a></span></div>"])}D.push(\'<div><a class="op_zx_illness1_morelink" target="_blank" href="javascript:;">查看更多相关结果<b>&gt;&gt;</b></a></div>\');return D.join("")}e.event.on(d.getElementsByTagName("a")[0],"click",function(){o()});function k(){sign=[];e.each(y.getElementsByTagName("input"),function(B){if(B.getAttribute("data-flag")==1){sign.push(B.getAttribute("data-key"))}});return sign}e.each(f,function(B){e.event.on(B,"click",function(){m(B)})});function m(B){var C=B.previousSibling;C.click()}function n(){return Math.max.apply(null,[u.offsetHeight,c.offsetHeight,d.offsetHeight])-1}function x(C,B){if(B){C.style.height=B+"px"}C.style.display=""}function j(B){B.style.display="none"}function v(D){var B=sign.length;for(var C=0;C<B;C++){D=D.replace(sign[C],"<em>"+sign[C]+"</em>")}return D}function a(){var C="http://zhidao.baidu.com/search?rn=10&pn=0&fr=ps&ie=utf-8&tosymptom=1&word="+encodeURIComponent(s.data.originQuery)+"&grouptype="+encodeURIComponent(r)+"&sex="+encodeURIComponent(i)+"&symptom_query="+encodeURIComponent(k().join("_"));t.href=C;var B=s.qq("op_zx_illness1_morelink");if(B){B.href=C}}a()})});';   // js字串，不含<script标签
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
