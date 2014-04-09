<?php 
  class CssJs_Util_zx_tieba2
   {
      private static $cssStr = '.op_zx_tieba{overflow:hidden;background-color:#fafafa;padding:15px 10px;width:615px;margin-bottom:10px;}.op_zx_tieba table{margin-bottom:4px;width:100%;}.op_zx_tieba h3{font-size:14px;font-weight:bold;line-height:30px;margin:0 0 5px;}.op_zx_tieba_header h3{float:left;}.op_zx_tieba_header_right{float:right;color:#666;font-size:13px;line-height:30px;}.op_zx_tieba_header_right strong{color:#000;font-size:14px;}.op_zx_tieba_tags{font-size:12px;border-bottom:dotted 1px #d2d2d2;margin-bottom:10px;padding-bottom:5px;}.op_zx_tieba_tags a,.op_zx_tieba_tags em{text-decoration:none;}.op_zx_tieba_list_subject{font-size:13px;}.op_zx_tieba_list_top,.op_zx_tieba_list_fine{background:url("http://www.baidu.com/aladdin/img/zhixin/icon-1.2.gif") 0 3px no-repeat;padding:3px 9px;}.op_zx_tieba_list_pic{background:url("http://www.baidu.com/aladdin/img/zhixin/icon-1.2.gif") -80px 3px no-repeat;padding:3px 16px;}.op_zx_tieba_list_top{background-position:-24px 3px;padding:3px 15px;}.op_zx_tieba_list td{padding:0 15px 0 2px;line-height:25px;font-size:13px;position:relative;text-align:left;}.op_zx_tieba_more{font-size:12px;}.op_zx_tieba_item_rate{font-size:12px;color:#666;width:100px;height:25px;overflow:hidden;}';  // css字串，不含<style>和</style>标签
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
