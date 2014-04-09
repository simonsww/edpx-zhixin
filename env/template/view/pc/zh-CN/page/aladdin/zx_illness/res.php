<?php 
  class CssJs_Util_zx_illness
   {
      private static $cssStr = '.op_zx_illness_top h3{font-size:16px;font-weight:normal;}.op_zx_illness_main{width:598px;background:#fdfdfd;margin-top:8px;border:1px solid #f5f5f5;font-size:13px;overflow:hidden;}.op_zx_illness_condition{margin:5px 10px;width:580px;}.op_zx_illness_condition td{padding:3px 0;}.op_zx_illness_condition input{margin:0 3px 0;_margin-top:-3px;}.op_zx_illness_condition input,.op_zx_illness_condition label{vertical-align:middle;}.op_zx_illness_condition b{vertical-align:bottom;}.op_zx_illness_sex label{margin-right:16px;*margin-right:10px;}.op_zx_illness_age label{margin-right:16px;*margin-right:10px;}.op_zx_illness_sign label{margin-right:16px;*margin-right:10px;}.op_zx_illness_sign span{white-space:nowrap;display:inline-block;}.op_zx_illness_condition b{color:#333;}.op_zx_illness_infomain{color:#666;width:598px;font-size:13px;border-left:1px solid #f5f5f5;border-right:1px solid #f5f5f5;}.op_zx_illness_info div{padding:0 10px;line-height:30px;height:30px;border-bottom:1px solid #f5f5f5;}.op_zx_illness_info a{color:#666;outline:none;}.op_zx_illness_info a.op_zx_illness_infoB{color:#00c;text-decoration:none;}.op_zx_illness_info a.op_zx_illness_infoB:hover,.op_zx_illness_info a:hover em{text-decoration:underline;}.op_zx_illness_info a em{text-decoration:none;}.op_zx_illness_split{margin:0 3px;}.op_zx_illness_infotitle{width:220px;text-overflow:ellipsis;overflow:hidden;white-space:nowrap;display:inline-block;margin-right:10px;}.op_zx_illness_infosign{width:260px;text-overflow:ellipsis;overflow:hidden;white-space:nowrap;display:inline-block;margin-right:10px;}.op_zx_illness_site{width:70px;text-overflow:ellipsis;overflow:hidden;white-space:nowrap;display:inline-block;}.op_zx_illness_info a.op_zx_illness_morelink{color:#00c;text-decoration:none;}.op_zx_illness_info a.op_zx_illness_morelink:link,.op_zx_illness_info a.op_zx_illness_morelink:visited{text-decoration:none;}.op_zx_illness_info a.op_zx_illness_morelink:hover{text-decoration:underline;}.op_zx_illness_morelink b{font-family:simsun;font-weight:normal;}.op_zx_illness_no,.op_zx_illness_bad{border-bottom:1px solid #f5f5f5;}.op_zx_illness_open{margin-top:2px;font-size:13px;clear:left;float:none;display:inline-block;}.op_zx_illness_open span{font-size:13px;color:#008000;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("zx_illness",function(){A.init(function(){var t=this,e=A.baidu,f=container.getElementsByTagName("label"),g=t.qq("op_zx_illness_sex"),p=t.qq("op_zx_illness_age"),C=t.qq("op_zx_illness_sign"),w=t.qq("op_zx_illness_info"),h=g.getElementsByTagName("input"),z=p.getElementsByTagName("input"),b=g.getElementsByTagName("label"),q=p.getElementsByTagName("label"),c=t.qq("op_zx_illness_no"),d=t.qq("op_zx_illness_bad"),v=t.qq("op_zx_illness_mainlink"),s=["女","男"],u=["婴儿","孕妇","老人","其他","幼儿","儿童","产妇"],i=null,r=null,l=[];var y=false;if(t.data.sex!=""){i=s[t.data.sex]}if(t.data.age!=""){r=u[t.data.age]}e.each(g.getElementsByTagName("input"),function(E){e.event.on(E,"click",function(){i=E.value;o();a();if(i=="男"){if(z[3]){z[3].disabled=true}if(z[4]){z[4].disabled=true}if(q[3]){q[3].style.color="gray"}if(q[4]){q[4].style.color="gray"}}else{for(var F=0;F<z.length;F++){if(z[F]){z[F].disabled=false}if(q[F]){q[F].style.color="#000"}}}})});e.each(p.getElementsByTagName("input"),function(E){e.event.on(E,"click",function(){r=E.value;o();a();if(r=="孕妇"||r=="产妇"){h[2].disabled=true;b[2].style.color="gray"}else{for(var F=0;F<h.length;F++){h[F].disabled=false;b[F].style.color="#000"}}})});e.each(C.getElementsByTagName("input"),function(E){e.event.on(E,"click",function(){if(E.getAttribute("data-flag")==1){E.setAttribute("data-flag",0)}else{E.setAttribute("data-flag",1)}o();a()})});function o(){var F="http://opendata.baidu.com/api.php?query=#{0}&lb=#{1}&SEX_=#{2}&AGE_=#{3}&resource_id=#{4}&ie=utf8&oe=utf-8&from_mid=0&t=#{5}",G=k().join(","),E=n();e.sio.callByServer(e.format(F,encodeURIComponent(t.data.originQuery),encodeURIComponent(G),encodeURIComponent(i),encodeURIComponent(r),t.data.srcid,(new Date().getTime())),function(H){if(y){return}if(H.data[0]&&H.data[0].result){B(w);j(c);j(d);w.innerHTML=D(H.data[0].result);e.event.on(t.qq("op_zx_illness_morelink"),"click",a)}else{j(w);j(d);B(c,E)}},{queryField:"cb",charset:"utf-8",timeOut:6000,onfailure:function(){B(d,E);j(w);j(c)}})}function D(H){var E=H.length,G=[];for(var F=0;F<E&&F<3;F++){G=G.concat([\'<div><span class="op_zx_illness_infotitle"><a class="op_zx_illness_infoB" hidefocus="true" target="_blank" href="\',H[F].loc,\'" title="\',H[F].title,\'">\',x(H[F].title),\'</a></span><span class="op_zx_illness_infosign">症状：\',x(H[F].tag),\'</span><span class="op_zx_illness_site"><a target="_blank" hidefocus="true" href="\',H[F].from?H[F].from:"http://www.haodf.com/",\'">\',H[F].fromsite?H[F].fromsite:"好大夫在线","</a></span></div>"])}G.push(\'<div><a class="op_zx_illness_morelink" target="_blank" href="javascript:;">查看更多相关结果<b>&gt;&gt;</b></a></div>\');return G.join("")}e.event.on(d.getElementsByTagName("a")[0],"click",function(){o()});function k(){sign=[];e.each(C.getElementsByTagName("input"),function(E){if(E.getAttribute("data-flag")==1){sign.push(E.getAttribute("data-key"))}});return sign}e.each(f,function(E){e.event.on(E,"click",function(){m(E)})});function m(E){var F=E.previousSibling;F.click()}function n(){return Math.max.apply(null,[w.offsetHeight,c.offsetHeight,d.offsetHeight])-1}function B(F,E){if(E){F.style.height=E+"px"}F.style.display=""}function j(E){E.style.display="none"}function x(G){var E=sign.length;for(var F=0;F<E;F++){G=G.replace(sign[F],"<em>"+sign[F]+"</em>")}return G}function a(){var F="http://opendata.baidu.com/zhengzhuang/s?rn=10&p=mini&ie=utf-8&oe=utf-8&wd="+encodeURIComponent(t.data.originQuery)+"&AGE_="+encodeURIComponent(r)+"&SEX_="+encodeURIComponent(i)+"&lb="+encodeURIComponent(k());v.href=F;var E=t.qq("op_zx_illness_morelink");if(E){E.href=F}}a();this.dispose=function(){if(!y){y=true}}})});';   // js字串，不含<script标签
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
