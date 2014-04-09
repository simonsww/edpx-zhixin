<?php 
  class CssJs_Util_recharge03
   {
      private static $cssStr = '.op_recharge03{width:265px;border:1px solid #c3d9ff;font-size:14px;margin-top:8px;padding-bottom:5px;}.op_recharge03 h3{background:#e8eef7 url(http://www.baidu.com/aladdin/img/safe/safetip.gif) no-repeat 10px 6px;color:#6fba2c;font-size:13px;font-weight:bold;padding:5px 10px 5px 30px;margin:0;}.op_recharge03_table{margin:5px 5px 0;}.op_recharge03 td{font-family:"宋体";font-size:13px;padding-left:5px;height:28px;}.op_recharge03_sub{width:81px;height:24px;background:transparent url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat -100px 0;float:left;text-align:center;line-height:24px;color:#000;text-decoration:none;margin:0 5px 0 0;cursor:pointer;}.op_recharge03_sub:hover,.op_recharge03_sub:active,.op_recharge03_sub:focus{background:transparent url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat 0 0;}.op_recharge03_cc1{margin-top:5px;}.op_recharge03_cc1 span{color:#008000;font-size:12px;}.op_recharge03_cc1 a{color:#666;font-size:12px;}.op_recharge03_table input{width:150px;height:22px;}.op_recharge03_tip{color:#ccc;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("recharge03",function(){A.setup(function(){var d=this;function e(c){return String(c).replace(/[\\uFF01-\\uFF5E]/g,function(k){return String.fromCharCode(k.charCodeAt(0)-65248)}).replace(/\\u3000/g," ")}function g(c){var c=e(c);c=c.match(/\\d+/g);if(c!=null){c=c.toString()}else{c=""}if(c.length>11){c=c.substring(0,11)}d.find(".op_recharge03_username")[0].value=c}function b(){var c=d.find(".op_recharge03_price")[0];var k=d.find(".op_rechage01_sell")[0];k.innerHTML=c.value}function i(){var c=d.find(".op_recharge03_username")[0].value;if(c.length>30){return c.substring(0,30)}else{return c}}function a(){var l=d.find(".op_recharge03_price")[0];var k=l.options[l.selectedIndex].text;k=k.substring(0,k.length-1);d.find(".price_hidden")[0].value=k;var n=d.find(".op_recharge03_username")[0].value;var c=e(n);c=c.match(/\\d+/g);if(c){var m=c.join("");if(m.length>11){m=m.substring(0,11)}d.find(".num_hidden")[0].value=m}else{d.find(".num_hidden")[0].value=""}document.op_recharge03.submit();return true}d.find(".op_recharge03_price:first").on("change",b);d.find(".op_recharge03_sub:first").on("click",function(){a();return false});d.find(".op_op_recharge03_form:first").on("submit",function(){a();return false});var h=d.find(".op_recharge03_username")[0];var j=d.data.op_recharge03_tip_text,f="op_recharge03_username op_recharge03_tip";h.onfocus=function(){h.className="op_recharge03_username";if(h.value==j){h.value=""}};h.onblur=function(){if(h.value==""){h.value=j;h.className=f}}})});';   // js字串，不含<script标签
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
