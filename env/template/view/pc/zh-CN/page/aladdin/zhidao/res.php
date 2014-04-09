<?php 
  class CssJs_Util_zhidao
   {
      private static $cssStr = '.op_zhidao_content,.op_zhidao_showurl,.op_zhidao{font-size:13px;}.op_zhidao_showurl{line-height:13px;margin-top:3px;color:#008000;}.op_zhidao{padding-left:1em;margin-top:5px;}.op_zhidao_answercount{margin-left:4px;color:#666;}.op_zhidao_more{color:#77c;}.op_zhidao_tip{line-height:20px;display:block;font-size:13px;}.op_zhidao_m{color:#666;}';  // css字串，不含<style>和</style>标签
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
