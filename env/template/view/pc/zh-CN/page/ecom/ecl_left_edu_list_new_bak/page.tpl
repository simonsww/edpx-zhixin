{%extends 'base_div.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecl-left_edu_list-container{position:relative}.ecl-left_edu_list-container h3{margin-bottom:10px}.ecl-left_edu_list-container h3 a{text-decoration:underline}.ecl-left_edu_list-filters{border-bottom:1px solid #f3f3f3;font-size:13px;_zoom:1;_clear:both}.ecl-left_edu_list-filters li{margin-bottom:8px}.ecl-left_edu_list-filters li ul{height:22px;*height:20px;line-height:18px;*line-height:13px;width:520px;*padding-bottom:2px;overflow:hidden}.ecl-left_edu_list-filters li ul li{margin:0;float:left;margin-bottom:3px}
.ecl-left_edu_list-filters li ul li span,.ecl-left_edu_list-filters li ul li a{text-decoration:none;padding:1px 5px;*padding:4px 6px 2px}.ecl-left_edu_list-filters li ul li span{font-weight:600;display:block;width:5.4em;padding-left:0;color:#000;padding-top:2px;*padding-top:5px}.ecl-left_edu_list-filters li ul li a{margin-left:3px;word-break:keep-all;margin-bottom:3px;display:inline-block;*zoom:1}.ecl-left_edu_list-filters li ul li a:focus{outline:0}.ecl-left_edu_list-filters li ul li a:hover{text-decoration:underline}
.ecl-left_edu_list-filters li ul li a.ecl-left_edu_list-filter-active{background:#69f;border:1px solid #418ce5;color:#fff;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;-ms-border-radius:4px}.ecl-left_edu_list-filters li ul li i{font-style:normal;color:#d8d8d8;margin:0 5px;float:left}.ecl-left_edu_list-city{position:absolute;font-size:13px;top:27px;*top:26px;right:3px;*height:22px;line-height:22px}.ecl-left_edu_list-city span{padding-left:6px;*padding-top:1px;*padding-bottom:1px;border:1px solid #d8d8d8;border-top-color:#999;border-left-color:#b2b2b2;background:#fff;display:block;cursor:pointer}
.ecl-left_edu_list-city span i{color:#bfbfbf;margin-left:14px;font-style:normal;border-left:1px solid #d9d9d9;width:18px;text-indent:-9999px;background:#fbfbfb;display:inline-block;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/edu/img/city-triangle.png) no-repeat center center}.ecl-left_edu_list-cities{position:absolute;width:220px;background:#fff;border:1px solid;border-top-color:#bbb;border-left-color:#bbb;border-right-color:#bfbfbf;border-bottom-color:#c9c9c9;font-size:13px;padding:10px 10px 9px;*top:26px;*right:-176px}
.ecl-left_edu_list-cities p{color:#333;font-size:12px;line-height:1;margin-bottom:10px}.ecl-left_edu_list-cities ul li{*display:inline}.ecl-left_edu_list-cities a{float:left;color:#00c;margin-right:18px;cursor:pointer;line-height:1}.ecl-left_edu_list-cities a:hover{text-decoration:underline}.ecl-left_edu_list-courses li{border-bottom:1px solid #f3f3f3;padding:12px 0 8.5px}.ecl-left_edu_list-course-info{float:left;max-width:510px;*width:510px}.ecl-left_edu_list-course-info h4{margin-top:0;font-size:14px;font-weight:400;margin-bottom:2px;height:22px;line-height:22px}
.ecl-left_edu_list-course-info h4 a{text-decoration:none}.ecl-left_edu_list-course-info h4 small a{text-decoration:none}.ecl-left_edu_list-course-info h4 small i{font-style:normal}.ecl-left_edu_list-course-info a{color:#00c;text-decoration:none}.ecl-left_edu_list-course-info a:hover{text-decoration:underline}.ecl-left_edu_list-course-info p{font-size:13px;line-height:20px;overflow:hidden;white-space:nowrap;word-break:keep-all;text-overflow:ellipsis}.ecl-left_edu_list-course-info strong{font-weight:400;color:#666}
.ecl-left_edu_list-course-info a em{text-decoration:none}.ecl-left_edu_list-course-info a:hover em{text-decoration:underline}.ecl-left_edu_list-course-try{background:#72b2fa;display:inline-block;margin-right:4px;position:relative;*position:static;top:4px;margin-left:8px;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/edu/img/try-listen.png) no-repeat;width:16px;height:16px}.ecl-left_edu_list-course-try i{border:5px solid #000;border-color:transparent transparent transparent #fff;display:inline-block;margin-bottom:1px;margin-left:4px}
.ecl-left_edu_list-price-info{float:right;font-size:13px}.ecl-left_edu_list-price-info em,.ecl-left_edu_list-price-info a,.ecl-left_edu_list-price-info span{display:block;text-align:center;margin-bottom:7px}.ecl-left_edu_list-price-info em{color:#f80;font-weight:700;margin-top:6px}.ecl-left_edu_list-price-info span{font-size:12px;color:#666;text-decoration:line-through}.ecl-left_edu_list-price-info a{color:#333;padding:3px 9px 3px;*padding-top:6px;border:1px solid #bdc0c3;border-left-color:#b5b8bc;border-right-color:#b5b8bc;background:#f8f8f8;text-decoration:none}
.ecl-left_edu_list-price-info a:hover{background:#fff;background-image:linear-gradient(top,#fff 19%,#f8f8f8 60%,#f0f0f0 80%);background-image:-o-linear-gradient(top,#fff 19%,#f8f8f8 60%,#f0f0f0 80%);background-image:-moz-linear-gradient(top,#fff 19%,#f8f8f8 60%,#f0f0f0 80%);background-image:-webkit-linear-gradient(top,#fff 19%,#f8f8f8 60%,#f0f0f0 80%);background-image:-ms-linear-gradient(top,#fff 19%,#f8f8f8 60%,#f0f0f0 80%);background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0.19,#fff),color-stop(0.6,#f8f8f8),color-stop(0.8,#f0f0f0))}
#content_left{float:left}.ecl-left_edu_list-more-url{margin-top:12px;font-size:13px}.ecl-left_edu_list-show-url{font-size:13px;line-height:1.6}
</style>

<div class="ecl-left_edu_list-container">
<h3 class="t"><a class="ecl-left_edu_list-query-url" href="{%$tplData.queryurl|escape:'html'%}" target="_blank">{%$tplData.title|escape:'html'|highlight:0%}</a></h3>
<ul class="ecl-left_edu_list-filters">
{%$filter_flag = count([])%}
{%foreach $tplData.filters as $filter%}
{%if $filter_flag < 1%}
{%if $filter.cnt > 0%}
<li data-tagorder="{%$tag@index%}">
{%$tag_len = count($filter.tags)%}
<ul class="c-clearfix">
<li><span>{%$filter.tagtype|escape:'html'%}：</span></li>
<li data-click='{"fm":"behz"}'><a href="#" data-tagid="0" style="border-left:0" class="ecl-left_edu_list-filter-active" hidefocus="true">全部</a></li>
{%foreach $filter.tags as $tag%}
{%if $tag.cnt > 0%}
<li data-click='{"fm":"behz"}'><i>|</i><a data-tagid="{%$tag.id|escape:'html'%}" hidefocus="true" href="#">{%$tag.name|escape:'html'%}</a></li>
{%/if%}
{%/foreach%}
</ul>
</li>
{%$filter_flag = $filter_flag + 1%}
{%/if%}
{%/if%}
{%/foreach%}
</ul>
{%if $filter_flag > 0%}
<div class="ecl-left_edu_list-city">
<span class="ecl-left_edu_list-city-name OP_LOG_BTN" data-click="{'fm': 'behz', 'title': '{%$tplData.curcity|escape:'html'%}'}">{%$tplData.curcity%}<i class="ecl-left_edu_list-city-folder">&#9660;</i></span>
<div class="ecl-left_edu_list-cities" style="display:none">
<p>热门城市列表</p>
</div>
</div>
{%/if%}
<ul class="ecl-left_edu_list-courses">
{%foreach $tplData.edu as $course%}
{%if $course@index < 3%}
<li class="c-clearfix">
<div class="ecl-left_edu_list-course-info">
<h4><a class="ecl-left_edu_list-query-url" data-courseid="{%$course.id|escape:'html'%}" href="{%$course.url|escape:'html'%}" target="_blank">{%$course.title|escape:'html'|highlight:0%}</a>{%$trylen = ($course.videourl|count_characters:true)%}{%if $trylen > 0%}<small><a href="{%$course.videourl|escape:'html'%}" target="_blank"><span class="ecl-left_edu_list-course-try"></span>试听</a>
</small>
{%/if%}
</h4>
{%$show_count = count([])%}
{%$intro_len = ($course.intro|count_characters)%}
{%if $intro_len > 0%}
<p><strong>简介：</strong>{%$course.intro|escape:'html'|highlight:0%}</p>
{%$show_count = ($show_count + 1)%}
{%/if%}
{%$intro_len = ($course.teacherdesc|count_characters)%}
{%if $intro_len > 0%}
<p><strong>老师：</strong>{%$course.teacherdesc|escape:'html'|highlight:0%}</p>
{%$show_count = ($show_count + 1)%}
{%/if%}
{%$intro_len = ($course.begintime|count_characters)%}
{%if ($show_count < 2) and ($intro_len > 0)%}
<p><strong>开课：</strong>{%$course.begintime|escape:'html'%}</p>
{%$show_count = ($show_count + 1)%}
{%/if%}
{%$intro_len = ($course.timedesc|count_characters)%}
{%if ($show_count < 2) and ($intro_len > 0)%}
<p><strong>安排：</strong>{%$course.timedesc|escape:'html'%}</p>
{%$show_count = ($show_count + 1)%}
{%/if%}
{%$intro_len = ($course.classperiod|count_characters)%}
{%if ($show_count < 2) and ($intro_len > 0)%}
<p><strong>课时：</strong>{%$course.classperiod|escape:'html'%}</p>
{%/if%}
<p>
<strong>机构：</strong><a target="_blank" href="{%$course.orgurl|escape:'html'%}">{%$course.orgname|escape:'html'%}</a>
{%$add_len = ($course.address|count_characters:true)%}
{%if $course.address eq '在线课程'%}
<strong style="margin-left:21px">类型：</strong><span>{%$course.address|escape:'html'%}</span>
{%elseif $add_len > 0%}
<strong style="margin-left:21px">校区：</strong><span>{%$course.address|escape:'html'%}</span>{%$add_len = ($course.addressurl|count_characters)%}{%if $add_len > 0%}<a href="{%$course.addressurl|escape:'html'%}" target="_blank">[地图]</a>{%/if%}
{%/if%}
</p>
</div>
<div class="ecl-left_edu_list-price-info">
{%$sale_len = ($course.saleprice|count_characters:true)%}
{%if $sale_len > 0%}
<em>{%$course.saleprice|replace: "&yen;":"¥"|escape:'html'%}</em>
<a href="{%$course.url|escape:'html'%}" target="_blank">查看详情</a>
{%elseif $course.cost%}
<em>{%$course.cost|replace: "&yen;":"¥"|escape:'html'%}</em>
<a href="{%$course.url|escape:'html'%}" target="_blank">查看详情</a>
{%else%}
<a style="margin-top:25px" href="{%$course.url|escape:'html'%}" target="_blank">查看详情</a>
{%/if%}
</div>
</li>
{%/if%}
{%/foreach%}
</ul>
{%if $tplData.count > 3%}
<p style="margin-top:6px;font-size:13px"><a class="ecl-left_edu_list-more-url" href="{%$tplData.moreurl|escape:'html'%}" target="_blank">更多相关课程&gt;&gt;</a></p>
{%/if%}
<p class="g ecl-left_edu_list-show-url">learning.baidu.com</p>
</div>
<script type="text/javascript" data-compress="off">A.setup("EDU_DATA",{sessionId:"{%$extData.sessionID|escape:'html'%}",queryStr:"{%$extData.originQuery|escape:'html'%}",cityId:"{%$tplData.curcityid|escape:'html'%}",cityName:"{%$tplData.curcity|escape:'html'%}",ipcity:"{%$tplData.ipcity|escape:'html'%}",ipcityid:"{%$tplData.ipcityid|escape:'html'%}",sid:"{%$extData.sid|escape:'html'%}",subqid:"{%$extData.subqid|escape:'html'%}"});</script>
<script>(function(b,a){if(!b.Hunter){b.Hunter={tid:"925"};(a.getElementsByTagName("head")[0]||body).appendChild(a.createElement("script")).src="http://img.baidu.com/hunter/ham.js?st="+~(new Date()/86400000)}})(window,document);</script>
<script type="text/javascript">
A.init(function(){var e=A.baidu,t=this,r=e.json.parse;e.json.stringify;var a,i,n=e.removeClass,s=e.addClass,o=e.getAttr,l=e.setStyle,d=e.q,c=e.hide,u=e.show,f=e.string.format,p="ecl-left_edu_list-",g=function(e){return p+e},m={hotCities:{1:"北京",2:"上海",84:"广州",93:"深圳",280:"杭州"}},v='<li class="c-clearfix"><div class="ecl-left_edu_list-course-info"><h4><a data-courseid="#{id}" href="#{url}" target="_blank">#{title}</a>#{tryHtml}</h4>#{introHtml}<p><strong>机构：</strong><a href="#{orgurl}" target="_blank">#{orgname}</a>#{addressHtml}</p></div><div class="ecl-left_edu_list-price-info">#{priceHtml}<a href="#{url}" #{detailStyle} target="_blank">查看详情</a></div></li>',y='<small><a href="#{videourl}"  target="_blank"><span class="ecl-left_edu_list-course-try"></span>试听</a></small>',h=t.data.EDU_DATA,q=h.cityId,b=h.cityName,H=function(){var e=m.hotCities;
m.otherArea;var r=['<p>热门城市列表</p><ul class="c-clearfix">'],a=1,i="";for(var n in e){var s=e[n];i="{'fm': 'behz', 'cityid':'"+n+"', 'cityname': '"+s+"'}",r[a++]='<li><a hidefocus="true" data-cityid="'+n+'" data-click="'+i+'">'+e[n]+"</a></li>"}r[a++]="</ul>",t.qq(g("cities")).innerHTML=r.join("")},T=t.qq(g("courses")),_=t.qq(g("filters")),k=function(e){var t="";return e.saleprice?t+="<em>"+e.saleprice+"</em>":e.cost&&(t+="<em>"+e.cost+"</em>"),t},x=function(e){var t,r=[],a=0,i=e.edu,n=i.length;if(n){for(n>3&&(n=3);n>a;a++){t=i[a];
var s="",o=2;t.intro&&(s+="<p><strong>简介：</strong>"+t.intro+"</p>",o--),t.teacherdesc&&(s+="<p><strong>老师：</strong>"+t.teacherdesc+"</p>",o--),o&&t.begintime&&(s+="<p><strong>开课：</strong>"+t.begintime+"</p>",o--),o&&t.timedesc&&(s+="<p><strong>安排：</strong>"+t.timedesc+"</p>",o--),o&&t.timeperiod&&(s+="<p><strong>课时：</strong>"+t.timeperiod+"</p>"),t.introHtml=s,t.videourl&&(t.tryHtml=f(y,{videourl:t.videourl})),t.priceHtml=k(t),t.priceHtml||(t.detailStyle='style="margin-top:25px;"'),"在线课程"==t.address?t.addressHtml='<strong style="margin-left:21px;">类型：</strong><span>'+t.address+"</span>":t.address?(t.addressHtml='<strong style="margin-left:21px;">校区：</strong><span>'+t.address+"</span>",t.addressurl&&(t.addressHtml+='<a href="'+t.addressurl+'" target="_blank">[地图]</a>')):t.addressHtml="",r[r.length]=f(v,t)
}T.innerHTML=r.join("")}else T.innerHTML='<li style="border-bottom:0; text-align:center;margin-top:25px;font-size:15px;margin-bottom:30px;">抱歉没有找到符合要求的课程，请选择其他分类</li>'},j=function(e){var r=e.filters,a=r.length;if(!a)return!1;for(var i=[],n=1,s=0;a>s;s++){var o=r[s];if(o.cnt&&n){var d="{'fm': 'behz', tagName': '全部' }";i[0]='<li data-tagorder="'+s+'"><ul class="c-clearfix">'+"<li><span>"+o.tagtype+"</span></li>"+'<li><a href="#" hidefocus="true" data-click="'+d+'" data-tagid="0" class="ecl-left_edu_list-filter-active">全部</a></li>';
for(var c=o.tags,u=c.length,f=0;u>f;f++)tj=c[f],tj.cnt&&(d="{'fm': behz', 'tagName': '"+tj.name+"', 'tagid': '"+tj.id+"'}",i[f+1]='<li><i>|</i><a hidefocus="true" href="#" data-tagid="'+tj.id+'" data-click="'+d+'">'+c[f].name+"</a></li>");i[i.length]="</ul></li>",n--}}var p=t.qq(g("city"));i.length?p&&l(p,"top","27px")&&l(p,"*top","26px"):p&&l(p,"top","0")&&l(p,"*top","0"),_.innerHTML=i.join("")},L=function(){},M=function(e,r,a){var i=e.data;x(i);var n=t.qq(g("query-url")),s=t.qq(g("more-url"));if(h.subqid=i.stats.subqid,h.sid=i.stats.sid,"city"==a)n.href=i.queryurl,s&&(s.href=i.moreurl),j(e.data);
else{var o="";r.tags&&(o="&tags="+r.tags),n.href=n.href.replace(/&tags=[^&]*/,"")+o,s&&(s.href=s.href.replace(/&tags=[^&]*/,"")+o)}},N="ecomui/edu",w=function(t,n){var s={mode:a||0,page:i||1,cityid:q,city:b,sessionID:h.sessionId,originQuery:h.queryStr,controller:"Bws",action:"query",sid:h.sid,subqid:h.subqid};if("city"!==n){var o=[],l=0;for(var d in C)0!=C[d]&&(o[l++]=C[d]);s.tags=o.join(",")}var c=function(e){var a=r(e.responseText);a&&!a.status?(M(a,s,n),t()):L(e)},u=[];for(var d in s)u[u.length]=d+"="+s[d];
u=encodeURI(u.join("&")),e.ajax.request(N,{method:"GET",data:u,onsuccess:c,onfailure:L})},C={};t.ready(function(){H(),C={},e.on(t.qq(g("filters")),"click",function(e){e=e||window.event,e.preventDefault?e.preventDefault():event.returnValue=!1;var t=e.target||e.srcElement,r=o(t,"data-tagid");if(1!=t.nodeType||"A"!=t.nodeName.toUpperCase())return!1;var r=o(t,"data-tagid"),a=o(t.parentNode,"data-tagorder");if(!r)return C[tagorder]=0,!1;C[a]=r;var i=g("filter-active");w(function(){n(d(i,t.parentNode.parentNode,"A")[0],i),s(t,i)
})});var r=t.qq(g("cities")),a=t.qq(g("city"));e.on(a,"click",function(i){i=i||window.event,i.stopPropagation?i.stopPropagation():i.cancelBubble=!0;var n=i.target||i.srcElement,s=n.nodeName.toUpperCase(),o=t.qq(g("city-folder"));e.setAttr(a,"data-click","{'fm':'behz', 'title': '"+t.qq(g("city-name")).innerHTML.split("<")[0]+"'}"),1==n.nodeType&&("SPAN"==s||"I"==s||"DIV"==s)&&(9660==o.innerHTML.charCodeAt(0)?(o.innerHTML="&#9650;",u(r)):(o.innerHTML="&#9660;",c(r)))}),e.on(r,"click",function(e){e=e||window.event;
var a=e.target||e.srcElement,i=a.nodeName.toUpperCase();1==a.nodeType&&"A"==i&&(q=o(a,"data-cityid"),b=a.innerHTML,w(function(){c(r),t.qq(g("city-name")).innerHTML=a.innerHTML+'<i class="'+g("city-folder")+'">&#9660;</i>'},"city"),e.stopPropagation?e.stopPropagation():e.cancelBubble=!0)}),e.on(document,"click",function(){"none"!==baidu.getStyle(r,"display")&&a.click()})})});
</script>
{%/block%}