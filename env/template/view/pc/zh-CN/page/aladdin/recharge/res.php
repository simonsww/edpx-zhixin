<?php 
  class CssJs_Util_recharge
   {
      private static $cssStr = '.op_recharge_safe{font-weight:bold;color:#4bad37;}.op_recharge_safetip{display:inline-block;margin-left:5px;}.op_recharge_boder{border-top:0;border-left:0;padding:0;}.op_recharge_content{border-left:1px solid #dedede;padding:2px 0 12px 0;}.op_recharge_table{border-collapse:collapse;width:100%;}.op_recharge_table td{padding-top:10px;}td.op_recharge_tdintr{width:60px;padding-right:10px;text-align:right;}td.op_recharge_tdbtn{padding-top:6px;}.op_recharge_tdcolor,.op_recharge_tdcolor2,.op_recharge_tdcolor3{color:#f70;font-weight:bold;}.op_recharge_input{float:left;line-height:24px;color:#999;cursor:pointer;}.op_recharge_tip{float:left;display:block;line-height:26px;padding-left:10px;color:#f24444;}.op_recharge_hidden{display:none;}.op_recharge_color1,.op_recharge_color2,.op_recharge_color3{color:#fff;}.op_recharge_typedown,.op_recharge_moneydown,.op_recharge_typedown2,.op_recharge_moneydown2{width:180px;float:left;}.op_recharge_telico{display:inline-block;width:14px;height:14px;vertical-align:text-bottom;font-style:normal;overflow:hidden;background:url(http://www.baidu.com/aladdin/img/recharge/tel.gif) no-repeat 0 0;float:right;margin-top:6px;}.op_recharge_moneyc li{float:left;padding-right:10px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("recharge",function(){A.setup(function(){var T=A.baidu,_this=this,typeDropDown=_this.find(".op_recharge_typedown")[0],moneyDropDown=_this.find(".op_recharge_moneydown")[0],typeDropDown2=_this.find(".op_recharge_typedown2")[0],moneyDropDown2=_this.find(".op_recharge_moneydown2")[0],tdV=_this.find(".op_recharge_tdcolor")[0],tdV2=_this.find(".op_recharge_tdcolor2")[0],tdV3=_this.find(".op_recharge_tdcolor3")[0],xymony1=eval(_this.data.xymony1),xytype1=eval(_this.data.xytype1),xymony2=eval(_this.data.xymony2),xytype2=eval(_this.data.xytype2),btn1=_this.find(".op_recharge_color1")[0],btn2=_this.find(".op_recharge_color2")[0],btn3=_this.find(".op_recharge_color3")[0],rechargeForm1=_this.find(".op_recharge1")[0],rechargeForm2=_this.find(".op_recharge2")[0],rechargeForm3=_this.find(".op_recharge3")[0],price1=_this.find(".op_recharge_price1")[0],price2=_this.find(".op_recharge_price2")[0],price3=_this.find(".op_recharge_moneyc:first li"),phone=_this.find(".op_recharge_phone")[0],phonetip=_this.find(".op_recharge_phonetip")[0],error=_this.find(".op_recharge_error"),dropdownA1,dropdownA2,dropdownB1,dropdownB2,typeSlected;var flagB=false;A.use("tabs5",function(){var tabs=A.ui.tabs5(_this.find(".c-tabs")[0])});A.use("dropdown21",function(){if(_this.data.tabs>2){dropdownA1=A.ui.dropdown21(typeDropDown,{onchange:function(){dropdownA2.removeAll();moneyDom(dropdownA1,dropdownA2,xymony1,tdV,price1)}});typeDom(dropdownA1,xytype1);dropdownA1.setName(_this.data.select1);dropdownA2=A.ui.dropdown21(moneyDropDown,{onchange:function(){tdV.innerHTML=dropdownA2.getValue();price1.value=dropdownA2.getText()}});moneyDom(dropdownA1,dropdownA2,xymony1,tdV,price1)}dropdownB1=A.ui.dropdown21(typeDropDown2,{onchange:function(){dropdownB2.removeAll();moneyDom(dropdownB1,dropdownB2,xymony2,tdV2,price2)}});typeDom(dropdownB1,xytype2);dropdownB1.setName(_this.data.select1);dropdownB2=A.ui.dropdown21(moneyDropDown2,{onchange:function(){tdV2.innerHTML=dropdownB2.getValue();price2.value=dropdownB2.getText()}});moneyDom(dropdownB1,dropdownB2,xymony2,tdV2,price2)});function typeDom(dropdownType,typeObj){var addDataAraay=[];$.each(typeObj,function(i,o){addDataAraay.push({value:o.vid,text:o.text,selected:o.selected||""})});dropdownType.add(addDataAraay)}function moneyDom(dropdownType,dropdownMoney,typeObj,tdv,price){var addDataAraay=[];$.each(typeObj,function(i,o){if(o.vid==dropdownType.getValue()){addDataAraay.push({value:o.v,text:o.c,selected:o.selected||""})}});dropdownMoney.add(addDataAraay);price.value=dropdownMoney.getText();tdv.innerHTML=dropdownMoney.getValue()}$.each(price3,function(i,o){$(o).click(function(){tdV3.innerHTML=$(o).attr("data-value")})});$(btn1).click(function(){if(_this.data.system){$(error[0]).removeClass("op_recharge_hidden");return false}rechargeForm1.submit()});$(btn2).click(function(){if(_this.data.system){$(error[1]).removeClass("op_recharge_hidden");return false}rechargeForm2.submit()});$(btn3).click(function(){if(/^\\d{11}$/.test(phone.value)){if(_this.data.system){$(error[2]).removeClass("op_recharge_hidden");return false}rechargeForm3.submit()}else{$(phonetip).removeClass("op_recharge_hidden");return false}});this.dispose=function(){dropdownA1&&dropdownA1.dispose&&dropdownA1.dispose();dropdownA2&&dropdownA2.dispose&&dropdownA2.dispose();dropdownB1&&dropdownB1.dispose&&dropdownB1.dispose();dropdownB2&&dropdownB2.dispose&&dropdownB2.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'tabs,input,btn,dropdown2';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
