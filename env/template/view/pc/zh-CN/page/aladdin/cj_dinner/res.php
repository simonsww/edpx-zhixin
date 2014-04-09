<?php 
  class CssJs_Util_cj_dinner
   {
      private static $cssStr = '.op-cj-dinner-tabx-list tr td{text-align:center;white-space:nowrap;}.op-cj-dinner-tabx-list li{overflow:hidden;}.op-cj-dinner-tabxLeft{margin-left:-9px;}.op-cj-dinner-tabx-list{text-align:center;overflow:hidden;}.op-cj-dinner-tabx-listli{position:relative;}.op-cj-dinner-tabx-list a{text-decoration:none;}.op-cj-dinner-tabx-list a:hover{text-decoration:underline;}.op-cj-dinner-tabx-list-imglink{width:78px;height:78px;display:block;}.op-cj-dinner-tabx-list-imglink img{border:solid 1px #fff;display:block;}.op-cj-dinner-tabx .op-ui-tabx-content{padding-top:0;}.op-cj-dinner-tabx .op-ui-tabx-content .op-ui-tabx-selected{background:url(http://www.baidu.com/aladdin/img/chunjie/bg.gif) 0 -99px no-repeat;font-weight:normal;color:#000!important;}.op-cj-dinner-tabx .op-ui-tabx-content .op-ui-tabx-selected span{background:url(http://www.baidu.com/aladdin/img/chunjie/bg.gif) right -99px no-repeat;display:inline-block;height:20px;line-height:20px;padding-right:5px;}.op-cj-dinner-tabx-more{text-align:left;}.op-cj-dinner-tabx-more a{margin-right:15px;}.op-cj-dinner-stip1,.op-cj-dinner-stip2,.op-cj-dinner-stip3{position:absolute;display:block;bottom:24px;height:20px;line-height:20px;width:78px;left:1px;color:#fff;cursor:pointer;display:none;}.op-cj-dinner-stip1{background:#f54545;}.op-cj-dinner-stip2{background:#ffba1a;}.op-cj-dinner-stip3{background:#58b858;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("cj_dinner",function(){A.setup(function(){var f=this;var e=f.find(".t2")[0];var b=f.find(".op-cj-dinner-tabx-more")[0];var d=f.data.originQuery,c=[],a=f.find(".op-dinner-tabul")[0],h=f.find(".op-cj-dinner-tabx")[0],g=f.data.resourceid;f.ajax(d,g,{co:"tab|subtab",success:function(L){var H=L[0],z=H.timeliness,E=[],F=[],m=[],G=[],v=1,u=[],p=[],J=[],k="",t=[],C=[];for(var K=0;K<H.tab.length;K++){if(H.tab.length==1){E.push(\'<li class="c-tabs-nav-li op-cj-dinner-tabx-list c-tabs-nav-selected">\'+H.tab[K].text+"</li>");$(a).addClass("c-tabs-nav-one")}else{if(K==H.tab.length-1){E.push(\'<li class="c-tabs-nav-li op-cj-dinner-tabx-list">\'+H.tab[K].text+"</li>")}else{if(K==0){E.push(\'<li class="c-tabs-nav-li op-cj-dinner-tabx-list c-tabs-nav-selected">\'+H.tab[K].text+\'</li><li class="c-tabs-nav-sep"></li>\')}else{E.push(\'<li class="c-tabs-nav-li op-cj-dinner-tabx-list">\'+H.tab[K].text+\'</li><li class="c-tabs-nav-sep"></li>\')}}}}a.innerHTML=E.join("");(function(){var i=1;return function(){var O=$(a).children().get();for(var N=0;N<O.length;N+=2){for(var M=0;M<H.subtab.length;M++){if(H.subtab[M].tab==i){O[N].subIndex=M+1;O[N].setAttribute("subIndex",M+1);i++;break}}}}})()();for(var K=0;K<H.subtab.length;K++){var s=H.subtab[K].linkcontent||"",D=H.subtab[K].linkurl||"",y=H.subtab[K].linkcontent1||"",B=H.subtab[K].linkurl1||"",w=H.subtab[K].linkcontent2||"",x=H.subtab[K].linkurl2||"";G.push({linkcontent:s,linkurl:D,linkcontent1:y,linkurl1:B,linkcontent2:w,linkurl2:x})}for(var K=1;K<H.tab.length+1;K++){var o=[];for(var I=0;I<H.subtab.length;I++){if(H.subtab[I].tab==K){o.push(H.subtab[I].text)}}m.push(o)}for(var K=0;K<m.length;K++){var n="";for(var I=0;I<m[K].length;I++){if(m[K].length==1){n+=\'<li class="c-tabs-nav-li op-cj-dinner-tabx-list" data-index="\'+v+\'" data-subIndex="\'+I+\'">\'+m[K][I]+"</li>"}else{if(I==m[K].length-1){n+=\'<li class="c-tabs-nav-li op-cj-dinner-tabx-list" data-index="\'+v+\'" data-subIndex="\'+I+\'">\'+m[K][I]+"</li>"}else{n+=\'<li class="c-tabs-nav-li op-cj-dinner-tabx-list" data-index="\'+v+\'" data-subIndex="\'+I+\'">\'+m[K][I]+\'</li><li class="c-tabs-nav-sep"></li>\'}}v++}J.push(n)}for(var K=0;K<H.tab.length;K++){var r="";for(var I=0;I<m[K].length;I++){if(I==0){r=\'<div class="c-tabs-content"></div>\'}else{r+=\'<div class="c-tabs-content" style="none;"></div>\'}}if(K==0){F=\'<div class="c-tabs c-tabs-content op-dinner-tab2cho"><ul class="c-tabs-nav op-cj-dinner-tabxLeft">\'+J[K]+"</ul>"+r+"</div>"}else{F+=\'<div class="c-tabs c-tabs-content op-dinner-tab2cho" style="display:none;"><ul class="c-tabs-nav op-cj-dinner-tabxLeft">\'+J[K]+"</ul>"+r+"</div>"}}h.innerHTML+=F;var q=f.find(".op-cj-dinner-tabx-list").get();function l(j){if(j.createted){return}j.createted=true;var i=j.getAttribute("subIndex")||j.getAttribute("data-index");if(!i){return}var M="dishes[subtab="+i+"]";f.ajax(d,g,{co:M,success:function(O){O=O[0].dishes.slice(0,12);var R=\'<ul class="c-row op-cj-dinner-tabx-list">\';for(var P=0,S;S=O[P];P++){if(S.tip==1){var U=\'<a href="\'+S.tiphref+\'" title="\'+S.tiptitle+\'" target="_blank" class="op-cj-dinner-stip1 op-cj-dinner-stip">孕妇忌食</a>\'}else{if(S.tip==2){var U=\'<a href="\'+S.tiphref+\'" title="\'+S.tiptitle+\'" target="_blank" class="op-cj-dinner-stip2 op-cj-dinner-stip">孕妇慎食</a>\'}else{if(S.tip==3){var U=\'<a href="\'+S.tiphref+\'" title="\'+S.tiptitle+\'" target="_blank" class="op-cj-dinner-stip3 op-cj-dinner-stip">孕妇宜食</a>\'}else{var U=""}}}if((P%6)==5){R+=\'<li class="c-span4 c-gap-bottom-small c-span-last op-cj-dinner-tabx-listli"><a href="\'+S.link+\'" target="_blank" class="op-cj-dinner-tabx-list-imglink  c-gap-bottom-small"><img src="\'+S.img+\'" class="c-img c-img4"></a><span><a href="\'+S.link+\'" target="_blank" class="op-cj-dinner-tabx-list-textlink c-gap-bottom-small">\'+S.text+"</a></span>"+U+"</li>"}else{R+=\'<li class="c-span4 c-gap-bottom-small op-cj-dinner-tabx-listli"><a href="\'+S.link+\'" target="_blank" class="op-cj-dinner-tabx-list-imglink  c-gap-bottom-small"><img src="\'+S.img+\'" class="c-img c-img4"></a><span><a href="\'+S.link+\'" target="_blank" class="op-cj-dinner-tabx-list-textlink">\'+S.text+"</a></span>"+U+"</li>"}}var T=G[i-1],N="";R+="</ul>";if(T.linkcontent&&T.linkurl){N+=\'<a href="\'+T.linkurl+\'" target="_blank">\'+T.linkcontent+"</a>"}if(T.linkcontent1&&T.linkurl1){N+=\'<a href="\'+T.linkurl1+\'" target="_blank">\'+T.linkcontent1+"</a>"}if(T.linkcontent2&&T.linkurl2){N+=\'<a href="\'+T.linkurl2+\'" target="_blank">\'+T.linkcontent2+"</a>"}b.innerHTML=N;if(j.getAttribute("data-index")){j.parentNode.parentNode.getElementsByTagName("div")[j.getAttribute("data-subindex")].innerHTML=R}else{$(q).each(function(V,W){if(W.getAttribute("data-index")==i){W.parentNode.parentNode.getElementsByTagName("div")[W.getAttribute("data-subIndex")].innerHTML=R}})}var Q=f.find(".op-cj-dinner-tabx-listli");Q.each(function(V,W){$(this).mouseover(function(){$(this).find(".op-cj-dinner-stip").eq(0).show()});$(this).mouseout(function(){$(this).find(".op-cj-dinner-stip").eq(0).hide()})})}})}l(q[0]);$(q).each(function(j,M){$(M).click(function(){l(M)})});A.use("tabs5",function(){f.find(".op-dinner-tab2cho").each(function(M,j){var N=true;if(M>0){N=false}A.ui.tabs5(j,{toggleSep:N})})})}})})});';   // js字串，不含<script标签
      private static $uiList = 'table,tabs,img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
