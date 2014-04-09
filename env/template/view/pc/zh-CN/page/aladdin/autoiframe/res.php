<?php 
  class CssJs_Util_autoiframe
   {
      private static $cssStr = '';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("autoiframe",function(){A.setup(function(){var d=this,b=A.baidu,e=null,a=d.data.height,c=d.find(".op-autoframe-close"),f=d.find(".op-autoframe-i")[0];c.click(function(){c.css("display","none");e=setInterval(function(){if(a<=0){d.container.style.display="none";clearInterval(e)}else{a=(a-20)>0?a-20:0;f.style.height=a+"px"}},17)});this.dispose=function(){window.clearInterval(e)}})});';   // js字串，不含<script标签
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
