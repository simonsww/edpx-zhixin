<?php 
  class CssJs_Util_msm_ser
   {
      private static $cssStr = '.op_xf_i_merit a,.op_xf_i_defect a{display:inline-block;*display:inline;*zoom:1;}.op_xf_i_merit li,.op_xf_i_defect li{height:19px;overflow:hidden;}.op_xf_i_merit,.op_xf_i_defect{*font-size:12px;}.op_xf_i_merit a,.op_xf_i_defect a{display:inline-block;*display:inline;*zoom:1;}.op_xf_ser_content{padding:5px 0;line-height:19px;position:relative;overflow:hidden;}.op_xf_ser_leftpart,.op_xf_ser_centerpart,.op_xf_ser_rightpart c-span-last{overflow:hidden;}.op_xf_ser_leftpart{height:127px;}.op_xf_ser_txtbtm{position:absolute;bottom:5px;overflow:hidden;}.op_xf_ser_txtbtm ul{float:left;}.op_xf_ser_price{display:inline-block;*display:inline;*zoom:1;background-color:#96caea;color:#fff;padding:0 3px;}.op_xf_ser_rightpart c-span-last dt,.op_xf_ser_rightpart c-span-last dd{float:left;}.op_xf_ser_rightpart c-span-last dl{overflow:hidden;}.op_xf_ser_morespu{position:absolute;bottom:5px;}.op_xf_ser_morespu dt,.op_xf_ser_morespu dd{float:none;}.op_xf_ser_link{line-height:20px;}.op_xf_ser_link a{color:#7a77c8!important;}.op_xf_ser_colorf80{color:#ff8a00;}.op_xf_ser_color666{color:#666;}.op_xf_ser_color959494{color:#959494;}.op_xf_i_color333{color:#333;}';  // css字串，不含<style>和</style>标签
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
