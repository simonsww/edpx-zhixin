<?php 
  class CssJs_Util_bk_polysemy
   {
      private static $cssStr = '.op-bk-polysemy-bold{font-weight:bold;}.op-bk-polysemy-other span{display:block;}.op-bk-polysemy-space{white-space:nowrap;}.op-bk-polysemy-oneother span,.op-bk-polysemy-oneother .op-bk-polysemy-move{margin-left:0;}.op-bk-polysemy-focus{height:22px;line-height:1.69em;margin-bottom:2px;position:relative;padding-left:56px;}.op-bk-polysemy-focustext{position:absolute;height:22px;width:40px;padding:0 8px;left:0;top:0;background:#3288ff;color:#fff;}.op-bk-polysemy-focusright{display:inline-block;height:20px;border-top:1px solid #e6e6e6;border-bottom:1px solid #e6e6e6;background:#f7f7f7;}.op-bk-polysemy-focusright a{display:inline-block;height:20px;line-height:1.54em;float:left;border-right:2px solid #3288ff;padding:0 8px;text-decoration:none;color:#333;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
