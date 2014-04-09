<?php 
  class CssJs_Util_gifts
   {
      private static $cssStr = '.op_gifts_main{position:relative;}.op_gifts_table{padding-right:9px;overflow:hidden;}.op_gifts_contentmore{height:175px;border:1px solid #f8f8f8;border-right:none;border-top:none;}.op_gifts_lastCol{width:20%;}.op_gifts_table .c-icon-gift{*vertical-align:baseline;}.op_gifts_gmain{position:absolute;}.op_gifts_gmain .c-border{width:240px;padding-top:5px;padding-bottom:5px;}.op_gifts_gmain dl{display:none;position:relative;background-color:#fff;font-size:.93em;line-height:1.67;}.op_gifts_gmain dd{color:#666;margin-left:0;}.op_gifts_gmain dt,.op_gifts_current{font-weight:bold;}.op_gifts_gmain .op_gifts_dl_block{display:block;margin-top:0;margin-bottom:0;}.op_gifts_arr{position:absolute;left:50%;top:0;}.op_gifts_arr .c-icon{display:block;position:relative;left:-50%;top:-10px;}.op_gifts_more{text-align:right;}.op_gifts_current{text-decoration:none;cursor:default;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("gifts",function(){A.setup(function(){var l=this,d,b=l.find(".op_gifts_main").eq(0),a=l.find(".op_gifts_table").eq(0),n=l.find(".op_gifts_gmain").eq(0),g=l.data.op_gifts_query,j=l.data.op_gifts_resourceid,m=0,o=0,k=0,h=false;function p(v){if(!v){return}var x=v.card;var u=v.cardTh[0];var q=v.gifts;var r={};if(q){h=true;$(q).each(function(z,y){if(r[y.id]){r[y.id].push(y.title)}else{r[y.id]=[y.title]}})}var t=[],s=[],w=[];t.push(\'<table class="c-table op_gifts_tab">\');$(x).each(function(E,y){var G="";if(r[y.id]){s.push([\'<dl class="c-border">\',"<dt>"+y.giftsTitle+"</dt>",f.arr(r[y.id],"dd"),f.str(y.moreTxt,\'<dd class="op_gifts_more"><a href="\'+y.moreLink+\'" target="_blank">\'+y.moreTxt+"</a></dd>"),\'<div class="op_gifts_arr"><i class="c-icon c-icon-triangle-up-empty"></i></div>\',"</dl>"].join(""));G=\'<span class="c-icon c-icon-gift c-gap-icon-left-small"></span>\'}var F=[\'<a href="\'+y.titleLink+\'" target="_blank">\'+y.title+"</a>",G].join("");var D=\'<td style="width:61%;">\'+F+"</td>";var z=y.cardSource;var C=\'<td style="width:19%;">\'+z+"</td>";var H=f.str(y.cardNumberLink,\'<a href="\'+y.cardNumberLink+\'" target="_blank" class="c-btn c-btn-mini">\'+((new Date(y.start)<=new Date())?"领号":"预定")+"</a>");var B=\'<td class="op_gifts_lastCol OP_LOG_BTN">\'+H+"</td>";w.push(\'<tr class="op_gifts_tr">\'+D+C+B+"</tr>")});t.push(w.join(""));t.push("</table>");a.html(t.join(""));if(s.length){n.html(s.join(""))}A.use("scrollbarv",function(){d=A.ui.scrollbarv({content:a.get(0)})});i()}var f={str:function(r,q){return r.length>0?q:"&nbsp"},arr:function(r,q){var s="";$(r).each(function(t,u){if(t<8){s+="<"+q+">"+u+"</"+q+">"}});return s}};function e(s,r){if(s.type!="mouseout"&&s.type!="mouseover"){return false}var q=s.relatedTarget?s.relatedTarget:s.type=="mouseout"?s.toElement:s.fromElement;while(q&&q!=r){q=q.parentNode}return(q!=r)}function i(){var u=l.find(".op_gifts_tab").eq(0),x=l.find(".op_gifts_feakhead td"),v=l.find(".op_gifts_tr:first td");x.each(function(z,y){$(y).width(v[z].offsetWidth)});l.find(".op_gifts_feaktable").show();var w=u.find("span"),s=w.length,r=0,q=0;if(h){var t=n.find("dl");w.each(function(y,z){w[y].index=y;$(z).mouseover(function(){m=this.index;var B=t.eq(m).find("div").eq(0);var C=w[m].offsetLeft-120;if(C<0){C=0;B.css("left",w[m].offsetLeft+8+"px")}else{if(C>380){C=380}}t.eq(m).addClass("op_gifts_dl_block");n.css("left",C);n.css("top",w[m].parentNode.offsetTop+32-a.scrollTop())}).mouseout(function(){t.eq(m).removeClass("op_gifts_dl_block")})});t.each(function(y,z){$(z).mouseover(function(C){var B=C||event;if(e(B,this)){$(this).addClass("op_gifts_dl_block");r=new Date().getTime()}}).mouseout(function(D){var B=D||event;if(e(B,t[m])){$(this).removeClass("op_gifts_dl_block");q=new Date().getTime();var C=((q-r)/1000).toFixed(2);return c({fm:"beha",url:"http://nourl.ubs.baidu.com",title:C,p1:l.p1,p2:0,p3:(y+1)})}})})}}p(l.data);this.dispose=function(){d&&d.dispose&&d.dispose()}})});';   // js字串，不含<script标签
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
