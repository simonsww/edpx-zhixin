<?php 
  class CssJs_Util_worldcup1
   {
      private static $cssStr = '.op_worldcup1_span{display:inline-block;width:62px;text-align:center;}.op_worldcup1_td_sp{display:inline-block;width:91px;text-align:right;}.op_worldcup1_tdsp_sp{display:inline-block;width:91px;text-align:left;}.op_worldcup1_shilight{display:inline-block;font-weight:bold;color:#c00;width:62px;text-align:center;}.op_worldcup1_lcspan{margin-right:8px;display:inline-block;height:13px;margin-bottom:2px;vertical-align:middle;border-right:1px solid #e0e0e0;}.op_worldcup1_lca{margin-right:8px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("worldcup1",function(){A.setup(function(){var d=this,c=this.find(".op_worldcup1_tabs")[0],b=this.find(".op-worldcup1-tabul"),a=this.find(".op-worldcup1-provider");this.ajax(this.data.query,this.srcid,{success:function(R){var j=R[0],h=j.currenttab,S=[],o=[],p=[],f="",K="",J="",I="",F="",r="",E="",D="",C="",B="",y="",v="",t="",q="",k="",H=[],m="",N="";wwwgro=["A","B","C","D","E","F","G","H"];function P(i){var T="";if(i){T="<th>"+i+"</th>"}return T}function g(Z){var Y="",X="",W="",V="",U="",T="",i="",aa="";X=P(Z.col1);W=P(Z.col2);V=Z.col3?\'<th><span class="op_worldcup1_td_sp"></span><span class="op_worldcup1_span">\'+Z.col3+\'</span><span class="op_worldcup1_tdsp_sp"></span></th>\':"";U=P(Z.col4);T=P(Z.col5);i=P(Z.col6);aa=P(Z.col7);Y+=\'<tr class="c-table-nohihead">\'+X+W+V+U+T+i+aa+"</tr>";return Y}function G(T,i){var U="";if(T){U=!i?"<td>"+T+"</td>":\'<td><a href="\'+i+\'" target="_blank">\'+T+"</a></td>"}return U}function w(T,i){var U="";if(T){U=!i?\'<span class="op_worldcup1_td_sp">\'+T+"</span>":\'<span class="op_worldcup1_td_sp"><a href="\'+i+\'" target="_blank">\'+T+"</a></span>"}return U}function u(T,i){var U="";if(T){U=!i?\'<span class=" op_worldcup1_shilight">\'+T+"</span>":\'<span class=" op_worldcup1_shilight><a href="\'+i+\'" target="_blank">\'+T+"</a></span>"}return U}function s(T,i){var U="";if(T){U=!i?\'<span class="op_worldcup1_tdsp_sp">\'+T+"</span>":\'<span class="op_worldcup1_tdsp_sp"><a href="\'+i+\'" target="_blank">\'+T+"</a></span>"}return U}function O(T,i){var U="";if(T){U=!i?"":\'<a class="op_worldcup1_lca" href="\'+i+\'" target="_blank">\'+T+\'</a><span class="op_worldcup1_lcspan"></span>\'}return U}function z(T){var U="",i="",X="",W="",V="",i=O(T.linkcontent,T.linkurl);X=O(T.link1content,T.link1url);W=O(T.link2content,T.link2url);V=O(T.link3content,T.link3url);U+=X+W+V+i;return U}function x(Z){var Y="",X="",W="",V="",U="",T="",i="",aa="";X=G(Z.col1,Z.col1link);W=G(Z.col2,Z.col2link);V="<td>"+w(Z.col31,Z.col31link)+u(Z.col32,Z.col32link)+s(Z.col33,Z.col33link)+"</td>";U=G(Z.col4,Z.col4link);T=G(Z.col5,Z.col5link);i=G(Z.col6,Z.col6link);aa=G(Z.col7,Z.col7link);Y+="<tr>"+X+W+V+U+T+i+aa+"</tr>";return Y}function n(U){var T="";for(var V=0;V<U.length;V++){T+=x(U[V])}return T}function L(i){var T="";if(i){T=\'<li class="c-tabs-nav-li">\'+i+\'</li><li class="c-tabs-nav-sep"></li>\'}return T}function M(T){var W=[];J=g(j.th2[0]);v=\'<div class="c-gap-top op-worldcup1-linkchoose">\'+z(j.morelink2[0])+"</div>";if(T.g1){W.push(\'<li class="c-tabs-nav-li">\'+T.g1+\'</li><li class="c-tabs-nav-sep"></li>\')}if(T.g2){W.push(\'<li class="c-tabs-nav-li">\'+T.g2+\'</li><li class="c-tabs-nav-sep"></li>\')}if(T.g3){W.push(\'<li class="c-tabs-nav-li">\'+T.g3+\'</li><li class="c-tabs-nav-sep"></li>\')}if(T.g4){W.push(\'<li class="c-tabs-nav-li">\'+T.g4+\'</li><li class="c-tabs-nav-sep"></li>\')}if(T.g5){W.push(\'<li class="c-tabs-nav-li">\'+T.g5+\'</li><li class="c-tabs-nav-sep"></li>\')}if(T.g6){W.push(\'<li class="c-tabs-nav-li">\'+T.g6+\'</li><li class="c-tabs-nav-sep"></li>\')}if(T.g7){W.push(\'<li class="c-tabs-nav-li">\'+T.g7+\'</li><li class="c-tabs-nav-sep"></li>\')}if(T.g8){W.push(\'<li class="c-tabs-nav-li">\'+T.g8+\'</li><li class="c-tabs-nav-sep"></li>\')}if(T.g9){W.push(\'<li class="c-tabs-nav-li">\'+T.g9+\'</li><li class="c-tabs-nav-sep"></li>\')}N=\'<ul class="c-tabs-nav op-worldcup1-navtab">\'+W.join("")+"</ul>";for(var V=0;V<wwwgro.length;V++){var X="";for(var U=0;U<j.tr2.length;U++){if(j.tr2[U].t==wwwgro[V]){X+=x(j.tr2[U])}}X&&H.push({code:V,html:X})}for(var V=0;V<H.length;V++){m+=\'<div class="c-tabs-content" style="display:none"><table width="100%" class="c-table" cellspacing="0" cellpadding="0" border="0">\'+J+H[V].html+"</table>"+v+"</div>"}N+=m;return N}if(j.tab1){S.push({code:1,html:j.tab1});K=g(j.th1[0]);wtds1=n(j.tr1);y=\'<div class="c-gap-top op-worldcup1-linkchoose">\'+z(j.morelink1[0])+"</div>";E=\'<div class="c-tabs-content" style="display:none"><table width="100%" class="c-table" cellspacing="0" cellpadding="0" border="0">\'+K+wtds1+"</table>"+y+"</div>"}if(j.tab4){S.push({code:4,html:j.tab4});F=g(j.th4[0]);wtds4=n(j.tr4);q=\'<div class="c-gap-top op-worldcup1-linkchoose">\'+z(j.morelink4[0])+"</div>";B=\'<div class="c-tabs-content" style="display:none"><table width="100%" class="c-table" cellspacing="0" cellpadding="0" border="0">\'+F+wtds4+"</table>"+q+"</div>"}if(j.tab2){S.push({code:2,html:j.tab2});k=M(j.groups[0]);D=\'<div class="c-tabs c-tabs-content op_worldcup1_tab2s" style="display:none">\'+N+"</div>"}if(j.tab3){S.push({code:3,html:j.tab3});C=\'<div class="c-tabs-content" style="display:none"><table class="c-table" width="100%"><tr class="op_worldcup1_ifld"><td >载入中，请稍等...</td></tr><tr class="op_worldcup1_ifct" style="display:none"><td><iframe width="100%" height="472" frameborder="0" scrolling="no"  class="op_worldcup1_if" src="\'+j.tr3+\'" ></iframe></td></tr></table></div>\'}if(j.provider){a.html(j.provider);a.show()}for(var Q=0;Q<S.length;Q++){if(S.length==1){o.push(\'<li class="c-tabs-nav-li c-tabs-nav-selected">\'+S[Q].html+"</li>");b.addClass("c-tabs-nav-one")}else{if(Q==S.length-1){if(S[Q].code==h){o.push(\'<li class="c-tabs-nav-li c-tabs-nav-selected">\'+S[Q].html+"</li>")}else{o.push(\'<li class="c-tabs-nav-li">\'+S[Q].html+"</li>")}}else{if(S[Q].code==h){o.push(\'<li class="c-tabs-nav-li c-tabs-nav-selected">\'+S[Q].html+\'</li><li class="c-tabs-nav-sep"></li>\')}else{o.push(\'<li class="c-tabs-nav-li">\'+S[Q].html+\'</li><li class="c-tabs-nav-sep"></li>\')}}}}b.html(o.join(""));c.innerHTML+=E+B+D+C;var e=d.find(".op-worldcup1-linkchoose");if(e.length>0){e.each(function(i,T){$(T).find("span").last().hide()})}d.find(".op-worldcup1-navtab li").last().hide();A.use("tabs5",function(){d.find(".op_worldcup1_tab2s").each(function(U,T){var V=true;if(U>0){V=false}A.ui.tabs5(T,{toggleSep:V})})});var l=d.find(".op_worldcup1_if");if(l.length>0){l.load(function(){d.find(".op_worldcup1_ifld").hide();d.find(".op_worldcup1_ifct").show()})}}})})});';   // js字串，不含<script标签
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
