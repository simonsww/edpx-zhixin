<?php 
  class CssJs_Util_right_movieticket
   {
      private static $cssStr = '.container_l .opr-movieticket{width:438px;background:url(\'http://www.baidu.com/aladdin/img/right_movieticket/right_movieticket_bg_l.png\') no-repeat right bottom #edf8ff;border:1px solid #d8eaff;}.container_s .opr-movieticket{width:268px;background:#edf8ff;border:1px solid #d8eaff;}.opr-movieticket-title{padding:9px 9px 0 9px;position:relative;_height:1%;}.container_l .opr-movieticket-title h3{padding-bottom:7px;font-size:15px;border-bottom:1px solid #eaeaea;}.container_s .opr-movieticket-title h3{padding-bottom:26px;font-size:15px;border-bottom:1px solid #eaeaea;}.container_l .opr-movieticket-title a{font-size:12px;position:absolute;right:9px;top:8px;}.container_s .opr-movieticket-title a{font-size:12px;position:absolute;left:11px;bottom:6px;}.opr-movieticket-content{padding:4px 9px 14px;font-size:13px;line-height:20px;overflow:hidden;_height:1%;}.opr-movieticket-content-p a{text-decoration:none;}.opr-movieticket-content-p img{width:16px;height:16px;}.container_l .opr-movieticket-content-p img{position:relative;left:5px;top:4px;}.container_s .opr-movieticket-content-p img{position:relative;left:5px;top:3px;}.opr-movieticket-time{color:#ff8a00;display:inline;}.opr-movieticket-button{display:block;width:89px;height:29px;margin:8px 0 8px;background:url(\'http://www.baidu.com/aladdin/img/right_movieticket/right_movieticket_bg.png\') no-repeat 0 -236px;text-decoration:none;text-align:center;color:#fff;font-size:13px;font-weight:bold;line-height:28px;line-height:32px \\9;_line-height:30px;cursor:text;float:left;}.opr-movieticket-button.opr-movieticket-button-begin{background-position:0 -80px;cursor:pointer;}.opr-movieticket-button.opr-movieticket-button-begin.opr-movieticket-active{background-position:0 -158px;}.opr-movieticket-button.opr-movieticket-button-end{width:139px;background-position:0 -392px;}.opr-movieticket-number-tip{float:left;margin:12px 0 0 10px;display:none;}.opr-movieticket-number{color:#f60;}.opr-movieticket-content-tip{color:#666;clear:left;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_movieticket",function(){A.setup(function(){var e=this;var b=false;var d=e.find(".opr-movieticket-number").get(0);var c=e.find(".opr-movieticket-button").eq(0);var a=e.find(".opr-movieticket-number-tip").get(0);c.on("mousedown",function(){$(this).addClass("opr-movieticket-active")});c.on("mouseup",function(){$(this).removeClass("opr-movieticket-active")});$.ajax({url:"http://tieba.baidu.com/app/eighthyear/bws/main?t="+new Date().getTime()+"&cb=rmovie",dataType:"jsonp",success:function(g){if(b){return}if(g&&g.data&&g.data.data){var f=g.data.data;var h=f.join_num;var i=f.cur_time;if(h){d.innerHTML=h;a.style.display="block"}}},timeout:5000,jsonpCallback:"rmovie"});this.dispose=function(){if(!b){b=true}}})});';   // js字串，不含<script标签
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
