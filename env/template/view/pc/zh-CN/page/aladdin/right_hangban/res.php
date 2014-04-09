<?php 
  class CssJs_Util_right_hangban
   {
      private static $cssStr = '.op_hangban_table th{background:#fafafa;color:#666;height:22px;border-bottom:1px solid #f0f0f0;font-weight:normal;}.op_hangban_table td{height:32px;line-height:32px;border-bottom:1px solid #f3f3f3;text-align:center;}.op_hangban_table tr{width:100%;}.op_outer{position:relative;width:100%;overflow:hidden;height:99px;}.op_inner{position:absolute;left:0;top:0;height:990px;}.op_hangban_table_search{width:100%;}.op_hangban_exchange,.op_hangban_exchange2{display:block;padding-left:5px;padding-right:5px;}.op_exchange_span1{float:left;}.container_l .op_hangban_table{width:351px;}.container_s .op_hangban_table{width:261px;}.op_gray_line{border-bottom:1px solid #f3f3f3;height:0;overflow:hidden;position:relative;top:-1px;*top:-5px;}.op_hangban_table th{text-align:center;}.container_l .op_hangban_fligh_input{width:273px;}.container_l .op_hanban_pos_start,.container_l .op_hanban_pos_end{width:106px;}.container_s .op_hanban_pos_start,.container_s .op_hanban_pos_end{width:180px;}.container_l .opr_hangban_stend,.container_s .opr_hangban_stend{padding:0;}.op_exchange_span{width:26px;height:26px;}.container_l .op_hangban_number_ipt,.container_l .op_hangban_number_ipt2{width:247px;}.op_hangban_title{font-size:14px;font-weight:bold;}.op_hangban_start,.op_hangban_start2,.op_hangban_end,.op_hangban_end2,.op_hangban_number_ipt,.op_hangban_number_ipt2{color:#999;}.container_l .op_hanban_pos_start .op_hangban_start,.container_l .op_hanban_pos_start .op_hangban_start2{width:90px;}.container_l .op_hanban_pos_end .op_hangban_end,.container_l .op_hanban_pos_end .op_hangban_end2{width:90px;}.op_right_hangban_color{color:#666;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_hangban",function(){A.setup(function(){var p=this;var b=null;A.use("tabs5",function(){A.ui.tabs5(p.find(".c-tabs")[0])});if(p.find(".op_inner").length){var r=p.find(".op_inner");var o=p.find(".op_inner table");var e=1;function a(){r.animate({top:-99*e},"slow",function(){var u=o.find("tr:lt(3)");u.appendTo(o);r.css({top:"0"})})}b=window.setInterval(a,3000);o.hover(function(){window.clearInterval(b)},function(){b=window.setInterval(a,3000)})}var i=p.find(".op_hangban_start")[0];var n=p.find(".op_hangban_end")[0];var g=p.find(".op_hangban_exchange").eq(0);g.on("click",function(){var u=n.value;n.value=i.value;i.value=u});var h=p.find(".op_hangban_start2")[0];var m=p.find(".op_hangban_end2")[0];var f=p.find(".op_hangban_exchange2").eq(0);f.on("click",function(){var u=m.value;m.value=h.value;h.value=u});var l=p.find(".op_hangban_number_ipt").eq(0).val();var k=p.find(".op_hangban_number_ipt2").eq(0).val();var t=p.find(".op_hangban_start").eq(0).val();var s=p.find(".op_hangban_start2").eq(0).val();var d=p.find(".op_hangban_end").eq(0).val();var c=p.find(".op_hangban_end2").eq(0).val();function j(u,v){$(u).on("focus",function(){if($(this).val()==v){$(this).val("")}$(this).css({color:"#000"})})}function q(u,v){$(u).on("blur",function(){if($(this).val()==""){$(this).val(v);$(this).css({color:"#999"})}})}j(".op_hangban_number_ipt",l);q(".op_hangban_number_ipt",l);j(".op_hangban_number_ipt2",k);q(".op_hangban_number_ipt2",k);j(".op_hangban_start",t);q(".op_hangban_start",t);j(".op_hangban_start2",s);q(".op_hangban_start2",s);j(".op_hangban_end",d);q(".op_hangban_end",d);j(".op_hangban_end2",c);q(".op_hangban_end2",c);p.find(".op_hangban_flight_btn").eq(0).on("click",function(){if(p.find(".op_hangban_number_ipt")[0].value==""){return false}p.find(".op_hangban_number_ipt")[0].value=p.find(".op_hangban_number_ipt")[0].value.toUpperCase();p.find(".op_hangban_form")[0].submit()});p.find(".op_hangban_flight_btn2").eq(0).on("click",function(){if(p.find(".op_hangban_number_ipt2")[0].value==""){return false}p.find(".op_hangban_number_ipt2")[0].value=p.find(".op_hangban_number_ipt2")[0].value.toUpperCase();p.find(".op_hangban_form3")[0].submit()});p.find(".op_hangban_line_btn").eq(0).on("click",function(){p.find(".op_hangban_departure")[0].value=p.find(".op_hangban_start")[0].value;p.find(".op_hangban_arrival")[0].value=p.find(".op_hangban_end")[0].value;if(p.find(".op_hangban_departure")[0].value==""||p.find(".op_hangban_arrival")[0].value==""){return false}else{p.find(".op_hangban_form2")[0].submit()}});p.find(".op_hangban_line_btn2").eq(0).on("click",function(){p.find(".op_hangban_departure2")[0].value=p.find(".op_hangban_start2")[0].value;p.find(".op_hangban_arrival2")[0].value=p.find(".op_hangban_end2")[0].value;if(p.find(".op_hangban_departure2")[0].value==""||p.find(".op_hangban_arrival2")[0].value==""){return false}else{p.find(".op_hangban_form4")[0].submit()}});this.dispose=function(){window.clearInterval(b)}})});';   // js字串，不含<script标签
      private static $uiList = 'btn,input,tabs';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
