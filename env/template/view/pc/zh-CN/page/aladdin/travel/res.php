<?php 
  class CssJs_Util_travel
   {
      private static $cssStr = '.op-travel-row{padding-bottom:13px;}.op-travel-img,.op-travel-img a{position:relative;display:block;text-decoration:none;}.op-travel-sj{height:14px;width:17px;background:url(http://www.baidu.com/aladdin/img/travel/sj.gif) 0 4px no-repeat;position:absolute;left:50%;margin-left:-8px;display:none;}.op-travel-infobg,.op-travel-info{position:absolute;left:0;bottom:0;display:block;padding:1px 0;text-align:center;}.op-travel-info{color:#fff;text-decoration:none;}.op-travel-infobg{background:#000;opacity:.65;filter:alpha(opacity=65);}.op-travel-infoborder{position:absolute;left:0;top:0;display:block;border:2px solid #2c99fe;display:none;}.op-travel-cont{background:#fafafa;padding:8px 10px;border-bottom:1px solid #f4f4f4;border-top:1px solid #ebebeb;overflow:hidden;}.op-travel-active .op-travel-sj,.op-travel-active .op-travel-infoborder{display:block;}.op-travel-active .op-travel-infobg{background:#2c99fe;opacity:1;filter:alpha(opacity=100);}.op-travel-noline,.op-travel-noline em{text-decoration:none;}.op-travel-noline:hover,.op-travel-noline:hover em{text-decoration:underline;}.op-travel-hidden,.op-travel-active .op-travel-hidden{display:none;}.op-travel-bold{font-weight:bold;}.op-travel-indent{padding-left:3.2em;text-indent:-3.2em;}.op-travel-left{margin-left:17px;}.op-travel-name{font-size:1.4em;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("travel",function(){A.setup(function(){var d=this;var b=d.find(".op-travel-img");var c=d.find(".op-travel-cont");d.find(".op-travel-infoborder").height(b.eq(0).height()-4).width(b.eq(0).width()-4).eq(0).removeClass("op-travel-hidden");if(d.data.platform!="ipad"){var a="mouseover"}else{var a="click"}b.on(a,function(){b.filter(".op-travel-active").removeClass("op-travel-active");$(this).addClass("op-travel-active");var e=b.index(this);c.filter(":visible").addClass("op-travel-hidden");c.eq(e).removeClass("op-travel-hidden")})})});';   // js字串，不含<script标签
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
