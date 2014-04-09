<?php 
  class CssJs_Util_cj_live
   {
      private static $cssStr = '.op_cjlive_dil,.op_cjlive_icon img{display:block;}.op_cjlive_dil span{width:42px;height:42px;position:absolute;top:50%;left:50%;margin-left:-21px;margin-top:-21px;background:url(http://www.baidu.com/aladdin/img/movievideo/playicon.png) no-repeat;cursor:pointer;}.op_cjlive_icon{position:relative;}.op_cjlive_table tr td .op_cjlive_curProgramTitle a{color:#00c;text-decoration:underline;}.op_cjlive_table tr td.op_cjlive_timeTd{padding-left:20px;}.op_cjlive_live,.op_cjlive_curProgram .op_cjlive_living b{background:url(http://www.baidu.com/aladdin/img/chunjie/bg.gif) no-repeat;}.op_cjlive_live{background-position:0 0;padding-left:65px;font-weight:bold;}.op_cjlive_tableInfo{color:#666;}.op_cjlive_tableTitle{margin:-10px -9px 0 -10px;padding-left:10px;background-color:#fafafa;border-bottom:1px solid #e9e9e9;height:27px;overflow:hidden;line-height:27px;}.op_cjlive_tspan1{color:#333;font-weight:bold;}.op_cjlive_tableTitle .op_cjlive_tt{background:url(http://www.baidu.com/aladdin/img/table/bg.gif) 0 -36px repeat-x;display:inline-block;width:510px;}.op_cjlive_tableTitle .op_cjlive_tt .op_cjlive_tspan2{color:#7b7b7b;font-size:12px;float:right;padding-right:10px;}.op_cjlive_liveBtn{white-space:nowrap;width:60px;}.op_cjlive_liveBtn a{color:#666;text-decoration:underline;}.op_cjlive_liveBtn a:hover{color:#00c;text-decoration:underline;}.op_cjlive_living b{display:inline-block;width:16px;height:16px;}.op_cjlive_curProgram .op_cjlive_living b{background-position:2px -32px;*background-position:2px -35px;}.op_cjlive_curProgram .op_cjlive_curProgramTitle{font-weight:bold;}.op_cjlive_curProgram .op_cjlive_curProgramTitle span{background:url("http://www.baidu.com/aladdin/img/chunjie2013/ico2014.gif") no-repeat 0 -27px;width:14px;height:14px;display:inline-block;vertical-align:text-bottom;}.op_cjlive_curProgram .op_cjlive_timeTd{background:url("http://www.baidu.com/aladdin/img/chunjie2013/ico2014.gif") no-repeat 8px 13px;}.op_cjlive_table .op_cjlive_curProgram .op_cjlive_contentTd a{color:#00c;}.op_cjlive_curProgram .op_cjlive_living{color:#d50213;font-weight:bold;}.op_cjlive_bgitem{bottom:0;left:0;height:22px;position:absolute;width:117px;text-align:center;color:#FFF;}.op_cjlive_bgcolor{background:url("http://www.baidu.com/aladdin/img/video/paly.gif") no-repeat scroll 5px 4px #000;bottom:0;height:20px;left:0;opacity:.7;position:absolute;width:117px;filter:alpha(opacity=70);-moz-opacity:.7;-khtml-opacity:.7;opacity:.7;}.op_cjlive_tvlive{color:#666;padding-left:3em;text-indent:-3em;}.op_cjlive_tvlive span{color:#333;}.op_cjlive_btn1,.op_cjlive_btn2,.op_cjlive_btn3{background:#fff;display:inline-block;padding:0 10px 0 8px;text-align:center;vertical-align:middle;cursor:pointer;overflow:hidden;font-size:14px;height:28px;line-height:26px;_height:24px;_line-height:22px;text-decoration:none;_padding-top:4px;font-family:"微软雅黑";}.op_cjlive_btn1{border:1px solid #d6d6d6;cursor:default;_padding-top:4px;}.op_cjlive_btn1 .c-icon-play-white{display:none;}.op_cjlive_btn2,.op_cjlive_btn3{background:#d50213;color:#fff;}.op_cjlive_btn2 .c-icon,.op_cjlive_btn3 .c-icon{vertical-align:-2px;margin-right:4px;_vertical-align:2px;}.op_cjlive_table .c-table th,.c-table td{border-bottom:none;}.op_cjlive_live1{color:#666;}.op_cjlive_live1 span{color:#333;}.op_cjlive_contarin{color:#fff;font-family:Microsoft YaHei;font-size:12px;position:aight:20px;line-height:20px;text-align:center;bottom:0;}.op_cjlive_scrollcontarin{position:relative;height:290px;overflow:hidden;margin:0 -9px -9px -9px;}.op_cjlive_hovertr .op_cjlive_liveBtn a{color:#00c;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("cj_live",function(){A.init(function(){var i=this;var d=i.find(".op_cjlive_table_container")[0];var c=i.find(".op_cjlive_table tr");var f=i.find(".op_cjlive_scrollbar")[0];var a=290;var b=null;var h;try{document.execCommand("BackgroundImageCache",false,true)}catch(g){}b=setTimeout(function(){var e=i.find(".op_cjlive_curProgram")[0];if(e){var j=$(e).find(".op_cjlive_curProgramTitle")[0];if(j){j.innerHTML+="<span></span>"}}if(d.offsetHeight>a){d.style.height=a+"px";A.use("scrollbarv",function(){h=A.ui.scrollbarv({content:d,initDom:e})})}},0);c.each(function(e,j){$(this).mouseover(function(){$(this).find("td").css("background-color","#f6f6f6");$(this).addClass("op_cjlive_hovertr")});$(this).mouseout(function(){$(this).find("td").css("background-color","");$(this).removeClass("op_cjlive_hovertr")})});this.dispose=function(){clearTimeout(b);h&&h.dispose&&h.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'table,img,btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
