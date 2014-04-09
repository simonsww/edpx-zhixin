<?php 
  class CssJs_Util_chinavoice_step
   {
      private static $cssStr = '.op_chinavoice_step_dot,.op_chinavoice_step_tip,.op_chinavoice_step_pre i,.op_chinavoice_step_next i{background:url(\'http://www.baidu.com/aladdin/img/chinavoice/chinavoice-bg.png\') repeat-x;}.op_chinavoice_step_line{border:none;margin:8px 0;height:2px;background:#ececec;overflow:hidden;}.op_chinavoice_step{height:100px;position:relative;}.op_chinavoice_step li{width:124px;float:left;height:100px;background-position:0 -62px;position:relative;}.op_chinavoice_step .op_chinavoice_step_past .op_chinavoice_step_line{background-position:0 -88px;}.op_chinavoice_step_prebg{position:absolute;width:62px;height:2px;margin:8px 0;background:#ececec;overflow:hidden;}.op_chinavoice_step_dot{background-position:2px -238px;width:13px;height:14px;position:absolute;top:27px;left:50%;margin-left:-7px;margin-top:-7px;overflow:hidden;background-color:#fff;}.op_chinavoice_step_future{color:#666;}.op_chinavoice_step_future .op_chinavoice_step_dot{background-position:-36px -238px;}.op_chinavoice_step_present .op_chinavoice_step_dot{background-color:#fff;background-position:-16px -238px;}.op_chinavoice_step_tip{position:absolute;display:block;height:14px;width:52px;top:27px;left:50%;margin-top:-7px;margin-left:6px;background-position:0 -170px;overflow:hidden;}.op_chinavoice_step_tipnew{background-position:0 -200px;}.op_chinavoice_step_tipnow{background-position:0 -185px;}.op_chinavoice_step_box{position:relative;width:496px;overflow:hidden;height:100px;left:22px;}.op_chinavoice_step_wrap{position:absolute;top:0;transition:left .3s ease-in-out;-webkit-transition:left .3s ease-in-out;-moz-transition:left .3s ease-in-out;-ms-transition:left .3s ease-in-out;-o-transition:left .3s ease-in-out;}.op_chinavoice_step_suptext,.op_chinavoice_step_subtext{display:block;font-size:13px;text-align:center;outline:none;cursor:default;}.op_chinavoice_step_subtext{height:52px;width:118px;position:absolute;bottom:0;text-decoration:none;font-size:12px;}.op_chinavoice_step_subtext2{font-size:12px;border:1px solid #f6f6f6;background-color:#fbfbfb;cursor:pointer;}.op_chinavoice_step_subtext p{height:25px;line-height:25px;color:#666;}.op_chinavoice_step_arrow_top{position:absolute;top:-12px;left:50px;z-index:1;}.op_chinavoice_step_arrow_top_out,.op_chinavoice_step_arrow_top_in{color:#f6f6f6;position:absolute;top:3px;left:5px;font-size:12px;font-family:Simsun;font-weight:normal;display:block;z-index:1;}.op_chinavoice_step_arrow_top_in{color:#fbfbfb;margin-top:1px;}.op_chinavoice_step_pre,.op_chinavoice_step_next{display:block;position:absolute;background-position:0 -120px;width:23px;height:24px;outline:none;top:27px;margin-top:-12px;z-index:1;}.op_chinavoice_step_pre i,.op_chinavoice_step_next i{width:9px;height:17px;display:inline-block;position:relative;top:4px;left:8px;cursor:pointer;}.op_chinavoice_step_pre i{background-position:0 -116px;}.op_chinavoice_step_next i{background-position:-9px -116px;}.op_chinavoice_step_pre_end{cursor:default;}.op_chinavoice_step_next_end{cursor:default;}.op_chinavoice_step_pre_end i{cursor:default;background-position:18px -116px;}.op_chinavoice_step_next_end i{cursor:default;background-position:9px -116px;}.op_chinavoice_step_next{background-position:-30px -120px;right:0;}.op_chinavoice_step_title{font-size:14px;}.op_chinavoice_step_linktitle{font-weight:normal;font-size:16px;}.op_chinavoice_step_subtext_text{color:#00c;}.op_chinavoice_step_subtext2:hover{cursor:pointer;zoom:1;}.op_chinavoice_step_subtext2:hover .op_chinavoice_step_subtext_text{text-decoration:underline;}.op_chinavoice_step_subtext2:hover .op_chinavoice_step_subtext2_text{cursor:pointer;color:#00c;text-decoration:underline;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("chinavoice_step",function(){A.init(function(){var i=A.baidu,j=this,f,k,l,h,b=j.find(".op_chinavoice_step_wrap")[0],c=parseInt(j.data.width,10),e=j.data.length,a=e&&(e-4)*c,d=j.find(".op_chinavoice_step_pre"),g=j.find(".op_chinavoice_step_next");if(!e){return}f=function(m){return isFinite(m)?(b.style.left=m+"px"):parseInt(b.style.left,10)};l=(function(){var q=document.defaultView,r,n,o=0,m=6,p=["","Moz","Webkit","O","ms","Ms"];n=function(s){return !!s&&s.indexOf("left")>-1};if(q&&(r=q.getComputedStyle(b))){for(;o<m;o++){if(n(r[p[o]+(o==0?"t":"T")+"ransitionProperty"])){break}}return o!==m}return false}());k=function(m){var o,n;d.removeClass("op_chinavoice_step_pre_end");g.removeClass("op_chinavoice_step_next_end");if(m<=-a){g.addClass("op_chinavoice_step_next_end");m=-a}if(m>=0){d.addClass("op_chinavoice_step_pre_end");m=0}o=f();n=m-o;if(n===0){return}if(l){f(m);return}A.use("animation",function(){h=A.ui.animation(function(){this.tween({x:o}).to({x:m},300).easing(this.Easing.Quadratic.InOut).onUpdate(function(){f(this.x)}).onComplete(function(){h.stop()}).start()}).start()})};g.click(function(m){k(f()-c);m.returnValue=false});d.click(function(m){k(f()+c);m.returnValue=false});this.dispose=function(){h&&h.dispose&&h.dispose()}})});';   // js字串，不含<script标签
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
