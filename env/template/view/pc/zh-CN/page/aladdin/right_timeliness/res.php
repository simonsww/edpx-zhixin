<?php 
  class CssJs_Util_right_timeliness
   {
      private static $cssStr = '.opr_timeliness_imga{display:block;position:relative;}.opr_timeliness_imga span.opr_timeliness_imgmask{display:block;position:absolute;bottom:0;left:0;height:1.82em;line-height:1.82em;background:rgba(0,0,0,0.75);filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr=\'#99000000\',EndColorStr=\'#99000000\');}.opr_timeliness_imga span.opr_timeliness_imgmask a{color:#fff;}.opr_timeliness_tip_tip li{list-style:square;list-style-position:inside;line-height:1.82em;}.opr_timeliness_table{width:100%;}.op_timeliness_inNum{font-weight:bold;}.op_timeliness_inNum span{padding:0 5px;color:#ff8a00;}.op_timeliness_mh{position:fixed;right:10px;top:23px;z-index:10000000;}.op_timeliness_sharetip{float:right;margin:5px 3px 0 0;color:#9f9f9f;}.op_timeliness_share .bdsharebuttonbox a{margin:7px 6px 0 0;}.op_timeliness_share{width:50px;}.op_timeliness_mhbtn_wrap,.op_timeliness_share{float:right;}.op_timeliness_mhbtn{display:block;width:24px;height:24px;background:url(http://www.baidu.com/aladdin/img/right_timeliness/closeSquare.png) no-repeat;cursor:pointer;margin-top:2px;}.op_timeliness_light{position:fixed;bottom:10px;left:590px;width:150px;z-index:10000000;}.op_timeliness_tip{font-family:\'方正隶书简体\',\'Microsoft Yahei\';text-align:center;margin:15px 10px 0 0;color:#b78569;}.op_timeliness_close{position:absolute;right:-12px;top:-12px;background:url(http://www.baidu.com/aladdin/img/right_timeliness/close.png) no-repeat;width:23px;height:23px;cursor:pointer;}.op_timeliness_lightcursor{cursor:url(\'http://www.baidu.com/aladdin/img/right_timeliness/hh.cur\'),url(\'http://www.baidu.com/aladdin/img/right_timeliness/hh.gif\'),auto;}.op_timeliness_mask{position:fixed;z-index:10000;top:0;width:100%;height:100%;background:rgba(0,0,0,0.75);filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr=\'#99000000\',EndColorStr=\'#99000000\');display:none;}.op_timeliness_mask_list{position:absolute;bottom:20px;left:5%;width:90%;color:#b0b0b0;}.op_timeliness_mask_title{font-weight:bold;border-bottom:1px solid #b0b0b0;padding-bottom:5px;margin-bottom:5px;}.op_timeliness_mask marquee{font-size:12px;line-height:24px;-webkit-mask-image:-webkit-gradient(linear,left top,left bottom,from(rgba(0,0,0,0)),to(rgba(0,0,0,0)),color-stop(0.3,rgba(0,0,0,1)),color-stop(0.7,rgba(0,0,0,1)));}.op_timeliness_star{position:absolute;z-index:1;}.op_timeliness_box{margin-left:-6px;}.op_timeliness_area{resize:none;width:156px;height:22px;max-width:156px;max-height:24px;border:1px solid #b78569;color:#b78569;line-height:22px;padding:0 4px;overflow:auto;-moz-border-radius:3px;-webkit-border-radius:3px;border-radius:3px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
