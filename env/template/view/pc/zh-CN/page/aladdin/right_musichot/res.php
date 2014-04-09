<?php 
  class CssJs_Util_right_musichot
   {
      private static $cssStr = '.opr-musichot-vline{color:#dadada;}.opr-musichot-gray{color:#666;font-size:.92em;}.opr-musichot-l{float:left;}.opr-musichot-btn{padding-left:6px;padding-right:6px;}.opr-musichot-btn-p{padding-top:8px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_musichot",function(){A.setup(function(){var e=this;var b=e.data.hotsongs;var d;var a=e.find(".opr-musichot-btn").eq(0),c=e.find(".opr-musichot-song-a");$.each(c,function(f,g){$(g).on("click",function(){bds.event&&bds.event.trigger("zhixin.zx_mussong_mbox_pause")})});A.use("mboxsingleton",function(){d=new A.ui.mboxsingleton();a.on("click",function(){d.openBox("mbc.ps",b,{fr:"altg3"})})});this.dispose=function(){d&&d.dispose&&d.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'btn,img,table';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
