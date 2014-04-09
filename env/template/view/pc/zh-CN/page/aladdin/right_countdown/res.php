<?php 
  class CssJs_Util_right_countdown
   {
      private static $cssStr = '.opr_countdown_box,.opr_countdown_deadline{border:1px solid #f0f0f0;height:58px;line-height:58px;font-size:20px;font-family:\'微软雅黑\';text-align:center;}.opr_countdown_box span{color:#2899ff;font-family:"黑体","Arial";font-size:26px;font-weight:bold;}.container_s .opr_countdown_box,.container_s .opr_countdown_deadline{font-size:16px;}.container_s .opr_countdown_box span{font-size:24px;}';  // css字串，不含<style>和</style>标签
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
