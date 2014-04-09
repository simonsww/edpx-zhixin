<?php 
  class CssJs_Util_zx_gaokao
   {
      private static $cssStr = '.op_zx_gaokao{font-size:12px;line-height:20px;width:540px;}.op_zx_gaokao_title{line-height:26px;font-weight:normal;}.op_zx_gaokao_describe{font-size:12px;color:#666;line-height:24px;}.op_zx_gaokao_main{border-bottom:1px solid #ccc;margin-bottom:2px;}.op_zx_gaokao_main li{border-top:1px solid #ccc;}.op_zx_gaokao_item{margin-left:85px;padding:5px 0;line-height:22px;font-size:12px;padding-right:5px;}.op_zx_gaokao_item_title{width:80px;float:left;display:inline;font-weight:bold;font-size:13px;text-align:right;margin:0;line-height:22px;padding-top:5px;height:22px;overflow:hidden;}.op_zx_gaokao_item a,.op_zx_gaokao_item em{text-decoration:none;}.op_zx_gaokao_item a:hover{text-decoration:underline;}.op_zx_gaokao_split{padding:0 6px;color:#ccc;}.op_zx_gaokao_itemsplit{padding-left:5px;}.op_zx_gaokao_item_abs{color:#999;}.op_zx_gaokao_hot{background:url(http://www.baidu.com/aladdin/img/zx_gaokao/zx_gaokao.png) -18px -0px no-repeat;padding:3px 7px;}.op_zx_gaokao_new{background:url(http://www.baidu.com/aladdin/img/zx_gaokao/zx_gaokao.png) -40px -0px no-repeat;padding:3px 7px;}.op_zx_gaokao_resources{color:#666;padding-top:2px;}';  // css字串，不含<style>和</style>标签
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
