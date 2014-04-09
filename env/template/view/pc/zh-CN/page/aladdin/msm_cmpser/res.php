<?php 
  class CssJs_Util_msm_cmpser
   {
      private static $cssStr = '.op_xf_i_merit a,.op_xf_i_defect a{display:inline-block;*display:inline;*zoom:1;}.op_xf_i_merit,.op_xf_i_defect{*font-size:12px;}.op_xf_i_merit a,.op_xf_i_defect a{display:inline-block;*display:inline;*zoom:1;}.op_xf_cmpser_titles{line-height:19px;text-align:center;}.op_xf_cmpser_prices{margin:3px 0;line-height:17px;}.op_xf_cmpser_prices{font-size:13px;overflow:hidden;}.op_xf_cmpser_priceright{float:right;}.op_xf_cmpser_titles{font-size:13px;overflow:hidden;}.op_xf_cmpser_titleleft,.op_xf_cmpser_titlecenter,.op_xf_cmpser_rightpart c-span-last{float:left;}.op_xf_cmpser_titleleft,.op_xf_cmpser_rightpart c-span-last{text-align:center;}.op_xf_cmpser_content{padding:5px 0;line-height:19px;position:relative;overflow:hidden;}.op_xf_cmpser_leftpart,.op_xf_cmpser_centerpart,.op_xf_cmpser_rightpart c-span-last{float:left;position:relative;}.op_xf_cmp_mrsp{color:#fff;padding:0 3px;position:absolute;top:0;background-color:#ff830f;}.op_xf_cmpser_leftpart .op_xf_cmp_mrsp{right:0;}.op_xf_cmpser_rightpart .op_xf_cmp_mrsp{right:0;}.op_xf_cmpser_centerpart{text-align:center;}.op_xf_cmpser_leftpart,.op_xf_cmpser_leftpart img,.op_xf_cmpser_rightpart c-span-last{height:121px;overflow:hidden;}.op_xf_cmpser_txtbtm{padding-top:10px;}.op_xf_cmpser_txtbtm ul{float:left;}.op_xf_cmpser_price{display:inline-block;*display:inline;*zoom:1;background-color:#96caea;color:#fff;padding:0 3px;}.op_xf_cmpser_txtbtm li{position:relative;padding:0 98px;margin-bottom:4px;}.op_xf_cmp_prmleft,.op_xf_cmp_prmright{width:98px;}.op_xf_cmp_prmleft{position:absolute;left:0;top:0;}.op_xf_cmp_prmleft div{float:right;}.op_xf_cmp_per{font-family:Arial;margin-top:2px;height:14px;}.op_xf_cmp_prmleft .op_xf_cmp_per{float:right;width:20px;background-color:#dcdcdc;}.op_xf_cmp_prmright{position:absolute;right:0;top:0;}.op_xf_cmp_prmright div{float:left;}.op_xf_cmp_prmright .op_xf_cmp_per{width:20px;background-color:#dcdcdc;}.op_xf_cmpser_rightpart c-span-last dt,.op_xf_cmpser_rightpart c-span-last dd{float:left;}.op_xf_cmpser_rightpart c-span-last dl{overflow:hidden;}.op_xf_cmpser_morespu dt,.op_xf_cmpser_morespu dd{float:none;}.op_xf_cmpser_link{line-height:20px;}.op_xf_cmpser_link a{color:#7a77c8!important;}.op_xf_cmpser_colorf80{color:#ff8a00;}.op_xf_cmpser_color666{color:#666;}.op_xf_cmpser_color959494{color:#959494;}.op_xf_cmpser_color333{color:#333;}';  // css字串，不含<style>和</style>标签
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
