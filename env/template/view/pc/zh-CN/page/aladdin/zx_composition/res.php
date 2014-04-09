<?php 
  class CssJs_Util_zx_composition
   {
      private static $cssStr = '.op-zx-composition-tabcon{height:1.23;line-height:1.23;}.op-zx-composition-tab-title{font-weight:bold;}.op-zx-composition-tabcon a{display:inline-block;overflow:hidden;width:3.85em;height:1.23;line-height:1.23;text-align:center;text-decoration:none;color:#00c;white-space:nowrap;vertical-align:text-bottom;_font-family:Simsun;}.op-zx-composition-tabcon .op-zx-composition-tab-select{background:#388bff;color:#fff;}.op-zx-composition-tab-sp{margin:0 6px;color:#d8d8d8;}.op-zx-composition-content{position:relative;zoom:1;}.op-zx-composition-content h4{margin:0;font-size:1em;font-weight:normal;}.op-zx-composition-time{position:absolute;top:0;right:0;width:30%;overflow:hidden;font-size:.92em;text-align:right;}.op-zx-composition-nocontent{color:#999;padding:10px 0;}.op-zx-composition-content h4,.op-zx-composition-abstract{margin-bottom:2px;}.op-zx-composition-more-con{margin-bottom:-3px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("zx_composition",function(){A.setup(function(){var g=this,b={},n=g.data.srcid,j=g.data.noContentWord,h=g.data.type,f="op-zx-composition-tab-select",a=g.find(".op-zx-composition-content-con").eq(0),k=g.find(".op-zx-composition-tab").eq(0),e=g.find(".op-zx-composition-more-con").get(0),l=g.find(".op-zx-composition-othertopic").eq(0),i,d,c;var m=false;d=function(p,q){var o="http://opendata.baidu.com/api.php?resource_id=#{srcid}&co=#{co}&query=#{query}&ie=utf8&oe=gbk&format=json&hilight=#{hilight}&limit=#{limit}&t=#{t}";if(b[p]=="pending"){return}if(b[p]){q(b[p])}else{b[p]="pending";o=$.format(o,{srcid:n,query:encodeURIComponent(p),limit:"content.*.abstract:120,content.*.title:48,othertopic.title:20,content.abstract:120,content.title:48",hilight:"content.*.abstract,content.*.title,content.abstract,content.title",t:+new Date()});$.ajax({url:o,dataType:"jsonp",jsonp:"cb",timeout:5000,success:function(r){if(m){return}b[p]=r.data[0];q(r.data[0])}})}};i=\'<div class="op-zx-composition-content">      <h4><a href="#{url}" target="_blank">#{title}</a></h4>      #{abstract1}      #{time}	</div>\';c=function(){var p=h==""?[]:[h],o=\'<a href="#{url}" target="_blank" #{classname}>#{text}</a>#{desc}　\';g.find(f).each(function(r,q){if(q.innerHTML!="全部"){p.push(q.innerHTML)}});d(p.join(" "),function(v){var t,q,s=[],u,r;if(v&&(u=v.content)){if(!u.length){u=[u]}for(t=0,q=u.length;t<q;t++){s.push($.format(i,{url:u[t].url,title:u[t].title,abstract1:u[t]["abstract"]?(\'<p class="op-zx-composition-abstract">\'+u[t]["abstract"]+"</p>"):"",time:u[t].time?(\'<div class="op-zx-composition-time">\'+u[t].time+"</div>"):"",morelink:r||""}))}if(v.morelink&&u.length>=3){r=[\'<p class="op-zx-composition-more-con" >\',$.format(o,{url:v.morelink[0].url,text:v.morelink[0].text,classname:""}),"</p>"].join("");s.push(r)}}else{s.push(\'<p class="op-zx-composition-nocontent">\'+j+"</p>")}a.html(s.join(""));if(v&&v.othertopic){if(!v.othertopic.length){v.othertopic=[v.othertopic]}s=[];for(t=0,q=v.othertopic[0].link.length;t<q;t++){s.push($.format(o,{url:v.othertopic[0].link[t].url,text:v.othertopic[0].link[t].text,desc:v.othertopic[0].link[t].desc||"",classname:""}))}l.html(\'<span class="op-zx-composition-othertopic-title">\'+v.othertopic[0].title||"</span>"+s.join(""));l.css("display","")}else{l.css("display","none")}})};k.on("click",function(s){var p=s||window.event,r=s.target||s.srcElement,o=$(r),q;if(r.tagName.toLowerCase()=="a"&&r.className.indexOf(f)==-1){p.returnValue=false;o.addClass(f).siblings("a").removeClass(f);c(r)}});this.dispose=function(){if(!m){m=true}}})});';   // js字串，不含<script标签
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
