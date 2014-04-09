<?php 
  class CssJs_Util_right_jigou_zhoubian
   {
      private static $cssStr = '.opr-jigou-zhoubian-title{font-size:16px;font-weight:bold;border:none;border-top:solid 1px #E1E1E1;padding:0;margin:0 0 5px 0;}.opr-jigou-zhoubian-title legend{padding:0 5px 0 0;}.opr-jigou-zhoubian-list{margin-top:15px;font-size:12px;}.opr-jigou-zhoubian-list-gray{color:gray;}.opr-jigou-zhoubian-list-red{color:#ff8a00;}.opr-jigou-zhoubian-list-star,.opr-jigou-zhoubian-list-star-orange{background:no-repeat url("http://www.baidu.com/aladdin/img/jigou/star.png");display:inline-block;height:20px;}.opr-jigou-zhoubian-list-star{+background-position:0 -12px!important;background-position:0 -6px;width:75px;margin-right:5px;}.opr-jigou-zhoubian-list-star-orange{+background-position:0 -42px!important;background-position:0 -34px;}.opr-jigou-zhoubian-list-tuan,.opr-jigou-zhoubian-list-hui{background:no-repeat url("http://www.baidu.com/aladdin/img/jigou/jigou.png");padding:4px 8px;text-decoration:none;}.opr-jigou-zhoubian-list-tuan{background-position:-33px -1px;}.opr-jigou-zhoubian-list-hui{background-position:-61px -1px;}.opr-jigou-zhoubian-list-left{float:left;width:80px;}.opr-jigou-zhoubian-list-right{float:left;}.opr-jigou-zhoubian-list-right,.opr-jigou-zhoubian-list-right li{margin:0;padding:0;list-style:none;}.opr-jigou-zhoubian-list-right li{line-height:24px;}.container_l .opr-jigou-zhoubian-list-text-s{display:none;}.container_s .opr-jigou-zhoubian-list-text-l{display:none;}';  // css字串，不含<style>和</style>标签
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
