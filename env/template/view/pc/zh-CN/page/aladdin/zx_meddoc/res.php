<?php 
  class CssJs_Util_zx_meddoc
   {
      private static $cssStr = '.op-zx-meddoc{width:600px;font-size:13px;}.op-zx-meddoc-title{font-size:16px;font-weight:normal;margin:0 0 8px 0;}.op-zx-meddoc-filter,.op-zx-meddoc-head,.op-zx-meddoc-body{position:relative;border-left:1px solid #f5f5f5;border-right:1px solid #f5f5f5;}.op-zx-meddoc-filter{background:#fdfdfd;}.op-zx-meddoc-filter a,.op-zx-meddoc-body a,.op-zx-meddoc-morelink a,.op-zx-meddoc-morelink a em{text-decoration:none;}.op-zx-meddoc-body a:hover,.op-zx-meddoc-morelink a:hover,.op-zx-meddoc-morelink a:hover em{text-decoration:underline;}.op-zx-meddoc-filter{overflow:hidden;height:70px;padding:6px 10px 10px 10px;border-top:1px solid #f5f5f5;border-bottom:1px solid #ececec;}.op-zx-meddoc-filter-cont{margin:0 40px 0 50px;}.op-zx-meddoc-filter-legend{position:absolute;top:7px;left:10px;line-height:18px;font-weight:bold;}.op-zx-meddoc-filter-short{height:16px;}.op-zx-meddoc-filter-more{position:absolute;display:inline-block;right:5px;width:42px;height:20px;border:1px solid #fdfdfd;padding-left:5px;line-height:20px;font-size:12px;color:#333;cursor:pointer;}.op-zx-meddoc .op-zx-meddoc-filter-more-text{color:#333;}.op-zx-meddoc-filter-more-icondown,.op-zx-meddoc-filter-more-iconup{position:absolute;top:2px;right:5px;width:10px;height:15px;background:url("http://www.baidu.com/aladdin/img/zhixin/triangle.png") no-repeat;}.op-zx-meddoc-filter-more-icondown{background-position:-5px 2px;}.op-zx-meddoc-filter-more-iconup{background-position:-19px 1px;}.op-zx-meddoc-filter-more:hover{background-color:#f2f8ff;border-color:#67a5eb;}.op-zx-meddoc-head li,.op-zx-meddoc-body li{height:30px;line-height:30px;padding:0 10px;border-bottom:1px solid #f5f5f5;}.op-zx-meddoc-body .op-zx-meddoc-li{height:40px;padding:5px 10px;}.op-zx-meddoc-head{color:#666;}.op-zx-meddoc-filter span{color:#d9d9d9;}.op-zx-meddoc-filter .op-zx-meddoc-filter-li{display:inline-block;height:18px;line-height:18px;color:#0000d1;cursor:pointer;white-space:nowrap;margin:0 0 6px 0;padding:1px 4px;}.op-zx-meddoc-filter .op-zx-meddoc-filter-li-select{padding:0 3px;color:white;background:#02a0f4;border:1px solid #008de9;border-radius:2px;}.op-zx-meddoc-filter-divide{margin:0 3px;vertical-align:text-top;}.op-zx-meddoc-s1,.op-zx-meddoc-s2,.op-zx-meddoc-s3,.op-zx-meddoc-s4,.op-zx-meddoc-s5{display:block;float:left;overflow:hidden;}.op-zx-meddoc-li .op-zx-meddoc-s1,.op-zx-meddoc-li .op-zx-meddoc-s2,.op-zx-meddoc-li .op-zx-meddoc-s3,.op-zx-meddoc-li .op-zx-meddoc-s4,.op-zx-meddoc-li .op-zx-meddoc-s5{height:40px;line-height:20px;}.op-zx-meddoc-s1{width:100px;}.op-zx-meddoc-s2{width:130px;margin:0 5px;}.op-zx-meddoc-s3{width:205px;margin-left:5px;}.op-zx-meddoc-s4{width:60px;margin-left:10px;text-align:center;}.op-zx-meddoc-s5{width:45px;margin-left:10px;text-align:center;color:#666;}.op-zx-meddoc-norating .op-zx-meddoc-s3{width:255px;margin-right:20px;}.op-zx-meddoc-norating .op-zx-meddoc-s4{display:none;}.op-zx-meddoc-reg{text-decoration:none;color:#000;width:40px;}.op-zx-meddoc-reg,.op-zx-meddoc-regnull,.op-zx-meddoc-rating,.op-zx-meddoc-ratingnull{display:inline-block;margin:9px 0;}.op-zx-meddoc-body .op-zx-meddoc-reg:hover{text-decoration:none;}.op-zx-meddoc-body .op-zx-meddoc-nodata{font-size:12px;color:#666;text-align:center;height:61px;}.op-zx-meddoc-nodata span{display:inline-block;margin:15px 0;}.op-zx-meddoc-nodata-icon{width:11px;height:11px;border:1px solid #87aefb;color:white;line-height:12px;background:#98bafc;margin-right:8px;}.op-zx-meddoc-body .op-zx-meddoc-button,.op-zx-meddoc-body .op-zx-meddoc-button:link{border:1px solid #bdc0c3;color:#333;background:#fafafa;}.op-zx-meddoc-body .op-zx-meddoc-button:hover{border:1px solid #279cf1;box-shadow:0 1px #e0e0e0;background:#f5f5f5;background:-moz-linear-gradient(top,#fff,#ececec);background:-webkit-gradient(linear,0 0,0 bottom,from(#fff),to(#ececec));}.op-zx-meddoc-body .op-zx-meddoc-button:active{border:1px solid #a7aaaf;box-shadow:0 1px #c7c7c7 inset;background:#f0f0f0;background:-moz-linear-gradient(top,#ebebeb,#f5f5f5);background:-webkit-gradient(linear,0 0,0 bottom,from(#ebebeb),to(#f5f5f5));}.op-zx-meddoc-morelink span{font-family:simsun;}.op-zx-meddoc-showurl{margin-top:5px;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("zx_meddoc",function(){A.init(function(){var r=this;var g=A.baidu;var h=r.data.query,i=r.data.srcid,f=r.data.provs,s=r.data.selectloc;var j={};var a=g.q("op-zx-meddoc-filter-li"),p=r.qq("op-zx-meddoc-filter"),k=r.qq("op-zx-meddoc-filter-legend"),e=r.qq("op-zx-meddoc-filter-more"),m=r.qq("op-zx-meddoc-filter-more-text"),q=r.qq("op-zx-meddoc-filter-more-icon"),c=r.qq("op-zx-meddoc-cont"),u=r.qq("op-zx-meddoc-nodata"),n=r.qq("op-zx-meddoc-morelink");var d=\'<li class="op-zx-meddoc-li"><span class="op-zx-meddoc-s1"><p><a target="_blank" href="#{1}">#{0}</a></p><p>#{2}</p></span><span class="op-zx-meddoc-s2"><p>#{4}</p><p>#{5}</p></span><span class="op-zx-meddoc-s3">#{6}</span><span class="op-zx-meddoc-s4">#{7}</span><span class="op-zx-meddoc-s5">#{8}</span></li>\';g.each(a,function(w,v){if(g.dom.getText(w)==s){if(!g.dom.hasClass(w,"op-zx-meddoc-filter-li-select")){g.addClass(w,"op-zx-meddoc-filter-li-select")}}g.on(w,"click",function(x){t(w)})});g.on(e,"click",function(v){if(g.dom.hasClass(p,"op-zx-meddoc-filter-short")){g.dom.removeClass(p,"op-zx-meddoc-filter-short");m.innerHTML="收起";g.dom.addClass(q,"op-zx-meddoc-filter-more-iconup");g.dom.removeClass(q,"op-zx-meddoc-filter-more-icondown")}else{g.dom.addClass(p,"op-zx-meddoc-filter-short");m.innerHTML="更多";g.dom.addClass(q,"op-zx-meddoc-filter-more-icondown");g.dom.removeClass(q,"op-zx-meddoc-filter-more-iconup")}});function t(w){g.each(a,function(z,y){g.removeClass(z,"op-zx-meddoc-filter-li-select")});g.addClass(w,"op-zx-meddoc-filter-li-select");var x=g.dom.getText(w),v="";g.each(f,function(z,y){if(z.name==x){v=z.link}});if(j[x]){o(j[x],v)}else{l(x,v)}}function l(w,v){r.ajax(h,i,{co:"list[prov="+w+"]",success:function(y){var x=[];if(y[0]&&y[0].list){x=y[0].list}if(x.length>0){j[w]=x;o(j[w],v)}else{b()}},error:function(x){b()}})}function o(w,v){c.innerHTML="";g.each(w,function(z,y){if(y>2){return}var x=\'<span class="op-zx-meddoc-ratingnull">-</span>\',B=\'<span class="op-zx-meddoc-regnull">-</span>\';if(z.ratinglink&&z.rating){x=\'<a target="_blank" href="\'+z.ratinglink+\'" class="op-zx-meddoc-rating">共\'+z.rating+"条</a>"}if(z.reglink){B=\'<a target="_blank" href="\'+z.reglink+\'" class="op-zx-meddoc-reg op-zx-meddoc-button">咨询</a>\'}g.insertHTML(c,"beforeEnd",g.format(d,[z.name,z.namelink,z.title1,z.title2,z.hosp,z.dept,z.info,x,B]))});g.show(c);g.hide(u);if(w.length>=3&&v){g.setAttr(g.dom.children(n)[0],"href",v);g.show(n)}else{g.hide(n)}}function b(){c.innerHTML="";g.hide(c);g.hide(n);g.show(u)}})});';   // js字串，不含<script标签
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
