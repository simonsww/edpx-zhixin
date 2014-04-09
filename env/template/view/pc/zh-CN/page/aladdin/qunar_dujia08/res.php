<?php 
  class CssJs_Util_qunar_dujia08
   {
      private static $cssStr = '';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("qunar_dujia08",function(){A.setup(function(){var j=this;var m=j.data.dep||"";var o=function(r){return(r||"").replace(/##tpl##/g,"op-"+j.data.tpl)};var k=[\'<li class="c-span6 #{lastclass}">\',\'<a class="##tpl##-sight c-gap-bottom" target="_blank" href="#{link}">\',\'<img src="#{imageUrl}" class="c-img c-img6">\',\'<span class="##tpl##-sight-mask c-img6">\',"</span>",\'<span class="c-img6">#{name}</span>\',"</a>",\'<p class="##tpl##-degree">\',\'<span class="##tpl##-degree-label c-gap-right-small">热度</span>\',\'<i class="c-icon c-icon-star-gray op_videoidea_starwrap">\',\'<i style="width:#{degree}%" class="c-icon c-icon-star"></i>\',"</i>","</p>",\'<p class="##tpl##-price">\',\'<span class="##tpl##-price-label c-gap-right-small">#{pricename}</span>&yen;#{price}起\',"</p>","</li>"].join("");var h=j.find("."+o("##tpl##-sights"));var n=function(t){var s=[];for(var r=0;r<t.length;r++){if((r+1)%4==0){t[r].lastclass="c-span-last"}else{t[r].lastclass=""}if(t[r].sightid){t[r].link="http://dujia.qunar.com/p/slist?sight_id="+t[r].sightid+"&amp;query="+t[r].name+"&amp;ex_track=bd_zhixin_dujia_theme1_02&amp;tf=bd_zhixin_theme1_jingdian"}else{t[r].link="http://dujia.qunar.com/p/slist"}if(t[r].degree){t[r].degree=t[r].degree*20}else{t[r].degree=0}if(t[r].tprice){t[r].pricename="门票价";t[r].price=t[r].tprice}else{if(t[r].price){t[r].pricename="最低价"}}s.push($.format(k,t[r]))}h.html(o(s.join("")))};var c={pageSize:8};var m=j.data.dep||"";var l=j.data.query||"";var e={pageSize:c.pageSize,departure:m||"",query:l||""};var p=false;var f=false;var q=function(t){if(p){return}c=c||{};if(f){return}f=true;var s="http://m1-vs-travel-test00.m1.baidu.com:8081/qunarui/api/zhixin/subjectSight";var r=[];for(var v in e){r.push(encodeURIComponent(v)+"="+encodeURIComponent(e[v]))}if(r.length){s=s+"?"+r.join("&")}var u=function(w){if(p){return}f=false;if(w.recommendSightList.results&&w.recommendSightList.results.length){n(w.recommendSightList.results)}d=parseInt(((w.count||0)+c.pageSize-1)/c.pageSize,10);a()};$.ajax({url:s,dataType:"jsonp",success:u,error:function(){f=false;if(t.onfail){t.onfail()}},timeout:5000});return{dispose:function(){if(!p){p=true}}}};var g=1,b=j.find("."+o("##tpl##-pager"));var i=(parseInt(b.data("count")||"1",10)||1);var d=parseInt((i+c.pageSize-1)/c.pageSize,10);var a=function(){var w=d;if(w<1){return}var u=[];var v={};var s=function(y){if(v[y]){return""}v[y]=true;if(y==g){return\'<span class="##tpl##-pager-current">\'+g+"</span>"}else{return\'<span class="##tpl##-pager-item" data-page="\'+y+\'">\'+y+"</span>"}};if(g>1){u.push(\'<span class="##tpl##-prev ##tpl##-pager-item" data-page="\'+(g-1)+\'">上一页</span>\')}var r=g;if(w-2<r){r=w-2}if(r<5){if(w<5){r=w}else{r=5}}if(r>5){u.push(s(1));u.push(\'<span class="##tpl##-pager-seperator">...</span>\');u.push(s(r-2));u.push(s(r-1))}else{for(var t=1;t<r;t++){u.push(s(t))}}u.push(s(r));r=g;if(r<3){r=3}if(w-r<4){r=w-2;if(r<1){r=1}}if(w-r>4){u.push(s(r+1));u.push(s(r+2));u.push(\'<span class="##tpl##-pager-seperator">...</span>\');u.push(s(w))}else{for(var t=r;t<=w;t++){u.push(s(t))}}if(g<w){u.push(\'<span class="##tpl##-next ##tpl##-pager-item" data-page="\'+(g+1)+\'">下一页</span>\')}b.html(o(u.join("")));var x=b.find("."+o("##tpl##-pager-item"));x.each(function(){var y=$(this);var z=parseInt(y.data("page"),10);y.bind("click",function(){if(f){return}var B=g;g=z;b.html(o(\'<span class="##tpl##-pager-loading">加载中...</span>\'));e.start=(g-1)*c.pageSize;q({onfail:function(){g=B;a()}});delete e.start})})};a();this.dispose=function(){q.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = 'input,btn,dropdown2,img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
