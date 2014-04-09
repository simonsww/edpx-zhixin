<?php 
  class CssJs_Util_worldcup2
   {
      private static $cssStr = '.op_worldcup2_t_sp{width:25%;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("worldcup2",function(){A.setup(function(){var a=this;A.use("tabs5",function(){A.ui.tabs5(a.find(".op_worldcup2_tabs")[0],{toggleSep:true});A.ui.tabs5(a.find(".op_worldcup2_sub_tabs")[0],{toggleSep:false,onResetChange:function(){var b=this;a.find(".op_worldcup2_sub_tab_content_"+b.last).each(function(d,c){$(c).hide()});a.find(".op_worldcup2_sub_tab_content_"+b.current).each(function(d,c){$(c).show()})}})})})});';   // js字串，不含<script标签
      private static $uiList = 'table,tabs';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
