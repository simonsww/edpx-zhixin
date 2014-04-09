<?php 
  class CssJs_Util_jingyan
   {
      private static $cssStr = '.op_jingyan_list{position:relative;}.op_jingyan_list .op_jingyan_index{position:absolute;top:74px;left:0;width:20px;height:20px padding:1px 0;filter:progid:DXImageTransform.Microsoft.gradient(enabled=\'true\',startColorstr=\'#99000000\',endColorstr=\'#99000000\');background-color:rgba(0,0,0,0.6);font-size:12px;color:#ddd;text-align:center;}:root .op_jingyan_list .op_jingyan_index{filter:none;background-color:rgba(0,0,0,0.6);}.op_jingyan_list a{text-decoration:none;color:#333;font-size:12px;}.op_jingyan_list img{height:92px;}.op_jingyan_list_showmore,.op_jingyan_list_hide{border-top:1px solid #f3f3f3;text-align:center;padding-top:5px;}.op_jingyan_list_showmore span,.op_jingyan_list_hide span{cursor:pointer;}.op_jingyan_list_hide,.op_jingyan_list2,.op_jingyan_pager{display:none;}.op_jingyan_pager{text-align:center;overflow:hidden;padding:4px 0;}.op_jingyan_pager span{display:inline-block;_display:inline;border:1px solid #d5d5d5;overflow:hidden;padding:3px 7px;margin:0 1px;color:#00c;text-decoration:none;line-height:18px;font:normal 12px Arial,Helvetica,sans-serif;text-align:center;vertical-align:middle;}.op_jingyan_pager .op_jingyan_pager_current,.op_jingyan_pager .op_jingyan_pager_seperator,.op_jingyan_pager .op_jingyan_pager_loading{border:none;padding:4px 8px;color:#666;}.op_jingyan_pager .op_jingyan_pager_current{color:#000;}.op_jingyan_pager .op_jingyan_pager_item{cursor:pointer;}';  // css字串，不含<style>和</style>标签
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
