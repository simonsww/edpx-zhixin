<?php 
  class CssJs_Util_videowide
   {
      private static $cssStr = '.op_videowide_container .op-ui-tabs-tabs,.op_videowide_container .op-ui-tabs-sep{background-image:url(http://www.baidu.com/cache/aladdin/ui/tabs/images/op_ui_tab_bg.png);}.op_videowide_nav{margin-top:10px;}.op_videowide_content,.op_videowide_content ul,.op_videowide_content ul li{marging:0;padding:0;}.op_videowide_nav .op-ui-tabs-sep{background:none;}.op_videowide_content{marging-top:10x;position:relative;}.op_videowide_txt{padding-bottom:13px;}.op_videowide_content ul li{width:127px;margin-right:7px;float:left;overflow:hidden;}.op_videowide_morelink{position:absolute;top:-32px;right:10px;}.op_videowide_morelink a{color:#7a77c8;}.op_videowide_content ul li img{border:1px solid #ccc;}.op_videowide_txt{margin-top:3px;}.op_videowide_colornum{background:url(http://www.baidu.com/aladdin/img/hao123/y_bg-1.1.gif) no-repeat 0 0;font-family:arial;font-size:11px;width:16px;color:#fff;padding-left:5px;padding-right:5px;}.op_videowide_title a{color:#00c;font-size:13px;font-weight:bold;text-decoration:none;}.op_videowide_gray{color:#666;}.op_videowide_pright{padding:0 20px 0 5px;}.op_videowide_s01,.op_videowide_s02{display:inline-block;height:14px;line-height:12px;background:url(http://www.baidu.com/aladdin/img/book/hotel_star_level-1.2.png) no-repeat;}.op_videowide_s01{width:75px;background-position:left 2px;*background-position:left top;}.op_videowide_s02{background-position:left -12px;*background-position:left -14px;}.op_videowide_tv{background:url(http://www.baidu.com/aladdin/img/asiangames/play.gif) no-repeat left center;padding-left:20px;height:18px;display:block;width:55px;overflow:hidden;}.op_videowide_play{padding-top:2px;}.op_videowide_content ul li .op_videowide_li{padding-bottom:13px;}.op_videowide_links{margin-top:9px;}.op_videowide_links ul li a{margin-left:10px;text-decoration:none;line-height:18px;}.op_videowide_navchild ul li{float:left;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("videowide",function(){A.init(function(){var a=A.baidu,c=this,b;A.use("tabs",function(){b=A.ui.tabs(c.qq("op_videowide_nav"));var d=c.data.arr,f=c.q("op_videowide_ul"),m=c.data.op_videowide_infoArray;for(var h=0,e=d.length;h<e-1;h++){b.add(c.qq(d[h][0]).innerHTML,c.qq(d[h][1]))}a.each(m,function(q,p){for(var l=0;l<b.length;l++){f[l].innerHTML+=(a.format([\'<li class="op_videowide_li" data-cid="#{id}">\',\'<a href="#{iconlinkUrl}" target="_blank"><img src="#{iconaddress}"  alt="图片"  width="80" height="106"/></a>\',\'<div class="op_videowide_txt"><ul>\',\'<li><span class="op_videowide_colornum">#{index}</span><span class="op_videowide_title"><a title="#{tvTitle2}"href="#{iconlinkUrl}" target="_blank">#{tvTitle}</a></span></li>\',(function(){return !q.grade?"":\'<li><span class="op_videowide_s01"><span class="op_videowide_s02" style="width:\'+(q.grade*10)+\'%"></span></span><span class="op_videowide_gray op_videowide_pright">#{grade}</span></li>\'})(),(function(){return !q.txt2?"<li>#{txt1}</li>":"<li>#{txt1}</li><li>#{txt2}</li>"})(),(function(){return !q.online?"":\'<li class="op_videowide_play"><a href="#{onlineLink}" target="_blank" class="op_videowide_tv">#{online}</a></li>\'})(),"</ul></div></li>"].join(""),q))}});for(var g=0;g<b.length;g++){var k=c.qq("op_videowide_content_"+(g+1));if(k){var n=a.q("op_videowide_li",k);a.each(n,function(l,j){if(l.getAttribute("data-cid")==(g+1)){l.style.display="block"}else{l.style.display="none"}})}}});this.dispose=function(){b&&b.dispose&&b.dispose()}})});';   // js字串，不含<script标签
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
