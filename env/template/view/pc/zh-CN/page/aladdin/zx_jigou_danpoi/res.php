<?php 
  class CssJs_Util_zx_jigou_danpoi
   {
      private static $cssStr = '.op-zx-jigou-danpoi,.op-zx-jigou-danpoi li{list-style:none;padding:0;margin:0;}.op-zx-jigou-danpoi li{line-height:24px;}.op-zx-jigou-danpoi-list-gray{color:gray;}.op-zx-jigou-danpoi-list-red{color:#ff8a00;}.op-zx-jigou-danpoi-list-star,.op-zx-jigou-danpoi-list-star-orange{background:no-repeat url("http://www.baidu.com/aladdin/img/jigou/star.png");}.op-zx-jigou-danpoi-list-star{background-position:0 -10px;*background-position:0 -7px;margin-right:5px;}.op-zx-jigou-danpoi-list-star-orange{background-position:0 -35px;padding:3px 35px;}.op-zx-jigou-danpoi-list-hui,.op-zx-jigou-danpoi-list-tuan{text-decoration:none;}.op-zx-jigou-danpoi-list-hui span,.op-zx-jigou-danpoi-list-tuan span{text-decoration:underline;}.op-zx-jigou-danpoi-list-hui i,.op-zx-jigou-danpoi-list-tuan i{background:no-repeat url("http://www.baidu.com/aladdin/img/jigou/jigou.png");padding:4px 6px;margin-right:5px;}.op-zx-jigou-danpoi-list-hui i{background-position:-35px -1px;}.op-zx-jigou-danpoi-list-tuan i{background-position:-63px -1px;}';  // css字串，不含<style>和</style>标签
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
