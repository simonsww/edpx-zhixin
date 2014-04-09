<?php 
  class CssJs_Util_macao_permit
   {
      private static $cssStr = '.op_macao_permit_tips{color:#999;}.op_macao_permit_top a{text-decoration:none;}.op_macao_permit_top td{padding-bottom:7px;}.op_macao_permit_tab2,.op_macao_permit_tab3,.op_macao_permit_item2,.op_macao_permit_item3,.op_macao_permit_item3list{display:none;}.op_macao_permit_article{height:301px;overflow:hidden;padding:0 32px 0 12px;}.op_macao_permit_article_title{font-size:14px;font-weight:bold;padding-top:10px;line-height:32px;margin:0;overflow:hidden;}.op_macao_permit_article_link{padding-left:12px;font-weight:normal;font-size:12px;text-decoration:none;}.op_macao_permit_article_link:hover{text-decoration:underline;}.op_macao_permit_article_anchor{font-size:12px;font-weight:bold;height:28px;overflow:hidden;line-height:28px;margin:0;}.op_macao_permit_flag{width:3px;height:3px;float:left;display:inline;overflow:hidden;background:#666;margin:13px 0 0 2px;}.op_macao_permit_anchor_title{color:#000;float:left;display:inline;margin-left:5px;}.op_macao_permit_article_dtl{line-height:20px;color:#333;padding:0 0 2px 10px;overflow:hidden;}.op_macao_permit_jg{display:block;height:4px;font-size:0;overflow:hidden;}.op_macao_permit_article_btm{height:0;overflow:hidden;}.op_macao_permit_mask{width:508px;height:7px;position:absolute;top:293px;left:0;background:url(http://www.baidu.com/aladdin/img/macao/mac.png) no-repeat left top;z-index:10;overflow:hidden;}.op_macao_permit_load{height:30px;line-height:30px;padding-top:100px;overflow:hidden;margin:0 auto;background:url("http://www.baidu.com/aladdin/img/videoidea/loading_L.gif") no-repeat 0 100px;margin-left:180px;padding-left:40px;}.op_macao_permit_none{height:30px;line-height:30px;padding-top:100px;overflow:hidden;margin:0 auto;margin-left:180px;padding-left:40px;}.op_macao_permit_tabs .c-tabs-nav .c-tabs-nav-li{padding-left:12px;padding-right:12px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = 'tabs';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
