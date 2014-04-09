<?php 
  class CssJs_Util_right_medreladept
   {
      private static $cssStr = '.opr-medreladept{font-size:1em;}.container_l .opr-medreladept{width:440px;}.container_s .opr-medreladept{width:270px;}.opr-medreladept a{text-decoration:none;}.opr-medreladept a:hover{text-decoration:underline;}.opr-medreladept-subtitle{position:relative;height:22px;line-height:22px;font-size:1.1em;}.opr-medreladept-subtitle-tip{position:absolute;padding-right:10px;background:#fff;font-weight:bold;z-index:2;}.opr-medreladept-subtitle-line{position:absolute;top:11px;width:100%;height:0;border-top:1px solid #eaeaea;z-index:1;}.opr-medreladept-list{position:relative;}.opr-medreladept-list-li{height:32px;line-height:32px;overflow:hidden;border-bottom:1px solid #f3f3f3;}.opr-medreladept-list-name,.opr-medreladept-list-info{display:inline-block;height:32px;margin-right:10px;overflow:hidden;white-space:nowrap;-o-text-overflow:ellipsis;text-overflow:ellipsis;}.opr-medreladept-list-name{width:260px;}.opr-medreladept-list-info{position:absolute;right:0;color:#666;}.container_s .opr-medreladept-list-name{width:150px;}.opr-medreladept-list-name a{outline:none;ie-dummy:expression(this.hideFocus=true);}.opr-medreladept .opr-medreladept-morelink{line-height:32px;text-decoration:underline;}.opr-medreladept-morelink span{font-family:simsun;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
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
