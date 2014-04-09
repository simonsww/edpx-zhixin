<?php 
  class CssJs_Util_tuan3
   {
      private static $cssStr = '.op_tg3_title,.op_tg3_list,.op_tg3_con,.op_tg3_url{font-size:13px;}.op_tg3_title{width:520px;margin:8px 0;background:url(http://www.baidu.com/aladdin/img/nba/bg.png) repeat-x;line-height:26px;padding-left:3px;}.op_tg3_title span{padding-left:6px;color:#666;font-size:12px;}.op_tg3_list a{font-family:simsun;padding-right:10px;}.op_tg3_main{width:520px;overflow:hidden;}.op_tg3_con{width:540px;overflow:hidden;}.op_tg3_con li{border-top:1px solid #eee;padding:8px 0 5px 0;width:33%;float:left;line-height:18px;}.op_tg3_con li div{width:167px;}.op_tg3_con a{text-decoration:none;}.op_tg3_img{margin-bottom:2px;}.op_tg3_img img{width:165px;height:105px;border:1px solid #7493e5;display:block;}.op_tg3_info{color:#666;}.op_tg3_con li span{width:49%;float:left;}.op_tg3_color1{color:#c00;}.op_tg3_color2{color:#000;}.op_tg3_url{color:#008000;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("tuan3",function(){A.setup(function(){var c=this,a=c.find(".op_tg3_main").get(0).getElementsByTagName("a"),b=c.find(".op_tg3_con").get(0).getElementsByTagName("li");b[0].style.borderTop="none";b[1].style.borderTop="none";b[2].style.borderTop="none"})});';   // js字串，不含<script标签
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
