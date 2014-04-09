<?php 
  class CssJs_Util_university
   {
      private static $cssStr = '.op-yaohao-time-dropdown-container{width:120px;}.op_uni_con{font-weight:bold;}.op_select_margin{float:left;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("university",function(){A.setup(function(){var e=this,a,b,d=e.find(".op-yaohao-dropdown")[0],c=e.find(".op-yaohao-dropdown2")[0];e.find(".op_uni_btn").click(function(){e.find(".op_uni_search")[0].submit();return false});A.use("dropdown21",function(){a=A.ui.dropdown21(d);a.setName("province");b=A.ui.dropdown21(c);b.setName("zstype")});this.dispose=function(){a&&a.dispose&&a.dispose();b&&b.dispose&&b.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'dropdown2,btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
