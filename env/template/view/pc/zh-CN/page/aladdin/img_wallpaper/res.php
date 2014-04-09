<?php 
  class CssJs_Util_img_wallpaper
   {
      private static $cssStr = '.op-img-wallpaper-zoom-box{box-shadow:#646464 0 0 10px;position:absolute;}.op-img-wallpaper-desktop-cont{position:relative;display:none;}.op-img-wallpaper-pbline{margin-top:0;}.op-img-wallpaper-divide-high{height:160px;}.op-img-wallpaper-divide-low{height:95px;}.op-img-wallpaper-link-type{margin-left:0;outline:none;text-decoration:none;vertical-align:middle;overflow:hidden;position:relative;float:left;}.op-img-wallpaper-link-imgs{margin-left:-0px;}.op-img-wallpaper-hoverview{position:absolute;display:none;width:0;height:0;text-decoration:none;overflow:hidden;outline:none;box-shadow:#646464 0 0 10px;}.op-img-wallpaper-cell-bar{position:absolute;left:0;bottom:0;_bottom:-1px;background:rgba(0,0,0,0.5);filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr=\'#99000000\',EndColorStr=\'#99000000\');width:auto;color:#fff;font-size:12px;padding:2px 7px;height:16px;overflow:hidden;}.op-img-wallpaper-cell-bar .op-img-wallpaper-cell-num{font-family:宋体;}.op-img-wallpaper-class{margin-right:11px;display:inline-block;}.op-img-wallpaper-class-title{margin-right:0;float:left;}.op-img-wallpaper-link-menu{display:block;overflow:hidden;height:20px;zoom:1;}.op-img-wallpaper-tag-more{display:none;}.op-img-wallpaper-hide{display:none;}.op-img-wallpaper-img{background-color:white;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("img_wallpaper",function(){A.setup(function(){var e=this;var q=parseInt($(".c-container").css("width"));var r=new Function("return "+e.data.datas)(),n=e.data.topImgsNum,s=e.data.bottomImgsNum,m=e.data.tagArrLength,c=e.data.lineHeight,i=e.data.onlyOneLine;var k=$(".op-img-wallpaper-desktop-cont");var g=$(".op-img-wallpaper-hoverview");var h=$(".op-img-wallpaper-top-pics"),j=$(".op-img-wallpaper-bottom-pics");var l=[],f=[];l=r.slice(0,n),f=r.slice(n,n+s);function t(y){var z=[].concat(y);for(var w=0,v=z.length;w<v;w++){var x=z[w];z[w].width=Math.floor(x.ImageWidth/(x.ImageHeight/c));z[w].height=c}return z}l=t(l);if(!i){f=t(f)}function o(y,D){if(!$.isArray(y)){return}var w=y.length;var v=0;for(var B=0;B<w;B++){v+=y[B].width}var E=v-D;var C=[];var z=0;for(var B=0;B<w;B++){var x=Math.round(E*y[B].width/v);z+=x;C.push(x)}C[C.length-1]+=E-z;for(var B=0;B<w;B++){y[B].width-=C[B];y[B].aWidth=C[B]}}function d(C,B){if(C.length!=B.length){return}for(var z=0,v=C.length;z<v;z++){var x=$(C[z]),y=x.find("img"),w=B[z];x.css("width",w.width);y.css("margin-left",Math.floor(-w.aWidth/2))}}function a(O){var v=$(O.currentTarget);var D=$(O.target);if(v.hasClass("op-img-wallpaper-hover")){return}if(D.hasClass("op-img-wallpaper-cell-bar")){D=D.parent().find("img")}if(D.hasClass("op-img-wallpaper-cell-num")){D=D.parent().parent().find("img")}var G=v.find(".op-img-wallpaper-cell-num").html();var H=v.position(),L=v.width(),J=v.height();var w=$("<img>");if(G){var I=$(\' <div class="op-img-wallpaper-cell-bar"><span class="op-img-wallpaper-cell-num">\'+G+"</span></div>")}var C=D.width(),N=D.height();w.attr("src",D.attr("src"));w.addClass("op-img-wallpaper-img");g.attr("href",v.attr("href"));var F={display:"block",left:H.left,top:H.top,width:L,height:J},P={width:C,height:N,cursor:"pointer","margin-left":D.css("margin-left")};g.css(F);w.css(P);g.children().remove();g.append(w);if(G){g.append(I)}var z=J+20;var y=z/J*L;var E=H.top-10;var Q=H.left-(y-L)/2;var x=N+20;var M=x/N*C;var K={left:Q,top:E,width:y,height:z},B={width:M,height:x,"margin-left":parseInt(D.css("margin-left"))*x/N};g.stop().animate(K,60);w.stop().animate(B,60)}function p(w){var v=$(w.target);if(v.hasClass("op-img-wallpaper-img")||v.hasClass("op-img-wallpaper-desktop-cont")||v.hasClass("op-img-wallpaper-link-imgs")||v.hasClass("op-img-wallpaper-cell-bar")||v.hasClass("op-img-wallpaper-cell-num")||v.hasClass("op-img-wallpaper-hover")){return}g.hide()}function b(x){var B=$(x),z=[];var D=0,F={};for(var y=0,C=B.length;y<C;y++){var E=$(B[y]);if(D!=E.offset().top){z.push(E.offset().top);D=E.offset().top}}F.line=1;var w=-1,v=0;for(var y=0,C=B.length;y<C;y++){var E=$(B[y]);if(E.offset().top==z[0]){w=y;v=E.offset().top}if(E.offset().top>z[0]){F.line=2}}F.pos=w;F.top=v;return F}function u(){for(var y=0;y<m;y++){var D=".op-img-wallpaper-tag"+y;var z=$(".op-img-wallpaper-tagCon"+y);var v=b(D);if(v.line>1){var x=$(".op-img-wallpaper-more"+y);var C=$(".op-img-wallpaper-tag"+y);var B=$(C.get(v.pos));x.insertBefore(B);x.css("display","inline-block")}var w=B.offset().top-v.top;if(w>-3&&w<3){B.remove()}}}this.dispose=function(){$(document).unbind("mouseover",p)};if(i){o(l,q);d(h,l)}else{o(l,q);o(f,q);d(h,l);d(j,f)}k.show();k.on("mouseenter",".op-img-wallpaper-link-type",a);$(document).on("mouseover",p);u();$.each(k.find("img"),function(v,w){bds.se.mon.load(w,"left")})})});';   // js字串，不含<script标签
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
