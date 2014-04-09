<?php 
  class CssJs_Util_checkpoint
   {
      private static $cssStr = '.op_checkpoint_table td{padding:0;margin:0;border:0;}.op_checkpoint_tip{margin:5px 0 0;font-weight:bold;}.op_checkpoint_more{font-family:simsun;display:none;}.op_checkpoint_msg{width:100%;font-size:12px;color:#333;text-align:center;display:none;background-color:#fff;}.op_checkpoint_table_left{text-align:left;width:230px;}.op_checkpoint_kindly_reminder{color:#666;padding-top:8px;font-size:12px;display:none;}.op_checkpoint_prescore{color:#999;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("checkpoint",function(){A.setup(function(){var t=this;var w=false;var l=null;var a=t.find(".op_checkpoint_more")[0];var h=t.find(".op_checkpoint_table_box")[0];var k=t.find(".op_checkpoint_link")[0];if(k){var v=k.href}var c=t.find(".op_checkpoint_kindly_reminder")[0];var g=t.find(".op_checkpoint_table_container")[0];var i=t.find(".op_checkpoint_btn")[0];var e=t.find(".op_checkpoint_container")[0];var u=t.find(".op_checkpoint_prescore")[0];var n=t.find(".op_checkpoint_select_provid")[0];var b=t.find(".op_checkpoint_select_wl")[0];var p=t.find(".op_checkpoint_select_batch")[0];var s=t.find(".op_checkpoint_select_col_provid")[0];var d=t.find(".op_checkpoint_msg")[0];var j,f,r,o;A.use("dropdown21",function(){j=A.ui.dropdown21(n);f=A.ui.dropdown21(b);r=A.ui.dropdown21(p);o=A.ui.dropdown21(s)});u.onfocus=function(){if(u.value==u.defaultValue){u.value=""}u.style.color="#333"};u.onblur=function(){if(u.value==""){u.value=u.defaultValue;u.style.color="#999"}};function q(y){var x=100;h.innerHTML="";if(d){d.style.top="0px";d.style.height=x+"px";d.style.lineHeight=x+"px";d.innerHTML=y;d.style.display="block"}if(a){a.style.display="none"}}function m(E,x,B){var z=[],D=E.split("");B=B||"…";for(var C=0,y=D.length;C<y;C++){if(D[C].charCodeAt(0)>255){z.push("*")}z.push(D[C])}if(x&&x>0&&z.length>x){D=z.join("").substring(0,x-1).replace(/\\*/g,"")+B}else{return E}return D}i.onclick=function(){var C=$.trim(u.value);var y=$.trim(j.getText());var D=$.trim(f.getText());var x=$.trim(r.getText());var E=$.trim(o.getText());g.style.marginTop="8px";if(u.value===""||u.value==="请输入分数"){q("请输入分数，再进行查询");return false}var B=/^[1-9]\\d{0,2}$/;var z=parseInt(C,10);C=C.replace(/^\\s*|\\s*&/,"");if(isNaN(z)||z<0||z>=1000||!B.test(C)){q("请输入正确的分数，再进行查询");if(c){c.style.display="none"}return false}if(j.getValue()==0){q("请选择考生所在地，再进行查询");return false}l&&clearTimeout(l);l=setTimeout(function(){q("数据加载中,请稍后")},500);var F={rn:5,scoreone:"0_"+C,scoretwo:"0_"+C,scorethree:"0_"+C,scorefour:"0_"+C,subject:D,batch:x,oe:"utf-8",from_mid:1};if(o.getValue()!=="0"){F.schoolarea=E}t.ajax(y,6712,{params:F,success:function(J){if(w){return}l&&clearTimeout(l);if(J&&J.length>0){J=J[0];var H=J.disp_data;if(H&&H.length>0){var P=["高校","2013年","2012年","2011年","2010年"];var G=[];var L=false;for(var K=0,O;O=H[K];K++){if(O.scoreone&&parseInt(O.scoreone)){L=true;break}}var M=[\'<table class="c-table" cellspacing="0" cellpadding="0"><thead>\'];var N=false;for(var K=0,O;O=H[K];K++){if(L){if(K==0){M.push(\'<tr><th class="op_checkpoint_table_left">\'+(O.headschool||P[0])+"</th><th>"+(O.headone||P[1])+"</th><th>"+(O.headtwo||P[2])+"</th><th>"+(O.headfour||P[3])+\'</th></tr></thead><tbody class="op_checkpoint_table_tbody">\')}if((!parseInt(O.scoreone)||parseInt(O.scoreone)===0)&&(!parseInt(O.scoretwo)||parseInt(O.scoretwo)===0)&&(!parseInt(O.scorethree)||parseInt(O.scorethree)===0)){N=true}M.push(\'<tr><td class="op_checkpoint_table_left"><a href="\'+O.schoolurl+\'" target="_blank" title="\'+O.schoolname+\'">\'+m(O.schoolname,25)+"</a></td><td>"+O.scoreone+"</td><td>"+O.scoretwo+"</td><td>"+O.scorethree+"</td></tr>")}else{if(K==0){M.push(\'<tr><th class="op_checkpoint_table_left">\'+(O.headschool||P[0])+"</th><th>"+(O.headtwo||P[2])+"</th><th>"+(O.headthree||P[3])+"</th><th>"+(O.headfour||P[4])+\'</th></tr></thead><tbody class="op_checkpoint_table_tbody">\')}if((!parseInt(O.scoretwo)||parseInt(O.scoretwo)===0)&&(!parseInt(O.scorethree)||parseInt(O.scorethree)===0)&&(!parseInt(O.scorefour)||parseInt(O.scorefour)===0)){N=true}M.push(\'<tr><td class="op_checkpoint_table_left"><a href="\'+O.schoolurl+\'" target="_blank" title="\'+O.schoolname+\'">\'+m(O.schoolname,25)+"</a></td><td>"+O.scoretwo+"</td><td>"+O.scorethree+"</td><td>"+O.scorefour+"</td></tr>")}}M.push("</tbody></table>");if(N==true){q("暂无符合您的院校，建议更换批次和院校所在地")}else{h.innerHTML=M.join("");if(a){a.style.display="block"}d.style.display="none";if(c){c.style.display="block"}if(k){var I=v+u.value+"&provid="+$.trim(j.getValue())+"&wl="+$.trim(f.getValue());if($.trim(r.getValue())!=="00"){I+="&batch="+$.trim(r.getValue())}if($.trim(o.getValue())!=="0"){I+="&col_provid="+$.trim(o.getValue())}k.href=I}}}else{q("暂无符合您的院校，建议更换批次和院校所在地");l&&clearTimeout(l)}}}});return false};this.dispose=function(){clearTimeout(l);if(!w){w=true}j&&j.dispose&&j.dispose();f&&f.dispose&&f.dispose();r&&r.dispose&&r.dispose();o&&o.dispose&&o.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'table,btn,input,dropdown2';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
