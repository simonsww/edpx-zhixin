<?php 
  class CssJs_Util_vd_mininewest
   {
      private static $cssStr = '.op_vd_mininewest_img_container{display:block;position:relative;text-decoration:none;zoom:1;}.op_vd_mininewest_img_container img{height:91px;}.op_vd_mininewest_headnote{position:absolute;padding:0 4px;background-color:#1da5ff;color:#fff;right:0;_right:-1px;top:0;}.op_vd_mininewest_footnote,.op_vd_mininewest_footnote_mask{position:absolute;width:100%;color:#fff;left:0;bottom:0;_bottom:-1px;}.op_vd_mininewest_footnote_mask{background:#000;opacity:.65;-moz-opacity:.65;-webkit-opacity:.65;-ms-opacity:.65;filter:alpha(opacity=65);}.op_vd_mininewest_footnote_left{float:left;width:65px;overflow:hidden;display:block;text-align:left;margin-left:4px;}.op_vd_mininewest_footnote_right{float:right;display:block;text-align:right;margin-right:4px;}.op_vd_mininewest_link{display:block;overflow:hidden;text-align:center;}.op_vd_mininewest_subinfo{color:#9d9d9d;text-align:center;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
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
