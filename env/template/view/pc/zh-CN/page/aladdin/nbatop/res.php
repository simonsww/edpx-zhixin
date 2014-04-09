<?php 
  class CssJs_Util_nbatop
   {
      private static $cssStr = '.op_nbatop_table .op_nbatop_thead td{font-weight:bold;color:#666;border-top:1px solid #dedede;}.op_nbatop_table .op_nbatop_theadt td{border-top:1px solid #dedede;}.op_nbatop_table tr td{text-align:center;white-space:nowrap;}.op_nbatop_more{padding-top:3px;}.op_nbatop_more a{color:#7a77c8;font-family:"宋体";font-size:1em;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("nbatop",function(){A.setup(function(){var c=this,a=this.find(".op-nbatop-tabul")[0],b=this.find(".op-nbatop-tabs")[0];this.ajax(this.data.query,this.srcid,{success:function(H){var D=H[0],t=D.timeliness,y=[],s=[],n=[],F=[],d="",r=[],u=[],g=[];for(var G=0;G<D.tab.length;G++){if(D.tab.length==1){y.push(\'<li class="c-tabs-nav-li c-tabs-nav-selected">\'+D.tab[G].txt+"</li>");$(a).addClass("c-tabs-nav-one")}else{if(G==D.tab.length-1){y.push(\'<li class="c-tabs-nav-li">\'+D.tab[G].txt+"</li>")}else{if(G==0){y.push(\'<li class="c-tabs-nav-li c-tabs-nav-selected">\'+D.tab[G].txt+\'</li><li class="c-tabs-nav-sep"></li>\')}else{y.push(\'<li class="c-tabs-nav-li">\'+D.tab[G].txt+\'</li><li class="c-tabs-nav-sep"></li>\')}}}}a.innerHTML=y.join("");function B(j,i){var I="";if(j){I=!i?"<td"+(t?\' style="width:120px;"\':"")+">"+j+"</td>":"<td"+(t?\' style="width:120px;"\':"")+\'><a href="\'+i+\'" target="_blank">\'+j+"</a></td>"}return I}for(var G=0;G<D.subtab.length;G++){var z="",v,p="",o="",m="",k="",f="",e="",q="",C="";var x=0;for(var E=0;E<D.trs.length;E++){if(D.trs[E].subtab!=G){continue}if(!D.subtab[G].nohead){if(x==0){v=\' class="op_nbatop_thead"\'}else{v=""}}else{if(x==0){v=\' class="op_nbatop_theadt"\'}else{v=""}}p=B(D.trs[E].td1,D.trs[E].td1link);o=B(D.trs[E].td2,D.trs[E].td2link);m=B(D.trs[E].td3,D.trs[E].td3link);k=B(D.trs[E].td4,D.trs[E].td4link);f=B(D.trs[E].td5,D.trs[E].td5link);e=B(D.trs[E].td6,D.trs[E].td6link);z+="<tr"+v+">"+p+o+m+k+f+e+"</tr>";C=D.trs[E].subtab;x++}x=0;if(G==0){q=\'<div class="c-tabs-content"><table width="100%" class="c-table op_nbatop_table" cellspacing="0" cellpadding="0" border="0">\'+z+\'</table><div class="op_nbatop_more"><a href="\'+D.subtab[G].morelink+\'" target="_blank">\'+D.subtab[G].moretxt+"</a></div></div>"}else{q=\'<div class="c-tabs-content" style="display:none;"><table width="100%" class="c-table op_nbatop_table" cellspacing="0" cellpadding="0" border="0">\'+z+\'</table><div class="op_nbatop_more"><a href="\'+D.subtab[G].morelink+\'" target="_blank">\'+D.subtab[G].moretxt+"</a></div></div>"}n.push({subtab:D.subtab[G].tab,subid:G,html:q})}for(var G=0;G<D.tab.length;G++){var l=[];for(var E=0;E<D.subtab.length;E++){if(D.subtab[E].tab==G){l.push(D.subtab[E].txt)}}g.push(l)}for(var G=0;G<g.length;G++){var h="";for(var E=0;E<g[G].length;E++){if(g[G].length==1){h+=\'<li class="c-tabs-nav-li">\'+g[G][E]+"</li>"}else{if(E==g[G].length-1){h+=\'<li class="c-tabs-nav-li">\'+g[G][E]+"</li>"}else{h+=\'<li class="c-tabs-nav-li">\'+g[G][E]+\'</li><li class="c-tabs-nav-sep"></li>\'}}}F.push(h)}for(var G=0;G<F.length;G++){var w="";for(var E=0;E<n.length;E++){if(n[E].subtab==G){w+=n[E].html}}r.push({tcode:G,html:w})}for(var G=0;G<F.length;G++){if(G==0){d=\'<div class="c-tabs c-tabs-content op-nbatop-tab2cho"><ul class="c-tabs-nav">\'+F[G]+"</ul>"+r[G].html+"</div>"}else{d+=\'<div class="c-tabs c-tabs-content op-nbatop-tab2cho" style="display:none;"><ul class="c-tabs-nav">\'+F[G]+"</ul>"+r[G].html+"</div>"}}b.innerHTML+=d;A.use("tabs5",function(){$.each(c.find(".op-nbatop-tab2cho"),function(I,j){var J=true;if(I>0){J=false}A.ui.tabs5(j,{toggleSep:J})})})}})})});';   // js字串，不含<script标签
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
