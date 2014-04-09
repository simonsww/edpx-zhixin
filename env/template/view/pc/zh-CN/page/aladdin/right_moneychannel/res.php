<?php 
  class CssJs_Util_right_moneychannel
   {
      private static $cssStr = '.opr-moneychannel-title{position:relative;}.opr-moneychannel-title a{position:absolute;right:0;top:0;z-index:2;font-size:13px;font-weight:normal;}.opr-moneychannel-channel{position:relative;}.op-yaohao-time-dropdown-container{width:213px;}.opr-moneychannel-selectval{width:122px;_float:left;float:left;}.opr-moneychannel-selectlabel{float:left;height:24px;line-height:24px;padding-left:4px;color:#666;border-right:1px #bbb solid;}.opr-moneychannel-money{_zoom:1;float:left;}.opr-moneychannel-money label{float:left;height:22px;line-height:22px;padding-top:2px;color:#666;border-right:1px #bbb solid;}.opr-moneychannel-money .opr-moneychannel-money-input{width:122px;height:22px;line-height:22px \\9;outline:none;_float:left;color:#bbb;float:left;padding-top:0;}.container_l .opr-moneychannel-money-note{color:#e63232;height:22px;line-height:22px;_line-height:24px;float:left;}.container_s .opr-moneychannel-money-note{color:#e63232;white-space:nowrap;float:left;float:none \\9;}.opr-moneychannel-tip{color:#666;line-height:22px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_moneychannel",function(){A.setup(function(){A.uiPrefix="http://fedev.baidu.com/~subei/ui/";var g=this,l;var b=g.find(".opr-moneychannel-money-input")[0],h=g.find(".opr-moneychannel-money-note")[0],i=g.find(".opr-moneychannel-submit").eq(0),e=g.data.btnurl,c=g.find(".opr-moneychannel-donation")[0],j=g.find("opr-moneychannel-donate")[0],f=g.find(".opr-moneychannel-goodsname")[0],d=g.find(".opr-moneychannel-spno")[0],k=g.find("opr-moneychannel-returl")[0],a=g.find("opr-moneychannel-source")[0];domd=g.find(".op-yaohao-dropdown")[0];A.use("dropdown21",function(){l=A.ui.dropdown21(domd,{onchange:function(){var q=g.find(".opr-moneychannel-selectval")[0];var o=q.innerHTML;var n=g.find(".opr-moneychannel-select-li");for(var p=0;p<n.length;p++){if(o==n[p].innerHTML){var m=n[p].getAttribute("data-no");q.setAttribute("data-no",m);f.value=o+"-爱心捐款";d.value=m;break}}}})});b.onfocus=function(){if(b.value=="请输入捐款金额"){b.value="";b.style.color="#000"}};b.onblur=function(){if(b.value==""){b.value="请输入捐款金额";b.style.color="#bbb"}};i.on("click",function(){if(b.value===""||b.value==="请输入捐款金额"||b.value==0){h.innerHTML="请输入捐款金额";return}if(!/^\\d+(?:\\.\\d{1,2})?$/.test(b.value)){h.innerHTML="请输入正确的捐款金额";return}if(b.value>=10000000.01){h.innerHTML="超过金额上限，请重新输入";return}c.submit();h.innerHTML=""});this.dispose=function(){l&&l.dispose&&l.dispose()}})});';   // js字串，不含<script标签
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
