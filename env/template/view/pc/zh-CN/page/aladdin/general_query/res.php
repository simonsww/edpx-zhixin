<?php 
  class CssJs_Util_general_query
   {
      private static $cssStr = '.op_general_query_icon{display:inline-block;width:20px;height:16px;background:url(http://www.baidu.com/aladdin/img/general_query/general_query_icon.gif) 0 0 no-repeat;}.op_general_query_main a,.op_general_query_ext a{text-decoration:none;}.op_general_query_main a:hover,.op_general_query_ext a:hover{text-decoration:underline;}.op_general_query_question a{font-size:1.231em;text-decoration:underline;}.op_general_query_question_ext{color:#666;position:relative;}.op_general_query_icon_answer{height:23px;position:absolute;top:5px;left:0;*top:0;}.op_general_query_answer{font-size:1.077em;line-height:26px;position:relative;clear:both;}.op_general_query_answer p{text-indent:2em;word-wrap:break-word;}.op_general_query_answer_more{color:#00c;font-family:SimSun;margin-left:5px;white-space:nowrap;cursor:pointer;}.op_general_query_answer_more a{color:#00c;}.op_general_query_source{color:#999;text-align:right;font-size:.923em;margin-bottom:-5px;}.op_general_query_source a{color:#999;}.op_general_query_source_sep{color:#ccc;margin:0 8px;}.op_general_query_ext{padding-top:3px;font-size:1em;border-top:1px solid #ebebeb;}.op_general_query_ext p{margin-top:4px;}.op_general_query_otheranswer{color:#999;font-size:.923em;}.op_general_query_otheranswer a{color:#00c;font-size:1em;}.op_general_query_otheranswer a em{text-decoration:none;}.op_general_query_otheranswer a:hover em{text-decoration:underline;}.op_general_query_moreanswer{margin-bottom:-3px;}.op_general_query_moreanswer a{font-family:SimSun;color:#77c;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("general_query",function(){A.setup(function(){var b=this;b.find(".op_general_query_feedback").mousedown(function(){$(this).css("display","none");var c=document.createElement("span");c.innerHTML="感谢反馈";$(c).insertAfter($(this))});var a=b.find(".op_general_query_answer_showall")[0];if(a){$(a).click(function(){b.find(".op_general_query_answer_less").css("display","none");b.find(".op_general_query_answer_all").css("display","block")})}})});';   // js字串，不含<script标签
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
