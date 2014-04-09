<?php 
  class CssJs_Util_msm_spu
   {
      private static $cssStr = '.op_xf_i_merit,.op_xf_i_defect{clear:both;}.op_xf_i_merit li,.op_xf_i_defect li{height:19px;overflow:hidden;}.op_xf_i_merit dd,.op_xf_i_defect dd{width:120px;}.op_xf_i_merit dt,.op_xf_i_merit dd{float:left;}.op_xf_i_defect dt,.op_xf_i_defect dd{float:left;}.op_xf_i_merit a,.op_xf_i_defect a{display:inline-block;*display:inline;*zoom:1;}.op_xf_i_merit,.op_xf_i_defect{*font-size:12px;}.op_xf_spu_content{padding:5px 0;line-height:19px;position:relative;overflow:hidden;}.op_xf_spu_leftpart,.op_xf_spu_centerpart,.op_xf_spu_rightpart c-span-last{overflow:hidden;}.op_xf_spu_leftpart{height:127px;}.op_xf_spu_txtbtm{position:absolute;bottom:5px;overflow:hidden;}.op_xf_spu_txtbtm ul{_height:57px;float:left;}.op_xf_spu_txtbtm li{overflow:hidden;_font-size:12px;}.op_xf_spu_price{display:inline-block;*display:inline;*zoom:1;background-color:#96caea;color:#fff;padding:0 3px;}.op_xf_spu_rightpart c-span-last dl{clear:both;}.op_xf_spu_rightpart c-span-last,.op_xf_spu_rightpart c-span-last dt,.op_xf_spu_rightpart c-span-last dd{float:left;}.op_xf_spu_link{line-height:20px;}.op_xf_spu_link a{color:#7a77c8!important;}.op_xf_spu_colorf80{color:#ff8a00;}.op_xf_spu_color959494{color:#959494;}.op_xf_spu_color666{color:#666;}.op_xf_i_color333{color:#333;}';  // css字串，不含<style>和</style>标签
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
