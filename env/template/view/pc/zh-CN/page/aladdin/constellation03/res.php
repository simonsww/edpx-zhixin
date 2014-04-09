<?php 
  class CssJs_Util_constellation03
   {
      private static $cssStr = '.op_constellation03{font-size:1em;margin-top:5px;width:100%;}.op_constellation03_bar div{display:inline-block;float:left;border-top:1px solid #dee5ff;border-bottom:1px solid #dee5ff;background-color:#f1f4fd;white-space:nowrap;}.op_constellation03_icon{float:left;margin:16px 20px 16px 0;}.op_constellation03_tabs{padding-left:30px;height:25px;line-height:25px;white-space:nowrap;float:left;}.op_constellation03_info{height:25px;_height:26px;line-height:25px;_line-height:26px;}.op_constellation03_tabs span{height:25px;display:inline-block;margin:0;padding:0 10px;*padding:0 5px;}.op_constellation03_tabs .op_constellation03_ct{border-left:1px solid #dee5ff;border-right:1px solid #dee5ff;background-color:#fff;border-bottom:1px solid #fff;}.op_constellation03_ct a{color:#000;text-decoration:none;}.op_constellation03_bold{font-weight:bold;}.op_constellation03_star{margin-top:2px;float:left;height:13px;width:75px;background-image:url("http://www.baidu.com/aladdin/img/constellation/op_stars-1.3.gif");}.op_constellation03_table td{white-space:nowrap;height:22px;}.op_constellation03_table{margin-top:8px;}.op_constellation03_item{width:171px;height:40px;float:left;margin-bottom:10px;margin-right:2px;}.op_constellation03_left{float:left;cursor:pointer;margin-top:2px;margin-left:2px;}.op_constellation03_right{width:130px;float:left;padding-left:2px;height:36px;}.op_constellation03_title{font-size:1em;font-weight:bold;color:#0000ce;margin-top:2px;}.op_constellation03_subtitle{font-size:1em;color:#666;}a.op_constellation03_anchor{text-decoration:none;}.op_constellation03_link{padding-right:20px;}div.op_constellation03_item:hover{background-color:#d9e1f6;text-decoration:none;cursor:pointer;}.op_constellation03_tbs{float:left;}.op_constellation03_morelink{color:#77c;font-size:.9em;}.op_constellation03_dl{outline:none;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("constellation03",function(){A.init(function(){var h=this,g=null,c=h.find(".op_constellation03_tbs")[0];var m=window.op_constellation03_rows;var d={tb1:[],tb2:[],tb3:[],tb4:[]};var a=window.op_constellation03_curtb;for(var f=0;f<m.length;f++){var b=m[f];d["tb"+b.tid].push(b)}var j=function(i){return document.createElement(i)};var l=function(n){var i={"0":0,"0.5":0.5,"1":1,"1.5":1.5,"2":2,"2.5":2.5,"3":3,"3.5":3.5,"4":4,"4.5":4.5,"5":5};if(!i[n]){return n}var o="0 -"+30*i[n]+"px";return\'<div class="op_constellation03_star" style="background-position:\'+o+\'"></div>\'};var k=function(s){if(!s||s.length==0){return false}var r=j("table");var u=j("tbody");r.appendChild(u);$(r).addClass("op_constellation03_table");for(var t=0;t<s.length;t++){var v=s[t];var w=j("tr");u.appendChild(w);var q=j("td");q.innerHTML=v.key1;q.style.width="64px";if(v.key1bold){$(q).addClass("op_constellation03_bold")}w.appendChild(q);var p=j("td");p.style.width="110px";p.innerHTML=l(v.value1);w.appendChild(p);var o=j("td");o.innerHTML=v.key2;if(v.key2bold){$(o).addClass("op_constellation_bold")}w.appendChild(o);var n=j("td");n.innerHTML=v.value2;w.appendChild(n)}return r};for(var f=1;f<=4;f++){var e=k(d["tb"+f]);if(!e){continue}e.className="op_constellation03_tb"+f;c.appendChild(e);e.style.display=f==a?"block":"none"}g=setTimeout(function(){var i=h.find(".op_constellation03_dl");i.each(function(n,o){$(o).click(function(){op_constellation03_changetb(o,n+1,i)})})},10);op_constellation03_changetb=function(o,q,t){var r=window.op_constellation03_content;if(q==a){return false}var n=h.find(".op_constellation03_content")[0];for(var p=0;p<t.length;p++){var s=t[p];var u=s.parentNode;var v=h.find(".op_constellation03_tb"+(p+1))[0];if((p+1)==q){$(u).addClass("op_constellation03_ct");if(v){v.style.display="block"}if(n){n.innerHTML=r["c"+(p+1)]}}else{$(u).removeClass("op_constellation03_ct");if(v){v.style.display="none"}}}a=q};this.dispose=function(){clearTimeout(g)}})});';   // js字串，不含<script标签
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
