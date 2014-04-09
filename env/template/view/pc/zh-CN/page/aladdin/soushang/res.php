<?php 
  class CssJs_Util_soushang
   {
      private static $cssStr = '.op-soushang-sq-abstract{line-height:200%;}.op-soushang-soushang_title{color:#049cdb;display:block;}.op-soushang-sq-score{width:60px;height:12px;line-height:12px;background:#c7c7c7;overflow:hidden;display:inline-block;position:relative;vertical-align:-2px;*vertical-align:1px;_vertical-align:3px;margin-right:10px;}.op-soushang-sq-score span{background:#f58027;display:inline-block;height:100%;}.op-soushang-sq-score em{position:absolute;left:2px;color:#fff;top:0;*top:-1px;}.op-soushang-sq-pass{color:#f58027;_vertical-align:2px;}.op-soushang-ur-level{margin-right:10px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("soushang",function(){A.init(function(){var b=this;var a=false;$.ajax({url:"http://www.baidu.com/ur/data/urbrief?from=aladdin&ge=utf-8",dataType:"jsonp",success:function(c){if(a){return}if(c.errNo!=0){b.container.style.display="none";return}$(".op-soushang-sq-warp").each(function(){if(c.result.ydayRank<10000000||c.result.ydayRank>0){this.innerHTML="在众网友中的排名："+c.result.ydayRank}else{this.innerHTML="在众网友中的排名：> 10000000"}});$(".op-soushang-ur-score").each(function(){this.innerHTML="<span class=\'op-soushang-ur-level\'>等级：LV"+c.result.currentLevel+"</span>积分："+c.result.currentScore+"/"+c.result.totalScore})}});this.dispose=function(){if(!a){a=true}}})});';   // js字串，不含<script标签
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
