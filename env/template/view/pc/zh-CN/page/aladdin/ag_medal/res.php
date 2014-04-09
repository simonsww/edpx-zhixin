<?php 
  class CssJs_Util_ag_medal
   {
      private static $cssStr = '.op_ag_medal_container .op_ag_medal_table th,.op_ag_medal_container .op_ag_medal_table td{text-align:center;}.op_ag_medal_c2{padding-left:33px;*background-position:0 0;background-repeat:no-repeat;}.op_ag_medal_c2 a{text-decoration:none;}.op_ag_medal_medal{width:22px;height:22px;margin:0 auto;}span.op_ag_medal_goldencn{background:url(http://www.baidu.com/aladdin/img/asiangames/golden_bg-1.0.gif) no-repeat;width:41px;height:17px;line-height:1.23;display:inline-block;vertical-align:middle;color:#fff;}.op_ag_medal_provider{color:#696969;}.op_ag_medal_logo{margin-top:-2px;*margin-top:0;vertical-align:middle;width:51px;height:28px;display:inline-block;}.op_ag_medal_morelink{padding:4px 6px 0 0;line-height:2.3;}.op_ag_medal_logo img{display:block;width:49px;height:26px;}.op_ag_medal_logo2{height:30px;float:right;}.op_ag_medal_medal_num{width:85px;font-size:1.08em;}.op_ag_medal_bold{font-weight:bold;}.op_ag_medal_bold_color{font-weight:bold;color:#c00;}.op_ag_medal_container .op_ag_medal_table .op_ag_medal_left{text-align:left;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("ag_medal",function(){A.init(function(){var d=this,b=d.find(".op_ag_medal_logo2")[0];var a=false;if(b){c(b,140)}function c(f,g){var e=new Image();e.onload=function(){if(a){return}f.width=this.width>g?g:this.width};e.src=f.src}this.dispose=function(){if(!a){a=true}}})});';   // js字串，不含<script标签
      private static $uiList = 'table';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
