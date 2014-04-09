<?php 
  class CssJs_Util_zx_comment
   {
      private static $cssStr = '.op_zx_comment{color:#666;line-height:22px;padding:15px;background:#f8f8f8;width:606px;font-size:13px;overflow:hidden;}.op_zx_comment h3{font-size:14px;float:left;}.op_zx_comment p{color:#333;border-bottom:1px dashed #e8e8e8;padding-bottom:7px;margin-bottom:6px;line-height:20px;}.op_zx_comment_title,.op_zx_comment_num,.op_zx_comment_point{background:url(http://www.baidu.com/aladdin/img/newvideo/newvideo-1.3.png) no-repeat;}.op_zx_comment_title{background-position:0 -51px;padding-left:14px;float:left;}.op_zx_comment_num{font-size:12px;background-position:right -34px;padding-right:20px;float:right;}.op_zx_comment_morelink{font-size:12px;font-family:simsun;float:right;margin:1px 7px 3px 0;}';  // css字串，不含<style>和</style>标签
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
