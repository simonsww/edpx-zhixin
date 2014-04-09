<?php 
  class CssJs_Util_sport_schedule
   {
      private static $cssStr = '.op_sport_schedule_headline{padding-bottom:8px;}.op_sport_schedule_color{color:#666;}.op_sport_schedule_jinpai{width:10px;*width:14px;height:16px;display:inline-block;position:relative;top:3px;*top:0;background:url(http://www.baidu.com/aladdin/img/asiangames/jinpai.gif) 0 0 no-repeat;}.op_sport_schedule_tabs{position:relative;}.op_sport_schedule_tabsa{position:absolute;right:0;top:0;}.op_sport_schedule_tabs img{height:26px;}.op_sport_schedule_sublink{padding:8px 0;font-size:.923em;}.op_sport_schedule_sublink a{white-space:nowrap;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("sport_schedule",function(){A.init(function(){var m=this,f=[],t=[],e=[],h="",d=m.find(".op_sport_schedule_tabnav")[0],k=m.find(".op_sport_schedule_tabulnav").eq(0),s=m.data,g=s.curtab;function u(i){var j="";if(i){j="<td>"+i+"</td>"}return j}function q(j,i){var v="";if(j){if(i){v=\'<span class="op_sport_schedule_color">\'+j+\'</span><span class="op_sport_schedule_jinpai c-gap-left-small"></span><br />\'}else{v=\'<span class="op_sport_schedule_color">\'+j+"</span><br />"}}return v}function a(i){var j="";if(i){j="<span>"+i+"</span><br />"}return j}function p(j,i){var v="";if(j){v=!i?"<td>"+j+"</td>":\'<td><a href="\'+i+\'" target="_blank">\'+j+"</a></td>"}return v}function n(i){var j="";if(i){j=\'<td><a href="\'+i+\'" target="_blank"><i class="c-icon c-icon-play-circle"></i></a></td>\'}return j}function c(j){var w="",i="",B="",z="",y="",x="",v="";i=u(j.date);B=u(j.time);z="<td>"+q(j.title,j.showicon)+a(j.subtitle)+"</td>";y=u(j.channel);x=n(j.iconlinkurl);v=p(j.textlinkcontent,j.textlinkurl);w+="<tr>"+i+B+z+y+x+v+"</tr>";return w}function b(j,i){var v="";if(j){v=!i?"":\'<a class="c-gap-right" href="\'+i+\'" target="_blank">\'+j+"</a>"}return v}for(var r=0;r<s.tab.length;r++){if(s.tab.length==1){f.push(\'<li class="c-tabs-nav-li c-tabs-nav-selected">\'+s.tab[r].name+"</li>");k.addClass("c-tabs-nav-one")}else{if(r==s.tab.length-1){if(s.tab[r].id==g){f.push(\'<li class="c-tabs-nav-li c-tabs-nav-selected">\'+s.tab[r].name+"</li>")}else{f.push(\'<li class="c-tabs-nav-li">\'+s.tab[r].name+"</li>")}}else{if(s.tab[r].id==g){f.push(\'<li class="c-tabs-nav-li c-tabs-nav-selected">\'+s.tab[r].name+\'</li><li class="c-tabs-nav-sep"></li>\')}else{f.push(\'<li class="c-tabs-nav-li">\'+s.tab[r].name+\'</li><li class="c-tabs-nav-sep"></li>\')}}}}k.html(f.join(""));for(var r=0;r<s.tab.length;r++){var l="";for(var o=0;o<s.tr.length;o++){if(s.tr[o].id==s.tab[r].id){l+=c(s.tr[o])}}t.push({code:r,html:l})}for(var r=0;r<s.tab.length;r++){var l="";for(var o=0;o<s.link.length;o++){if(s.link[o].id==s.tab[r].id){l+=b(s.link[o].title,s.link[o].url)}}e.push({code:r,html:l})}for(var r=0;r<s.tab.length;r++){h+=\'<div class="c-tabs-content" style="display:none"><table width="100%" class="c-table" cellspacing="0" cellpadding="0" border="0">\'+t[r].html+\'</table><div class="op_sport_schedule_sublink">\'+e[r].html+"</div></div>"}d.innerHTML+=h;A.use("tabs5",function(){A.ui.tabs5(d)})})});';   // js字串，不含<script标签
      private static $uiList = 'table,tabs';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
