<?php 
  class CssJs_Util_previewpic
   {
      private static $cssStr = '.op_img_main{margin-top:8px;font-size:13px;}.op_img_small{height:94px;}.op_img_small a{text-decoration:none;}.op_img_small img{display:block;}.op_img_xt{display:block;border:1px solid #6963e7;cursor:pointer;}a.op_img_xt:hover{border:1px solid #ccc;-moz-box-shadow:1px 1px 3px rgba(0,0,0,0.2);-webkit-box-shadow:1px 1px 3px rgba(0,0,0,0.2);box-shadow:1px 1px 3px rgba(0,0,0,0.2);}.op_img_xt img{height:90px;}.op_img_small li{height:92px;margin-right:4px;float:left;position:relative;}.op_img_small li.op_img_hover{z-index:99;}.op_img_small dl{display:none;background:#fff;position:absolute;overflow:hidden;-moz-box-shadow:2px 2px 5px rgba(0,0,0,0.2);-webkit-box-shadow:2px 2px 5px rgba(0,0,0,0.2);box-shadow:2px 2px 5px rgba(0,0,0,0.2);padding:7px;border:1px solid #ccc;filter:alpha(opacity:0);opacity:0;}.op_img_small dl img{margin-bottom:7px;}.op_img_small dd,#op_img_small dt{line-height:20px;}.op_img_small dd span{margin-right:15px;}.op_img_showurl{clear:both;}.op_img_showurl a{color:#666;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("previewpic",function(){A.setup(function(){var o=this;var q=o.find(".op_img_main")[0];var y=o.find(".op_img_small")[0];var j=$("head")[0];var f=y.getElementsByTagName("li");var n=y.getElementsByTagName("dl");var s=0,g=null,b=0,r=null,u=null,l="";var C=j.offsetHeight+10;for(s=0;s<op_img_bImg.length;s++){var k=parseInt(op_img_bImg[s].smallWidth)+6;if((b+k)>518){continue}else{b+=k;l+=($.format(["<li>",\'<a href="#{iconUrlLink}" target="_blank" class="op_img_xt"><img src="#{iconSmallAddress}" width="#{smallWidth}" height="#{smallHeight}" alt="" /></a>\',"<dl>",\'<dd><a href="#{iconUrlLink}" target="_blank"><img src="#{iconSmallAddress}" width="100%" alt="" /></a></dd>\',\'<dt><a href="#{iconUrlLink}" target="_blank">#{title}</a></dt>\',"<dd><span>#{px}</span><span>#{size}</span></dd>",\'<dd class="g">#{showUrl}</dd>\',"</div></li>"].join(""),op_img_bImg[s]))}}y.innerHTML=l;$.each(f,function(m,t){var d=t.getElementsByTagName("img")[0];d.index=m;n[m].index=m;$(d).on("mouseover",D);$(d).on("mouseout",B);$(n[m]).on("mouseover",function(E){var i=E||event;var w=this.index;if(a(i,this)){x(w)}});$(n[m]).on("mouseout",function(E){var i=E||event;var w=this.index;if(a(i,this)){h(w)}})});function a(m,i){if(m.type!="mouseout"&&m.type!="mouseover"){return false}var d=m.relatedTarget?m.relatedTarget:m.type=="mouseout"?m.toElement:m.fromElement;while(d&&d!=i){d=d.parentNode}return(d!=i)}function D(){var F=this.index;v();var G=document.body.scrollTop||document.documentElement.scrollTop;var E=f[F].offsetTop;var I=E-G;var d=E-C;var m=parseInt(op_img_bImg[F].smallWidth);var J=parseInt(op_img_bImg[F].smallHeight);var i=parseInt(op_img_bImg[F].bigWidth);var H=parseInt(op_img_bImg[F].bigHeight);n[F].style.width=m+"px";n[F].style.height=J+"px";n[F].style.left=0;n[F].style.top=0;var w=-(parseInt((i-m)*0.5)+8);var K=-(parseInt((H-J)*0.5)+8);if((f[F].offsetLeft+w)<=-8){w=-8}if(G<=C){if(K<-d){K=-d}}else{K=-I+2}g=setTimeout(function(){n[F].style.display="block";z(n[F],F,{width:i,height:(H+60),left:w,top:K,opacity:100});f[F].className="op_img_hover"},400)}function B(){var d=this.index;v();n[d].style.display="none"}function x(d){v();n[d].style.display="block";r=new Date().getTime()}function h(d){n[d].style.display="none";f[d].className="";u=new Date().getTime();var i=((u-r)/1000).toFixed(2);return c({fm:"beha",url:"http://nourl.ubs.baidu.com",title:i,p1:_aMC(n[d]),p2:0,p3:0,p4:(d+1)})}function v(){if(g){clearTimeout(g);g=0}}function z(m,d,i){if(m.timer){clearInterval(m.timer)}m.timer=setInterval(function(){p(m,d,i)},10)}function e(i,d){return i.currentStyle?i.currentStyle[d]:getComputedStyle(i,false)[d]}function p(w,i,m){var F=0,d="",t=true;for(d in m){if(d=="opacity"){F=parseInt(100*parseFloat(e(w,"opacity")))}else{F=parseInt(e(w,d))}var E=(m[d]-F)/2;E=E>0?Math.ceil(E):Math.floor(E);if(m[d]!=F){t=false}if(d=="opacity"){w.style.filter="alpha(opacity:"+(F+E)+")";w.style.opacity=(F+E)/100}else{w.style[d]=F+E+"px"}}if(t){w.getElementsByTagName("img")[0].src=op_img_bImg[i].iconBigAddress;clearInterval(w.timer);w.timer=null}}this.dispose=function(){clearTimeout(g)}})});';   // js字串，不含<script标签
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
