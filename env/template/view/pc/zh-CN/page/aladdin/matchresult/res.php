<?php 
  class CssJs_Util_matchresult
   {
      private static $cssStr = '.op_matchresult_div div span{height:26px;line-height:26px;display:inline-block;white-space:nowrap;}.op_matchresult_team1{display:line-block;width:80px;padding-right:26px;text-align:right;}.op_matchresult_team2{display:line-block;width:80px;padding-left:26px;text-align:left;}.op_matchresult_score{font-weight:bold;color:#c00;margin:auto 4px;width:40px;text-align:center;}.op_matchresult_links{padding-left:10px;}.op_matchresult_links a{margin-left:2px;margin-right:4px;}';  // css字串，不含<style>和</style>标签
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
