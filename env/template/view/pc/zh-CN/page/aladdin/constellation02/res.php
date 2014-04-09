<?php 
  class CssJs_Util_constellation02
   {
      private static $cssStr = '.op_constellation02_gap{font-size:20px;font-family:"微软雅黑" arial;color:#388bff;}.op_constellation02_dropdown1,.op_constellation02_dropdown2,.op_constellation02_gap,.op_constellation02_btn{float:left;}.op_constellation02_dropdown1,.op_constellation02_dropdown2{width:84px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("constellation02",function(){A.init(function(){var f=this,e,d,b=f.find(".op_constellation02_select1"),a=f.find(".op_constellation02_select2"),c=f.find(".op_constellation02_form");A.use("dropdown21",function(){e=A.ui.dropdown21(f.find(".op_constellation02_dropdown1")[0],{onchange:function(g){}});d=A.ui.dropdown21(f.find(".op_constellation02_dropdown2")[0],{onchange:function(g){}});f.find(".op_constellation02_btn").click(function(){b.val(e.getValue());a.val(d.getValue());c.submit();return false})});this.dispose=function(){e&&e.dispose&&e.dispose();d&&d.dispose&&d.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'btn,dropdown2';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
