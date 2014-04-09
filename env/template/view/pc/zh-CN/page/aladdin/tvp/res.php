<?php 
  class CssJs_Util_tvp
   {
      private static $cssStr = '.op_tv,.op_tv td{font-size:13px;vertical-align:top;padding:0;}.op_tv td img{border:1px solid #bfbfbf;height:88px;}.op_tvtd img{width:116px;}.op_tvtd{text-align:center;white-space:nowrap;}.op_tva{display:block;position:relative;width:118px;height:90px;text-decoration:none;}.op_tva span,.op_tva div{position:absolute;display:block;left:0;bottom:0;width:113px;color:#fff;text-align:right;padding-right:5px;}.op_tva span{z-index:10;}.op_tva div{height:20px;filter:alpha(opacity=70);-moz-opacity:.7;-khtml-opacity:.7;opacity:.7;line-height:20px;background:#000 url(http://www.baidu.com/aladdin/img/video/paly.gif) 5px 4px no-repeat;}.op_tvs{width:15px;}.op_tvsup{color:red;position:relative;top:-2px;}.op_tvtd a{font-family:"宋体";}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("tvp",function(){A.setup(function(){var e=this,c=e.find(".op_tvp_links"),b=e.find(".op_tv_icon"),d=$("<img  />");var a=false;if(c.html()==""){c.hide()}d.load(function(){if(a){return}if(d.width()/d.height()*88>116){b.css("width","116px")}});d.attr("src",b.attr("src"));this.dispose=function(){if(!a){a=true}}})});';   // js字串，不含<script标签
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
