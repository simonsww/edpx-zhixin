{%extends 'base_div.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecl-edu-dropdown-container{width:600px;font-size:13px}.ecl-edu-dropdown-container em{color:#c00}.ecl-edu-dropdown-header{position:relative;padding-bottom:10px;border-bottom:1px solid #f3f3f3;_zoom:1;_padding-bottom:0}.ecl-edu-dropdown-header h3{margin-bottom:8px}.ecl-edu-dropdown-city{position:absolute;right:0;bottom:10px;_bottom:4px;line-height:22px}.ecl-edu-dropdown-city span{padding-left:6px;border:1px solid #d8d8d8;border-top-color:#999;border-left-color:#b2b2b2;background:#fff;display:block;cursor:pointer}
.ecl-edu-dropdown-city span a{background:#fbfbfb;display:inline-block;background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/edu/img/city-triangle.png") no-repeat center center #f6f6f6;text-indent:-9999px;width:18px;border-left:1px solid #d9d9d9;margin-left:14px}.ecl-edu-dropdown-cities{position:absolute;width:220px;background:#fff;border:1px solid;border-top-color:#bbb;border-left-color:#bbb;border-right-color:#bfbfbf;border-bottom-color:#c9c9c9;font-size:13px;padding:10px 10px 9px}.ecl-edu-dropdown-cities p{color:#333;font-size:12px;line-height:1;margin-bottom:10px}
.ecl-edu-dropdown-cities li{*display:inline}.ecl-edu-dropdown-cities a{float:left;color:#00c;margin-right:18px;cursor:pointer;line-height:1}.ecl-edu-dropdown-cities a:hover{text-decoration:underline}.ecl-edu-dropdown-filters{height:20px;line-height:18px;width:525px;overflow:hidden;_margin-bottom:10px}.ecl-edu-dropdown-filters li{float:left}.ecl-edu-dropdown-filters a,.ecl-edu-dropdown-filters strong{text-decoration:none;display:inline-block;word-break:keep-all;padding:0 6px;border:1px solid #fff}.ecl-edu-dropdown-filters strong{padding:0}
.ecl-edu-dropdown-filters a:hover{text-decoration:underline}.ecl-edu-dropdown-filters a.ecl-edu-dropdown-filter-active{background:#5a9ff1;border-color:#418ce5;border-radius:2px;-moz-border-radius:2px;-webkit-border-radius:2px;-ms-border-radius:2px;color:#fff}.ecl-edu-dropdown-filters em{color:#d1d2d3;margin:0 5px;padding-bottom:2px}.ecl-edu-dropdown-courses li{*zoom:1;border-bottom:1px solid #f3f3f3;padding:6px 0 8px;*vertical-align:bottom}.ecl-edu-dropdown-courses li.ecl-edu-dropdown-course-hidden{display:none}
.ecl-edu-dropdown-courses li:before,.ecl-edu-dropdown-courses li:after{content:"";display:table}.ecl-edu-dropdown-courses li:after{clear:both}.ecl-edu-dropdown-courses h4{line-height:24px;height:24px;font-size:14px;margin:0;font-weight:400}.ecl-edu-dropdown-courses h4 a{display:inline-block;height:100%;*zoom:1}.ecl-edu-dropdown-courses p{line-height:20px;height:20px;overflow:hidden}.ecl-edu-dropdown-courses p strong{font-weight:400;color:#666}.ecl-edu-dropdown-courses a:link{text-decoration:none}
.ecl-edu-dropdown-courses a:hover{text-decoration:underline}.ecl-edu-dropdown-no-course{padding:25px 0;text-align:center}.ecl-edu-dropdown-course-info{float:left;width:525px}.ecl-edu-dropdown-course-info a em{text-decoration:none}.ecl-edu-dropdown-course-info a:hover em{text-decoration:underline}.ecl-edu-dropdown-try{font-size:12px;padding-left:18px;background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/edu/img/try-listen.png") 0 50% no-repeat;margin-left:6px;*background-position-y:40%}.ecl-edu-dropdown-course-address{margin-left:.8em}
.ecl-edu-dropdown-price-info{width:74px;float:right;text-align:center}.ecl-edu-dropdown-price-info a,.ecl-edu-dropdown-price-info em{display:block}.ecl-edu-dropdown-price-info em{color:#ff8a00;font-weight:700;font-style:normal;padding:12px 0 6px}.ecl-edu-dropdown-price-info a{color:#333;padding:4px 8px;border:1px solid #babcc0;background:#f9f9f9}.ecl-edu-dropdown-price-info a:hover{text-decoration:none;background:#fff;background-image:linear-gradient(top,#fff 19%,#f8f8f8 60%,#f0f0f0 80%);background-image:-o-linear-gradient(top,#fff 19%,#f8f8f8 60%,#f0f0f0 80%);background-image:-moz-linear-gradient(top,#fff 19%,#f8f8f8 60%,#f0f0f0 80%);background-image:-webkit-linear-gradient(top,#fff 19%,#f8f8f8 60%,#f0f0f0 80%);background-image:-ms-linear-gradient(top,#fff 19%,#f8f8f8 60%,#f0f0f0 80%);background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0.19,#fff),color-stop(0.6,#f8f8f8),color-stop(0.8,#f0f0f0))}
.ecl-edu-dropdown-price-info a:active{color:#f00}.ecl-edu-dropdown-more-course{border:1px solid #f3f3f3;border-top:0;background:#f8f8f8;height:auto;line-height:1;padding:5px 0;text-align:center;cursor:pointer;color:#666}.ecl-edu-dropdown-more-course span{color:#67a5eb;background:url("http://www.baidu.com/cache/biz/ecom/edu/img/icon_sprites.gif") 2px 2px no-repeat;padding:0 8px;*display:inline-block}.ecl-edu-dropdown-footer{text-align:center;margin-top:8px}#content_left{float:left}.ecl-edu-dropdown-ui-pager{display:inline-block;*display:inline;*zoom:1;text-align:center}
.ecl-edu-dropdown-ui-pager a{display:block;float:left;margin:3px;text-decoration:none;border:1px solid #CCC;overflow:hidden;padding:2px 5px;color:#03C;font:normal 12px/1.2 Arial,Helvetica,sans-serif;text-align:center}.ecl-edu-dropdown-ui-pager a em{padding:0 5px;background-image:url("http://www.baidu.com/cache/biz/ecom/edu/img/icon_sprites.gif");*display:inline-block}.ecl-edu-dropdown-ui-pager a:hover{background:#eff4fa}.ecl-edu-dropdown-ui-pager a.ecl-edu-dropdown-ui-pager-current:hover{background:#fff}.ecl-edu-dropdown-ui-pager a.ecl-edu-dropdown-ui-pager-ellipsis{border:0}
.ecl-edu-dropdown-ui-pager a.ecl-edu-dropdown-ui-pager-ellipsis:hover{background:#fff;cursor:default}.ecl-edu-dropdown-ui-pager a.ecl-edu-dropdown-ui-pager-next em{background-position:-48px -10px}.ecl-edu-dropdown-ui-pager a.ecl-edu-dropdown-ui-pager-prev em{background-position:-36px -10px}.ecl-edu-dropdown-ui-pager .ecl-edu-dropdown-ui-pager-current{font-weight:700;border:0;color:#666;cursor:default;padding-top:3px}.ecl-edu-dropdown-ui-pager .ecl-edu-dropdown-ui-pager-disabled{color:#999;cursor:default}
</style>

<div class="ecl-edu-dropdown-container">
    <div class="ecl-edu-dropdown-header">
        <h3 class="t">
            <a class="ecl-edu-dropdown-title" href="{%$tplData.queryurl%}" target="_blank">
                {%$tplData.title|escape:'html'|highlight:0%}
            </a>
        </h3>
        <ul class="ecl-edu-dropdown-filters c-clearfix" data-click="{'fm': 'beha', 'edu-click': '筛选'}" style="display:none;">
            
        </ul>
        <div class="ecl-edu-dropdown-city" data-click="{'fm': 'beha'}">
            <span class="ecl-edu-dropdown-city-btn OP_LOG_BTN" data-click="{'edu-click': '切换城市'}">
                {%$tplData.curcity%}
                <a class="ecl-edu-dropdown-city-triangle" href="####">&#9660;</a>
            </span>
            <div data-click="{'edu-click': '选择城市'}" class="ecl-edu-dropdown-cities" style="display:none;"></div>
        </div>
    </div>
    
    {%$course_len = count($tplData.edu)%}
    {%if $course_len > 0%}
    <ul class="ecl-edu-dropdown-courses">
        {%foreach $tplData.edu as $course%}
        {%$show_count = 0%}
        
        <li {%if $course@index > 3%} class="ecl-edu-dropdown-course-hidden" {%/if%}>
            <div class="ecl-edu-dropdown-course-info">
                <h4>
                    <a href="{%$course.url%}" target="_blank">{%$course.title|escape:'html'|highlight:0%}</a>
                    {%if $course.videourl%}
                    <a class="ecl-edu-dropdown-try" href="{%$course.videourl%}" target="_blank">试听</a>
                    {%/if%}
                </h4>

                {%if $course.intro%}
                <p><strong>简介：</strong>{%$course.intro|escape:'html'|highlight:0%}</p>
                {%$show_count = ($show_count + 1)%}
                {%/if%}
                {%if $course.teacherdesc%}
                <p><strong>老师：</strong>{%$course.teacherdesc|escape:'html'|highlight:0%}</p>
                {%$show_count = ($show_count + 1)%}
                {%/if%}
                {%if ($show_count < 2) and ($course.begintime)%}
                <p><strong>开课：</strong>{%$course.begintime|escape:'html'|highlight:0%}</p>
                {%$show_count = ($show_count + 1)%}
                {%/if%}
                {%if ($show_count < 2) and ($course.timedesc)%}
                <p><strong>安排：</strong>{%$course.timedesc|escape:'html'|highlight:0%}</p>
                {%$show_count = ($show_count + 1)%}
                {%/if%}
                {%if ($show_count < 2) and ($course.classperiod)%}
                <p><strong>课时：</strong>{%$course.classperiod|escape:'html'|highlight:0%}</p>
                {%/if%}
                    
                <p>
                    <strong>机构：</strong><a target="_blank" href="{%$course.orgurl|escape:'html'%}">{%$course.orgname|escape:'html'%}</a>
                    <strong class="ecl-edu-dropdown-course-address">{%if $course.address eq '在线课程'%}类型：{%elseif $course.address%}校区：{%/if%}</strong><span>{%$course.address|escape:'html'%}</span>{%if $course.addressurl%}<a href="{%$course.addressurl|escape:'html'%}" target="_blank">[地图]</a>{%/if%}
                </p>
            </div>
            <div class="ecl-edu-dropdown-price-info">
                {%$price_show = 0%}
                {%if $course.saleprice%}
                    <em>{%$course.saleprice|replace: "&yen;":"¥"|escape:'html'%}</em>
                    {%$price_show = 1%}
                {%elseif $course.cost%}
                    <em>{%$course.cost|replace: "&yen;":"¥"|escape:'html'%}</em>
                    {%$price_show = 1%}
                {%/if%}
                <a hidefocus="true" href="{%$course.url|escape:'html'%}" target="_blank"
                {%if $price_show eq 0%} class="ecl-edu-dropdown-noprice-link" {%/if%}>
                查看详情
                </a>
            </div>
        </li>
        
        {%/foreach%}
    </ul>
    {%/if%}

    {%if $course_len > 4%}
    <div data-click="{'fm': 'beha', 'edu-click': '更多'}" class="ecl-edu-dropdown-more-course OP_LOG_BTN">
        展开更多课程信息
        <span></span>
    </div>
    {%/if%}
    
    
    <div class="ecl-edu-dropdown-footer">
        <div data-click="{'fm':'beha', 'edu-click': '翻页'}" class="ecl-edu-dropdown-pagination" >
            
        </div>
        <!--<p class="ecl-edu-dropdown-showurl g">
            learning.baidu.com
        </p>-->
    </div>
</div>

<script type="text/javascript" data-compress="off">
A.setup('EDU_DATA', {
    sessionId: "{%$extData.sessionID%}",
    queryStr: "{%$extData.originQuery%}",
    cityId: "{%$tplData.curcityid%}",
    cityName: "{%$tplData.curcity%}",
    ipcity: "{%$tplData.ipcity%}",
    ipcityid: "{%$tplData.ipcityid%}",
    sid: "{%$extData.sid%}",
    subqid: "{%$extData.subqid%}",
    filtersJson: '{%$tplData.filtersjson%}',
    totalPage: "{%$tplData.totalpage%}",
    page: "{%$tplData.page%}"
})
    
</script>
<script>
A.init(function() {
    var card = this;
    var eduData = card.data.EDU_DATA;
    
    // 引用tangram中的一些方法。
    var T = A.baidu;
    var parseJson = T.json.parse;
    var stringJson = T.json.stringify;
    var formatString = T.string.format;
    
    // 跟事件相关的方法
    var on = T.on;
    var preventDefault = T.event.preventDefault;


    var getAttr = T.getAttr;
    var addClass = T.addClass;
    var removeClass = T.removeClass;
    
    var show = T.show, hide = T.hide;
    var getStyle = T.dom.getStyle;
    
    require.config({
        paths : {
            'ecom/ui': 'http://s1.bdstatic.com/r/www/cache/biz/ecom/ui/20130514/'
        }
    });
    
    card.ready(function() {
        var common=function(t,e){var a,i="ecl-edu-dropdown-",s="ecomui/edu?controller=Bws&action=query",n={city:eduData.cityName,cityid:eduData.cityId,tags:0,total:eduData.totalPage,page:eduData.page},r={},c=[],o=T.ajax.request,u=T.extend,g=e.encodeURI,d=function(){a.set("courses","请求数据异常，请稍候重试")},f=t.qq(i+"container").offsetTop;return a={getData:function(e){var i=u({},e);i.cityid?i.page=1:i.tags?(i.page=1,i.cityid=a.get("cityid"),i.city=a.get("city")):i.page?(i.tags=a.get("tags"),i.cityid=a.get("cityid"),i.city=a.get("city")):(i.page=1,i.cityid=a.get("cityid"),i.city=a.get("city")),i=u(i,{sessionID:eduData.sessionId,originQuery:eduData.queryStr,sid:eduData.sid,subqid:eduData.subqid,mode:0});
var r=[];for(var c in i)r.push(c+"="+i[c]);var f=t.qq(a.getClass("title"));o(s,{method:"GET",data:g(r.join("&")),onsuccess:function(t){var i=parseJson(t.responseText);if(i&&!i.status){var s=i.data;!s.edu.length&&(s.edu="抱歉没有找到符合要求的课程，请选择其他分类"),a.set("total",s.totalpage).set("courses",s.edu),e.cityid?(a.set("filters",s.filters).set("page",1).set("city",s.curcity).set("cityid",s.curcityid),n.tags=0,f.href=s.queryurl):e.tags?(a.set("page",1).set("tags",e.tags),f.href=f.href.replace(/&tags=[^&]*/,"")+(e.tags?"&tags="+e.tags:"")):e.page?a.set("page",s.page):(a.set("tags",0).set("page",1),f.href=f.href.replace(/&tags=[^&]*/,""))
}else d(t)},onfailure:d})},getClass:function(t){return i+t},connect:function(t,e){return r[t]=e,a},disconnect:function(t){return delete r[t],a},set:function(t,e){return n[t]=e,r[t]&&r[t]["on"+t+"change"](),a},get:function(t){return n[t]},addIniter:function(t){return c.push(t),a},init:function(){for(var t=0;initer=c[t++];)initer()},getTarget:function(t){return t=t||e.event,t.target||t.srcElement},scrollToTop:function(){e.scrollTo(0,f)}}}(card,window);
        var eduFilters=function(){var t,e=T.q,a=common.getClass,n=card.qq(a("filters")),r='<li ><a hidefocus="true" href="####" data-tagid="#{id}" class="#{activeClass}">#{name}</a><em>|</em></li>',i=a("filter-active");return t={render:function(e){if(e&&e.length){var a,s,c=0,o=[];for(common.get("tags")||[],s=0;(a=e[s++])&&!c;)if(a.cnt){var g={id:0,activeClass:"",name:"全部"};o.push("<li><strong>"+a.tagtype+"：</strong></li>"),g.activeClass=i,o.push(formatString(r,g));var u,d=0,l=a.tags;for(d=0;u=l[d++];)u.cnt&&(u.activeClass="",o.push(formatString(r,u)));
o[o.length-1]=o[o.length-1].replace("<em>|</em>",""),c=1}n.innerHTML=o.join("")}else n.innerHTML="";return""===n.innerHTML?hide(n):show(n),t},onfilterschange:function(){t.render(common.get("filters"))},getFiltersUl:function(){return n},ontagschange:function(){removeClass(e(i,n)[0],i),addClass(t.currentTag,i)}}};common.addIniter(function(){var t=eduFilters();t.render(parseJson(eduData.filtersJson)),common.connect("filters",t).connect("tags",t),on(t.getFiltersUl(),"click",function(e){e=e||window.event,preventDefault(e);
var a=common.getTarget(e);if("A"===a.tagName){t.currentTag=a;var n=getAttr(a,"data-tagid");n=parseInt(n,10);var r={};n&&(r.tags=n),common.getData(r)}})});
        var eduList=function(t){var e,r=common.getClass,n=t.qq(r("courses")),a='<li><div class="'+r("course-info")+'">'+'<h4><a href="#{url}" target="_blank">#{title}</a>#{tryHtml}</h4>'+"#{introHtml}"+"</div>"+'<div class="'+r("price-info")+'">'+"#{priceHtml}"+"</div>"+"</li>",s=function(t){var e=2,n=[];return t.intro&&(n.push("<p><strong>简介：</strong>"+t.intro+"</p>"),e--),t.teacherdesc&&(n.push("<p><strong>老师：</strong>"+t.teacherdesc+"</p>"),e--),e&&t.begintime&&(n.push("<p><strong>开课：</strong>"+t.begintime+"</p>"),e--),e&&t.timedesc&&(n.push("<p><strong>安排：</strong>"+t.timedesc+"</p>"),e--),e&&t.classperiod&&n.push("<p><strong>课时：</strong>"+t.period+"</p>"),n.push('<p><strong>机构：</strong><a href="'+t.orgurl+'" target="_blank">'+t.orgname+"</a>"),n.push('<strong class="'+r("course-address")+'">'+("在线课程"===t.address?"类型：":"校区：")+"</strong>"+"<span>"+t.address+"</span>"),t.addressurl&&n.push('<a href="'+t.addressurl+'" target="_blank">[地图]</a>'),n.join("")
},i=function(t){var e=t.saleprice||t.cost||"",r="";return e.length&&(r+="<em>"+e+"</em>"),""+r+'<a href="'+t.url+'" target="_blank">查看详情</a>'},o=t.qq(r("more-course"));return e={oncourseschange:function(){var t,e=common.get("courses"),c=[];if(e.constructor===String)addClass(n,r("no-course")),n.innerHTML=e;else{for(var u=0;t=e[u];)t.introHtml=s(t),t.priceHtml=i(t),t.tryHtml=t.videourl?'<a class="'+r("try")+'" href="'+t.videourl+'"'+' target="_blank">试听</a>':"",c[u++]=formatString(a,t);removeClass(n,r("no-course")),n.innerHTML=c.join("")
}o&&hide(o)}}};common.addIniter(function(){common.connect("courses",eduList(card))});
        var eduPagination=function(){var e,t,n=0,r=common.getClass,a=card.qq(r("pagination"));return e={render:function(e,o){o-=1,n?(t.page=o,t.total=e,t.render()):(require(["ecom/ui/pager"],function(n){t=new n({total:e,page:o,main:a,prefix:r("ui-pager"),showAlways:0,showCount:10,padding:0,lang:{prev:"<em></em>上一页",next:"下一页<em></em>",ellipsis:"..."}}),t.render()}),n=1)},onpagechange:function(){e.render(common.get("total"),common.get("page"))},getMain:function(){return a}}};common.addIniter(function(){var e=eduPagination(),t=common.getClass,n=card.qq(t("more-course"));
n&&on(n,"click",function(){hide(n);for(var r,a=card.q(t("course-hidden")),o=0;r=a[o++];)removeClass(r,t("course-hidden"));e.render(eduData.totalPage,eduData.page)}),on(e.getMain(),"click",function(e){if(e=e||window.event,preventDefault(e),target=common.getTarget(e),"A"===target.tagName){var t=parseInt(getAttr(target,"data-page"),10)+1,n={page:t};common.getData(n),common.scrollToTop()}}),common.connect("page",e)});
        var eduCity=function(e){var t,n=common.getClass,r=e.qq(n("cities")),a=e.qq(n("city-triangle")),i={1:"北京",2:"上海",84:"广州",93:"深圳",280:"杭州"};return t={render:function(e){var t=['<p>热门城市列表</p><ul class="c-clearfix">'],n=1;e=e||{};var a=T.extend(i,e.cities?e.cities:{});for(var o in a){var c=a[o];t[n++]='<li><a hidefocus="true" data-cityid="'+o+'">'+c+"</a></li>"}t[n++]="</ul>";var s=e.citiesLayer||r;s.innerHTML=t.join("")},getLayer:function(){return r},getMain:function(){return e.qq(n("city"))},getTriangle:function(){return a
},getButton:function(){return e.qq(n("city-btn"))},oncitychange:function(){a.previousSibling.nodeValue=common.get("city")}}};common.addIniter(function(){var e=eduCity(card),t=e.getLayer(),n=e.getButton(),r=e.getTriangle(),a=e.getMain(),i=0;on(n,"click",function(n){n=n||window.event,preventDefault(n),common.getTarget(n),i?9660==r.innerHTML.charCodeAt(0)?(r.innerHTML="&#9650;",show(t)):(r.innerHTML="&#9660;",hide(t)):(e.render(),r.innerHTML="&#9650;",show(t),i=1)}),on(t,"click",function(e){e=e||window.event,preventDefault(e);
var t=common.getTarget(e);if("A"===t.tagName){var r={cityid:getAttr(t,"data-cityid"),city:t.innerHTML};common.getData(r),n.click()}}),on(document,"click",function(e){e=e||window.event;var n=common.getTarget(e);T.dom.contains(a,n)||"none"!==getStyle(t,"display")&&(r.innerHTML="&#9660;",hide(t))}),common.connect("city",e)});
        common.init();
    });
    
});
</script>
{%/block%}