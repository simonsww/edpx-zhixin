<?php 
  class CssJs_Util_phoneajax
   {
      private static $cssStr = '.op_phoneajax_icon{line-height:0;}.op_phoneajax_form{margin:0;padding:0;}.op_phoneajax_txt.tip{color:#AAA;}.op_phoneajax_txt.no{color:#000;}.op_phoneajax_tr_e{display:none;}.op_phoneajax_tr_e span{color:#F00;}.op_phoneajax_tr_info span{color:#666;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("phoneajax",function(){A.setup(function(){var l=this;var c=!-[1,];var i=c&&!window.XMLHttpRequest;var b=l.find(".op_phoneajax_btn")[0];var j=l.find(".op_phoneajax_txt")[0];var a=l.find(".op_phoneajax_tr_e")[0];var g=l.find(".op_phoneajax_form")[0];var e=l.find(".op_phoneajax_wd")[0];if(i){try{document.execCommand("BackgroundImageCache",false,true)}catch(f){}}$(g).submit(function(){k()});$(b).click(function(){k()});function k(){var m=d(j.value);if(m!=""){if(!h(m)){a.style.display="block"}else{a.style.display="none";e.value=m;g.submit()}}else{a.style.display="none"}}function d(m){m=m.replace(/(\\u3000+)|(\\u3000+)/g,"");m=m.replace(/( +)|( +)/g,"");return m}function h(m){return(new RegExp("^\\\\d{7,11}\\x24")).test(m)}})});';   // js字串，不含<script标签
      private static $uiList = 'input,btn,img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
