{%extends 'base_div.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecl-edu-dropdown-container{width:600px;font-size:13px}.ecl-edu-dropdown-container em{color:#c00}.ecl-edu-dropdown-header{position:relative;padding-bottom:10px;border-bottom:1px solid #f3f3f3;_zoom:1;_padding-bottom:0}.ecl-edu-dropdown-header h3{margin-bottom:8px}.ecl-edu-dropdown-city{position:absolute;right:0;bottom:10px;_bottom:4px;line-height:22px}.ecl-edu-dropdown-city span{padding-left:6px;border:1px solid #d8d8d8;border-top-color:#999;border-left-color:#b2b2b2;background:#fff;display:block;cursor:pointer}
.ecl-edu-dropdown-city span a{background:#fbfbfb;display:inline-block;background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/edu/img/city-triangle.png") no-repeat center center #f6f6f6;text-indent:-9999px;width:18px;border-left:1px solid #d9d9d9;margin-left:14px}.ecl-edu-dropdown-cities{position:absolute;width:220px;background:#fff;border:1px solid;border-top-color:#bbb;border-left-color:#bbb;border-right-color:#bfbfbf;border-bottom-color:#c9c9c9;font-size:13px;padding:10px 10px 9px}.ecl-edu-dropdown-cities p{color:#333;font-size:12px;line-height:1;margin-bottom:10px}
.ecl-edu-dropdown-cities li{*display:inline}.ecl-edu-dropdown-cities a{float:left;color:#00c;margin-right:18px;cursor:pointer;line-height:1}.ecl-edu-dropdown-cities a:hover{text-decoration:underline}.ecl-edu-dropdown-filters{height:20px;line-height:18px;width:525px;overflow:hidden;_margin-bottom:10px}.ecl-edu-dropdown-filters li{float:left}.ecl-edu-dropdown-filters a,.ecl-edu-dropdown-filters strong{text-decoration:none;display:inline-block;word-break:keep-all;padding:0 6px;border:1px solid #fff}.ecl-edu-dropdown-filters strong{padding:0}
.ecl-edu-dropdown-filters a:hover{text-decoration:underline}.ecl-edu-dropdown-filters a.ecl-edu-dropdown-filter-active{background:#5a9ff1;border-color:#418ce5;border-radius:2px;-moz-border-radius:2px;-webkit-border-radius:2px;-ms-border-radius:2px;color:#fff}.ecl-edu-dropdown-filters em{color:#d1d2d3;margin:0 5px;padding-bottom:2px}.ecl-edu-dropdown-courses li{*zoom:1;border-bottom:1px solid #f3f3f3;padding:6px 0 8px;*vertical-align:bottom}.ecl-edu-dropdown-courses li.ecl-edu-dropdown-course-hidden{display:none}
.ecl-edu-dropdown-courses li:before,.ecl-edu-dropdown-courses li:after{content:"";display:table}.ecl-edu-dropdown-courses li:after{clear:both}.ecl-edu-dropdown-courses h4{line-height:24px;height:24px;font-size:14px;margin:0;font-weight:400}.ecl-edu-dropdown-courses h4 a{display:inline-block;height:100%;*zoom:1}.ecl-edu-dropdown-courses p{line-height:20px;height:20px;overflow:hidden}.ecl-edu-dropdown-courses p strong{font-weight:400;color:#666}.ecl-edu-dropdown-courses a:link{text-decoration:underline}
.ecl-edu-dropdown-courses a:hover{text-decoration:underline}.ecl-edu-dropdown-no-course{padding:25px 0;text-align:center}.ecl-edu-dropdown-course-info{float:left;width:525px}.ecl-edu-dropdown-course-info a{*vertical-align:baseline}.ecl-edu-dropdown-course-info a em{text-decoration:underline}.ecl-edu-dropdown-course-info a:hover em{text-decoration:underline}.ecl-edu-dropdown-try{font-size:12px;padding-left:18px;background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/edu/img/try-listen.png") 0 50% no-repeat;margin-left:6px;*background-position-y:40%}
.ecl-edu-dropdown-course-address{margin-left:.8em}.ecl-edu-dropdown-price-info{width:74px;float:right;text-align:center}.ecl-edu-dropdown-price-info a,.ecl-edu-dropdown-price-info em{display:block}.ecl-edu-dropdown-price-info em{color:#ff8a00;font-weight:700;font-style:normal;padding:12px 0 6px}.ecl-edu-dropdown-price-info a{color:#333;padding:6px 8px;background:url("http://www.baidu.com/cache/biz/ecom/edu/img/button_sprites.gif") transparent 3px -134px no-repeat;color:#fff}.ecl-edu-dropdown-price-info a:link{text-decoration:none}.ecl-edu-dropdown-price-info a:hover{text-decoration:none}
.ecl-edu-dropdown-price-info a:visited{text-decoration:none}.ecl-edu-dropdown-more-course{border:1px solid #f3f3f3;border-top:0;background:#f8f8f8;height:auto;line-height:1;padding:5px 0;text-align:center;cursor:pointer;color:#666}.ecl-edu-dropdown-more-course span{color:#67a5eb;background:url("http://www.baidu.com/cache/biz/ecom/edu/img/icon_sprites.gif") 2px 2px no-repeat;padding:0 8px;*display:inline-block}.ecl-edu-dropdown-footer{text-align:center;margin-top:8px}.ecl-edu-dropdown-icon{display:inline-block;width:16px;height:16px;line-height:16px;vertical-align:text-top;background-image:url(http://a.baidu.com/xianzhi/wholeIconNew.gif);background-repeat:no-repeat;margin:0 5px 0 0}
.ecl-edu-dropdown-icon-certify{margin-left:2px;background-position:0 -64px}.ecl-edu-dropdown-moreurl{display:block;font-size:12px;margin-top:6px;text-decoration:underline}.ecl-edu-dropdown-showurl{color:#008000;line-height:1.4}#content_left{float:left}
</style>

<div class="ecl-edu-dropdown-container">
    <div class="ecl-edu-dropdown-header">
        <h3 class="t">
            <a class="ecl-edu-dropdown-title" href="{%$tplData.queryurl%}" target="_blank">
                {%$tplData.title|escape:'html'|highlight:0%}
            </a>
        </h3>
        <ul class="ecl-edu-dropdown-filters c-clearfix" data-click="{'fm': 'beha', 'rsv_edu-click': '筛选'}" style="display:none;">
            
        </ul>
        <div class="ecl-edu-dropdown-city" data-click="{'fm': 'beha'}">
            <span class="ecl-edu-dropdown-city-btn OP_LOG_BTN" data-click="{'rsv_edu-click': '切换城市'}">{%$tplData.curcity|escape:'html'%}<a class="ecl-edu-dropdown-city-triangle" href="####">&#9660;</a></span>
            <div data-click="{'rsv_edu-click': '选择城市'}" class="ecl-edu-dropdown-cities" style="display:none;"></div>
        </div>
    </div>
    
    {%$course_len = count($tplData.edu)%}
    {%if $course_len > 0%}
    <ul class="ecl-edu-dropdown-courses" >
        {%foreach $tplData.edu as $course%}
        {%$show_count = 0%}
        {%if $course@index < 3%}
        <li >
            <div class="ecl-edu-dropdown-course-info">
                <h4 data-click="{'rsv_edu-click': 'coursetitle{%$course@index%}'}">
                    <a href="{%$course.titleurl%}" class="EC_ZHIXIN" target="_blank">{%$course.title|escape:'html'|highlight:0%}</a>
                    {%if $course.videourl%}
                    <a class="ecl-edu-dropdown-try EC_ZHIXIN" href="{%$course.videourl%}" target="_blank">试听</a>
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
                    <strong>机构：</strong><a  class="EC_ZHIXIN" data-click="{'rsv_edu-click':'courseorg{%$course@index%}'}" target="_blank" href="{%$course.orgurl|escape:'html'%}">{%$course.orgname|escape:'html'%}</a>{%if $course.vcard and ($course.vcard neq "[]")%}<span class="ecl-edu-dropdown-icon ecl-edu-dropdown-icon-certify ec-ui-tip" data-tooltips="bl" data-renzheng='{%$course.vcard|escape:'html'%}'></span>{%/if%}<strong class="ecl-edu-dropdown-course-address" >{%if $course.address eq '在线课程'%}类型：{%elseif $course.address%}校区：{%/if%}</strong><span>{%$course.address|escape:'html'%}</span>{%if $course.addressurl%}[<a href="{%$course.addressurl|escape:'html'%}" target="_blank" class="EC_ZHIXIN">地图</a>]{%/if%}
                </p>
            </div>
            <div class="ecl-edu-dropdown-price-info">
                {%if $course.cost eq '暂无'%}
                {%$course.cost = ''%}
                {%/if%}
                {%$price_show = 0%}
                {%if $course.saleprice%}
                    <em>{%$course.saleprice|replace: "&yen;":"¥"|escape:'html'%}</em>
                    {%$price_show = 1%}
                {%elseif $course.cost%}
                    <em>{%$course.cost|replace: "&yen;":"¥"|escape:'html'%}</em>
                    {%$price_show = 1%}
                {%else%}
                    <em>&nbsp;</em>
                    {%$price_show = 1%}
                {%/if%}
                <a class="EC_ZHIXIN" data-click="{'rsv_edu-click':'coursedetail{%$course@index%}'}" hidefocus="true" href="{%$course.detailurl|escape:'html'%}" target="_blank"
                {%if $price_show eq 0%} class="ecl-edu-dropdown-noprice-link" {%/if%}>
                查看详情
                </a>
            </div>
        </li>
        {%/if%}
        {%/foreach%}
    </ul>
    {%/if%}

    {%if $course_len >= 3%}

    <a href="{%$tplData.moreurl|escape:'html'%}" class="ecl-edu-dropdown-moreurl" target="_blank">更多相关课程>></a>
    {%/if%}
    <p class="ecl-edu-dropdown-showurl">learning.baidu.com</p>
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
    page: "{%$tplData.page%}",
    signTime: "{%$tplData.signtime%}",
    servertime: "{%$tplData.servertime%}"
})
    
</script>
<script>
A.init(function() {
    var card = this;
    var eduData = card.data.EDU_DATA;
    
    // 引用tangram中的一些方法。
    var T = A.baidu;
    var parseJson = T.json.parse;
    var stringifyJson = T.json.stringify;
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
            'ecom/ui': 'http://s1.bdstatic.com/r/www/cache/biz/ecom/ui/20130514/',
            'tipapi': 'http://s1.bdstatic.com/r/www/cache/biz/ecom/common/api/tip/tipapi'
        }
    });
    
    card.ready(function() {
        var Anti=function(n){function e(e){var t=window.event||e;for(T=t.target||t.srcElement;T&&"A"!=T.tagName;)if(T=T.parentNode,T===n)return!1;E=(new Date).getTime(),f=9999,v=t.clientX,d=t.clientY,s=g?E-g:0,i()&&o()}function t(){l=(new Date).getTime(),f=l-E,i()&&o()}function r(n){var e=window.event||n;L+=1,w||(w=e.clientX),m||(m=e.clientY),g=(new Date).getTime()}function i(){if(u=0,h=/\?url\=([^\.]+)\./.exec(T.href)){for(var n=0;L*A%99+9>n;++n)u+=h[1].charCodeAt(f*n%h[1].length);return!0}return!1}function o(){var n="&ck="+[u,L,f,v,d,w,m,s].join(".");
if(T.href){var e=T.href;-1==e.indexOf("&ck=")?T.href+=n:T.href=e.replace(/&ck=[\w.]*/,n)}}function a(e,t){for(var r,i=0;r=e[i];i++)window.attachEvent?n.attachEvent("on"+r,t[i]):window.addEventListener?n.addEventListener(r,t[i],!1):n["on"+r]=t[i],k[r]=t[i]}function c(e){for(var t,r=0;t=e[r];r++)window.detachEvent?n.detachEvent("on"+t,k[t]):window.addEventListener?n.removeEventListener(t,k[t],!1):n["on"+t]=function(){}}var u,f,v,d,w,m,s,h,E,g,l,T,p="EC_ZHIXIN",A=0,L=0;f=v=d=w=m=s=h=E=g=l=T=0;var k={};return{getAntiTag:function(){return p
},setTimesign:function(n){A=n},bind:function(){a(["mouseover","mousedown","mouseup"],[r,e,t])},unbind:function(){c(["mouseover","mousedown","mouseup"])}}};
        var cardAnti = new Anti(card.qq('ecl-edu-dropdown-courses'));
        cardAnti.bind();
        cardAnti.setTimesign(eduData.signTime);

        var common=function(e,t){var n,i="ecl-edu-dropdown-",r="ecomui/edu?controller=Bws&action=query",a={city:eduData.cityName,cityid:eduData.cityId,tags:0,total:eduData.totalPage,page:eduData.page},o={},c=[],s=T.ajax.request,u=T.extend,d=t.encodeURI,f=function(){n.set("courses","请求数据异常，请稍候重试")},g=e.qq(i+"container"),l=g.offsetTop;return n={getData:function(t){var i=u({},t);i.cityid?i.page=1:i.tags?(i.page=1,i.cityid=n.get("cityid"),i.city=n.get("city")):i.page?(i.tags=n.get("tags"),i.cityid=n.get("cityid"),i.city=n.get("city")):(i.page=1,i.cityid=n.get("cityid"),i.city=n.get("city")),i=u(i,{sessionID:eduData.sessionId,originQuery:eduData.queryStr,sid:eduData.sid,subqid:eduData.subqid,mode:0,srcid:29092});
var o=[];for(var c in i)o.push(c+"="+i[c]);s(r,{method:"GET",data:d(o.join("&")),onsuccess:function(i){var r=parseJson(i.responseText);if(r&&!r.status){var o=e.qq(n.getClass("title")),c=e.qq(n.getClass("moreurl"));c=c||{};var s=r.data;!s.edu.length&&(s.edu="抱歉没有找到符合要求的课程，请选择其他分类"),n.set("total",s.totalpage).set("courses",s.edu).set("signTime",s.signtime),t.cityid?(n.set("filters",s.filters).set("page",1).set("city",s.curcity).set("cityid",s.curcityid),a.tags=0,o.href=s.queryurl,c.href=s.moreurl):t.tags?(n.set("page",1).set("tags",t.tags),o.href=o.href.replace(/&tags=[^&]*/,"")+(t.tags?"&tags="+t.tags:""),c.href=c.href.replace(/&tags=[^&]*/,"")+(t.tags?"&tags="+t.tags:"")):t.page?n.set("page",s.page):(n.set("tags",0).set("page",1),o.href=o.href.replace(/&tags=[^&]*/,""),c.href=c.href.replace(/&tags=[^&]*/,"")),g.parentNode.setAttribute("mu",o.href),s.count>3?show(c):hide(c)
}else f(i)},onfailure:f})},getClass:function(e){return i+e},connect:function(e,t){return o[e]=t,n},disconnect:function(e){return delete o[e],n},set:function(e,t){return a[e]=t,o[e]&&o[e]["on"+e+"change"](),n},get:function(e){return a[e]},addIniter:function(e){return c.push(e),n},init:function(){for(var e=0;initer=c[e++];)initer()},getTarget:function(e){return e=e||t.event,e.target||e.srcElement},scrollToTop:function(){t.scrollTo(0,l)},initVcard:function(){var e={triggers:"ec-ui-tip",arrow:!0,layerOffsetLeft:10,layerOffsetTop:5,hideDelay:500};
require(["tipapi"],function(t){t.init(e)})}}}(card,window);
        var eduFilters=function(){var e,t=T.q,n=common.getClass,r=card.qq(n("filters")),a='<li ><a hidefocus="true" href="####" data-tagid="#{id}" class="#{activeClass}">#{name}</a><em>|</em></li>',i=n("filter-active");return e={render:function(t){if(t&&t.length){var n,o,s=0,c=[];for(common.get("tags")||[],o=0;(n=t[o++])&&!s;)if(n.cnt){var u={id:0,activeClass:"",name:"全部"};c.push("<li><strong>"+n.tagtype+"：</strong></li>"),u.activeClass=i,c.push(formatString(a,u));var g,d=0,f=n.tags;for(d=0;g=f[d++];)g.cnt&&(g.activeClass="",c.push(formatString(a,g)));
c[c.length-1]=c[c.length-1].replace("<em>|</em>",""),s=1}r.innerHTML=c.join("")}else r.innerHTML="";return""===r.innerHTML?hide(r):show(r),e},onfilterschange:function(){e.render(common.get("filters"))},getFiltersUl:function(){return r},ontagschange:function(){removeClass(t(i,r)[0],i),addClass(e.currentTag,i)}}};common.addIniter(function(){var e=eduFilters();e.render(parseJson(eduData.filtersJson)),common.connect("filters",e).connect("tags",e),on(e.getFiltersUl(),"click",function(t){t=t||window.event,preventDefault(t);
var n=common.getTarget(t);if("A"===n.tagName){e.currentTag=n;var r=getAttr(n,"data-tagid");r=parseInt(r,10);var a={};r&&(a.tags=r),common.getData(a)}})});
        var eduList=function(e){var t,n=common.getClass,r=e.qq(n("courses")),a='<li><div class="'+n("course-info")+'">'+"<h4 data-click=\"{'rsv_edu-click': 'coursetitle#{idx}'}\">"+'<a href="#{titleurl}" class="EC_ZHIXIN" target="_blank">#{title}</a>#{tryHtml}'+"</h4>"+"#{introHtml}"+"</div>"+'<div class="'+n("price-info")+'">'+"#{priceHtml}"+"</div>"+"</li>",i=function(e,t){var r=2,a=[];return e.intro&&(a.push("<p><strong>简介：</strong>"+e.intro+"</p>"),r--),e.teacherdesc&&(a.push("<p><strong>老师：</strong>"+e.teacherdesc+"</p>"),r--),r&&e.begintime&&(a.push("<p><strong>开课：</strong>"+e.begintime+"</p>"),r--),r&&e.timedesc&&(a.push("<p><strong>安排：</strong>"+e.timedesc+"</p>"),r--),r&&e.classperiod&&a.push("<p><strong>课时：</strong>"+e.period+"</p>"),a.push("<p><strong>机构：</strong><a class=\"EC_ZHIXIN\" data-click=\"{'rsv_edu-click': 'courseorg"+t+"'}\""+' href="'+e.orgurl+'" target="_blank">'+e.orgname+"</a>"),e.vcard&&"[]"!==e.vcard&&a.push('<span class="ecl-edu-dropdown-icon ecl-edu-dropdown-icon-certify ec-ui-tip" data-tooltips="bl" data-renzheng=\''+e.vcard+"'>"+"</span>"),a.push('<strong class="'+n("course-address")+'">'+("在线课程"===e.address?"类型：":"校区：")+"</strong>"+"<span>"+e.address+"</span>"),e.addressurl&&a.push('[<a class="EC_ZHIXIN" href="'+e.addressurl+'" target="_blank">地图</a>]'),a.join("")
},s=function(e,t){"暂无"===e.cost&&(e.cost="");var n=e.saleprice||e.cost||"&nbsp;",r="";return n.length&&(r+="<em>"+n+"</em>"),""+r+"<a class=\"EC_ZHIXIN\" data-click=\"{'rsv_edu-click': 'coursedetail"+t+"'}\" "+' href="'+e.detailurl+'" target="_blank">查看详情</a>'};return t={oncourseschange:function(){var e,t=common.get("courses"),o=[];if(t.constructor===String)addClass(r,n("no-course")),r.innerHTML=t;else{for(var c=0;(e=t[c])&&!(c>2);)e.introHtml=i(e,c),e.priceHtml=s(e,c),e.idx=c,e.tryHtml=e.videourl?'<a class="EC_ZHIXIN '+n("try")+'" href="'+e.videourl+'"'+' target="_blank">试听</a>':"",o[c++]=formatString(a,e);
removeClass(r,n("no-course")),r.innerHTML=o.join("")}cardAnti.setTimesign(common.get("signTime")),common.initVcard()}}};common.addIniter(function(){common.connect("courses",eduList(card))});
        var eduCity=function(e){var t,n=common.getClass,r=e.qq(n("cities")),i=e.qq(n("city-triangle")),a={1:"北京",2:"上海",84:"广州",93:"深圳",280:"杭州"};return t={render:function(e){var t=['<p>热门城市列表</p><ul class="c-clearfix">'],n=1;e=e||{};var i=T.extend(a,e.cities?e.cities:{});for(var o in i){var c=i[o];t[n++]='<li><a hidefocus="true" data-cityid="'+o+'">'+c+"</a></li>"}t[n++]="</ul>";var s=e.citiesLayer||r;s.innerHTML=t.join("")},getLayer:function(){return r},getMain:function(){return e.qq(n("city"))},getTriangle:function(){return i
},getButton:function(){return e.qq(n("city-btn"))},oncitychange:function(){i.previousSibling.nodeValue=common.get("city")}}};common.addIniter(function(){var e=eduCity(card),t=e.getLayer(),n=e.getButton(),r=e.getTriangle(),i=e.getMain(),a=0;on(n,"click",function(n){n=n||window.event,preventDefault(n),common.getTarget(n),a?9660==r.innerHTML.charCodeAt(0)?(r.innerHTML="&#9650;",show(t)):(r.innerHTML="&#9660;",hide(t)):(e.render(),r.innerHTML="&#9650;",show(t),a=1)}),on(t,"click",function(e){e=e||window.event,preventDefault(e);
var t=common.getTarget(e);if("A"===t.tagName){var r={cityid:getAttr(t,"data-cityid"),city:t.innerHTML};common.getData(r),n.click()}}),on(document,"click",function(e){e=e||window.event;var n=common.getTarget(e);T.dom.contains(i,n)||"none"!==getStyle(t,"display")&&(r.innerHTML="&#9660;",hide(t))}),common.connect("city",e)});

        common.addIniter(function() {
            // common.initVcard();
        });


        common.init();
    });
    
});
</script>
<script>
bds.ready(function(){var opts={triggers:"ec-ui-tip",layerOffsetLeft:5,layerOffsetTop:5,hideDelay:50,statistics:{identity:{url:'http://trustrcv.baidu.com/v.php',query:{tag:'vshenfenhover'}}}};require(["ecom/common/api/tip0624/tipapi"],function(tipapi){tipapi.init(opts)})});
</script>
{%/block%}