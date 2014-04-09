<?php 
  class CssJs_Util_right_musicvote
   {
      private static $cssStr = '.opr-right-musicvote-content i{width:14px;height:14px;line-height:14px;display:inline-block;background-color:#8eb9f5;color:#fff;font-size:12px;text-align:center;font-style:normal;}.opr-right-musicvote-content i.opr-right-musicvote-first{background-color:#f54545;}.opr-right-musicvote-content i.opr-right-musicvote-second{background-color:#ff8547;}.opr-right-musicvote-content i.opr-right-musicvote-third{background-color:#ffac38;}.opr-right-musicvote-content th{color:#333;font-weight:bold;font-size:15px;background-color:#fff;border:none;}.opr-right-musicvote-content td{border-bottom:1px solid #f3f3f3;}.opr-right-musicvote-content td.opr-right-musicvote-col-index{width:14px;padding-left:0;}.opr-right-musicvote-content td.opr-right-musicvote-col-num{color:#888;}.opr-right-musicvote-content td.opr-right-musicvote-col-btn{width:57px;text-align:right;}.opr-right_musicvote-banner{margin-bottom:16px;}.opr-right-musicvote-box{margin-top:16px;}.opr-right-musicvote-banner-l,.opr-right-musicvote-banner-s,.opr-right-musicvote-btn,.opr-right-musicvote-btn-hover,.opr-right-musicvote-btn-voted,.opr-right-musicvote-btn span{background:url(http://www.baidu.com/aladdin/img/right_musicvote/right_musicvote_1.png) no-repeat;cursor:pointer;-moz-user-select:none;-webkit-user-select:none;user-select:none;}.opr-right-musicvote-btn{position:relative;height:22px;line-height:22px;overflow:hidden;width:32px;padding-left:25px;text-align:left;_font-size:12px;}.opr-right-musicvote-btn span{position:absolute;top:0;left:0;display:inline-block;*zoom:1;width:25px;height:22px;}.opr-right-musicvote-default .opr-right-musicvote-btn{background-position:-258px 0;}.opr-right-musicvote-default .opr-right-musicvote-btn span{background-position:-325px 0;}.opr-right-musicvote-default .opr-right-musicvote-btn-hover{background-position:-258px -32px;}.opr-right-musicvote-default .opr-right-musicvote-btn-hover span{background-position:-325px -32px;}.opr-right-musicvote-disabled .opr-right-musicvote-btn{background-position:-258px -96px;cursor:default;}.opr-right-musicvote-disabled .opr-right-musicvote-btn span{background-position:-325px -96px;cursor:default;}.opr-right-musicvote-disabled .opr-right-musicvote-btn-voted{background-position:-258px -64px;color:#fff;cursor:default;}.opr-right-musicvote-disabled .opr-right-musicvote-btn-voted span{background-position:-325px -64px;color:#fff;cursor:default;}.opr-right-musicvote-bottom-total{font-weight:bold;margin-top:16px;}.opr-right-musicvote-bottom-total span{color:#ff8a00;font-weight:bold;margin:16px 4px 0;}.opr-right-musicvote-rule{font-size:12px;color:#aaa;}.container_l .opr-right-musicvote-content td.opr-right-musicvote-col-name{width:109px;}.container_s .opr-right-musicvote-content td.opr-right-musicvote-col-name{width:70px;}.opr-right-musicvote-banner-s{width:100%;height:75px;background-position:0 -217px;}.opr-right-musicvote-banner-l{width:100%;height:75px;background-position:0 -128px;}.opr-right-musicvote-banner-s{background-position:0 -217px;}.opr-right-musicvote-banner-l,.opr-right-musicvote-banner-s{cursor:default;}.container_l .opr-right-musicvote-banner-l{display:block;}.container_l .opr-right-musicvote-banner-s{display:none;}.container_s .opr-right-musicvote-banner-l{display:none;}.container_s .opr-right-musicvote-banner-s{display:block;}.container_l .opr-right-musicvote-banner-l{display:none;}.container_l .opr-right-musicvote-banner-s{display:block;}.container_s .opr-right-musicvote-banner-l{display:none;}.container_s .opr-right-musicvote-banner-s{display:block;}.container_l .opr-right-musicvote-content{width:259px;}.container_s .opr-right-musicvote-content{width:259px;}.container_l .opr-right-musicvote-content td.opr-right-musicvote-col-name{width:92px;}.container_s .opr-right-musicvote-content td.opr-right-musicvote-col-name{width:92px;}.container_l .opr-right-musicvote-content td{padding-left:3px;}.container_s .opr-right-musicvote-content td{padding-left:3px;}.opr-right-musicvote-share-title{color:#333;}.opr-right-musicvote-share-container .bdsharebuttonbox a{margin:4px 6px 0 0;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'table';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
