<?php 
  class CssJs_Util_exactqa_detail
   {
      private static $cssStr = '';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("exactqa_detail",function(){A.setup(function(){var c=this;c.find(".op_exactqa_detail_tools_fb").on("click",function(){$(this).replaceWith("<span>感谢反馈</span>")});var b=c.find(".op_exactqa_detail_s_answer_showall"),e=c.find(".op_exactqa_detail_s_answer"),a=c.find(".op_exactqa_detail_s_answer_scroll_content");b.length&&b.on("click",function(){e.html("<span>"+$(this).attr("content")+"</span>")});a.length&&A.use("baidu",function(){A.use("scrollbarv",function(){var f=A.ui.scrollbarv({content:a[0],length:190})})});var d=c.find(".op_exactqa_detail_ext_showall");d.length&&d.on("click",function(){$(this).parent().html($(this).attr("content"))});this.dispose=function(){poemScrollbar&&poemScrollbar.dispose&&poemScrollbar.dispose()}})});';   // js字串，不含<script标签
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
