<?php 
  class CssJs_Util_right_linklist
   {
      private static $cssStr = '.container_l .opr-linklist{width:440px;}.container_s .opr-linklist{width:255px;}.opr-linklist-subtitle{font-size:14px;background:url(http://www.baidu.com/aladdin/img/right_relainfo/horizon.png) repeat-x 0 bottom;position:relative;zoom:1;margin-bottom:6px;color:#333;}.opr-linklist-subtitle-tip{padding-right:10px;margin-right:30px;background:#fff;font-weight:bold;}.opr-linklist-press{color:#000;font-size:14px;line-height:20px;margin-top:10px;}.opr-linklist-press span{margin-left:5px;font-size:13px;}.opr-linklist-list{margin-top:8px;}.opr-linklist-info{width:220px;float:left;margin-top:2px;}.container_s .opr-linklist-even{display:none;}.opr-linklist-info a{text-decoration:none;}.opr-linklist-info a:hover{text-decoration:underline;}.opr-linklist-red{color:#a22529;margin-left:5px;}.opr-linklist-gray{color:#666;margin-left:5px;}';  // css字串，不含<style>和</style>标签
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
