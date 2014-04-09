<?php 
  class CssJs_Util_dict2
   {
      private static $cssStr = '.op_definitive_answer_s_prop{font-size:1.1em;font-weight:bold;color:#999;}.op_font{font-size:1.85em;font-family:\'微软雅黑\';}.op_font a,.op_font a:visited{text-decoration:none;}.op_font a:hover,.op_font a:active{text-decoration:underline;}.op_definitive_answer_tools{text-align:right;color:#999;}.op_definitive_answer_tools a{color:#999;cursor:pointer;text-decoration:none;}.op_definitive_answer_tools a:hover{color:#999;text-decoration:underline;}.op_dict_dl dt{color:#999;width:52px;overflow:hidden;float:left;white-space:nowrap;}.op_dict_dl dd{width:466px;overflow:hidden;float:left;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("dict2",function(){A.setup(function(){var a=this;a.find(".op_definitive_answer_tools_fb").mousedown(function(){$(this).css("display","none");var b=document.createElement("span");b.innerHTML="感谢反馈";$(b).insertAfter($(this))})})});';   // js字串，不含<script标签
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
