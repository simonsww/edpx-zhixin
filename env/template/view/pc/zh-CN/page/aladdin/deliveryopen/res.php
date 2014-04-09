<?php 
  class CssJs_Util_deliveryopen
   {
      private static $cssStr = '.op_deliveryopen_tip{color:#aaa;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("deliveryopen",function(){A.setup(function(){var f=this,c=A.baidu,d=f.find(".op_deliveryopen_f")[0],b=f.find(".op_deliveryopen_order")[0],e=b.getAttribute("tip");function a(){if(b&&b.value!=e){d.submit()}}f.find(".op_deliveryopen_btn").click(function(){a()});d.reset();$(b).keydown(function(g){if(g&&g.keyCode==13){a()}}).focus(function(g){if(b.value===e){$(b).removeClass("op_deliveryopen_tip");b.value=""}}).blur(function(g){if(b.value===""){$(b).addClass("op_deliveryopen_tip");b.value=e}})})});';   // js字串，不含<script标签
      private static $uiList = 'btn,input';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
