<?php 
  class CssJs_Util_zx_medzhidao
   {
      private static $cssStr = '.op-medzhidao{width:600px;}.opr-medzhidao-summary{margin-top:4px;}.opr-medzhidao-site{margin-top:4px;}.op-medzhidao-list{margin-top:2px;}.op-medzhidao-list li{line-height:22px;}.op-medzhidao-list span{font-size:.923em;color:#666;}.opr-medzhidao-mlist{margin-top:4px;font-family:\'宋体\';}.op-medzhidao-mr{font-weight:bold;display:inline-block;}.op-medzhidao-common{display:inline-block;padding-left:21px;background:url(http://www.baidu.com/aladdin/img/zx_medzhidao/medzhidao.png) no-repeat;text-decoration:underline;cursor:pointer;}.op-medzhidao-hdf{background-position:0 -41px;}.op-medzhidao-jk39{background-position:0 -20px;}.op-medzhidao-xywy{background-position:0 0;}.op-medzhidao-vline{color:#D8D8D8;display:inline-block;padding:0 9px;}';  // css字串，不含<style>和</style>标签
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
