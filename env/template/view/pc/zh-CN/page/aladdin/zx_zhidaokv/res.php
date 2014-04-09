<?php 
  class CssJs_Util_zx_zhidaokv
   {
      private static $cssStr = '.op_zhidaokv-mr{font-weight:bold;display:inline-block;}.op_zhidaokv-common{display:inline-block;padding-left:21px;background:url(http://www.baidu.com/aladdin/img/zx_medzhidao/medzhidao.png) no-repeat;text-decoration:underline;cursor:pointer;}.op_zhidaokv-hdf{background-position:0 -41px;}.op_zhidaokv-jk39{background-position:0 -20px;}.op_zhidaokv-xywy{background-position:0 0;}.op_zhidaokv-list .c-default{padding-right:75px;}.op_zhidaokv-list .c-middle{padding-right:26px;}.op_zhidaokv-list span{color:#666;}.op_zhidaokv_answers{line-height:20px;display:block;}.op_zhidaokv_ansnum{line-height:20px;display:block;}.op_zhidaokv_m{color:#666;}.op_zhidaokv_showmore{color:#77c;display:inline-block;}';  // css字串，不含<style>和</style>标签
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
