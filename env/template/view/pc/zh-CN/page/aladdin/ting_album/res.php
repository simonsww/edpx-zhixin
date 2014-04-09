<?php 
  class CssJs_Util_ting_album
   {
      private static $cssStr = '.op_auto_template,.op_auto_template table{width:100%;}.op_auto_template a{color:#00c;}.op_TABLE_COMMON{width:100%;border-collapse:collapse;}.op_TABLE_COMMON th{text-align:left;white-space:nowrap;font-weight:normal;font-size:13px;height:26px;line-height:26px;padding:0 0 0 8px;background:url("http://www.baidu.com/aladdin/img/table/bg.gif") repeat-x 0 -37px;}.op_TABLE_COMMON td{white-space:nowrap;font-size:14px;padding:7px 0 7px 8px;border-bottom:1px solid #eee;}.op_TABLE_COMMON a,.op_TABLE_COMMON em{text-decoration:none;}.op_TABLE_COMMON a:hover,.op_TABLE_COMMON a:hover em{text-decoration:underline;}.opui-button-small{display:inline-block;float:left;height:24px;line-height:24px;text-align:center;font-size:13px;color:#000;vertical-align:middle;text-decoration:none;}.opui-button-small div{background:url(http://www.baidu.com/aladdin/img/bank/temp_bank_btn.gif) 0 -48px repeat-x;}.opui-button-small div div{background:url(http://www.baidu.com/aladdin/img/bank/temp_bank_btn.gif) 0 0 no-repeat;}.opui-button-small div div div{background:url(http://www.baidu.com/aladdin/img/bank/temp_bank_btn.gif) right -24px no-repeat;padding:0 15px;white-space:nowrap;color:#000;}.opui-button-small:hover div,.opui-button-small:focus div{background-position:0 -96px;}.opui-button-small:hover div div,.opui-button-small:focus div div{background-position:0 -72px;}.opui-button-small:hover div div div,.opui-button-small:focus div div div{background-position:right -120px;}';  // css字串，不含<style>和</style>标签
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
