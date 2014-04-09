<?php 
  class CssJs_Util_sam_weibo
   {
      private static $cssStr = '.op_sp_weibo a{text-decoration:none;}.op_sp_weibo a:hover{text-decoration:underline;}.op_sp_weibo li{min-height:55px;height:auto!important;height:55px;overflow:visible;}.op_sp_weibo li .info{padding-top:2px;}.op_sp_weibo li .info .c{text-decoration:none;}.op_sp_weibo_info{color:#666;font-size:12px;margin-top:2px;}.op_sp_weibo_info .op_sp_weibo_pz{float:right;color:#999;}.op_sp_weibo_face{position:relative;float:left;}.op_sp_weibo_face img{height:52px;}.op_sp_weibo_level_icon{background-image:url(http://www.baidu.com/cache/midpage/baiduwb/img/weibo_level_icon.png);width:16px;height:14px;background-repeat:no-repeat;display:inline-block;vertical-align:text-bottom;}.op_sp_weibo_level_icon_1{background-position:-20px 0;}.op_sp_weibo_level_icon_2{background-position:0 0;}.op_sp_weibo_level_icon_3{background-position:-40px 0;}.op_sp_weibo_level_icon_11{background-position:-80px 0;}.op_sp_weibo_level_icon_12{background-position:-60px 0;}.op_sp_weibo_level_icon_13{background-position:-100px 0;}.op_sp_weibo_more a{text-decoration:underline;}.op_sp_weibo_info .m a{color:#666;}.op_sp_weibo_detail{margin-top:-4px;}.op_sp_weibo_all{white-space:nowrap;display:inline-block;}';  // css字串，不含<style>和</style>标签
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
