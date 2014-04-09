<?php 
  class CssJs_Util_newmusiclist
   {
      private static $cssStr = '.op_newmusiclist_list_playbutton{padding-left:8px;padding-right:10px;}.op_newmusiclist_list .op_newmusiclist_list_more,.op_newmusiclist_list .op_newmusiclist_list_more em{font-family:simsun;}.op_newmusiclist_list_new{position:relative;top:-4px;}.op_newmusiclist_list_index{margin:0 2px;color:#666;}.op_muslist_list_first,.op_muslist_list_second{display:block;float:left;}.op_muslist_list_first{color:#999;padding:2px 0;height:12px;line-height:12px;font-size:.92em;}.op_muslist_list_second{width:472px;height:53px;overflow:hidden;}.op_muslist_list_second a{display:inline-block;height:12px;padding:2px 5px;text-align:center;vertical-align:text-bottom;font-size:.92em;line-height:12px;font-style:normal;overflow:hidden;}.op_muslist_list_second .c-text{color:#00c;}.op_muslist_list_second .c-text-public{color:#fff;}.op_newmusiclist_list_switch{width:100%;text-align:center;}.op_newmusiclist_list_switch a{text-decoration:none;display:inline-block;width:19px;border:1px solid #e2e2e2;}.op_newmusiclist_list_switch a.op_newmusiclist_list_active{text-decoration:none;display:inline-block;width:19px;color:#000;font-weight:bold;border:none;}.op_newmusiclist_list_switch a.op_newmusiclist_list_pagemore{width:auto;border:none;text-decoration:underline;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("newmusiclist",function(){A.setup(function(){var h=this;var j;var b=h.data.hotsongs;var e=h.find(".op_newmusiclist_list_pagemore")[0];var a=e.href;var i=h.find(".op_muslist_list_second")[0],k=h.find(".op_trickimage_container")[0],d=k.getElementsByTagName("a");var g=h.find(".op_newmusiclist_list_tbody:first tr");var f=h.find(".op_newmusiclist_list_page");function c(t,m,p){var o=[],r=t.split("");p=p||"…";for(var q=0,n=r.length;q<n;q++){if(r[q].charCodeAt(0)>255){o.push("*")}o.push(r[q])}if(m&&m>0&&o.length>m){r=o.join("").substring(0,m-1).replace(/\\*/g,"")+p}else{return t}return r}A.use("mboxsingleton",function(){j=new A.ui.mboxsingleton();var m=h.find(".op_newmusiclist_list_checkall")[0],s=h.find(".op_newmusiclist_list_checkbox"),n=h.find(".op_newmusiclist_list_play"),o=h.find(".op_newmusiclist_list_playbutton")[0];var q=s.length;function l(){s=h.find(".op_newmusiclist_list_checkbox");n=h.find(".op_newmusiclist_list_play");$.each(n,function(u,v){$(v).on("click",function(){j.openBox("mbc.ps",$(v).attr("songid"),{fr:"altg8"})})});$.each(s,function(u,v){$(v).on("click",function(){if(v.checked){q++}else{q--}if(q==s.length){m.checked=true}else{m.checked=false}if(q==0){$(o).addClass("op_newmusiclist_list_disabled")}else{$(o).removeClass("op_newmusiclist_list_disabled")}})})}$(m).on("click",function(){s=h.find(".op_newmusiclist_list_checkbox");$.each(s,function(u,v){v.checked=m.checked;if(m.checked){q=s.length;$(o).removeClass("op_newmusiclist_list_disabled")}else{q=0;$(o).addClass("op_newmusiclist_list_disabled")}})});o&&$(o).on("click",function(){s=h.find(".op_newmusiclist_list_checkbox");if(!$(o).hasClass("op_newmusiclist_list_disabled")){var u="";$.each(s,function(v,w){if(w.checked){u=u+$(w).attr("songid")+"_"}});j.openBox("mbc.ps",u,{fr:"altg8"})}});l();function r(y){var u=y*5,v=(y-1)*5;for(var w=0,x;x=g[w];w++){if(w>=v&&w<u){x.style.display=""}else{x.style.display="none"}}}f[0].className="c-gap-right-small c-gap-left-small c-gap-top op_newmusiclist_list_active";for(var p=0;p<f.length;p++){(function(u){$(f[p]).on("click",function(){for(var v=0;v<f.length;v++){f[v].className="c-gap-right-small c-gap-left-small c-gap-top"}this.className="c-gap-right-small c-gap-left-small c-gap-top op_newmusiclist_list_active";r(u)})})(p+1)}function t(u){$(u).on("click",function(){var v=h.find(".c-text-public")[0];if(v.innerHTML!="流行"){u.href=a+"tag/"+v.innerHTML}else{u.href=a+"style/"+v.innerHTML}})}t(e);for(var p=0;p<d.length;p++){$(d[p]).on("click",function(){t(e);var w=this.parentNode.children;for(var v=0;v<w.length;v++){w[v].className="c-text c-text-mult c-gap-right-small c-gap-bottom"}this.className="c-text c-text-mult c-gap-right-small c-gap-bottom c-text-public";var w=this.parentNode.children;for(var v=0;v<w.length;v++){w[v].className="c-text c-text-mult c-gap-right-small c-gap-bottom"}this.className="c-text c-text-mult c-gap-right-small c-gap-bottom c-text-public";var x="的歌";var u="http://opendata.baidu.com/api.php?resource_id="+h.data.srcid+"&query="+encodeURIComponent(this.innerHTML)+encodeURIComponent(x)+"&ie=utf-8&oe=utf-8&format=json&t="+(+new Date());$.ajax({url:u+"&cb=newmu",dataType:"jsonp",success:function(C){for(var D=0;D<f.length;D++){f[D].className="c-gap-right-small c-gap-left-small c-gap-top"}f[0].className="c-gap-right-small c-gap-left-small c-gap-top op_newmusiclist_list_active";m=h.find(".op_newmusiclist_list_checkall")[0];m.checked=true;var H=h.find(".op_newmusiclist_list_tbody:first tr");if(C.data[0]){if(C.data[0].result){var C=C.data[0].result;for(var D=0,I;I=H[D];D++){var E=I.getElementsByTagName("td");E[0].innerHTML=\'<input class="op_newmusiclist_list_checkbox OP_LOG_BTN" songid="\'+C[D].id+\'" type="checkbox" checked=true />\';E[1].innerHTML=\'<span class="op_newmusiclist_list_index">\'+(D<9?"0"+(D+1):""+(D+1))+"</span>";E[2].innerHTML=\'<div class="op_newmusiclist_list_name"><a href="\'+C[D].loc+\'?fm=altg8"  target="_blank" title="\'+C[D].name+\'">\'+c(C[D].name,18)+"</a>"+(C[D].isnew=="1"?\'<span class="c-text c-text-danger op_newmusiclist_list_new">新</span>\':"")+"</div>";if(C[D].singer.length>=2){var y=C[D].singer.split(",")}else{var y=C[D].singer.split("")}if(C[D].singerid.length>=2){var F=C[D].singerid.split(",")}else{var F=C[D].singerid.split(",")}var z="http://music.baidu.com/";!y[0]?E[3].innerHTML="--":"";if(!y[0]){E[3].innerHTML="--"}for(var B=0;B<y.length;B++){if(F[B]){var G=z+"artist/"+F[B]+"?fm=altg8"}else{if(y[B]){var G=z+"search?key="+y[B]+"&fm=altg8"}}if(B>2){return}if(B>0){"/ "}if(y[B]){if(G){E[3].innerHTML=\'<a title="\'+y[B]+\'" target="_blank" href="\'+G+\'" class="op-zx-mussong-singer">\'+c(y[B],8)+"</a>"}else{E[3].innerHTML=\'<span title="\'+y[B]+\'">\'+c(y[B],10)+"</span>"}}}E[4].innerHTML=\'<a href="javascript:;" class="c-icon c-icon-play-circle op_newmusiclist_list_play" songid="\'+C[D].id+\'" title="播放">&nbsp;</a>\';E[5].innerHTML=\'<a href="http://music.baidu.com/song/\'+C[D].id+\'?fm=altg8#song_lyric" target="_blank" class="c-icon c-icon-lyric op_newmusiclist_list_lrc" title="歌词">&nbsp;</a>\';E[6].innerHTML=\'<a href="http://music.baidu.com/song/\'+C[D].id+\'/download?fm=altg8" target="_blank" class="c-icon c-icon-download op_newmusiclist_list_down" title="下载">&nbsp;</a>\';r(1)}}}l()},timeout:5000,jsonpCallback:"newmu"})})}});this.dispose=function(){j&&j.dispose&&j.dispose()}})});';   // js字串，不含<script标签
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
