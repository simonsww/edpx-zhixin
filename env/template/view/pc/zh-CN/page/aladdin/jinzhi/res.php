<?php 
  class CssJs_Util_jinzhi
   {
      private static $cssStr = '.op_jinzhi_sub_title{font-family:"微软雅黑" arial;font-size:1.23em;}.op_jinzhi_result{font-family:"微软雅黑" arial;font-size:1.69em;word-break:break-all;word-wrap:break-word;}.op_jinzhi_table .c-dropdown2{width:120px;}.op_jinzhi_table td{vertical-align:top;}.op_jinzhi_table td.op_jinzhi_td_sp{vertical-align:middle;font-weight:bold;}.op_jinzhi_errors span,.op_jinzhi_roundingtip{display:none;color:#f00;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("jinzhi",function(){A.setup(function(){var t=this;var h=!-[1,]&&!window.XMLHttpRequest;var j=t.find(".op_jinzhi_exchange")[0];var q=t.find(".op_jinzhi_txt")[0];var x=t.find(".op_jinzhi_txt_e")[0];var p=t.find(".op_jinzhi_from_e")[0];var b=t.find(".op_jinzhi_to_e")[0];var o=t.find(".op_jinzhi_result")[0];var z=t.find(".op_jinzhi_rtxt")[0];var y=t.find(".op_jinzhi_roundingtip")[0];if(h){try{document.execCommand("BackgroundImageCache",false,true)}catch(f){}}var s=t.find(".op_jinzhi_from")[0];var B=t.find(".op_jinzhi_to")[0];var e={value:t.data.currency1};var d={value:t.data.currency2};var g=[];var m=[];var c=["二进制|二进制","三进制|三进制","四进制|四进制","五进制|五进制","六进制|六进制","七进制|七进制","八进制|八进制","九进制|九进制","十进制|十进制","十一进制|十一进制","十二进制|十二进制","十三进制|十三进制","十四进制|十四进制","十五进制|十五进制","十六进制|十六进制","十七进制|十七进制","十八进制|十八进制","十九进制|十九进制","二十进制|二十进制","二十一进制|二十一进制","二十二进制|二十二进制","二十三进制|二十三进制","二十四进制|二十四进制","二十五进制|二十五进制","二十六进制|二十六进制","二十七进制|二十七进制","二十八进制|二十八进制","二十九进制|二十九进制","三十进制|三十进制","三十一进制|三十一进制","三十二进制|三十二进制","三十三进制|三十三进制","三十四进制|三十四进制","三十五进制|三十五进制","三十六进制|三十六进制"];for(var v=0,w=c.length;v<w;v++){var r=c[v].split("|");g.push([\'<li class="c-dropdown2-option" data-value="\',r[0],\'"\',t.data.currency1===r[1]?\' data-selected="selected"\':"",">",r[1],"</li>"].join(""));m.push([\'<li class="c-dropdown2-option" data-value="\',r[0],\'"\',t.data.currency2===r[1]?\' data-selected="selected"\':"",">",r[1],"</li>"].join(""))}s.getElementsByTagName("ul")[0].innerHTML=g.join("");B.getElementsByTagName("ul")[0].innerHTML=m.join("");var a={};a.getData=function(i){y.style.display=i.isRounding?"block":"none";z.style.display="none";z.innerHTML="";o.innerHTML=[i.originNumber,"(",i.jinzhiFrom,")"," = ",i.finalNumber,"(",i.jinzhiTo,")"].join("")};a.errorData=function(){y.style.display="none";z.style.display="inline";z.innerHTML=q.value+"并非"+e.getValue()+"的有效数值，请重新输入"};function k(i){var C=6013;t.ajax(i,C,{success:function(D){if(D&&D[0]){a.getData(D[0])}else{a.errorData()}},error:function(){a.errorData()},timeout:function(){a.errorData()}})}function u(C){var i=new RegExp("[\\\\s\\\\t\\\\xa0\\\\u3000]+","g");return C.replace(i,"")}function n(F,E,C,i){var D=false;if(F.getValue()==""){C.innerHTML="请选择转换类型";C.style.display="inline";z.style.display="none";z.innerHTML=""}else{if(F.getValue()===E.getValue()){C.innerHTML="请选择不同的进制类型";C.style.display="inline";z.style.display="none";z.innerHTML=""}else{C.style.display="none";if(E.getValue()!=""){i.style.display="none"}D=true}}return D}function l(E,C){var i=true;var D=u(E.value);if(!D){E.value=D=1}if(!(new RegExp("^([0-9a-zA-Z.-])+\\x24")).test($.trim(E.value))){C.innerHTML="请输入有效字符";C.style.display="inline";z.style.display="none";z.innerHTML="";i=false}else{C.style.display="none"}return i}$(q).blur(function(){l(q,x)});$(j).click(function(){var D=l(q,x),C=n(e,d,p,b),i=n(d,e,b,p);if(D&&C&&i){var F=$.trim(q.value);var E=F+e.getValue()+"转换为"+d.getValue();k(E)}});A.use("dropdown21",function(){e=A.ui.dropdown21(s,{onchange:function(i){n(e,d,p,b)}});d=A.ui.dropdown21(B,{onchange:function(i){n(d,e,b,p)}})});this.dispose=function(){e&&e.dispose&&e.dispose();d&&d.dispose&&d.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'tool,btn,input,dropdown2';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
