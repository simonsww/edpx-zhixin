<?php 
  class CssJs_Util_law
   {
      private static $cssStr = '.op_law_title{text-align:center;margin-top:-1px;margin-bottom:3px;font-family:"Microsoft YaHei";font-weight:normal;line-height:40px;font-size:26px;}.op_law_ltuc{color:#666;text-align:center;padding-bottom:6px;}.op_law_size16{font-size:1.2em;font-family:"Microsoft YaHei";}.op_law_size20{font-size:1.5em;font-family:"Microsoft YaHei";}.op_law_text{color:#323232;line-height:30px;}.op_law_gap{padding-bottom:11px;}.op_law_foot{text-align:right;font-size:.9em;clear:both;}.op_law_foot span{color:#ccc;margin:0 8px;}.op_law_foot a{color:#999;text-decoration:none;}.op_law_foot a.op_law_color{color:#0100ce;}.op_law_foot a:hover{text-decoration:underline;}.op_law_fl{float:left;}.op_law_textNum{width:24px;line-height:30px;}.op_law_textCont{width:494px;}.op_law_textCont_change{width:518px;}';  // css字串，不含<style>和</style>标签
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
