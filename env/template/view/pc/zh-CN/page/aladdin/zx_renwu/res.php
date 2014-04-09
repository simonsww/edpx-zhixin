<?php 
  class CssJs_Util_zx_renwu
   {
      private static $cssStr = '.op_zx_renwu{width:635px;overflow:hidden;}.op_zx_renwu a,.op_zx_renwu a em{text-decoration:none;}.op_zx_renwu a:hover,.op_zx_renwu a:hover em{text-decoration:underline;}.op_zx_renwu table{border-collapse:collapse;}.op_zx_renwu td{padding:0;vertical-align:top;}.op_zx_renwu h2{font-size:14px;font-weight:bold;line-height:30px;margin:0 0 5px;}.op_zx_renwu h2 a,.op_zx_renwu h2 a em{text-decoration:underline;}.op_zx_renwu_baike,.op_zx_renwu_news,.op_zx_renwu_weibo,.op_zx_renwu_photo,.op_zx_renwu_tieba,.op_zx_renwu_video,.op_zx_renwu_music{background-color:#fafafa;padding:15px 10px;margin-bottom:10px;}.op-zx-copyright{color:#666;margin-top:5px;font-size:12px;}.op-zx-copyright i{background:url("http://www.baidu.com/aladdin/img/zhixin/sprites2-8.png") -40px 0 no-repeat;padding-left:20px;}';  // css字串，不含<style>和</style>标签
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
