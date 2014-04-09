<?php 
  class CssJs_Util_weather_tip
   {
      private static $cssStr = '.op_weather_tip{border:1px solid #9dc9f5;padding:10px 0 10px 10px;}.op_weather_tiptitle{font-size:14px;font-weight:bold;color:#666;background:url(\'http://www.baidu.com/aladdin/img/weathertip/tipico.png\') no-repeat;_background:url(\'http://www.baidu.com/aladdin/img/weathertip/tipico24.png\') no-repeat;padding-left:26px;}.op_weather_tipcontent{text-indent:2em;padding-top:5px;}.op_weather_jinqicon{text-indent:0;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("weather_tip",function(){A.setup(function(){var a=this;A.use("localstorage",function(){var e=A.ui.localstorage({fileName:"bd_weather_tip",expiresDay:30});e.init();var b=a.find(".op_weather_jinqi");d(1);function d(i){var f=e.get("op_weather4_twoicon_city");var k=i;var l=(!f)?new Array():unescape(f).split(";");var m=1;if(l&&l.length>0){a.find(".op_weather_jinqicon").css("display","inline-block");for(var h=0;h<k;h++){var g="http://www.baidu.com/s?wd="+encodeURIComponent(l[h])+"&ie=utf-8";var n=$(\'<a href="\'+g+\'" target="_blank" class="OP_LOG_LINK"></a>\');n.html(l[h]);b.append(n)}b.css("display","inline");c({fm:"inlo",rsv_wct:1})}}})})});';   // js字串，不含<script标签
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
