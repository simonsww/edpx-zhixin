<?php 
  class CssJs_Util_newtv0502
   {
      private static $cssStr = '.op-newtv0502-nav li{height:47px;padding-top:3px;line-height:22px;color:#666;}.op-newtv0502-nav li span{display:block;}.op-newtv0502-content{overflow:hidden;}.op-newtv0502-content ul li,.op-newtv0502-contblock ul li{overflow:hidden;clear:both;}.op-newtv0502-content ul li a,.op-newtv0502-contblock ul li a{display:block;cursor:pointer;}.op-newtv0502-open,.op-newtv0502-close{clear:both;text-align:center;padding-top:8px;cursor:pointer;border-top:1px solid #f3f3f3;}.op-newtv0502-open .c-icon-chevron-bottom,.op-newtv0502-close .c-icon-chevron-top{margin-left:10px;}.op-newtv0502-more a{padding-right:5px;}.op-newtv0502-table th.op-newtv0502-tv{width:176px;}.op-newtv0502-table th.op-newtv0502-time{width:60px;}.op-newtv0502-table td a{color:#333;text-decoration:none;cursor:text;}.op-newtv0502-table td a:hover{text-decoration:none;cursor:text;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'tabs,table';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
