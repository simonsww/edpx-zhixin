<?php 
  class CssJs_Util_right_qunarflight01
   {
      private static $cssStr = '.opr-right-qunarflight01-wrap{width:260px;min-width:260px;}.opr-right-qunarflight01-wrap-tit{font-weight:bold;font-size:14px;padding-bottom:3px;}.opr-right-qunarflight01-wrap-hl{color:#c00;}.opr-right-qunarflight01-wrap-rt{float:right;font-size:13px;font-weight:normal;color:#666;}.opr-right-qunarflight01-th{border-bottom:1px solid #f0f0f0;background:#fafafa;height:27px;line-height:27px;color:#666;margin-bottom:3px;}.opr-right-qunarflight01-th .opr-right-qunarflight01-th-pr{float:right;width:60px;text-align:right;}.opr-right-qunarflight01-th .opr-right-qunarflight01-th-dt{float:right;width:80px;text-align:center;}.opr-right-qunarflight01-wrap-ulist{padding-bottom:3px;}.opr-right-qunarflight01-wrap-ulist li{white-space:nowrap;height:25px;line-height:25px;}.opr-right-qunarflight01-wrap-ulist li a{text-decoration:none;}.opr-right-qunarflight01-wrap-ulist .opr-right-qunarflight01-warp-rmb{font-style:normal;font-family:Arial;}.opr-right-qunarflight01-wrap-ulist .opr-right-qunarflight01-wrap-ulist-pr{float:right;display:block;font-weight:bold;color:#ff8a00;width:60px;text-align:right;}.opr-right-qunarflight01-wrap-ulist .opr-right-qunarflight01-wrap-ulist-pr a,.opr-right-qunarflight01-wrap-ulist .opr-right-qunarflight01-wrap-ulist-pr a:hover{color:#ff8a00;}.opr-right-qunarflight01-wrap-ulist .opr-right-qunarflight01-wrap-ulist-dt{float:right;width:80px;text-align:center;color:#666;}.opr-right-qunarflight01-wrap-ulist .opr-right-qunarflight01-wrap-ulist-dt a,.opr-right-qunarflight01-wrap-ulist .opr-right-qunarflight01-wrap-ulist-dt a:hover{color:#666;}.opr-right-qunarflight01-wrap-ulist .opr-right-qunarflight01-wrap-ulist-ct{width:118px;overflow:hidden;white-space:nowrap;float:left;display:block;}.opr-right-qunarflight01-wrap-ulist .opr-right-qunarflight01-wrap-icoto{margin:0 2px;}.opr-right-qunarflight01-wrap-ulist .opr-right-qunarflight01-wrap-ab-icowf,.opr-right-qunarflight01-wrap-ulist .opr-right-qunarflight01-wrap-ab-icowf_gray{background:url(http://www.baidu.com/aladdin/img/right_qunarflight01/ico_qn_tjjp.png) no-repeat scroll 0 4px;width:8px;height:8px;margin:0 2px;overflow:hidden;}.opr-right-qunarflight01-wrap-ulist .opr-right-qunarflight01-wrap-ab-icowf_gray{background-position:0 -16px;}';  // css字串，不含<style>和</style>标签
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
