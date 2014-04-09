<?php 
  class CssJs_Util_cee3
   {
      private static $cssStr = '.op_cee3_tb tfoot td{height:66px;*height:67px;}.op_cee3_local{display:inline-block;*vertical-align:middle;*padding-top:3px;padding-bottom:3px;width:100px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("cee3",function(){A.setup(function(){var m=this,q=m.data.selectedCity,g=m.find(".op_cee3_tb")[0],k=m.find(".op_cee3_local")[0],d=m.find(".op_cee3_empty_data")[0],c=[],s=m.data.scoreline,h=[],b=[],p,o,e,t=false;p=q||"北京";for(var n=0,j=s.length;n<j;n++){if(n>799){break}var a=s[n]["local"];if(!b[a]){var r={text:a,value:a};if(a==p){r.selected=1;t=true}h.push(r);b[a]=[]}b[a].push(s[n])}if(!t){p=h[0].value}function f(z,B){if(c[z]){$(c[z]).show();return}var v=document.createElement("tbody"),y=document.createElement("div"),x=[];for(var w=0,u=B.length;w<u;w++){x.push("<tr>");for(index in B[w]){if(B[w].hasOwnProperty(index)){if(index!="local"){x.push("<td>"+B[w][index]+"</td>")}}}x.push("</tr>")}y.innerHTML="<table><tbody>"+x.join("")+"<tbody></table>";v=y.firstChild.firstChild;c[z]=v;g.appendChild(v)}f(p,b[p]);A.use("dropdown21",function(){o=A.ui.dropdown21(h,{appendTo:k,onchange:function(i){p=i.item.value;oldCity=i.oldItem.value;f(p,b[p]);$(c[oldCity]).hide()}})});this.dispose=function(){o&&o.dispose&&o.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'table,dropdown2';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
