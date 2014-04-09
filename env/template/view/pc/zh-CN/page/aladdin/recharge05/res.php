<?php 
  class CssJs_Util_recharge05
   {
      private static $cssStr = '.op_recharge05{width:265px;border:1px solid #c3d9ff;margin-top:8px;padding-bottom:5px;}.op_recharge05 h3{background:#e8eef7 url(http://www.baidu.com/aladdin/img/safe/safetip.gif) no-repeat 10px 6px;color:#6fba2c;font-size:1.08em;font-weight:bold;padding:5px 0;margin:0;text-align:center;}.op_recharge05 td{padding-left:10px;padding-top:10px;}.op_rechage05_value_class{color:#DC5901;font-weight:bold;}.op_recharge05_table input{width:150px;height:22px;}.op_recharge05_select,.op_recharge05_select2,.op_recharge05_select3{width:140px;margin:0;padding:2px 0;font-size:1em;}.op_recharge05 .op_name{color:#000;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("recharge05",function(){A.setup(function(){var e=this;var f="#eff4fd",o=this.data.op_recharge05_pricetext,p=this.data.op_recharge05_bold,c=this.data.op_recharge05_bolds;s=this.data.op_recharge05_s;var j;var n,m,i;var b=setTimeout(function(){n=e.find(".op_recharge05_select")[0];m=e.find(".op_recharge05_select2")[0];i=e.find(".op_recharge05_select3")[0];j=m.options[0].innerHTML;n.onchange=l;m.onchange=h;l();var q=n.options;for(var r=c;r<(p+c);r++){if(q[r]){q[r].style.background=f}}},1);function l(){var r=m.options;var q=n.options[n.selectedIndex].getAttribute("k");if(q=="-1"){g(m);k(m,j,false,false,true);d();return}else{if(r.length>0&&r[r.length-1].getAttribute("k")==q){a();return}}g(m);for(var t=0;t<s.length;t++){if(s[t]["i"]==q){k(m,s[t]["c"]+o,s[t]["v"],s[t]["s"])}}a()}function a(){h();i.style.display=""}function d(){i.style.display="none"}function h(){var q=e.find(".op_rechage05_value_class")[0];if(m.options.length==0){return}var r=m.options[m.selectedIndex];if(r.value){q.innerHTML=r.getAttribute("v")}}function g(r){var u=r.childNodes;for(var q=u.length,t=q-1;t>-1;t--){r.removeChild(u[t])}}function k(r,u,v,t,q){var w=document.createElement("option");r.appendChild(w);w.innerHTML=u;w.value=(q?"":parseInt(u));w.setAttribute("v",v);if(t){w.setAttribute("selected","selected")}}this.dispose=function(){clearTimeout(b)}})});';   // js字串，不含<script标签
      private static $uiList = 'btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
