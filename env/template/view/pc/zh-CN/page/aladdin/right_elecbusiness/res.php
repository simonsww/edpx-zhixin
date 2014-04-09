<?php 
  class CssJs_Util_right_elecbusiness
   {
      private static $cssStr = '.opr_right_elecbusiness_ricnt{line-height:1.69em;}.opr_right_elecbusiness_lepr,.opr_right_elecbusiness_lestar{float:left;}.opr_right_elecbusiness_ripr{float:right;}.opr_right_elecbusiness_lepr,.opr_right_elecbusiness_rititle{display:none;}.container_l .opr_right_elecbusiness_lepr1,.container_l .opr_right_elecbusiness_rititle1{display:inline-block;}.container_s .opr_right_elecbusiness_lepr2,.container_s .opr_right_elecbusiness_rititle2{display:inline-block;}.opr_right_elecbusiness_lepr .opr_right_elecbusiness_price{color:#ff830f;font-weight:bold;}.opr_right_elecbusiness_nowprice{text-decoration:line-through;}.opr_right_elecbusiness_lestar{*padding-top:4px;}';  // css字串，不含<style>和</style>标签
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
