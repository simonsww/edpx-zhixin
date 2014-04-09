{%extends 'base_div.tpl'%}

{%block name='content'%}

<style>
.ecl-edu-course-mini-new-container{font-size:13px;line-height:16px;width:540px;position:relative}.ecl-edu-course-mini-new-container .c-icon-v{margin-left:4px}.ecl-edu-course-mini-new-container h3,.ecl-edu-course-mini-new-container h4,.ecl-edu-course-mini-new-container h5{font-weight:normal;margin:0}.ecl-edu-course-mini-new-container a{color:#00c;text-decoration:underline}.ecl-edu-course-mini-new-container a:hover{text-decoration:underline}.ecl-edu-course-mini-new-container em{color:#c00}.ecl-edu-course-mini-new-title{font-size:16px;line-height:18px}
.ecl-edu-course-mini-new-body{margin-top:9px;position:relative}.ecl-edu-course-mini-new-edu-home{color:#008000}.zx-tip-layer{display:block}.ecl-edu-course-mini-new-body{border:1px solid #e3e3e3;box-shadow:1px 1px 1px #f0f0f0}.ecl-edu-course-mini-new-filter-tag{*zoom:1;height:16px;overflow:hidden;position:relative}.ecl-edu-course-mini-new-filter-tag:before,.ecl-edu-course-mini-new-filter-tag:after{display:table;line-height:0;content:""}.ecl-edu-course-mini-new-filter-tag:after{clear:both}
.ecl-edu-course-mini-new-filter-tag-opened{height:auto;overflow:visible}.ecl-edu-course-mini-new-tag-type{float:left}.ecl-edu-course-mini-new-tag-list{float:left;margin-top:-4px}.ecl-edu-course-mini-new-tag-list li{float:left;font-size:0;line-height:0;margin-top:4px;white-space:nowrap}.ecl-edu-course-mini-new-tag-list a,.ecl-edu-course-mini-new-tag-list i{font-size:13px;line-height:16px;vertical-align:top}.ecl-edu-course-mini-new-tag-list a{display:inline-block;*display:inline;*zoom:1;color:#00c;padding:0 1em;text-decoration:none}
.ecl-edu-course-mini-new-tag-list .ecl-edu-course-mini-new-tag-active{background-color:#388bff;color:#FFF}.ecl-edu-course-mini-new-tag-list i{display:inline-block;*display:inline;*zoom:1;color:#d1d2d3;font-style:normal;margin:0 6.5px}.ecl-edu-course-mini-new-filter-tag-opened .ecl-edu-course-mini-new-more-tag-icon{top:3px;border-top-color:#FFF;border-bottom-color:#01b9ff;*top:0;*border-width:5px;top:0\0/;border-width:5px\0/}.ecl-edu-course-mini-new-more-tag{cursor:pointer;position:absolute;top:0;right:0;width:3.5em}
.ecl-edu-course-mini-new-more-tag-icon{border:4px solid #FFF;border-top-color:#01b9ff;width:0;height:0;font-size:0;line-height:0;position:absolute;right:7px;top:7px;*top:5px;top:5px\0/}.ecl-edu-course-mini-new-body{margin-bottom:9px;padding:10px}.ecl-edu-course-mini-new-filter-tag{margin-top:4px;margin-bottom:4px}.ecl-edu-course-mini-new-filter-tag a:hover{text-decoration:none}.ecl-edu-course-mini-new-tag-list{width:28.46153846153846em}.ecl-edu-course-mini-new-data-list a,.ecl-edu-course-mini-new-data-list a em{text-decoration:none}
.ecl-edu-course-mini-new-data-list a:hover em{text-decoration:underline}.ecl-edu-course-mini-new-no-data{padding:25px 0;text-align:center}.ecl-edu-course-mini-new-data-item{border-bottom:1px solid #ececec;padding:9px 0}.ecl-edu-course-mini-new-org{float:right;width:14em}.ecl-edu-course-mini-new-org a{zoom:1}.ecl-edu-course-mini-new-org strong{color:#acacac;font-weight:normal}.ecl-edu-course-mini-new-more{padding-top:9px;margin-bottom:-1px;text-align:center}.ecl-edu-course-mini-new-edu-home{margin-top:8px}
</style>

{%$escaped_card_name = "ecl-edu-course-mini-new"%}
{%strip%}
<div class="{%$escaped_card_name%}-container" data-click="{'fm': 'alop'}">

    <div class="{%$escaped_card_name%}-header">
        <h3 class="t">
            <a href="{%$tplData.queryurl%}" class="{%$escaped_card_name%}-title EC_ZHIXIN" target="_blank">
                {%if $tplData.needRedden%}
                    {%$tplData.title%}
                {%else%}
                    {%$tplData.title|escape:'html'|highlight:0%}
                {%/if%}
            </a>
        </h3>
    </div>

    <div class="{%$escaped_card_name%}-body">

        <div class="{%$escaped_card_name%}-filter-tag">
            <strong class="{%$escaped_card_name%}-tag-type"></strong>
            <ul class="{%$escaped_card_name%}-tag-list" data-click="{'fm': 'beha', 'rsv_edu-click': '筛选'}">
            </ul>

            <div class="{%$escaped_card_name%}-more-tag OP_LOG_BTN" data-click="{'fm': 'beha'}" style="display: none;">
                <span class="{%$escaped_card_name%}-more-tag-text">更多</span>
                <span class="{%$escaped_card_name%}-more-tag-icon"></span>
            </div>
        </div>

        <div class="{%$escaped_card_name%}-data-list">
            {%foreach $tplData.edu as $item%}

            <div class="{%$escaped_card_name%}-data-item">
                <div class="{%$escaped_card_name%}-org">
                    <strong>机构：</strong>

                    <a href="{%$item.org_title_url%}"
                       class="EC_ZHIXIN" target="_blank">
                        {%if $tplData.needRedden%}
                            {%$item.org_title_cut%}
                        {%else%}
                            {%$item.org_title_cut|escape:'html'|highlight:0%}
                        {%/if%}
                    </a>

                    {%if $item.org_vcard && $item.org_vcard != "[]"%}
                    <a class="c-icon c-icon-v zx-edu-icon-v"
                        data-tooltips="bl" data-renzheng='{%$item.org_vcard|escape:'html'%}'></a>
                    {%/if%}

                </div>

                <div class="{%$escaped_card_name%}-course">
                    <a href="{%$item.course_title_url%}"
                       class="EC_ZHIXIN" target="_blank">
                        {%if $tplData.needRedden%}
                            {%$item.course_title_cut%}
                        {%else%}
                            {%$item.course_title_cut|escape:'html'|highlight:0%}
                        {%/if%}
                    </a>
                </div>
            </div>
            {%/foreach%}

            <div class="{%$escaped_card_name%}-more">
                <a href="{%$tplData.more_url%}" class="EC_ZHIXIN" target="_blank">
                    {%$tplData.more_title%}
                </a>
            </div>
        </div>

    </div>


    <a href="{%$tplData.total_url%}" class="EC_ZHIXIN" target="_blank">
        {%if $tplData.needRedden%}
            {%$tplData.total_title%}
        {%else%}
            {%$tplData.total_title|escape:'html'|highlight:0%}
        {%/if%}
    </a>

    <p class="{%$escaped_card_name%}-edu-home">
        jiaoyu.baidu.com
    </p>

</div>
{%/strip%}

<script data-compress="off">
A.setup('EDU_DATA', {
    card: '{%$escaped_card_name%}',
    session_id: '{%$extData.sessionID%}',
    query: '{%$extData.originQuery%}',
    sid: '{%$extData.sid%}',
    subqid: '{%$extData.subqid%}',
    edusid: '{%$extData.edusid%}',
    srcid: '{%$extData.srcid%}',
    filters_json: '{%$tplData.class_json%}',
    sign_time: '{%$tplData.signtime%}',
    server_time: '{%$tplData.servertime%}',
    common_params: '{%json_encode($tplData.common_params)%}'
});
</script>

<script>

A.init(function () {

    var card = this;
    var eduData = card.data.EDU_DATA;

    function pagePackage(n){for(var e={lib:function(){var n=eduData.card+"-",e=Array.prototype.push,t=A.baidu,i=card.qq(n+"container"),r={$:function(e,i){return t.dom.q(n+e,i)},extend:function(n,e){return t.extend(n,e)},clone:function(n){return t.object.clone(n)},isPlainObject:function(n){return t.object.isPlain(n)},hasClass:function(n,e){return t.dom.hasClass(n,e)},addClass:function(n,e){t.addClass(n,e)},removeClass:function(n,e){t.removeClass(n,e)},show:function(n){t.show(n)},hide:function(n){t.hide(n)},attr:function(n,e,i){return i?(t.setAttr(n,e,i),void 0):t.getAttr(n,e)
},css:function(n,e,i){if(i)t.setStyle(n,e,i);else{if("string"==typeof e)return t.getStyle(n,e);t.setStyles(n,e)}},parseJSON:function(n){var e;try{e=t.json.parse(n)}catch(i){}return e},stringifyJSON:function(n){return t.json.stringify(n)},json2Query:function(n){var e=[];if(n)for(var t in n)e.push(t+"="+n[t]);return e.join("&")},query2Json:function(n){return t.url.queryToJson(n)},encodeHTML:function(n){return t.string.encodeHTML(n)},decodeHTML:function(n){return t.string.decodeHTML(n)},isArray:function(n){return t.lang.isArray(n)
},inArray:function(n,e){for(var t=0,i=e.length;i>t;t++)if(e[t]===n)return t;return-1},merge:function(){for(var n=[],t=0,i=arguments.length;i>t;t++){var a=arguments[t];r.isArray(a)&&e.apply(n,a)}return n},each:function(n,e){for(var t=0,i=n.length;i>t;t++)e(n[t],t)},grep:function(n,e){for(var t=[],i=0,r=n.length;r>i;i++)e(n[i],i)&&t.push(n[i]);return t},on:function(n,e,i){t.on(n,e,i)},off:function(n,e,i){t.un(n,e,i)},contains:function(n,e){return n===e?!0:t.dom.contains(n,e)},post:function(n,e,i){t.ajax.request(n,{method:"POST",data:e,onsuccess:i,onfailure:i})
},get:function(n,e,i){var a={method:"GET",onsuccess:i,onfailure:i};if(e){for(var o in e)e[o]=encodeURIComponent(e[o]);var s=r.json2Query(e);s&&(a.data=s)}t.ajax.request(n,a)},renderTpl:function(n,e){return t.string.format(n,e)},getTarget:function(n){return n=n||window.event,n.target||n.srcElement},backToTop:function(){window.scrollTo(0,i.offsetTop)},query:function(e,t){return t||(e=n+e),card.qq(e)},getClass:function(e){return n+e},dispose:function(){i=null}};return disposeList.push(r),r},data:function(){var n={},e={},t={},i={set:function(t,r){if("string"==typeof t)void 0!==n[t]&&(e[t]=n[t]),n[t]=r;
else if(lib.isPlainObject(t))for(var a in t)i.set(a,t[a])},get:function(e){return n[e]},ischange:function(t){var i=n[t],r=e[t];return void 0!==r&&i!==r},onchange:function(n,e){var i=t[n];lib.isArray(i)||(i=[],t[n]=i),i.push(e)},fire:function(){for(var r in n)if(i.ischange(r)){var a=t[r];if(a)for(var o=0,s=a.length;s>o;o++)"function"==typeof a[o]&&a[o]();e[r]=void 0}},dispose:function(){n=e=t=null}};return disposeList.push(i),i},vcard:function(){function n(){e.log(t),e.init(i)}var e,t={url:"http://fclick.baidu.com/w.gif",getLogData:function(){return{tag:"vshenfenhover",qid:bds.comm.qid,timestamp:+new Date}
}},i={trigger:"zx-edu-icon-v"},r={init:function(){e?n():require(["pszx/vcard"],function(t){e=t,n()})},dispose:function(){e.dispose()}};return disposeList.push(r),r},anti:function(){var n=function(n){function e(e){var t=window.event||e;for(w=t.target||t.srcElement;w&&"A"!=w.tagName;)if(w=w.parentNode,w===n)return!1;w&&(h=(new Date).getTime(),c=9999,f=t.clientX,d=t.clientY,p=m?h-m:0,r()&&a())}function t(){b=(new Date).getTime(),c=b-h,r()&&a()}function i(n){var e=window.event||n;C+=1,l||(l=e.clientX),g||(g=e.clientY),m=(new Date).getTime()
}function r(){if(u=0,w){if(v=/\?url\=([^\.]+)\./.exec(w.href)){for(var n=0;C*T%99+9>n;++n)u+=v[1].charCodeAt(c*n%v[1].length);return!0}return!1}}function a(){var n="&ck="+[u,C,c,f,d,l,g,p].join(".");if(w.href){var e=w.href;-1==e.indexOf("&ck=")?w.href+=n:w.href=e.replace(/&ck=[\w.]*/,n)}}function o(e,t){for(var i,r=0;i=e[r];r++)window.attachEvent?n.attachEvent("on"+i,t[r]):window.addEventListener?n.addEventListener(i,t[r],!1):n["on"+i]=t[r],L[i]=t[r]}function s(e){for(var t,i=0;t=e[i];i++)window.detachEvent?n.detachEvent("on"+t,L[t]):window.addEventListener?n.removeEventListener(t,L[t],!1):n["on"+t]=function(){}
}var u,c,f,d,l,g,p,v,h,m,b,w,y="EC_ZHIXIN",T=0,C=0;c=f=d=l=g=p=v=h=m=b=w=0;var L={};return{getAntiTag:function(){return y},setTimesign:function(n){T=n},bind:function(){o(["mouseover","mousedown","mouseup"],[i,e,t])},unbind:function(){s(["mouseover","mousedown","mouseup"]),n=null}}},e=[],t={init:function(t,i){var r=n(t);r.bind(),r.setTimesign(i),e.push(r)},addAnti:function(t,i){var r=n(t);r.bind(),r.setTimesign(data.get("sign_time")),e.push(r),i&&data.onchange("sign_time",function(){r.setTimesign(data.get("sign_time"))
})},dispose:function(){for(var t=0,i=e.length;i>t;t++)e[t].unbind();n=e=null}};return disposeList.push(t),t},filterHelper:function(){var n='<li><a hidefocus="true" href="javascript:void(0);" data-tagid="#{id}" class="#{activeClass}">#{name}</a><i>|</i></li>',e={activeClass:"tag-active",defaultTag:null,getRenderData:function(t){t=lib.clone(t);var i=[];if(t&&t.length>0)for(var r,a,o=0,s=t.length;s>o;o++){if(r={},a=t[o],a.cnt>0){var u=a.tags||[];if(u=lib.grep(u,function(n){return n.cnt>0}),0===u.length||1===u.length&&u.id>1e7)continue;
e.defaultTag&&u.unshift(e.defaultTag);var c=u[0];c.activeClass=lib.getClass(e.activeClass),r.title=a.tagtype;var f="";lib.each(u,function(e){e.cnt>0&&(e.activeClass=e.activeClass||"",f+=lib.renderTpl(n,e))}),r.content=f.replace(/<i>\|<\/i><\/li>$/,"</li>")}r.title&&i.push(r)}return i},dispose:function(){n=null}};return disposeList.push(e),e},pager:function(){var n,e={showAlways:0,showCount:8,padding:0,lang:{prev:"<em></em>上一页",next:"下一页<em></em>",ellipsis:"..."}},t=lib.query("pagination"),i="ui-pager",r={init:function(){require(["zxui/ui/Pager"],function(a){var o={main:t,prefix:lib.getClass(i)};
lib.extend(o,e),n||(n=new a(o),r.render())});var a=!1,o=function(){data.ischange("page")&&data.ischange("total")?a?a=!1:(a=!0,r.render()):r.render()};data.onchange("page",o),data.onchange("total",o),lib.on(t,"click",function(n){var e=lib.getTarget(n);if("A"===e.tagName&&!lib.hasClass(e,lib.getClass(i+"-ellipsis"))){var t=lib.attr(e,"data-page");t=parseInt(t,10)+1,"function"==typeof r.onchange&&r.onchange(t)}return!1})},render:function(){var e=Number(data.get("page"))-1,i=Number(data.get("total"));n&&(n.page=e,n.total=i,n.render()),1>=i?lib.hide(t):lib.show(t)
},dispose:function(){n.dispose(),n=null}};return disposeList.push(r),r},log:function(){return{renderComplete:function(n){if(n){var e=new Image;e.src="http://vs-static.baidu.com/edu/w.gif?Logtype=edushow&subqid="+n.subqid+"&qid="+n.session_id+"&srcid="+n.srcid+"&sid="+n.sid+"&edusid="+n.edusid}}}}},t=0,i=n.length;i>t;t++)switch(n[t]){case"lib":lib=e.lib();break;case"data":data=e.data();break;case"vcard":vcard=e.vcard();break;case"pager":pager=e.pager();break;case"anti":anti=e.anti();break;case"filterHelper":filterHelper=e.filterHelper();
break;case"log":log=e.log()}}require.config({paths:{zxui:"http://s1.bdstatic.com/r/www/cache/biz/ecom/zxui/20131210",pszx:"http://s1.bdstatic.com/r/www/cache/biz/ecom/ui/20131210/pszx"}});var disposeList=[];card.dispose=function(){for(var n=0,e=disposeList.length;e>n;n++)disposeList[n].dispose();disposeList=null};var lib,data,vcard,pager,anti,filterHelper,log;

    pagePackage([
        'lib', 'data', 'anti',
        'vcard', 'log', 'filterHelper'
    ]);

    card.ready(function () {

        data.set({
            card: eduData.card,

            // 请求参数
            tags: [0],

            // 一些不知道干嘛但必须要传的参数
            sid: eduData.sid,
            subqid: eduData.subqid,
            srcid: eduData.srcid,
            mode: 0,
            sign_time: eduData.sign_time,
            server_time: eduData.server_time,
            session_id: eduData.session_id,
            query: eduData.query,

            common_params: lib.parseJSON(eduData.common_params),

            // 渲染数据
            filters: lib.parseJSON(eduData.filters_json),
            // 首屏是 smarty 渲染, 这里就不存了
            list: [],
            more_title: '',
            more_url: ''
        });

        var ajax=function(){function e(e){for(var t in s)null==e[t]&&(e[t]=data.get(t)),t!==s[t]&&(e[s[t]]=e[t],delete e[t])}var t={total:0,page:0,list:"请求数据异常，请稍后重试"},s={tags:"classID",session_id:"sessionID",query:"originQuery",sid:"sid",subqid:"subqid",mode:"mode",srcid:"srcid"},i="ecomui/edu?controller=Bws&action=query",a={request:function(s){s=s||{};var a=lib.extend({},s);e(s);var r="string"==typeof s.tags?s.tags:"";r=r.split(","),r.length>1&&(s.tags=r[0]);var l=data.get("common_params");lib.isPlainObject(l)&&lib.extend(s,l);
for(var n in s)(""===s[n]||null==s[n])&&delete s[n];var o=lib.query("title");lib.get(i,s,function(e){e=e||{};var i=e.responseText,r=lib.parseJSON(i),l={};if(r&&0===r.status){var n=r.data,u=s.tags||"";o.href=o.href.replace(/&tags=[^&]*/,"")+(u?"&tags="+u:""),l.sign_time=n.signtime,l.more_title=n.more_title,l.more_url=n.more_url,l.list=n.edu.length>0?n.edu:"抱歉没有找到符合要求的课程，请选择其他分类"}else l=lib.extend({},t);null!=a.tags&&(l.tags=a.tags),data.set(l),data.fire()})},dispose:function(){t=s=e=i=null}};return disposeList.push(a),a
}();
        var filterTag=function(){function t(){lib.hasClass(n,c)?i():e()}function e(){lib.addClass(n,c),b.innerHTML="收起"}function i(){lib.removeClass(n,c),b.innerHTML="更多"}function a(){var t=n.offsetHeight,e=o.offsetHeight;e/t>=2?lib.show(g):lib.hide(g)}function l(t){var e=lib.getTarget(t);"A"!==e.tagName||lib.hasClass(e,u)||(lib.attr(e,"data-activing","1"),setTimeout(function(){if(1==lib.attr(e,"data-activing")){var t=lib.attr(e,"data-tagid");"string"==typeof t&&ajax.request({tags:t})}},150))}function r(t){var e=lib.getTarget(t);
"A"!==e.tagName||lib.hasClass(e,u)||lib.attr(e,"data-activing","0")}var n=lib.query("filter-tag"),s=lib.query("tag-type"),o=lib.query("tag-list"),g=lib.query("more-tag"),f=lib.query("more-tag-icon"),b=lib.query("more-tag-text"),u=lib.getClass(filterHelper.activeClass),c=lib.getClass("filter-tag-opened");lib.on(g,"click",t);var d={init:function(){d.render(data.get("filters")),lib.on(o,"mouseover",l),lib.on(o,"mouseout",r),data.onchange("filters",function(){d.render(data.get("filters"))}),data.onchange("tags",function(){var t=lib.query(filterHelper.activeClass);
t&&lib.removeClass(t,u);for(var e=data.get("tags")||"",i=e.split(","),a=o.getElementsByTagName("a"),l=0,r=a.length;r>l;l++){var n=lib.attr(a[l],"data-tagid");"string"==typeof n&&-1!==lib.inArray(n,i)&&lib.addClass(a[l],u)}})},render:function(t){var e=filterHelper.getRenderData(t);e.length>0?(e=e[0],s.innerHTML=e.title+"：",o.innerHTML=e.content,lib.show(n),i()):lib.hide(n),a()},dispose:function(){lib.off(g,"click",t),lib.off(o,"mouseover",l),lib.off(o,"mouseleave",r),n=s=o=g=f=b=u=c=t=e=i=a=l=r=null}};return disposeList.push(d),d
}();
        var dataList=function(){function t(){var t=Number(data.get("total")),r={"margin-bottom":"0"};2>t&&(r["border-bottom"]="none",r["padding-bottom"]="0");var a=e.getElementsByTagName("li");if(a.length>0){var i=a[a.length-1];lib.css(i,r)}}var e=lib.query("data-list"),r={org:function(t){return'<div class="'+lib.getClass("org")+'">'+"<strong>机构：</strong>"+'<a href="'+t.org_title_url+'" '+'title="'+t.org_title+'" '+'class="EC_ZHIXIN" target="_blank">'+t.org_title_cut+"</a>"+r.vcard(t)+"</div>"},course:function(t){return'<div class="'+lib.getClass("course")+'">'+'<a href="'+t.course_title_url+'" '+'title="'+t.course_title+'" '+'class="EC_ZHIXIN" target="_blank">'+t.course_title_cut+"</a>"+"</div>"
},vcard:function(t){return t.org_vcard&&"[]"!==t.org_vcard?'<a class="c-icon c-icon-v zx-edu-icon-v" data-tooltips="bl" data-renzheng=\''+t.org_vcard+"'></a>":""},more:function(t){return'<div class="'+lib.getClass("more")+'">'+'<a href="'+t.more_url+'" class="EC_ZHIXIN" target="_blank">'+t.more_title+"</a>"+"</div>"}},a={init:function(){t(),data.onchange("list",function(){var e=data.get("list");a.render(e),t(),vcard.dispose(),vcard.init()})},render:function(t){if("string"==typeof t)lib.addClass(e,lib.getClass("no-data")),e.innerHTML=t;
else{for(var a,i=[],o=0,s=t.length;s>o;o++)a=t[o],i.push('<div class="'+lib.getClass("data-item")+'">'+r.org(a)+r.course(a)+"</div>");i.push(r.more({more_title:data.get("more_title"),more_url:data.get("more_url")})),lib.removeClass(e,lib.getClass("no-data")),e.innerHTML=i.join("")}},dispose:function(){e=r=t=null}};return disposeList.push(a),a}();

        filterTag.init();
        dataList.init();
        vcard.init();
        anti.addAnti(lib.query('container'), true);
        log.renderComplete(eduData);
    });

});

</script>

{%/block%}