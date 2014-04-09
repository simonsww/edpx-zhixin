<?php 
  class CssJs_Util_poetry
   {
      private static $cssStr = '.op_mini_poetry_wraper{font-size:13px;}.op_mini_poetry p{margin-top:2px;}.op_mini_poetry a{margin-right:10px;white-space:nowrap;}.op_poetry_open,.op_poetry_close{position:relative;padding-left:14px;display:inline-block;}.op_poetry_open b,.op_poetry_close b{background:url(http://www.baidu.com/aladdin/img/newvideotvplay/newvideo_new.png) 0 -24px;height:13px;width:14px;overflow:hidden;display:block;position:absolute;top:0;left:0;margin:3px 3px 0 0;}.op_poetry_close b{background-position:-18px -24px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("poetry",function(){A.init(function(){var a=A.baidu,c=this;var b=function(e,d){if(e){e.onclick=function(){e.parentNode.style.display="none";d.style.display="block";return false}}};b(c.qq("op_mini_poetry_openbtn"),c.qq("op_mini_poetry_all"));b(c.qq("op_mini_poetry_closebtn"),c.qq("op_mini_poetry_short"));b(c.qq("op_mini_more_openbtn"),c.qq("op_mini_more_samepoetry"));b(c.qq("op_mini_more_closebtn"),c.qq("op_mini_short_samepoetry"))})});';   // js字串，不含<script标签
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
