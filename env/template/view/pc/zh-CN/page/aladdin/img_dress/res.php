<?php 
  class CssJs_Util_img_dress
   {
      private static $cssStr = '.op-img-dress-zoom-box{box-shadow:#646464 0 0 10px;position:absolute;}.op-img-dress-desktop-cont{position:relative;display:none;}.op-img-dress-divide-high{height:105px;}.op-img-dress-divide-low{height:90px;}.op-img-dress-strong{width:367px;float:left;}.op-img-dress-weak{width:538px;float:left;}.op-img-dress-link-type{margin-left:0;outline:none;text-decoration:none;vertical-align:middle;overflow:hidden;position:relative;float:left;}.op-img-dress-link-imgs{margin-left:-0px;}.op-img-dress-hoverview{position:absolute;display:none;width:0;height:0;text-decoration:none;overflow:hidden;outline:none;box-shadow:#646464 0 0 10px;}.op-img-dress-cell-bar{position:absolute;left:0;bottom:0;_bottom:-1px;background:rgba(0,0,0,0.5);filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr=\'#99000000\',EndColorStr=\'#99000000\');width:auto;color:#fff;font-size:12px;padding:2px 7px;height:16px;overflow:hidden;display:none;}.op-img-dress-class{margin-right:11px;display:inline-block;}.op-img-dress-class-title{margin-right:0;float:left;}.op-img-dress-link-menu{display:block;overflow:hidden;height:20px;zoom:1;}.op-img-dress-tag-more{display:none;}.op-img-dress-hide{display:none;}.op-img-dress-img{background-color:white;}.op-img-dress-link{position:relative;width:170px;height:210px;float:left;}.op-img-dress-clearfix:after{content:\'\\20\';display:block;height:0;clear:both;}.op-img-dress-clearfix{zoom:1;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("img_dress",function(){A.setup(function(){var e=this;var r=e.data.maxWidth;var s=new Function("return "+e.data.datas)(),o=e.data.topImgsNum,t=e.data.bottomImgsNum,m=e.data.tagArrLength,c=e.data.lineHeight,i=e.data.onlyOneLine,n=e.data.from;arrIndex=e.data.arrIndex;var k=$(".op-img-dress-desktop-cont");var g=$(".op-img-dress-hoverview");var h=$(".op-img-dress-top-pics"),j=$(".op-img-dress-bottom-pics");var l=[],f=[];l=s.slice(n,o+n),f=s.slice(o+n,o+t);function u(z){var B=[].concat(z);for(var x=0,w=B.length;x<w;x++){var y=B[x];B[x].width=Math.floor(y.width/(y.height/c));B[x].height=c}return B}l=u(l);if(!i){f=u(f)}function p(z,E){if(!$.isArray(z)){return}var x=z.length;var w=0;for(var C=0;C<x;C++){w+=z[C].width}var F=w-E;var D=[];var B=0;for(var C=0;C<x;C++){var y=Math.round(F*z[C].width/w);B+=y;D.push(y)}D[D.length-1]+=F-B;for(var C=0;C<x;C++){z[C].width-=D[C];z[C].aWidth=D[C]}}function d(D,C){if(D.length!=C.length){return}for(var B=0,w=D.length;B<w;B++){var y=$(D[B]),z=y.find("img"),x=C[B];y.css("width",x.width);z.css("margin-left",Math.floor(-x.aWidth/2))}}function a(P){var w=$(P.currentTarget);var E=$(P.target);if(w.hasClass("op-img-dress-hover")){return}if(E.hasClass("op-img-dress-cell-bar")){E=E.parent().find("img")}if(E.hasClass("op-img-dress-cell-num")){E=E.parent().parent().find("img")}var H=w.find(".op-img-dress-cell-num").html();var I=w.position(),M=w.width(),K=w.height();var x=$("<img>");if(H){var J=$(\' <div class="op-img-dress-cell-bar"><span class="op-img-dress-cell-num">\'+H+"</span></div>")}var D=E.width(),O=E.height();x.attr("src",E.attr("src"));x.attr("title",E.attr("title"));x.addClass("op-img-dress-img");g.attr("href",w.attr("href"));var G={display:"block",left:I.left,top:I.top,width:M,height:K},Q={width:D,height:O,cursor:"pointer","margin-left":E.css("margin-left")};g.css(G);x.css(Q);g.children().remove();g.append(x);if(H){g.append(J)}var B=K+20;var z=B/K*M;var F=I.top-10;var R=I.left-(z-M)/2;var y=O+20;var N=y/O*D;var L={left:R,top:F,width:z,height:B},C={width:N,height:y,"margin-left":parseInt(E.css("margin-left"))*y/O};g.stop().animate(L,60);x.stop().animate(C,60)}function q(x){var w=$(x.target);if(w.hasClass("op-img-dress-img")||w.hasClass("op-img-dress-desktop-cont")||w.hasClass("op-img-dress-link-imgs")||w.hasClass("op-img-dress-cell-bar")||w.hasClass("op-img-dress-cell-num")||w.hasClass("op-img-dress-hover")){return}g.hide()}function b(y){var C=$(y),B=[];var E=0,G={};for(var z=0,D=C.length;z<D;z++){var F=$(C[z]);if(E!=F.offset().top){B.push(F.offset().top);E=F.offset().top}}G.line=1;var x=-1,w=0;for(var z=0,D=C.length;z<D;z++){var F=$(C[z]);if(F.offset().top==B[0]){x=z;w=F.offset().top}if(F.offset().top>B[0]){G.line=2}}G.pos=x;G.top=w;return G}function v(){for(var z=arrIndex;z<m+arrIndex;z++){var E=".op-img-dress-tag"+z;var B=$(".op-img-dress-tagCon"+z);var w=b(E);if(w.line>1){var y=$(".op-img-dress-more"+z);var D=$(".op-img-dress-tag"+z);var C=$(D.get(w.pos));y.insertBefore(C);y.css("display","inline-block");var x=C.offset().top-w.top;if(x>-3&&x<3){C.remove()}}}}this.dispose=function(){$(document).unbind("mouseover",q)};if(i){p(l,r);d(h,l)}else{p(l,r);p(f,r);d(h,l);d(j,f)}k.css("display","block");k.on("mouseenter",".op-img-dress-link-type",a);$(document).on("mouseover",q);v()})});';   // js字串，不含<script标签
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
