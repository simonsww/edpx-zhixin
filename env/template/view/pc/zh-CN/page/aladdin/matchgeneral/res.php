<?php 
  class CssJs_Util_matchgeneral
   {
      private static $cssStr = '.op-mg-table th.op-mg-th-center{text-align:center;}.op-mg-matchscore{color:#c00;font-size:14px;font-weight:bold;}.op-mg-matchstatus{background:url("http://www.baidu.com/aladdin/img/table/bg_matchstatus.gif") no-repeat;display:inline-block;font-size:12px;height:22px;line-height:22px;padding:0 0 0 20px;width:45px;}.op-mg-matchstatus01{background-position:0 1px;color:#3c3c3c;}.op-mg-matchstatus02{background-position:0 -23px;color:#000;}.op-mg-matchstatus03{background-position:0 -47px;color:949494;}.op-mg-matchstatus04{background-position:0 0;color:#3c3c3c;}.op-mg-showmore{font-size:12px;overflow:auto;zoom:1;}.op-mg-showmore a{color:#77c;}.op-mg-provider{clear:both;font-size:12px;color:#808080;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("matchgeneral",function(){A.setup(function(){var b=this,a=b.find(".op-mg-matchstatus");A.use("tabs5",function(){var c=A.ui.tabs5(b.find(".c-tabs")[0])});$.each(a,function(c,d){var e=typeof d.textContent!=="undefined"?d.textContent:d.innerText;switch(e){case"进行中":$(d).addClass("op-mg-matchstatus02");break;case"未开赛":$(d).addClass("op-mg-matchstatus01");break;case"已结束":$(d).addClass("op-mg-matchstatus03");break;case"延  迟":$(d).addClass("op-mg-matchstatus01");break;default:$(d).addClass("op-mg-matchstatus01");break}})})});';   // js字串，不含<script标签
      private static $uiList = 'tabs,table';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
