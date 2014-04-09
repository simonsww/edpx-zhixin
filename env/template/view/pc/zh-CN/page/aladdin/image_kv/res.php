<?php 
  class CssJs_Util_image_kv
   {
      private static $cssStr = '.op_image_kv_container{overflow:hidden;}.op_image_kv_container a{display:block;position:relative;float:left;overflow:hidden;}.op_image_kv_container img,.op_image_kv_viewbox img{display:block;}.op_image_kv_viewbox{position:absolute;display:none;width:0;height:0;overflow:hidden;outline:none;box-shadow:#646464 0 0 10px;-webkit-box-shadow:#646464 0 0 10px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("image_kv",function(){A.setup(function(){var z=this,b=z.find(".op_image_kv_container")[0];var k=z.data.imageDisplayHeight,F=new Function("return "+z.data.imageData)(),u=b.offsetWidth;if(!u&&u<=0){u=z.data.imageDisplayTotalMaxWidth}var x=[],J=0;for(var C=0,G;G=F[C];C++){G.width=parseInt(G.width);G.height=parseInt(G.height);if(G.height<k){continue}G.rwidth=Math.round((G.width/G.height)*k);J+=G.rwidth;x.push(G);if(J>u){break}}var o=document.createDocumentFragment(),K,N,v=0,c=J-u,j=x.length,s=Math.ceil(c/j),r=Math.round(s/2);if(c<0){c=0;s=0;r=0}for(var C=0,G;G=x[C];C++){if((C===j-1)&&c>0){G.awidth=u-v;if(G.awidth>G.rwidth){G.awidth=G.rwidth}G.marginLeft=-Math.round((G.rwidth-G.awidth)/2)}else{G.awidth=G.rwidth-s;G.marginLeft=-r}v+=G.awidth;K=document.createElement("a");N=document.createElement("img");K.appendChild(N);K.href=G.link;K.target="_blank";K.style.width=G.awidth+"px";K.style.height=N.style.height=k+"px";N.src=G.src;N.style.width=G.rwidth+"px";N.style.marginLeft=G.marginLeft+"px";o.appendChild(K)}b.appendChild(o);var y=z.find(".op_image_kv_container").eq(0);var B=y.find("a");var M=z.find(".op_image_kv_viewbox").eq(0);var E,g,H,n,p,f,m,D,e,t,L,I,d;B.bind("mouseenter",function(){l(this)});$(z.container).bind("mouseleave",function(){q()});M.bind("mouseleave",function(){q()});function l(a){E=$(a);M.html(E.html()).css({left:p,top:f}).show();g=M.find("img");H=E.attr("data-click");n=E.attr("href");p=a.offsetLeft;f=a.offsetTop;m=E.width();D=E.height();e=E.find("img").width();t=E.find("img").height();L=0.1;I=m+m*L*2;d=D+D*L*2;if(L*D>10){L=10/D;d=D+D*0.2;I=m+m*L*2}g.stop().animate({width:e+e*L*2,height:t+t*L*2},100);M.stop().attr({"data-click":H,href:n}).css({display:"block",left:p,top:f,width:m,height:D}).animate({left:p-m*L,top:f-D*L,width:m+m*L*2,height:D+D*L*2},100)}function q(){if(g&&M){g.stop().animate({width:e,height:t},100);M.stop().animate({left:p,top:f,width:m,height:D},100).hide()}}})});';   // js字串，不含<script标签
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
