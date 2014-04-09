<?php 
  class CssJs_Util_best_answer
   {
      private static $cssStr = '.op_best_answer_answer a,.op_best_answer_source a,.op_best_answer_ext a{text-decoration:none;}.op_best_answer_answer a:hover,.op_best_answer_source a:hover,.op_best_answer_ext a:hover{text-decoration:underline;}.op_best_answer_question,.op_best_answer_answer{font-size:1.07em;line-height:1.9em;}.op_best_answer_icon{width:16px;float:left;}.op_best_answer_icon i{*margin-top:6px;}.op_best_answer_content{width:492px;float:left;}.op_best_answer_content p{word-wrap:break-word;}.op_best_answer_img{float:left;}.op_best_answer_question_link{font-size:1.15em;}.op_best_answer_question .op_best_answer_content p a,.op_best_answer_question .op_best_answer_content p a:hover{color:#333;text-decoration:none;}.op_best_answer_question .op_best_answer_content p a em{text-decoration:none;}.op_best_answer_question .op_best_answer_content .op_best_answer_question_problemExt{font-size:.92em;color:#666;line-height:1.54em;}.op_best_answer_question .op_best_answer_content .op_best_answer_question_problemExt a,.op_best_answer_question .op_best_answer_content .op_best_answer_question_problemExt a:hover{color:#666;}.op_best_answer_answer_more{color:#00c;font-family:SimSun;white-space:nowrap;cursor:pointer;}.op_best_answer_source{color:#999;text-align:right;font-size:.92em;margin-bottom:-3px;}.op_best_answer_source a{color:#999;}.op_best_answer_source_sep{color:#ccc;margin:0 8px;}.op_best_answer_ext{border-top:1px solid #ebebeb;}.op_best_answer_otheranswer{color:#999;}.op_best_answer_otheranswer a{color:#00c;}.op_best_answer_otheranswer a em{text-decoration:none;}.op_best_answer_otheranswer a:hover em{text-decoration:underline;}.op_best_answer_otheranswer span{font-size:.92em;}.op_best_answer_moreanswer{margin:2px 0 -2px 0;}.op_best_answer_moreanswer a{font-family:SimSun;color:#77c;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("best_answer",function(){A.setup(function(){var a=this;a.find(".op_best_answer_feedback").on("click",function(){$(this).replaceWith("<span>感谢反馈</span>")})})});';   // js字串，不含<script标签
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
