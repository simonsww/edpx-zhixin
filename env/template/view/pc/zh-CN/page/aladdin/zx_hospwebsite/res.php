<?php 
  class CssJs_Util_zx_hospwebsite
   {
      private static $cssStr = '.op-zx-hospwebsite-phonesep{color:#d8d8d8;margin:0 6px 0 3px;}.op-zx-hospwebsite-viconcont{float:left;position:relative;margin:0 3px 0;*margin:3px 3px 0;}.op-zx-hospwebsite-showurl{float:left;}.op-zx-hospwebsite-rzcont{position:absolute;z-index:999;left:0;top:18px;display:none;}.op-zx-hospwebsite-hint_arrow{position:absolute;top:0;*top:0;left:-2px;z-index:1;}.op-zx-hospwebsite-rzcont .op-zx-hospwebsite-arrowout,.op-zx-hospwebsite-rzcont .op-zx-hospwebsite-arrowin{color:#ccc;position:absolute;top:1px;left:5px;font-size:12px;font-family:Simsun;font-weight:normal;display:block;z-index:1;}.op-zx-hospwebsite-rzcont .op-zx-hospwebsite-arrowin{color:#fff;margin-top:1px;}.op-zx-hospwebsite-hitcon{font-size:12px;line-height:22px;color:#575757;min-width:230px;_width:230px;position:absolute;border:1px solid #CCC;padding:3px 10px 5px;background:#fff;top:9px;left:0;box-shadow:1px 1px 2px #ccc;-moz-box-shadow:1px 1px 2px #ccc;-webkit-box-shadow:1px 1px 2px #ccc;white-space:nowrap;}.op-zx-hospwebsite-rzcont .hinticon{height:22px;margin-right:6px;}.op-zx-hospwebsite-rzcont img{vertical-align:middle;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("zx_hospwebsite",function(){A.setup(function(){var d=this;var b=d.find(".op-zx-hospwebsite-rzcont");var a=d.find(".op-zx-hospwebsite-vicon");var c=null;a.hover(function(){clearTimeout(c);b.css("display","block")},function(){c=setTimeout(function(){b.css("display","none")},50)});b.hover(function(){clearTimeout(c)},function(){c=setTimeout(function(){b.css("display","none")},50)});this.dispose=function(){clearTimeout(c)}})});';   // js字串，不含<script标签
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
