<?php 
  class CssJs_Util_merchant
   {
      private static $cssStr = '.op_merchant_moreLink{margin-right:12px;margin-top:6px;}.op_merchant_bordSpan{font-weight:bold;margin-top:10px;float:left;}.op_merchant_hide{display:none;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("merchant",function(){A.init(function(){var e=this;var k=[-1,-1,-1];var g=[],m=e.data.tag,h=e.data;for(var c=0,f=m.length;c<f;c++){if(!h[m[c].key]){h[m[c].key]=[]}h[m[c].key].push(m[c].type)}function j(o,i,p){var n=o.length,q=i;p=p|0;if(p<0){p=Math.max(0,n+p)}for(;p<n;p++){if(p in o&&o[p]===i){return p}}return -1}function b(n,i){return(j(n,i)>=0)}function a(i){if("string"==typeof i||i instanceof String){return document.getElementById(i)}else{if(i&&i.nodeName&&(i.nodeType==1||i.nodeType==9)){return i}}return null}function d(i){i=a(i);while(i.firstChild){i.removeChild(i.firstChild)}return i}function l(E){var C=e.data.projectItems,y=0;var u,t,s,r,p,D,B,o,n;for(var w=0,x=e.data.classify.length;w<x;w++){var z=e.data.classify[w];g[w]=E[w]<0?"":e.data[z][E[w]]}B=document.createDocumentFragment();for(var w=0,x=C.length;w<x;w++){for(var v=0,q=e.data.classify.length;v<q;v++){if(g[v]!==""&&!b(C[w]["tags"].split(","),g[v])){break}}if(v!==e.data.classify.length){continue}D=document.createElement("tr");u=document.createElement("td");t=document.createElement("td");s=document.createElement("td");r=document.createElement("td");o=document.createElement("a");n=document.createElement("a");o.href=C[w]["url"];o.target="_blank";o.style.cssText="color:#0000CC;";o.appendChild(document.createTextNode(C[w]["name"]));u.appendChild(o);t.style.cssText="color:#FF8A00;";t.appendChild(document.createTextNode(C[w]["amount"]));s.appendChild(document.createTextNode(C[w]["area"]));n.href=C[w]["consultUrl"];n.target="_blank";n.className="c-btn c-btn-mini";n.appendChild(document.createTextNode("我要留言"));r.appendChild(n);D.appendChild(u);D.appendChild(t);D.appendChild(s);D.appendChild(r);B.appendChild(D);if(++y==5){break}}d($(".op_tbody")[0]);if(y===0){D=document.createElement("tr");p=document.createElement("td");p.colSpan=4;p.appendChild(document.createTextNode("抱歉，没有找到符合条件的项目，请尝试其它分类。"));D.appendChild(p);$(".op_tbody")[0].appendChild(D)}else{$(".op_tbody")[0].appendChild(B)}}A.use("tabs5",function(){for(var o=0,n=e.data.classify.length;o<n;o++){A.ui.tabs5($(".op_merchant_tabs")[o],{onChange:function(){k[j($(".op_merchant_tabs"),this.panel)]=this.current-1;l(k)}})}})})});';   // js字串，不含<script标签
      private static $uiList = 'table,tabs,btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
