<?php 
  class CssJs_Util_zx_illness2
   {
      private static $cssStr = '.op_zx_illness2_main{padding-bottom:2px;border-bottom:1px solid #f5f5f5;overflow:hidden;}.op_zx_illness2_condition{width:100%;}.op_zx_illness2_condition td{padding:3px 0;font-size:.7em;}.op_zx_illness2_condition input{margin:0 3px 0;_margin-top:-3px;}.op_zx_illness2_condition input,.op_zx_illness2_condition label{vertical-align:middle;}.op_zx_illness2_sex label{margin-right:16px;*margin-right:10px;}.op_zx_illness2_age label{margin-right:16px;*margin-right:10px;}.op_zx_illness2_sign label{margin-right:16px;*margin-right:10px;}.op_zx_illness2_sign span{white-space:nowrap;display:inline-block;}.op_zx_illness2_info div{height:20px;line-height:20px;}.op_zx_illness2_info a{color:#666;outline:none;}.op_zx_illness2_info a.op_zx_illness2_infoB{color:#00c;}.op_zx_illness2_info a:hover em{text-decoration:underline;}.op_zx_illness2_split{margin:0 3px;}.op_zx_illness2_infotitle{width:230px;height:20px;line-height:20px;text-overflow:ellipsis;overflow:hidden;white-space:nowrap;display:inline-block;margin-right:10px;}.op_zx_illness2_infosign{width:225px;height:20px;line-height:20px;text-overflow:ellipsis;overflow:hidden;white-space:nowrap;display:inline-block;margin-right:10px;}.op_zx_illness2_open{margin-top:2px;clear:left;float:none;display:inline-block;}.op_zx_illness2_open span{color:#008000;}.op_zx_illness2_infomain_t{padding-top:5px;font-weight:bold;}.op_zx_illness2_dis{margin-right:8px;text-decoration:none;}.op_zx_illness2_note{padding-top:5px;font-weight:bold;}.op_zx_illness2_note_btn,.op_zx_illness2_note_btn:link{display:inline-block;padding:0 6px;margin-right:8px;height:24px;line-height:24px;font-weight:normal;border:1px solid #bdc0c3;text-decoration:none;background:#fafafa;color:#333;}.op_zx_illness2_note_btn:hover{border-color:#279cf1;background:#f5f5f5;background:-moz-linear-gradient(top,#fff,#ececec);background:-webkit-gradient(linear,0 0,0 bottom,from(#fff),to(#ececec));}.op_zx_illness2_item{margin-right:10px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("zx_illness2",function(){A.init(function(){var r=this,w=r.find("label"),o=r.find(".op_zx_illness2_sex").eq(0),p=r.find(".op_zx_illness2_age").eq(0),v=r.find(".op_zx_illness2_sign").eq(0),q=r.find(".op_zx_illness2_info").eq(0),d=o.get(0).options,e=p.get(0).options,x=r.find(".op_zx_illness2_no").eq(0),i=r.find(".op_zx_illness2_bad").eq(0),b=r.find(".op_zx_illness2_mainlink").eq(0),f=0,n=0,j=[];var t=false;if(r.data.sex!=""){f=r.data.sex}if(r.data.age!=""){n=r.data.age}b.on("click",function(){a(this)});o.on("change",function(){f=this.value;m();if(f=="1"){e[3]&&(e[3].disabled=true);e[4]&&(e[4].disabled=true)}else{for(var z=0;z<e.length;z++){e[z]&&(e[z].disabled=false)}}});p.on("change",function(){n=this.value;m();if((n=="1"||n=="6")&&d[1]){d[1].disabled=true}else{for(var z=0;z<d.length;z++){e[z]&&(d[z].disabled=false)}}});v.find("input").click(function(){if($(this).attr("data-flag")==1){$(this).attr("data-flag",0)}else{$(this).attr("data-flag",1)}m()});function m(){var B="http://zhidao.baidu.com/search/api/symptom?query=#{0}&tosymptom=1&ie=utf-8&symptom_query=#{1}&sex=#{2}&grouptype=#{3}&t=#{5}",C=h().join("_"),z=l();$.ajax({url:$.format(B,encodeURIComponent(r.data.originQuery),encodeURIComponent(C),encodeURIComponent(f),encodeURIComponent(n),r.data.srcid,(new Date().getTime())),dataType:"jsonp",timeout:6000,jsonp:"cb",success:function(D){if(t){return}if(D.data[0]&&D.data[0].result){u(q);x.css("display","none");i.css("display","none");q.html(y(D.data[0]))}else{q.css("display","none");i.css("display","none");u(x,z)}},error:function(){u(i,z);q.css("display","none");x.css("display","none")}})}function y(G){var E=G.result,z=E.length,B=("disease" in G&&G.disease instanceof Array)?G.disease:null,D=[];if(B){D.push(\'<div class="op_zx_illness2_infomain_t">需要关注的疾病：</div><div>\');for(var C=0;C<B.length;C++){var F=B[C];D.push(\'<a target="_blank" class="op_zx_illness2_infoB op_zx_illness2_dis" href="\'+("url" in F?F.url:("http://www.baidu.com/s?wd="+F.name))+\'">\'+F.name+"</a>")}D.push("</div>")}D.push(\'<div class="op_zx_illness2_infomain_t">其他患者在问：</div>\');for(var C=0;C<z&&C<3;C++){D=D.concat([\'<div><span class="op_zx_illness2_infotitle"><a class="op_zx_illness2_infoB" hidefocus="true" target="_blank" href="\',E[C].loc,\'" title="\',E[C].title,\'">\',c(s(E[C].title),34),\'</a></span><span class="op_zx_illness2_infosign">症状：\',c(s(E[C].tag),26),"</span></div>"])}return D.join("")}i.find("a:first").click(m);function h(){sign=[];v.find("input").each(function(z,B){if(B.getAttribute("data-flag")==1){sign.push(B.getAttribute("data-key"))}});return sign}w.click(function(){k($(this).get(0))});function k(z){var B=z.previousSibling;B.click()}function l(){return Math.max.apply(null,[q.get(0).offsetHeight,x.get(0).offsetHeight,i.get(0).offsetHeight])-1}function u(B,z){if(z){B.css("height",z)}B.css("display","")}function g(z){z.style.display="none"}function s(C){var z=sign.length;for(var B=0;B<z;B++){C=C.replace(sign[B],"<em>"+sign[B]+"</em>")}return C}function a(B){var z="http://zhidao.baidu.com/search?rn=10&pn=0&fr=ps&ie=utf-8&tosymptom=1&word="+encodeURIComponent(r.data.originQuery)+"&grouptype="+encodeURIComponent(n)+"&sex="+encodeURIComponent(f)+"&symptom_query="+encodeURIComponent(h().join("_"));B.href=z}function c(E,B){if(B<$.getByteLength(E.replace(/(<em>|<\\/em>)/g,""))){var D=[];E=E.replace(/<em>.*?<\\/em>/g,function(H,G){var F={start:G,end:G+H.length-9};D.push(F);return H.substring(4,H.length-5)});var C=$.subByte(E,B-3,"...");for(var z=0;z<D.length;z++){if(D[z].start>=C.length-3){break}if(D[z].end>C.length-3){D[z].end=C.length-3}C=C.substring(0,D[z].start)+"<em>"+C.substring(D[z].start,D[z].end)+"</em>"+C.substring(D[z].end)}return C}return E}this.dispose=function(){if(!t){t=true}}})});';   // js字串，不含<script标签
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
