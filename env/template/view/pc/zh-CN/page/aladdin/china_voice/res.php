<?php 
  class CssJs_Util_china_voice
   {
      private static $cssStr = '.op_china_voice_title_bold{font-size:1.08em;font-weight:bold;}.op_china_voice_item{display:block;position:relative;}.op_china_voice_itemname{display:block;text-align:center;overflow:hidden;}.op_china_voice_itemname a{white-space:nowrap;}.op_china_voice_tip{background:#fcfcfc;text-align:center;cursor:pointer;border-bottom:1px solid #f0f0f0;}.op_china_voice_tip .op_china_voice_tipbtn{display:inline-block;padding:5px 0;color:#666;cursor:pointer;}.op_china_voice_linktitle{font-size:16px;font-weight:normal;}.op_china_voice_status{position:absolute;color:#fff;width:16px;height:32px;line-height:15px;top:0;left:0;text-align:center;font-size:12px;text-decoration:none;cursor:pointer;background:url(http://www.baidu.com/aladdin/img/chinavoice/sign.png) no-repeat;}.op_china_voice_status_red{background-position:0 0;}.op_china_voice_status_yellow{background-position:-26px 0;}.op_china_voice_status_blue,.op_china_voice_status_undefined{background-position:-52px 0;}.op_china_voice_status_{background-position:-52px 0;}.op_china_voice_more_spacing{height:8px;overflow:hidden;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("china_voice",function(){A.setup(function(){var f=this,d=f.data,h,j,e,a=0,b=f.find(".op_china_voice_tabcontent")[0],i=f.find(".op_china_voice_tabtag"),c=f.find(".op_china_voice_list")[0],g=f.data.tags;j=function(l,k){l=$.extend({},l);l.status=l.status?\'<div class="op_china_voice_status op_china_voice_status_\'+f.data.statusMap[l.status]+\'">\'+l.status+"</div>":"";l.musicname=l.musicname?\'<span class="c-gap-top-small op_china_voice_itemname"><a href="\'+l.url+\'" target="_blank" title="\'+l.musicnameOrign+\'">\'+l.musicname+"</a></span>":"";return\'<li class="c-gap-top c-span4\'+((k+1)%6==0?" c-span-last":"")+\'">                <a class="op_china_voice_item" href="{url}" title="{nameOrigin}" target="_blank">                    <img class="c-img c-img4" src="{imgUrl}" alt="{nameOrigin}" />					{status}                </a>                <span class="c-gap-top-small op_china_voice_itemname">                    <a href="{url}" target="_blank" title="{nameOrigin}">{name}</a>				</span>{musicname}            </li>\'.replace(/{([^}]*)}/g,function(n,m){return typeof l[m]=="string"?l[m]:n})};h=function(p,o){var n=\'<ul class="c-clearfix">\',m,k=o||p.length<6?p.length:6;for(m=0;m<k;m++){n+=j(p[m],m)}n+="</ul>";if(p.length>6){n+=\'<div class="c-gap-top-small op_china_voice_tip"><span class="op_china_voice_tipbtn OP_LOG_BTN" data-click="{fm:\\\'beha\\\'}">{showtip}<i class="c-gap-icon-left-small c-icon c-icon-chevron-{sign} op_china_voice_arr{sign}"></i></span></div>\'.replace("{showtip}",f.data.tips[o?1:0]).replace(/\\{sign\\}/g,o?"top":"bottom")}c.innerHTML=n};e=function(k){var l="c-tabs-nav-selected";i.each(function(n,m){$(m).removeClass(l)});i.eq(k).addClass(l);h(g[k]);a=k};if(i){i.each(function(l,k){$(k).click(function(){e(l)})})}$(c).click(function(n){var m=n.target,l,k;if((m.className+(l=m.parentNode).className+l.parentNode.className).indexOf("op_china_voice_tip")>-1){if(!f.find(".op_china_voice_arrtop")[0]){k=true}h(g[a],!!k)}})})});';   // js字串，不含<script标签
      private static $uiList = 'tabs,img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
