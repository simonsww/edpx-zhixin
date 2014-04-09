<?php 
  class CssJs_Util_car5
   {
      private static $cssStr = '.op_car5_main{width:540px;margin-top:9px;}.op_car5_main th{font-size:13px;}.op_car5_main th{height:26px;background:url(http://www.baidu.com/aladdin/img/table/bg.gif) repeat-x 0 -36px;font-weight:normal;text-align:left;padding-left:5px;}.op_car5_tab td{border-bottom:1px solid #eee;padding:8px 0 7px 5px;font-size:14px;}.op_car5_tab td a{text-decoration:none;}.op_car5_map{color:#77c;margin-left:8px;}.op_car5_morlink td{height:28px;line-height:28px;}.op_car5_morlink a{color:#77c;font-size:12px;}.op_car5_aleft{display:block;float:left;}.op_car5_alink{float:right;text-align:right;}.op_car5_alink span{margin-left:20px;}.op_car5_showlink{font-size:13px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("car5",function(){A.setup(function(){var b=this,a=b.find(".op_car5_morlink")[0];if(op_car5_moreModel==""&&op_car5_txtlink==""){a.style.display="none"}})});';   // js字串，不含<script标签
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
