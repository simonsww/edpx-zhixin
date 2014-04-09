<?php 
  class CssJs_Util_map_hotel
   {
      private static $cssStr = '.op_map_hotel_font{font-family:"宋体",arial;}.op_map_hotel_title{padding-bottom:5px;}.op_map_hotel_imgl{width:217px;height:242px;display:block;border:1px solid #635de6;}.op_map_hotel_img{display:block;border:1px solid #635de6;}.op_map_hotel_content{width:310px;font-size:13px;line-height:18px;padding-left:15px;word-break:break-all;word-wrap:break-word;}.op_map_hotel_name{margin-bottom:4px;font-size:13px;}.op_map_hotel_link{margin-left:4px;}.op_map_hotel_no{font-family:\\u5B8B\\u4F53;}.op_map_hotel_s01{float:left;width:60px;height:12px;background:url(http://www.baidu.com/aladdin/img/map_hotel/star.gif) 0 -10px repeat-x;display:inline-block;overflow:hidden;vertical-align:top;margin-top:3px;}.op_map_hotel_s02{height:12px;background:url(http://www.baidu.com/aladdin/img/map_hotel/star.gif) 0 0 repeat-x;display:inline-block;overflow:hidden;vertical-align:top;}.op_map_hotel_loop{width:270px;margin-left:19px;overflow:hidden;}.op_map_hotel_price{color:#ff8a00;font-weight:bold;float:left;padding-right:5px;line-height:20px;text-decoration:none;}.op_map_hotel_comment{float:left;line-height:20px;margin-left:5px;padding-right:5px;text-decoration:none;}.op_map_hotel_tuan{padding-left:3px;text-decoration:none;float:left;}.op_map_hotel_price:hover,.op_map_hotel_comment:hover,.op_map_hotel_tuan:hover{text-decoration:underline;}.op_map_hotel_tuanimg{padding-left:12px;line-height:16px;background:url(\'http://www.baidu.com/aladdin/img/map_hotel/tuan.png\');text-decoration:none;margin-left:3px;}.op_map_hotel_addr{margin-left:18px;overflow:hidden;}.op_map_hotel_phone{margin-left:18px;width:195px;overflow:hidden;}.op_map_hotel_tuandiv{margin-left:19px;overflow:hidden;}.op_map_hotel_distd{font-size:13px;}.op_map_hotel_disdiv{margin-top:5px;}.op_map_hotel_disa{padding-right:5px;float:left;width:90px;height:18px;overflow:hidden;}.op_map_hotel_otheres{width:310px;font-size:13px;line-height:18px;padding-left:15px;padding-top:9px;word-break:break-all;word-wrap:break-word;}.op_map_hotel_otheresa{margin-left:18px;color:#77c;display:block;}.op_map_hotel_s01_star{height:12px;background:url(http://www.baidu.com/aladdin/img/map_hotel/star.gif) 0 2px repeat-x;display:inline-block;overflow:hidden;vertical-align:top;}.op_map_hotel_s01_star_1{width:11px;}.op_map_hotel_s01_star_2{width:23px;}.op_map_hotel_s01_star_3{width:35px;}.op_map_hotel_s01_star_4{width:47px;}.op_map_hotel_s01_star_5{width:59px;}.op_map_hotel_clearfix:after{content:".";display:block;height:0;clear:both;visibility:hidden;font-size:0;}.op_map_hotel_clearfix{zoom:1;}';  // css字串，不含<style>和</style>标签
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
