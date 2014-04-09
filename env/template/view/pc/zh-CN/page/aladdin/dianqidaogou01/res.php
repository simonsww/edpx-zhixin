<?php 
  class CssJs_Util_dianqidaogou01
   {
      private static $cssStr = '.op_dq01_content .c-icon-chevron-bottom{float:right;}.op_dq01_current .c-icon-chevron-bottom{display:none;}.op_dq01_split{margin-right:20px;height:12px;overflow:hidden;display:inline-block;position:relative;top:1px;*top:-5px;}.op_dq01_select_title{white-space:nowrap;font-weight:bold;}.op_dq01_content{font-size:13px;display:none;clear:both;}.op_dq01_content ol{list-style:none;padding:0;margin:0;}.op_dq01_content li{background-position:right -172px;line-height:32px;border-bottom:1px solid #f3f3f3;overflow:hidden;_padding-top:5px;}.op_dq01_content a{text-decoration:none;}.op_dq01_content a:hover{text-decoration:underline;}.op_dq01_title{display:inline-block;color:#00c;width:300px;}.op_dq01_title_link{font-weight:bold;}.op_dq01_content li div.op_dq01_subcontent{display:none;overflow:hidden;}.op_dq01_content li div table{width:100%;}.op_dq01_content li.op_dq01_current{background:white;}.op_dq01_content li.op_dq01_hover{background-position:right -204px;}.op_dq01_content li.op_dq01_hover a.op_dq01_title_link{display:none;}.op_dq01_content li.op_dq01_active{background-position:right -172px;}.op_dq01_content li.op_dq01_active a.op_dq01_title_link{display:none;}.op_dq01_content li.op_dq01_current div.op_dq01_subcontent{display:block;}.op_dq01_content li.op_dq01_current span.op_dq01_title{display:none;}.op_dq01_content li.op_dq01_current b{display:none;}.op_dq01_1,.op_dq01_2,.op_dq01_3,.op_dq01_4,.op_dq01_5{background:#2c99ff;position:relative;left:3px;bottom:1px;font-size:11px;font-family:arial;color:#fff;display:inline-block;width:13px;height:13px;overflow:hidden;font-size:11px;line-height:13px;text-align:center;margin-right:10px;}.op_dq01_4,.op_dq01_5{background-position:0 -71px;}.op_dq01_content li b{font-weight:normal;color:#666;}.op_dq01_content li b span{color:#ff8a00;}.op_dq01_content li b span.f_14{font-size:14px;font-weight:bold;}.op_dq01_content td{font-size:13px;line-height:22px;white-space:nowrap;}td.op_dq01_ck{vertical-align:top;_padding-top:5px;}td.op_dq01_ck .op_dq01_ck_title{font-size:14px;color:#000;font-weight:bold;}td.op_dq01_ck span{color:#ff8a00;}td.op_dq01_ck span.f_16{font-size:16px;font-weight:bold;}td.op_dq01_bot{padding-bottom:6px;}td.op_dq01_link{padding-bottom:10px;}td.op_dq01_link a{float:left;}td.op_dq01_link span{color:#ccc;padding:0 10px;float:left;}.op_dq01_morelink a{font-family:simsun;}.op_dq01_morepricecontainer{overflow:hidden;border:1px solid #efe6e2;margin:0 0 5px 52px;padding:2px 10px;display:none;width:314px;}.op_dq01_morepricecontainer li{float:left;width:49%;background:none;border:0 none;line-height:22px;}.op_dq01_morepricecontainer span{color:#ff8a00;}.op_dq01_dottedsplitter{background-repeat:repeat-x;background-position:0 -115px;height:8px;}.op_dq01_morepricebtn{margin:0 0 0 13px;}.op_dq01_morepricebtn a{color:#7a77c8;cursor:pointer;background:url(http://www.baidu.com/aladdin/img/book/op_ico-1.1.gif) no-repeat;padding:0 15px 0 0;display:inline-block;height:14px;line-height:14px;outline:none;}.op_dq01_morepricebtn a:hover{text-decoration:none;}.op_dq01_morepriceopen a{background-position:right -20px;_background-position:right -22px;*background-position:right -22px;}.op_dq01_morepriceclose a{background-position:right -4px;_background-position:right -6px;*background-position:right -6px;}.op_dq01_moreparam{font-family:simsun;color:#7778cb;}.op_dq01_img{vertical-align:top;padding:2px 19px 0 0;}.op_dq01_table{border-bottom:1px solid #f3f3f3;width:100%;}.op_dq01_table td{line-height:1.54em;padding-bottom:5px;vertical-align:top;}.op_dq01_table span{margin-right:5px;white-space:nowrap;}.op_dq01_table span a{text-decoration:none;}.op_dq01_table_title{white-space:nowrap;font-weight:bold;}.op_dq01_link_gap{color:#878787;}.op_dq01_link_wrap{width:100%;}.op_dq01_td1{vertical-align:top;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("dianqidaogou01",function(){A.setup(function(){var c=A.baidu,f=this,b=f.find(".op_dq01_tabs"),i=b.find(".c-tabs-nav-li").get(),a=f.find("op_dq01_con1")[0],e=f.find(".op_dq01_morepricebtn").get(),j=f.find(".op_dq01_morepricecontainer").get();var g=function(p,k){var n=f.find("ul.c-tabs-nav:first li").get();var o,m,q=false;for(o=0,m=n.length;o<m;o++){if(p==n[o]){q=true;break}}if(q){if(o>0){n[o-1].style.visibility=k?"visible":"hidden"}if(o<m-1){n[o+1].style.visibility=k?"visible":"hidden"}}};if(i.length==1){b.css("display","none")}else{b.addClass("c-gap-top-small")}function d(){var m=window.op_dq01_curtab;$(i[m-1]).removeClass("op_dq01_tabcur");$(i[m-1]).removeClass("c-tabs-nav-selected");if(i[m]){$(i[m]).removeClass("op_dq01_tabnext");g(i[m],true)}f.find(".op_dq01_con"+m)[0].style.display="none";var l=window.op_dq01_curtab=parseInt($(this).attr("tabid"),10);h(i[l-1]);$(i[l-1]).addClass("op_dq01_tabcur");$(i[l-1]).addClass("c-tabs-nav-selected");g(i[l-1],false);if(i[l]){$(i[l]).addClass("op_dq01_tabnext")}var n=f.find(".op_dq01_con"+l)[0];var k=n.getElementsByTagName("ol")[0].children;if(k){h(k[0])}n.style.display="block"}d.call(i[window.op_dq01_curtab-1]);$(i).each(function(m,o){$(o).click(d);var k=f.find(".op_dq01_con"+(m+1))[0];var l=k.getElementsByTagName("ol")[0].children;var n=0,m=0;l[0].className="op_dq01_current";l[0].style.cursor="default";for(m=0;m<l.length;m++){l[m].nowIndex=m;l[m].onclick=function(){n=this.nowIndex;if(l[n].className=="op_dq01_current"){l[n].className="op_dq01_current"}else{for(m=0;m<l.length;m++){l[m].className="op_dq01_active"}h(l[n]);l[n].className="op_dq01_current"}};l[m].onmouseover=function(){n=this.nowIndex;if(l[n].className=="op_dq01_current"){l[n].className=="op_dq01_current";l[n].style.cursor="default"}else{for(m=0;m<l.length;m++){if(l[m].className=="op_dq01_current"){l[n].className="op_dq01_current"}else{l[m].className="op_dq01_active"}}l[n].className="op_dq01_hover";l[n].style.cursor="pointer"}}}});$(e).each(function(k,l){$(l).click(function(n){var m=l.getElementsByTagName("a")[0];m.blur();if($(l).hasClass("op_dq01_morepriceopen")){$(l).removeClass("op_dq01_morepriceopen");$(l).addClass("op_dq01_morepriceclose");j[k].style.display="none"}else{$(l).removeClass("op_dq01_morepriceclose");$(l).addClass("op_dq01_morepriceopen");j[k].style.display="block"}})});function h(l){if(!l){return false}var k=l.getElementsByTagName("img"),n,o,m="data-src";$(k).each(function(q,p){n=p.getAttribute("src");if((!n||n=="about:blank")&&$("img").attr("data_src_attrname")!="undefined"){o=p.getAttribute(m);o?p.setAttribute("src",o):p.setAttribute("src","about:blank");p.removeAttribute(m)}})}})});';   // js字串，不含<script标签
      private static $uiList = 'tabs,img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
