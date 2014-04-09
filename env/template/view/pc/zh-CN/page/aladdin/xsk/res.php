<?php 
  class CssJs_Util_xsk
   {
      private static $cssStr = '.op_xsk_main{position:relative;}.op_xsk_table{padding-right:9px;overflow:hidden;}.op_xsk_contentmore{height:175px;border:1px solid #f8f8f8;border-right:none;border-top:none;}.op_xsk_lastCol{width:11%;}.op_xsk_table .c-icon-gift{*vertical-align:baseline;}.op_xsk_gmain{position:absolute;}.op_xsk_gmain .c-border{width:240px;padding-top:5px;padding-bottom:5px;}.op_xsk_gmain dl{display:none;position:relative;background-color:#fff;font-size:.93em;line-height:1.67;}.op_xsk_gmain dd{color:#666;}.op_xsk_gmain dt,.op_xsk_current{font-weight:bold;}.op_xsk_gmain .op_xsk_dl_block{display:block;}.op_xsk_arr{position:absolute;left:50%;top:0;}.op_xsk_arr .c-icon{display:block;position:relative;left:-50%;top:-10px;}.op_xsk_more{text-align:right;}.op_xsk_current{text-decoration:none;cursor:default;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("xsk",function(){A.setup(function(){var n=this,r,o=n.find(".op_xsk_main").eq(0),e=n.find(".op_xsk_table").eq(0),q=n.find(".op_xsk_gmain").eq(0),s=n.data.op_xsk_query,l=n.data.op_xsk_resourceid,j=n.data.op_xsk_pageitem,h=0,a=0,p=0,g=0,b=j,k=false;n.ajax(s,l,{success:i,co:"card|gifts|cardTh",error:function(){e.html("抱歉！数据请求失败")}});function i(y){if(!y){return}var B=y[0].card;var x=y[0].cardTh[0];var t=y[0].gifts;var u={};if(t){k=true;$(t).each(function(D,C){if(u[C.id]){u[C.id].push(C.title)}else{u[C.id]=[C.title]}})}p=Math.ceil(B.length/j);var w=[],v=[],z=[];w.push(\'<table class="c-table op_xsk_tab">\');w.push(\'<tr style="display:none;"><th>\'+x.title+"</th><th>"+x.cardSource+"</th><th>"+x.cardNumber+"</th></tr>");$(B).each(function(H,C){var J="";if(u[C.id]){v.push([\'<dl class="c-border">\',"<dt>"+C.giftsTitle+"</dt>",f.arr(u[C.id],"dd"),f.str(C.moreTxt,\'<dd class="op_xsk_more"><a href="\'+C.moreLink+\'" target="_blank">\'+C.moreTxt+"</a></dd>"),\'<div class="op_xsk_arr"><i class="c-icon c-icon-triangle-up-empty"></i></div>\',"</dl>"].join(""));J=\'<span class="c-icon c-icon-gift c-gap-icon-left-small"></span>\'}var I=[\'<a href="\'+C.titleLink+\'" target="_blank">\'+C.title+"</a>",J].join("");var G="<td>"+I+"</td>";var D=C.cardSource;var F="<td>"+D+"</td>";var K=f.str(C.cardNumberLink,\'<a href="\'+C.cardNumberLink+\'" target="_blank" class="c-btn c-btn-mini">领号</a>\');var E=\'<td class="op_xsk_lastCol OP_LOG_BTN">\'+K+"</td>";z.push(\'<tr class="op_xsk_tr">\'+G+F+E+"</tr>")});w.push(z.join(""));w.push("</table>");e.html(w.join(""));if(v.length){q.html(v.join(""))}A.use("scrollbarv",function(){r=A.ui.scrollbarv({content:e.get(0)})});m()}var f={str:function(u,t){return u.length>0?t:"&nbsp"},arr:function(u,t){var v="";$(u).each(function(w,x){v+="<"+t+">"+x+"</"+t+">"});return v}};function d(v,u){if(v.type!="mouseout"&&v.type!="mouseover"){return false}var t=v.relatedTarget?v.relatedTarget:v.type=="mouseout"?v.toElement:v.fromElement;while(t&&t!=u){t=t.parentNode}return(t!=u)}function m(){var x=n.find(".op_xsk_tab").eq(0),B=n.find(".op_xsk_feakhead td"),y=n.find(".op_xsk_tr:first td");B.each(function(D,C){$(C).width(y[D].offsetWidth)});n.find(".op_xsk_feaktable").show();var z=x.find("span"),v=z.length,u=0,t=0;if(k){var w=q.find("dl");z.each(function(C,D){z[C].index=C;$(D).mouseover(function(){h=this.index;var E=z[h].offsetLeft-120;if(E<0){E=0}else{if(E>380){E=380}}w.eq(h).addClass("op_xsk_dl_block");q.css("left",E);q.css("top",z[h].parentNode.offsetTop+32-e.scrollTop())}).mouseout(function(){w.eq(h).removeClass("op_xsk_dl_block")})});w.each(function(C,D){$(D).mouseover(function(F){var E=F||event;if(d(E,this)){$(this).addClass("op_xsk_dl_block");u=new Date().getTime()}}).mouseout(function(G){var E=G||event;if(d(E,w[h])){$(this).removeClass("op_xsk_dl_block");t=new Date().getTime();var F=((t-u)/1000).toFixed(2);return c({fm:"beha",url:"http://nourl.ubs.baidu.com",title:F,p1:n.p1,p2:0,p3:(C+1)})}})})}}this.dispose=function(){r&&r.dispose&&r.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'table,btn';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
