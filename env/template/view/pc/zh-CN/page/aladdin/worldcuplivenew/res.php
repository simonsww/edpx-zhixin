<?php 
  class CssJs_Util_worldcuplivenew
   {
      private static $cssStr = '.op_worldcup_live{float:left;margin-right:10px;width:118px;}.op_worldcup_live_icon{display:inline-block;width:116px;height:88px;overflow:hidden;border:1px solid #8d8d8d;}.op_worldcup_live_icon a{display:block;width:100%;height:100%;padding-top:25px;text-align:center;}.op_worldcup_live_icon a img{border:none;filter:alpha(opacity=70);-moz-opacity:.7;-khtml-opacity:.7;opacity:.7;}.op_worldcup_live_txt{text-align:center;*padding-top:4px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("worldcuplivenew",function(){A.init(function(){var d=this,b=d.find(".op_worldcuplive_text"),a=36,c=function(j,e,h){if(!j){return""}if(j.replace(/[^\\x00-\\xff]/g,"**").length<=e){return j}var f="";if(h){e-=(h.length+3)}for(var g=0;g<j.length;g++){if((j.substring(0,g)).replace(/[^\\x00-\\xff]/g,"**").length<=e){f=j.substring(0,g)}else{break}}return f+h};b.each(function(e,f){f.innerHTML=c(f.innerHTML,a,"...")})})});';   // js字串，不含<script标签
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
