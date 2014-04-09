<?php 
  class CssJs_Util_wandoujiatest
   {
      private static $cssStr = '.op_auto_template,.op_auto_template table{width:100%;}.op_auto_template a{color:#00c;}.opui-button-big{display:inline-block;float:left;height:32px;line-height:32px;text-align:center;font-size:13px;color:#000;vertical-align:middle;text-decoration:none;}.opui-button-big div{background:url(http://www.baidu.com/aladdin/img/newsoftdown/temp_tick.btn.big.gif) 0 -64px repeat-x;}.opui-button-big div div{background:url(http://www.baidu.com/aladdin/img/newsoftdown/temp_tick.btn.big.gif) 0 0 no-repeat;}.opui-button-big div div div{background:url(http://www.baidu.com/aladdin/img/newsoftdown/temp_tick.btn.big.gif) right -32px no-repeat;padding:0 30px;white-space:nowrap;color:#000;}.opui-button-big:hover div,.opui-button-big:focus div{background-position:0 -128px;}.opui-button-big:hover div div,.opui-button-big:focus div div{background-position:0 -96px;}.opui-button-big:hover div div div,.opui-button-big:focus div div div{background-position:right -160px;}.opui-button-big{display:inline-block;float:left;height:32px;line-height:32px;text-align:center;font-size:13px;color:#000;vertical-align:middle;text-decoration:none;}.opui-button-big div{background:url(http://www.baidu.com/aladdin/img/newsoftdown/temp_tick.btn.big.gif) 0 -64px repeat-x;}.opui-button-big div div{background:url(http://www.baidu.com/aladdin/img/newsoftdown/temp_tick.btn.big.gif) 0 0 no-repeat;}.opui-button-big div div div{background:url(http://www.baidu.com/aladdin/img/newsoftdown/temp_tick.btn.big.gif) right -32px no-repeat;padding:0 30px;white-space:nowrap;color:#000;}.opui-button-big:hover div,.opui-button-big:focus div{background-position:0 -128px;}.opui-button-big:hover div div,.opui-button-big:focus div div{background-position:0 -96px;}.opui-button-big:hover div div div,.opui-button-big:focus div div div{background-position:right -160px;}';  // css字串，不含<style>和</style>标签
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
