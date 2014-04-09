<?php 
  class CssJs_Util_hotel
   {
      private static $cssStr = '.op_hotel_main td{vertical-align:middle;padding:5px 0;}table.op_hotel_cal_table{width:100%;}table.op_hotel_cal_table td{padding:0;}.op_hotel_main input{padding-left:2px;height:21px;line-height:21px;*height:19px;*line-height:19px;border:0 none;outline:none;}.op_hotel_main a{outline:none;}.op_hotel_topcity,.op_hotel_city_detail,.op_hotel_city_sug{position:absolute;top:23px;_top:24px;left:0;margin-left:-1px;border:#d0d0d0 solid 1px;background:#fff;z-index:10;}.op_hotel_topcity{width:280px;}.op_hotel_topcity ul{padding:6px 0;}.op_hotel_topclose,.op_hotel_detail_btn{background:url(http://www.baidu.com/aladdin/img/hotel/ala_hotel_btn.png) 0 0 no-repeat;overflow:hidden;}.op_hotel_topclose{float:right;margin:9px 15px auto auto;width:9px;height:9px;background-position:0 -25px;cursor:pointer;}.op_hotel_topcity li{float:left;width:20%;line-height:20px;text-align:center;}.op_hotel_city_detail{width:300px;*width:308px;}.op_hotel_citytitle{padding:5px;border-bottom:1px dotted #d0d0d0;background:#fff;}.op_hotel_city_detail li{line-height:20px;padding:5px 0 5px 6px;}.op_hotel_city_detail li strong{color:#666;}.op_hotel_city_detail li span{margin-right:10px;}.op_hotel_topcity li span,.op_hotel_city_detail li span{cursor:pointer;color:#00c;}.op_hotel_options{margin-top:10px;padding-top:10px;background:url(http://www.baidu.com/aladdin/img/hotel/ala_hotel_bg.png) repeat-x;overflow:hidden;}.op_hotel_options li{padding-bottom:6px;}.op_hotel_options a{margin-left:10px;text-decoration:none;}.op_hotel_options a.op_hotel_first_col{margin-left:0;}.op_hotel_options a:hover{text-decoration:underline;}.op_hotel_subtitle{color:#414141;}.op_hotel_count{color:#666;}.op_hotel_detail_btn,.op_hotel_cal_btn{position:absolute;top:2px;_top:3px;right:2px;width:17px;height:17px;cursor:pointer;}.op_hotel_cal_btn{background:url(http://open.baidu.com/stat/ticket/cbtn.gif) no-repeat;}.op_hotel_hide{display:none;}.op_hotel_hilight{color:#f00;}.op_hotel_sug{padding:2px;padding-right:5px;color:#414141;cursor:default;}li.op_hotel_sug_hilight{background-color:#36c;color:#fff;}.op_hotel_error{background-color:#c30;color:#fff;}.op_hotel_li{border-top:1px dotted #b5b5b5;}.op_hotel_tip{color:#acacac;}.op_hotel_clearfix:after{content:".";display:block;height:0;clear:both;visibility:hidden;}.op_hotel_clearfix{zoom:1;}.op_hotel_ci,.op_hotel_cal{position:relative;padding-right:20px;border:1px solid #b5b5b5;}.op_hotel_ci2{margin-left:10px;}.op_hotel_city{width:70px;}.op_hotel_city2{width:280px;}.op_hotel_input1,.op_hotel_input2{width:157px;*width:161px;}.op_hotel_submit{display:block;width:82px;line-height:24px;height:24px;margin-left:5px;background:url(http://open.baidu.com/stat/op_email_btn.gif) no-repeat;overflow:hidden;text-align:center;text-decoration:none;color:#000;}.op_hotel_submit.op_hotel_normal{background-position:-100px 0;}.op_hotel_city_sug li,.op_hotel_city_detail span{white-space:nowrap;}.op_hotel_city_detail span{display:inline-block;}.op_hotel_map_i{width:540px;height:360px;overflow:hidden;margin-top:8px;}.op_hotel_showurl{padding-top:2px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
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
