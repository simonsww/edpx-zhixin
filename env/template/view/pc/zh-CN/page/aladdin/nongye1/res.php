<?php 
  class CssJs_Util_nongye1
   {
      private static $cssStr = '.op_nonyye1_tb th,.op_nonyye1_tab_menu,.op_nonyye1_tab_menu span,.op_nonyye1_tab_menu_current,.op_nonyye1_tab_menu_current a,.op_nonyye1_tab_menu_next{background-image:url("http://www.baidu.com/aladdin/img/table/bg.gif");}.op_nonyye1_tb{border:none;margin-top:9px;}.op_nonyye1_tb th{white-space:nowrap;padding:0 8px;text-align:left;font-weight:normal;height:26px;line-height:26px;font-size:1em;color:#000;background-position:0 -36px;border:0;}.op_nonyye1_tb td a{font-size:1.07em;text-decoration:none;}.op_nonyye1_tb1 td{border-bottom:1px solid #eee;width:100%;padding:8px;}.op_nonyye1_tab_menu{background-position:0 -34px;color:#79755A;font-size:1em;font-weight:normal;height:28px;margin-top:8px;overflow:hidden;padding:0 0 0 10px;}.op_nonyye1_tab_menu span{display:inline-block;height:28px;padding-left:10px;background-position:0 -70px;}.op_nonyye1_tab_menu span a{display:inline-block;height:28px;line-height:28px;padding-right:10px;text-decoration:none;color:#000;}.op_nonyye1_tab_menu span a:focus{outline:none;}.op_nonyye1_tab_menu .op_nonyye1_tab_menu_current{background-position:0 -122px;margin:1px 0 0;}.op_nonyye1_tab_menu .op_nonyye1_tab_menu_next{background-position:0 -35px;}.op_nonyye1_tab_menu .op_nonyye1_tab_menu_current a{background-position:right -122px;font-weight:bold;}.op_nonyye1_tab_cont div{border:none;}.op_nonyye1_table{margin-top:3px;}.op_nonyye1_nav1{margin-top:9px;}.op_nonyye1_table tr td{height:20px;line-height:20px;}.op_nonyye1_table tr td a{color:#000;margin-right:10px;}.op_nonyye1_table_gray{color:#666;padding-right:10px;}.op_nonyye1_traa0,.op_nonyye1_traa1{width:100%;}.op_nonyye1_traa a{text-decoration:none;}.op_nonyye1_traa a:hover{text-decoration:underline;}.op_nonyye1_traa0 tr td,.op_nonyye1_traa1 tr td,.op_nonyye1_tb td{white-space:nowrap;font-size:1.07em;}.op_nonyye1_container .op-ui-tabs-tabs{background-image:url(http://www.baidu.com/cache/aladdin/ui/tabs/images/op_ui_tab_bg.png);}.op-ui-tabs-tab{font-size:1em;}.op-ui-tabs .op-ui-tabs-tab,.op-ui-tabs .op-ui-tabs-only{font-size:1em;}';  // css字串，不含<style>和</style>标签
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
