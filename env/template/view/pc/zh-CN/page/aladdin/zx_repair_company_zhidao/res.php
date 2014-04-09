<?php 
  class CssJs_Util_zx_repair_company_zhidao
   {
      private static $cssStr = '.op-repair-company-zhidao-list li{list-style:none;}.op-repair-company-zhidao-list span{margin-left:4px;font-size:12px;color:#666;}.op-repair-company-zhidao-button,.op-repair-company-zhidao-button:link{border:1px solid #bdc0c3;color:#333;background:#fafafa;font-size:13px;padding:0 20px;margin:6px 0;display:inline-block;text-align:center;text-decoration:none;}.op-repair-company-zhidao-button:hover{border:1px solid #279cf1;box-shadow:0 1px #e0e0e0;background:#f5f5f5;background:-moz-linear-gradient(top,#fff,#ececec);background:-webkit-gradient(linear,0 0,0 bottom,from(#fff),to(#ececec));}.op-repair-company-zhidao-button:active{border:1px solid #a7aaaf;box-shadow:0 1px #c7c7c7 inset;background:#f0f0f0;background:-moz-linear-gradient(top,#ebebeb,#f5f5f5);background:-webkit-gradient(linear,0 0,0 bottom,from(#ebebeb),to(#f5f5f5));}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
