<?php 
  class CssJs_Util_zx_tour_guide
   {
      private static $cssStr = '.op-zx-tour-guide-tab-icon{width:16px;height:16px;cursor:pointer;display:inline-block;position:relative;top:-2px;*top:0;vertical-align:middle;}.op-zx-tour-guide-tab-text{display:inline-block;padding-left:3px;cursor:pointer;}.op-zx-tour-guide-sep{display:inline-block;padding:0 0 0 10px;color:#d8d8d8;margin-right:10px;}.op-zx-tour-guide-tabs span{text-decoration:underline;}.op-zx-tour-guide-content li{line-height:22px;color:#666;}.op-zx-tour-guide-content span{font-size:13px;padding-left:6px;}.op-zx-tour-guide-img-wrap{margin:0 auto;position:relative;width:100%;}.op-zx-tour-guide-img-container{height:121px;overflow:hidden;}.op-zx-tour-guide-pdf{overflow:hidden;height:120px;}.op-zx-tour-guide-pdf a{text-decoration:none;outline:none;cursor:pointer;}.op-zx-tour-guide-pdf img{cursor:pointer;width:100%;display:block;}.op-zx-tour-guide-img-bg{height:20px;line-height:20px;position:absolute;left:0;bottom:0;background:#000;opacity:.5;filter:alpha(opacity=50);color:#fff;cursor:pointer;width:100%;}.op-zx-tour-guide-img-title{width:100%;height:20px;line-height:20px;position:absolute;left:0;bottom:0;color:#fff;text-align:center;cursor:pointer;font-size:12px;}.op-zx-tour-guide-table{width:100%;margin-top:-2px;}.op-zx-tour-guide-table td{color:#666;font-size:13px;padding:0;vertical-align:top;line-height:20px;}.op-zx-tour-guide-left-offset{margin-left:10px;}';  // css字串，不含<style>和</style>标签
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
