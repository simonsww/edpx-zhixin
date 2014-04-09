<?php 
  class CssJs_Util_calculator
   {
      private static $cssStr = '.op_calc_mini_calc{visibility:hidden;height:0;overflow:hidden;position:relative;z-index:1;margin-bottom:2px;}.op_calc_close,.op_calc_open{font-size:1em;display:inline;font-weight:bold;color:#261CDC;text-decoration:underline;cursor:pointer;*margin:0;}.op_calc_close b,.op_calc_open b{background:url(http://www.baidu.com/aladdin/img/newvideotvplay/newvideo_new.png) 0 -24px;height:13px;width:14px;overflow:hidden;float:left;margin:3px 3px 0 0;}.op_calc_close b{background-position:-18px -24px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("calculator",function(){A.setup(function(){var j=this,l=j.find(".op_calc_open")[0],m=j.find(".op_calc_close")[0],g=j.find(".op_calc_mini_calc")[0],n=j.find(".bd-aladdin-container")[0],c=false,e=0,f=435,i=0,b=null,a=0,k;function o(p){p.style.display="inline"}function h(p){p.style.display="none"}$(l).on("click",function(){e=1;h(l);o(m);g.style.visibility="visible";if(!a){var p={app_id:"435614",src:"http://www.baidu.com/aladdin/js/calculator/calculator1.html",height:435};A.use("renderIframe3",function(){k=A.ui.renderIframe3({container:"op_calc_mini_calc",relay:"http://www.baidu.com/cache/app/aladdin/bd_aladdin_relay.html",zone:"app-list",width:520});k.render(p,{});a=1;k.addEventListener("setHeight",function(q,r){if(e){g.style.height=r.height+"px";f=r.height}})})}g.style.height=f+"px";d()});$(m).on("click",function(){e=0;h(m);o(l);g.style.visibility="hidden";g.style.height="0px"});window.op_calculator_iframe_modHeight=function(p){g.style.height=p+"px"};function d(){if(c&&n.contentWindow.document&&n.contentWindow.document.swf_obj&&i<3){n.contentWindow.document.swf_obj.focus()}else{try{b=setTimeout(function(){d();i++},500)}catch(p){}}}this.dispose=function(){window.op_calculator_iframe_modHeight=function(){};clearTimeout(b);k&&k.dispose&&k.dispose()}})});';   // js字串，不含<script标签
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
