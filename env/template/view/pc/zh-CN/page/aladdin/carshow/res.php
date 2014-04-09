<?php 
  class CssJs_Util_carshow
   {
      private static $cssStr = '.op_carshow_info{margin-top:8px;width:100%;font-size:1em;}.op_carshow_info td{line-height:22px;}.op_carshow_info td a{margin-right:6px;}.op_carshow_info td.op_carshow_menglink{padding-top:5px;}.op_carshow_info td.op_carshow_menglink a{margin-right:0;}.op_carshow_info td.op_carshow_old{white-space:nowrap;}.op_carshow_price{color:#c00;font-weight:bold;}.op_carshow_img{width:132px;}.op_carshow_img .img_wrap,.op_carshow_mengimg .img_wrap{position:relative;height:90px;}.op_carshow_mengimg .img_wrap{position:relative;height:120px;}.op_carshow_img img{width:120px;height:90px;}.op_carshow_mengimg img{width:120px;height:120px;}.op_carshow_txt{line-height:28px;overflow:hidden;}.op_carshow_txt span{margin-right:25px;}.op_carshow_color .op_carshow_white{width:12px;height:12px;border:1px solid #dcdcdc;}.op_carshow_link2{font-size:1.077em;margin-top:8px;}.op_carshow_link3{padding-left:14px;margin-top:4px;line-height:20px;}.op_carshow_onsale_icon{margin-left:-9px;width:17px;height:21px;vertical-align:middle;display:inline-block;}.op_carshow_map{color:#7976c9;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("carshow",function(){A.init(function(){var b=A.baidu,d=this;parentBorder=d.container.parentNode;if(d.data.mengbg&&$(parentBorder).hasClass("c-border")){var c=d.data.mengbg,a="url("+c+") no-repeat";parentBorder.style.background=a;parentBorder.style.paddingTop="28px"}})});';   // js字串，不含<script标签
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
