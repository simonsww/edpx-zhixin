<?php 
  class CssJs_Util_img_covers
   {
      private static $cssStr = '.op-img-covers-zoom-box{box-shadow:#646464 0 0 10px;position:absolute;}.op-img-covers-desktop-cont{position:relative;display:none;}.op-img-covers-divide-high{height:160px;}.op-img-covers-divide-low{height:120px;}.op-img-covers-link-type{margin-left:0;outline:none;text-decoration:none;vertical-align:middle;overflow:hidden;position:relative;float:left;}.op-img-covers-link-imgs{margin-left:-0px;}.op-img-covers-hoverview{position:absolute;display:none;width:0;height:0;text-decoration:none;overflow:hidden;outline:none;box-shadow:#646464 0 0 10px;}.op-img-covers-cell-bar{position:absolute;left:0;bottom:0;_bottom:-1px;background:rgba(0,0,0,0.5);filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr=\'#99000000\',EndColorStr=\'#99000000\');width:auto;color:#fff;font-size:12px;padding:2px 7px;height:16px;overflow:hidden;}.op-img-covers-cell-bar .op-img-covers-cell-num{font-family:宋体;}.op-img-covers-class{margin-right:11px;display:inline-block;}.op-img-covers-class-title{margin-right:0;float:left;}.op-img-covers-link-menu{display:block;overflow:hidden;height:20px;zoom:1;}.op-img-covers-tag-more{display:none;}.op-img-covers-hide{display:none;}.op-img-covers-img{background-color:white;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("img_covers",function(){A.setup(function(){var f=this;var s=parseInt($(".c-container").css("width"));var t=new Function("return "+f.data.datas)(),q=f.data.topImgsNum,u=f.data.bottomImgsNum,o=f.data.tagArrLength,c=f.data.lineHeight,k=f.data.cacheWidth,j=f.data.onlyOneLine,d=f.data.arrIndex;var m=$(".op-img-covers-desktop-cont");var h=$(".op-img-covers-hoverview");var i=$(".op-img-covers-top-pics"),l=$(".op-img-covers-bottom-pics");var n=[],g=[];n=t.slice(0,q),g=t.slice(q,q+u);function v(B){var C=[].concat(B);for(var y=0,x=C.length;y<x;y++){var z=C[y];C[y].width=Math.floor(z.ImageWidth/(z.ImageHeight/c));C[y].height=c}return C}n=v(n);if(!j){g=v(g)}function p(B,F){if(!$.isArray(B)){return}var y=B.length;var x=0;for(var D=0;D<y;D++){x+=B[D].width}var G=x-F;var E=[];var C=0;for(var D=0;D<y;D++){var z=Math.round(G*B[D].width/x);C+=z;E.push(z)}E[E.length-1]+=G-C;for(var D=0;D<y;D++){B[D].width-=E[D];B[D].aWidth=E[D]}}function e(E,D){if(E.length!=D.length){return}for(var C=0,x=E.length;C<x;C++){var z=$(E[C]),B=z.find("img"),y=D[C];z.css("width",y.width);B.css("margin-left",Math.floor(-y.aWidth/2))}}function a(Q){var x=$(Q.currentTarget);var F=$(Q.target);if(x.hasClass("op-img-covers-hover")){return}if(F.hasClass("op-img-covers-cell-bar")){F=F.parent().find("img")}if(F.hasClass("op-img-covers-cell-num")){F=F.parent().parent().find("img")}var I=x.find(".op-img-covers-cell-num").html();var J=x.position(),N=x.width(),L=x.height();var y=$("<img>");if(I){var K=$(\' <div class="op-img-covers-cell-bar"><span class="op-img-covers-cell-num">\'+I+"</span></div>")}var E=F.width(),P=F.height();y.attr("src",F.attr("src"));y.addClass("op-img-covers-img");h.attr("href",x.attr("href"));var H={display:"block",left:J.left,top:J.top,width:N,height:L},R={width:E,height:P,cursor:"pointer","margin-left":F.css("margin-left")};h.css(H);y.css(R);h.children().remove();h.append(y);if(I){h.append(K)}var C=L+20;var B=C/L*N;var G=J.top-10;var S=J.left-(B-N)/2;var z=P+20;var O=z/P*E;var M={left:S,top:G,width:B,height:C},D={width:O,height:z,"margin-left":parseInt(F.css("margin-left"))*z/P};h.stop().animate(M,60);y.stop().animate(D,60)}function r(y){var x=$(y.target);if(x.hasClass("op-img-covers-img")||x.hasClass("op-img-covers-desktop-cont")||x.hasClass("op-img-covers-link-imgs")||x.hasClass("op-img-covers-cell-bar")||x.hasClass("op-img-covers-cell-num")||x.hasClass("op-img-covers-hover")){return}h.hide()}function b(z){var D=$(z),C=[];var F=0,H={};for(var B=0,E=D.length;B<E;B++){var G=$(D[B]);if(F!=G.offset().top){C.push(G.offset().top);F=G.offset().top}}H.line=1;var y=-1,x=0;for(var B=0,E=D.length;B<E;B++){var G=$(D[B]);if(G.offset().top==C[0]){y=B;x=G.offset().top}if(G.offset().top>C[0]){H.line=2}}H.pos=y;H.top=x;return H}function w(){for(var B=d;B<o+d;B++){var F=".op-img-covers-tag"+B;var C=$(".op-img-covers-tagCon"+B);var x=b(F);if(x.line>1){var z=$(".op-img-covers-more"+B);var E=$(".op-img-covers-tag"+B);var D=$(E.get(x.pos));z.insertBefore(D);z.css("display","inline-block");var y=D.offset().top-x.top;if(y>-3&&y<3){D.remove()}}}}this.dispose=function(){$(document).unbind("mouseover",r)};if(j){p(n,s-k);e(i,n)}else{p(n,s);p(g,s-k);e(i,n);e(l,g)}m.show();m.on("mouseenter",".op-img-covers-link-type",a);$(document).on("mouseover",r);w();$.each(m.find("img"),function(x,y){bds.se.mon.load(y,"left")})})});';   // js字串，不含<script标签
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
