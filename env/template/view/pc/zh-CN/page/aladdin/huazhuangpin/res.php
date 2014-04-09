<?php 
  class CssJs_Util_huazhuangpin
   {
      private static $cssStr = '.op_huazhuangpin_container{position:relative;}.op_huazhuangpin_score{display:block;position:absolute;top:23px;right:20px;width:70px;height:100px;text-align:center;}.op_huazhuangpin_cost{font-size:22px;color:#fe812e;}.op_huazhuangpin_sum,.op_huazhuangpin_intortitle,.op_huazhuangpin_list li span{color:#666;}.op_huazhuangpin_introtext,.op_huazhuangpin_xdtitle{color:#000;}.op_huazhuangpin_bjtext{color:#fe812e;font-size:14px;font-weight:bold;}.op_huazhuangpin_gxtext{padding:2px;margin-right:5px;background-color:#fa87be;color:#fff;text-decoration:none;}.op_huazhuangpin_cptext,.op_huazhuangpin_total a,.op_huazhuangpin_list li a{color:#00c;}.op_huazhuangpin_list li{width:508px;position:relative;line-height:21px;}.op_huazhuangpin_list li i{display:inline-block;font-style:normal;color:#fff;vertical-align:middle;margin:0 0 0 6px;background:#f13f40;width:16px;height:16px;overflow:hidden;line-height:16px;text-align:center;}.op_huazhuangpin_list li span{position:absolute;top:0;right:0;}.op_huazhuangpin_line{color:#d8d8d8;margin:0 5px;}.op_huazhuangpin_total span{color:#c00;}';  // css字串，不含<style>和</style>标签
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
