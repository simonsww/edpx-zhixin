<?php 
  class CssJs_Util_olympic
   {
      private static $cssStr = '.op_olympic_wrapper{font-size:13px;padding-top:7px;}.op_olympic_tab .op-ui-tabs-sep{width:5px;background-position:3px -32px;}.op_olympic_tab .op-ui-tabs-content{padding:0;}.op_olympic_clear{clear:both;height:12px;*height:4px;font-size:0;line-height:0;}.op_olympic_img{float:left;padding-top:3px;}.op_olympic_img a{width:118px;height:90px;display:block;overflow:hidden;border:1px solid #ccc;}.op_olympic_info{float:left;padding-left:9px;}.op_olympic_info p{margin-top:8px;}.op_olympic_info .op_olympic_title{margin:0;}.op_olympic_title a{font-weight:bold;}.op_olympic_table td{padding:10px;border-bottom:1px solid #eee;font-size:13px;}.op_olympic_table td a{text-decoration:none;}.op_olympic_table td p{white-space:nowrap;overflow:hidden;}.op_olympic_txt{height:19px;background:url(http://www.baidu.com/aladdin/img/asiangames/jinpai-1.0.gif) no-repeat left;padding-left:16px;}.op_olympic_tinfo{color:#666;padding-top:3px;}.op_olympic_play{display:inline-block;text-decoration:none;padding-left:20px;}.op_olympic_play1{text-decoration:none;color:#000;cursor:default;margin-left:20px;}.op_olympic_icon{background:url(http://www.baidu.com/aladdin/img/asiangames/play.gif) no-repeat left;margin-left:0;padding-left:20px;}.op_olympic_icon1{display:inline-block;height:16px;width:22px;cursor:default;}.op_olympic_link{padding-top:10px;}.op_olympic_link a,.op_olympic_l a{margin-right:5px;}.op_olympic_gm{position:relative;}.op_olympic_pic{position:absolute;height:30px;overflow:hidden;right:5px;top:-20px;}.op_olympic_to{padding-top:8px;color:#696969;}';  // css字串，不含<style>和</style>标签
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
