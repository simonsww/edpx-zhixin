<?php 
  class CssJs_Util_right_baby_contents
   {
      private static $cssStr = '.opr-right-baby-contents-title{margin-bottom:-0.145em;}.opr-right-baby-contents-tag-title{font-weight:bold;font-size:13px;text-decoration:none;position:relative;}.opr-right-baby-contents-tag-gap-top{margin:20px 0 0 0;line-height:1em;}.opr-right-baby-contents-tag-gap-left{margin-left:100px;height:75px;*margin-left:82px;*zoom:1;}.opr-right-baby-contents-tag-slash{display:inline-block;*zoom:1;_display:inline;width:7px;height:0;border-top:solid 1px #e1e1e1;position:relative;margin:0 5px 0 -17px;bottom:4px;*top:5px;}.opr-right-baby-contents-tag-ul{list-style:square;color:#999;}.opr-right-baby-contents-tag-ul li{font-size:10px;margin-bottom:10px;line-height:1.3em;list-style:square;*list-style:square inside;}.opr-right-baby-contents-tag-ul li a{font-size:13px;margin-left:-5px;position:relative;white-space:nowrap;word-break:keep-all;}.opr-right-baby-contents-recommend-text{text-align:center;}.opr-right-baby-contents-recommen-lastspan{display:none;}.container_l .opr-right-baby-contents-recommen-lastspan{display:block;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_baby_contents",function(){A.setup(function(){var a=this})});';   // js字串，不含<script标签
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
