<?php 
  class CssJs_Util_definitive_answer
   {
      private static $cssStr = '';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("definitive_answer",function(){A.setup(function(){var a=this;var b=a.data.EntityNumber,c=a.data.TemplateView;a.find(".op_definitive_answer_tools_fb").on("click",function(){var d=this;if(b=="S"||c=="M1"){$(d).replaceWith("<span>感谢反馈</span>")}else{$dom_fbBtn=a.find(".op_definitive_answer_feedback");if($(d).html()!="取消报错"){$dom_fbBtn.show();$(d).html("取消报错");$dom_fbBtn.on("mouseover",function(){if($(this).html()!="已反馈"){$(this).parent("div").css({"background-color":"#fafafa"})}}).on("mouseout",function(){if($(this).html()!="已反馈"){$(this).parent("div").css({"background-color":"#fff"})}}).on("click",function(){if($(this).html()!="已反馈"){$(this).css({color:"#ccc",cursor:"default"}).html("已反馈").parent("div").css({"background-color":"#fff"});$dom_fbBtn.stop().delay(500).hide(200);if($dom_fbBtn.not(function(){return $(this).html()=="已反馈"}).length!=0){$(d).html("感谢，继续报错")}else{$(d).replaceWith("<span>感谢反馈</span>")}}})}else{$dom_fbBtn.hide(120);$(d).html("报错")}}})})});';   // js字串，不含<script标签
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
