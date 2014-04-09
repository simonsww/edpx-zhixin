<?php 
  class CssJs_Util_credit
   {
      private static $cssStr = '.op_credit_form_field div{float:left;padding:0 0 0 15px;}.op_credit_form_field label{line-height:26px;vertical-align:middle;}.op_credit_form_field b{font-weight:bold;}.op_credit_form_field span{position:relative;display:inline-block;}.op_credit_form_field input{vertical-align:middle;}.op_credit_form_field p{position:absolute;display:none;color:#fff;background:#d4443c;left:0;bottom:-26px;*bottom:-24px;width:154px;padding:0 5px;line-height:26px;}.op_credit_container th{border-top:1px solid #f3f3f3;}.op_credit_container td{padding-top:3px;padding-bottom:3px;}.op_credit_logo{width:28px;height:28px;vertical-align:middle;}.op_credit_hilight{color:#ff8a00;}.op_credit_links span{float:left;color:#666;}.op_credit_links a{float:right;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("credit",function(){A.setup(function(){var i=A.baidu,m=this;data=m.data;var c=m.find(".op_credit_money")[0],f=m.find(".op_credit_deadline")[0],e=m.find(".op_credit_tabidhidden")[0],b=m.find(".op_credit_moneytip"),p=m.find(".op_credit_deadlinetip")[0],d=m.find(".op_credit_form")[0],a=0.1,l=1,j=1000,o=360;var k={"65297":"1","65298":"2","65299":"3","65300":"4","65301":"5","65302":"6","65303":"7","65304":"8","65305":"9","65296":"0","65294":"."};A.use("tabs5",function(){var q=A.ui.tabs5(m.find(".c-tabs")[0],{onChange:function(){b.hide();$(p).hide();var r=data.tab[q.current];e.value=r.id;c.value=r.loanLimit;f.value=r.loanTerm}})});function h(r){var q=new RegExp("[\\\\s\\\\t\\\\xa0\\\\u3000]","g");return r.replace(q,"")}function g(q){return q.replace(/./g,function(s,r,u){var t=s.charCodeAt(0);if(typeof(k[t])!="undefined"){return k[t]}else{return s}})}function n(s,r,q,t){var u=s.value;u=h(u);u=g(u);if(!isNaN(u)){u=u*1;if((u>=r)&&(u<=q)){if(t){s.value=parseInt(u)}else{s.value=u}return true}return false}return false}$(c).focus(function(){b.hide()});$(c).blur(function(){if(!n(this,a,j,false)){b.css("display","block")}});$(f).focus(function(){$(p).hide()});$(f).blur(function(){if(!n(this,l,o,true)){p.style.display="block"}});m.find(".op_credit_submit").click(function(){var r=n(f,l,o,true),q=n(c,a,j,false);if(r&&q){d.submit()}return false})})});';   // js字串，不含<script标签
      private static $uiList = 'tabs,table,btn,input';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
