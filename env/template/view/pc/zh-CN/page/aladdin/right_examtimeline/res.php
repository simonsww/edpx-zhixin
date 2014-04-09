<?php 
  class CssJs_Util_right_examtimeline
   {
      private static $cssStr = '.container_s .opr-examtimeline-sp{display:none;}.opr-examtimeline-title{color:#333;font-weight:bold;font-size:1.07em;position:relative;margin-bottom:17px;padding-left:5px;}.opr-examtimeline-title a{font-weight:normal;text-decoration:none;}.opr-examtimeline-sp{margin:0 2px;color:#d9d9d9;font-weight:normal;}.opr-examtimeline-nodelist .opr-examtimeline-red,.opr-examtimeline-title-icon{background:url(\'http://www.baidu.com/aladdin/img/right_examtimeline/bg.png\') no-repeat;}.opr-examtimeline-title-icon{position:absolute;left:-17px;_left:-22px;top:0;display:block;width:14px;height:20px;}.opr-examtimeline-nodelist .opr-examtimeline-red{background-position:4px -30px;color:#999;text-indent:5px;}.opr-examtimeline-nodelist li{position:relative;margin:15px 0 0 -21px;padding-left:21px;background:url(\'http://www.baidu.com/aladdin/img/right_pregnancyv/tlv.png\') no-repeat;height:20px;line-height:20px;overflow:hidden;}.opr-examtimeline-nodelist span{display:inline-block;}.opr-examtimeline-red strong{vertical-align:middle;font-size:1.85em;color:#c00;padding:0 3px;font-weight:normal;}.opr-examtimeline-time{background:#90b1f3;color:#fff;width:72px;text-align:center;margin-left:2px;height:14px;line-height:14px;padding:3px 0;*padding:4px 0 2px;}.opr-examtimeline-nodelist .opr-examtimeline-select{background-position:0 -40px;}.opr-examtimeline-select .opr-examtimeline-time{background:#fc7c7b;}.opr-examtimeline-timetitle{width:90px;margin-left:10px;}.container_s .opr-examtimeline-timetitle{width:80px;}.opr-examtimeline-link{color:#777;}.opr-examtimeline-link a{text-decoration:none;}.opr-examtimeline-link a:hover{text-decoration:underline;}';  // css字串，不含<style>和</style>标签
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
