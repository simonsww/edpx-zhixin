<?php 
  class CssJs_Util_car6
   {
      private static $cssStr = '.op_car6_nowrap{white-space:nowrap;}.op_car6_t_last{padding-right:10px;}.op_car6_morelink div{float:right;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("car6",function(){A.setup(function(){var a=A.baidu,b=this;this.data.tab_count>1&&A.use("tabs5",function(){A.ui.tabs5(b.find(".op_car6_tabs")[0],{toggleSep:true,onResetChange:function(d){var c=this;b.find(".op_car6_c_"+(parseInt(c.last)+1)).each(function(f,e){$(e).hide()});b.find(".op_car6_c_"+(parseInt(c.current)+1)).each(function(f,e){$(e).css("display","")})}})})})});';   // js字串，不含<script标签
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
