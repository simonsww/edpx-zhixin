<?php 
  class CssJs_Util_msm_fser
   {
      private static $cssStr = '.op_xf_tbr a{text-decoration:none;}.op_xf_i_merit a,.op_xf_i_defect a{display:inline-block;*display:inline;*zoom:1;}.op_xf_colorsp{color:#7a77c8!important;}.op_xf_i_merit,.op_xf_i_defect{*font-size:12px;}.op_xf_i_merit li,.op_xf_i_defect li{height:19px;overflow:hidden;}.op_xf_i_merit a,.op_xf_i_defect a{display:inline-block;*display:inline;*zoom:1;}.op_xf_fser_sc{color:#7A77C8!important;}.op_xf_fser_btm{position:absolute;bottom:5px;}.op_xf_fser_row1{float:none!important;height:32px;line-height:32px;color:#666;}.op_xf_fser_border{border-bottom:1px solid #f3f3f3;}.op_xf_fser_icon1,.op_xf_fser_icon2,.op_xf_fser_icon3,.op_xf_fser_icon4{float:left;width:14px;height:14px;text-align:center;font-size:12px;color:#fff;line-height:14px;overflow:hidden;}.op_xf_fser_row1 .op_xf_fser_icon1,.op_xf_fser_row1 .op_xf_fser_icon2,.op_xf_fser_row1 .op_xf_fser_icon3,.op_xf_fser_row1 .op_xf_fser_icon4{text-decoration:none;}.op_xf_fser_icon1{background-color:#F54545;}.op_xf_fser_icon2{background-color:#FF8547;}.op_xf_fser_icon3{background-color:#FFAC38;}.op_xf_fser_icon4{background-color:#8EB9F5;}.op_xf_fser_ttxt{float:left;text-decoration:none;}.op_xf_fser_row{overflow:hidden;}.op_xf_fser_content{padding:5px 0;position:relative;overflow:hidden;}.op_xf_fser_leftpart,.op_xf_fser_centerpart,.op_xf_fser_rightpart c-span-last{overflow:hidden;}.op_xf_fser_leftpart{height:121px;}.op_xf_fser_txtbtm{position:absolute;bottom:5px;overflow:hidden;}.op_xf_fser_txtbtm ul{float:left;}.op_xf_fser_txtbtm li{height:19px;overflow:hidden;}.op_xf_fser_price{display:inline-block;*display:inline;*zoom:1;background-color:#96caea;color:#fff;padding:0 3px;}.op_xf_fser_rightpart c-span-last dl{clear:both;}.op_xf_fser_rightpart c-span-last,.op_xf_fser_rightpart c-span-last dt,.op_xf_fser_rightpart c-span-last dd{float:left;}.op_xf_fser_link{width:100%;clear:both;line-height:25px;height:25px;}.op_xf_fser_link a{color:#7a77c8!important;}.op_xf_fser_colorf80{color:#ff8a00;}.op_xf_fser_color959494{color:#959494;}.op_xf_fser_color666{color:#666;}.op_xf_i_color333{color:#333;}';  // css字串，不含<style>和</style>标签
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
