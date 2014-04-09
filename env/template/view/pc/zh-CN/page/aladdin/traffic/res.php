<?php 
  class CssJs_Util_traffic
   {
      private static $cssStr = '.op_traffic_time{margin-bottom:10px;padding-top:5px;overflow:hidden;}.op_traffic_warn_icon{width:23px;height:18px;position:absolute;top:5px;left:10px;background:url(http://www.baidu.com/aladdin/img/traffic/traffic.png) 0 0 no-repeat;display:inline-block;}.op_traffic_warn_board{position:relative;z-index:1;width:498px;height:32px;line-height:32px;padding-left:40px;color:#fff;font-weight:bold;background-color:#f54545;margin-bottom:-2px;}.op_traffic_left,.op_traffic_right{float:left;}.op_traffic_left{padding-left:10px;padding-right:10px;}.op_traffic_right{padding:0 20px;border-left:1px solid #ccc;}.op_traffic_right_last{padding-right:0;}.op_traffic_title,.op_traffic_remark,.op_traffic_holiday,.op_traffic_txt span{color:#666;}.op_traffic_title{font-size:1.077em;}.op_traffic_title,.op_traffic_txt,.op_traffic_off{font-weight:bold;text-align:center;}.op_traffic_txt,.op_traffic_off{color:#333;line-height:30px;}.op_traffic_txt{font-size:2.308em;font-family:arial;padding:9px 0 0 0;*padding:5px 0 0 0;}.op_traffic_txt span{display:inline-block;font-size:1.077em;vertical-align:middle;padding:0 6px 5px 8px;*padding:0 6px 0 0;}.op_traffic_off{font-size:1.769em;font-family:\'微软雅黑\',\'黑体\';padding:7px 0 0 0;}.op_traffic_left .op_traffic_txt{position:relative;left:-4px;}.op_traffic_left .op_traffic_off{position:relative;left:-4px;}.op_traffic_right .op_traffic_txt2{position:relative;left:-4px;}.op_traffic_right .op_traffic_off2{position:relative;left:-4px;}.op_traffic_left .op_traffic_txt span{*padding-left:6px;}.op_traffic_right .op_traffic_txt span{*padding-left:6px;}.op_traffic_note{line-height:22px;}.op_traffic_remark,.op_traffic_holiday,.op_traffic_more{line-height:20px;font-size:.923em;}.op_traffic_more{padding-top:4px;font-family:simsun;}.op_traffic_clear{clear:both;height:0;line-height:0;font-size:1px;margin-top:0;visibility:hidden;overflow:hidden;}.op_traffic_showurl{color:#008000;}.op_traffic_sms{color:#666;line-height:22px;_margin-top:5px;}.op_traffic_sms a{color:#00c;}.op_traffic_sms_container{margin:5px -9px -9px;background-color:#fafafa;padding:9px 9px 12px;}.op_traffic_sms_success_container{margin:5px -9px -9px;background-color:#fafafa;height:125px;}.op_traffic_sms_success_text{height:25px;line-height:25px;padding-left:156px;position:relative;top:48px;}.op_traffic_sms_success_icon{position:absolute;left:120px;top:0;width:25px;height:25px;display:inline-block;background:url(http://www.baidu.com/aladdin/img/traffic/traffic.png) 0 -27px no-repeat;}.op_traffic_sms_btn_open,.op_traffic_sms_btn_close{outline:none;}.op_traffic_sms_btn_open i,.op_traffic_sms_btn_close i{cursor:pointer;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("traffic",function(){A.setup(function(){var h=this,a;if(h.data.sms){var e=h.find(".op_traffic_sms_container").get(0);var g=h.find(".op_traffic_sms_success_container").get(0);var d=h.find(".op_traffic_sms_btn_open").get(0);var c=h.find(".op_traffic_sms_btn_close").get(0);var b=e;var f=null;d.onclick=function(){d.style.display="none";c.style.display="inline";b.style.display="block";if(!d.loaded){A.use("sms",function(){a=A.ui.sms({container:e,type:"xianxing",phoneEmpty:h.data.sms.fail1||"请输入手机号",phoneError:h.data.sms.fail2||"手机号有误，请重新输入",vcodeEmpty:h.data.sms.fail3||"请输入校验码",vcodeError:h.data.sms.fail4||"校验码有误，请重新输入",alreadySub:h.data.sms.fail5||"该手机号已订制短信提醒",onsuccess:function(i){e.style.display="none";g.style.display="block";b=g}});d.loaded=true})}};c.onclick=function(){c.style.display="none";d.style.display="inline";b.style.display="none"}}this.dispose=function(){a&&a.dispose&&a.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'input,btn,table';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
