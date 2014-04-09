<?php 
  class CssJs_Util_zx_renwu_weibo
   {
      private static $cssStr = '.op_zx_renwu_weibo{overflow:hidden;background-color:#fafafa;padding:15px 10px;margin-bottom:10px;margin-right:1px;}.op_zx_renwu_weibo a,.op_zx_renwu_weibo a em{text-decoration:none;}.op_zx_renwu_weibo a:hover,.op_zx_renwu_weibo a:hover em{text-decoration:underline;}.op_zx_renwu_weibo table{border-collapse:collapse;}.op_zx_renwu_weibo td{padding:0;vertical-align:top;}.op_zx_renwu_weibo h2{font-size:14px;font-weight:bold;line-height:30px;margin:0 0 5px;}.op_zx_renwu_weibo h2 a,.op_zx_renwu_weibo h2 a em{text-decoration:underline;}.op_zx_renwu_weibo_content_left{float:left;}.op_zx_renwu_weibo_content_left img{width:48px;height:48px;border:#e3e3e3 solid 1px;}.op_zx_renwu_weibo_content_left a{display:inline-block;width:50px;height:50px;}.op_zx_renwu_weibo_content_right{float:left;margin-left:10px;width:550px;}.op_zx_renwu_weibo_content_right p{font-size:13px;line-height:22px;}.op_zx_renwu_weibo_content_right_name{font-size:14px;color:#c00;}.op_zx_renwu_weibo_content_right_v img{vertical-align:middle;}.op_zx_renwu_weibo_content_right_mood{color:#808080;font-size:12px;}.op_zx_renwu_weibo_content_right_res img{position:relative;top:3px;margin-left:3px;}.op_zx_renwu_weibo_content_right_from,.op_zx_renwu_weibo_content_right_date{color:#666;}';  // css字串，不含<style>和</style>标签
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
