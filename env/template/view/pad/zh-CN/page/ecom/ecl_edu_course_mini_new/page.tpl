{%extends 'base.tpl'%}

{%block name='content'%}

<style>
.ecl-edu-course-mini-new-container{font-size:15px;line-height:18px;width:620px;position:relative}.ecl-edu-course-mini-new-container .c-icon-v{display:none}.ecl-edu-course-mini-new-container h3,.ecl-edu-course-mini-new-container h4,.ecl-edu-course-mini-new-container h5{font-weight:normal;margin:0}.ecl-edu-course-mini-new-container a{color:#00c;text-decoration:underline}.ecl-edu-course-mini-new-container a:hover{text-decoration:underline}.ecl-edu-course-mini-new-container em{color:#c00}.ecl-edu-course-mini-new-title{font-size:18px;line-height:20px}
.ecl-edu-course-mini-new-body{margin-top:10px;position:relative}.ecl-edu-course-mini-new-edu-home{color:#008000}.ecl-edu-course-mini-new-body{border:1px solid #e3e3e3;box-shadow:1px 1px 1px #f0f0f0}.ecl-edu-course-mini-new-filter-tag{*zoom:1;height:18px;overflow:hidden;position:relative}.ecl-edu-course-mini-new-filter-tag:before,.ecl-edu-course-mini-new-filter-tag:after{display:table;line-height:0;content:""}.ecl-edu-course-mini-new-filter-tag:after{clear:both}.ecl-edu-course-mini-new-filter-tag-opened{height:auto;overflow:visible}
.ecl-edu-course-mini-new-tag-type{float:left}.ecl-edu-course-mini-new-tag-list{float:left;margin-top:-5px}.ecl-edu-course-mini-new-tag-list li{float:left;font-size:0;line-height:0;margin-top:5px;white-space:nowrap}.ecl-edu-course-mini-new-tag-list a,.ecl-edu-course-mini-new-tag-list i{font-size:15px;line-height:18px;vertical-align:top}.ecl-edu-course-mini-new-tag-list a{display:inline-block;*display:inline;*zoom:1;color:#00c;padding:0 1em;text-decoration:none}.ecl-edu-course-mini-new-tag-list .ecl-edu-course-mini-new-tag-active{background-color:#388bff;color:#FFF}
.ecl-edu-course-mini-new-tag-list i{display:inline-block;*display:inline;*zoom:1;color:#d1d2d3;font-style:normal;margin:0 7.5px}.ecl-edu-course-mini-new-filter-tag-opened .ecl-edu-course-mini-new-more-tag-icon{top:3px;border-top-color:#FFF;border-bottom-color:#01b9ff;*top:0;*border-width:5px;top:0\0/;border-width:5px\0/}.ecl-edu-course-mini-new-more-tag{cursor:pointer;position:absolute;top:0;right:0;width:3.5em}.ecl-edu-course-mini-new-more-tag-icon{border:4px solid #FFF;border-top-color:#01b9ff;width:0;height:0;font-size:0;line-height:0;position:absolute;right:7px;top:7px;*top:5px;top:5px\0/}
.ecl-edu-course-mini-new-body{margin-bottom:10px;padding:11px}.ecl-edu-course-mini-new-filter-tag{margin-top:4.5px;margin-bottom:4.5px}.ecl-edu-course-mini-new-filter-tag a:hover{text-decoration:none}.ecl-edu-course-mini-new-tag-list{width:28.53333333333333em}.ecl-edu-course-mini-new-data-list a,.ecl-edu-course-mini-new-data-list a em{text-decoration:none}.ecl-edu-course-mini-new-data-list a:hover em{text-decoration:underline}.ecl-edu-course-mini-new-no-data{padding:27.5px 0;text-align:center}.ecl-edu-course-mini-new-data-item{border-bottom:1px solid #ececec;padding:10px 0}
.ecl-edu-course-mini-new-org{float:right;width:14em}.ecl-edu-course-mini-new-org a{zoom:1}.ecl-edu-course-mini-new-org strong{color:#acacac;font-weight:normal}.ecl-edu-course-mini-new-more{padding-top:10px;margin-bottom:-1px;text-align:center}.ecl-edu-course-mini-new-edu-home{margin-top:9px}
</style>

<tr><td>
{%$escaped_card_name = "ecl-edu-course-mini-new"%}

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
                    <i class="c-icon c-icon-v ec-ui-tip"
                        data-tooltips="bl" data-renzheng='{%$item.org_vcard|escape:'html'%}'></i>
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

<script data-compress="off">
A.setup('EDU_DATA', {
    card: "{%$escaped_card_name%}",
    session_id: "{%$extData.sessionID%}",
    query: "{%$extData.originQuery%}",
    sid: "{%$extData.sid%}",
    subqid: "{%$extData.subqid%}",
    edusid: "{%$extData.edusid%}",
    srcid: "{%$extData.srcid%}",
    filters_json: '{%$tplData.class_json%}',
    sign_time: "{%$tplData.signtime%}",
    server_time: "{%$tplData.servertime%}",
    common_params: '{%json_encode($tplData.common_params)%}'
});
</script>
</td></tr>

<script>

A.init(function () {

    var card = this;
    var eduData = card.data.EDU_DATA;

    var lib=function(){var n=eduData.card+"-",e=Array.prototype.push,t=A.baidu,r=card.qq(n+"container"),i={$:function(e,r){return t.dom.q(n+e,r)},extend:function(n,e){return t.extend(n,e)},clone:function(n){return t.object.clone(n)},isPlainObject:function(n){return t.object.isPlain(n)},hasClass:function(n,e){return t.dom.hasClass(n,e)},addClass:function(n,e){t.addClass(n,e)},removeClass:function(n,e){t.removeClass(n,e)},show:function(n){t.show(n)},hide:function(n){t.hide(n)},attr:function(n,e,r){return r?(t.setAttr(n,e,r),void 0):t.getAttr(n,e)
},css:function(n,e,r){if(r)t.setStyle(n,e,r);else{if("string"==typeof e)return t.getStyle(n,e);t.setStyles(n,e)}},parseJSON:function(n){var e;try{e=t.json.parse(n)}catch(r){}return e},stringifyJSON:function(n){return t.json.stringify(n)},json2Query:function(n){var e=[];if(n)for(var t in n)e.push(t+"="+n[t]);return e.join("&")},query2Json:function(n){return t.url.queryToJson(n)},encodeHTML:function(n){return t.string.encodeHTML(n)},decodeHTML:function(n){return t.string.decodeHTML(n)},isArray:function(n){return t.lang.isArray(n)
},inArray:function(n,e){for(var t=0,r=e.length;r>t;t++)if(e[t]===n)return t;return-1},merge:function(){for(var n=[],t=0,r=arguments.length;r>t;t++){var a=arguments[t];i.isArray(a)&&e.apply(n,a)}return n},each:function(n,e){for(var t=0,r=n.length;r>t;t++)e(n[t],t)},on:function(n,e,r){t.on(n,e,r)},off:function(n,e,r){t.un(n,e,r)},contains:function(n,e){return n===e?!0:t.dom.contains(n,e)},post:function(n,e,r){t.ajax.request(n,{method:"POST",data:e,onsuccess:r,onfailure:r})},get:function(n,e,r){var a={method:"GET",onsuccess:r,onfailure:r};
if(e){for(var o in e)e[o]=encodeURIComponent(e[o]);var u=i.json2Query(e);u&&(a.data=u)}t.ajax.request(n,a)},renderTpl:function(n,e){return t.string.format(n,e)},getTarget:function(n){return n=n||window.event,n.target||n.srcElement},backToTop:function(){window.scrollTo(0,r.offsetTop)},query:function(e){return card.qq(n+e)},getClass:function(e){return n+e}};return i}(),data=function(){var n={},e={},t={},r={set:function(t,i){if("string"==typeof t)void 0!==n[t]&&(e[t]=n[t]),n[t]=i;else if(lib.isPlainObject(t))for(var a in t)r.set(a,t[a])
},get:function(e){return n[e]},ischange:function(t){var r=n[t],i=e[t];return void 0!==i&&r!==i},onchange:function(n,e){var r=t[n];lib.isArray(r)||(r=[],t[n]=r),r.push(e)},fire:function(){for(var i in n)if(r.ischange(i)){var a=t[i];if(a)for(var o=0,u=a.length;u>o;o++)"function"==typeof a[o]&&a[o]();e[i]=void 0}}};return r}(),vcard=function(){return{render:function(){}}}(),anti=function(){var n,e=function(n){function e(e){var t=window.event||e;for(b=t.target||t.srcElement;b&&"A"!=b.tagName;)if(b=b.parentNode,b===n)return!1;
p=(new Date).getTime(),s=9999,f=t.clientX,d=t.clientY,v=m?p-m:0,i()&&a()}function t(){w=(new Date).getTime(),s=w-p,i()&&a()}function r(n){var e=window.event||n;C+=1,l||(l=e.clientX),g||(g=e.clientY),m=(new Date).getTime()}function i(){if(c=0,h=/\?url\=([^\.]+)\./.exec(b.href)){for(var n=0;C*T%99+9>n;++n)c+=h[1].charCodeAt(s*n%h[1].length);return!0}return!1}function a(){var n="&ck="+[c,C,s,f,d,l,g,v].join(".");if(b.href){var e=b.href;-1==e.indexOf("&ck=")?b.href+=n:b.href=e.replace(/&ck=[\w.]*/,n)}}function o(e,t){for(var r,i=0;r=e[i];i++)window.attachEvent?n.attachEvent("on"+r,t[i]):window.addEventListener?n.addEventListener(r,t[i],!1):n["on"+r]=t[i],q[r]=t[i]
}function u(e){for(var t,r=0;t=e[r];r++)window.detachEvent?n.detachEvent("on"+t,q[t]):window.addEventListener?n.removeEventListener(t,q[t],!1):n["on"+t]=function(){}}var c,s,f,d,l,g,v,h,p,m,w,b,y="EC_ZHIXIN",T=0,C=0;s=f=d=l=g=v=h=p=m=w=b=0;var q={};return{getAntiTag:function(){return y},setTimesign:function(n){T=n},bind:function(){o(["mouseover","mousedown","mouseup"],[r,e,t])},unbind:function(){u(["mouseover","mousedown","mouseup"])}}};return{init:function(t){n=new e(lib.query("container")),n.bind(),n.setTimesign(t)
},update:function(e){n&&n.setTimesign(e)}}}(),filterHelper=function(){var n='<li><a hidefocus="true" href="javascript:void(0);" data-tagid="#{id}" class="#{activeClass}">#{name}</a><i>|</i></li>',e={activeClass:"tag-active",defaultTag:null,getRenderData:function(t){t=lib.clone(t);var r=[];if(t&&t.length>0)for(var i,a,o=0,u=t.length;u>o;o++){if(i={},a=t[o],a.cnt>0){var c=a.tags||[];if(e.defaultTag&&c.unshift(e.defaultTag),0===c.length)continue;var s=c[0];s.activeClass=lib.getClass(e.activeClass),i.title=a.tagtype;
var f="";lib.each(c,function(e){e.cnt>0&&(e.activeClass=e.activeClass||"",f+=lib.renderTpl(n,e))}),i.content=f.replace(/<i>\|<\/i><\/li>$/,"</li>")}i.title&&r.push(i)}return r}};return e}(),pager=function(){var n,e={showAlways:0,showCount:6,padding:0,lang:{prev:"<em></em>上一页",next:"下一页<em></em>",ellipsis:"..."}},t=lib.query("pagination"),r="ui-pager",i={init:function(){require(["ui/Pager"],function(a){var o={main:t,prefix:lib.getClass(r)};lib.extend(o,e),n||(n=new a(o),i.render())});var a=!1,o=function(){data.ischange("page")&&data.ischange("total")?a?a=!1:(a=!0,i.render()):i.render()
};data.onchange("page",o),data.onchange("total",o),lib.on(t,"click",function(n){var e=lib.getTarget(n);if("A"===e.tagName&&!lib.hasClass(e,lib.getClass(r+"-ellipsis"))){var t=lib.attr(e,"data-page");t=parseInt(t,10)+1,"function"==typeof i.onpagechange&&i.onpagechange(t)}return!1})},render:function(){var e=Number(data.get("page"))-1,r=Number(data.get("total"));n&&(n.page=e,n.total=r,n.render()),1>=r?lib.hide(t):lib.show(t)}};return i}(),log=function(){return{renderComplete:function(n){if(n){var e=new Image;e.src="http://vs-static.baidu.com/edu/w.gif?Logtype=edushow&subqid="+n.subqid+"&qid="+n.session_id+"&srcid="+n.srcid+"&sid="+n.sid+"&edusid="+n.edusid
}}}}();
     
    card.ready(function() {

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

        var ajax=function(){function e(e){for(var t in a)null==e[t]&&(e[t]=data.get(t)),t!==a[t]&&(e[a[t]]=e[t],delete e[t])}var t={total:0,page:0,list:"请求数据异常，请稍后重试"},a={tags:"classID",session_id:"sessionID",query:"originQuery",sid:"sid",subqid:"subqid",mode:"mode",srcid:"srcid"},i="ecomui/edu?controller=Bws&action=query";return function(a){a=a||{};var s=lib.extend({},a);e(a);var r="string"==typeof a.tags?a.tags:"";r=r.split(","),r.length>1&&(a.tags=r[0]);var l=data.get("common_params");lib.isPlainObject(l)&&lib.extend(a,l);
for(var n in a)(""===a[n]||null==a[n])&&delete a[n];var o=lib.query("title");lib.get(i,a,function(e){e=e||{};var i=e.responseText,r=lib.parseJSON(i),l={};if(r&&0===r.status){var n=r.data,d=a.tags||"";o.href=o.href.replace(/&tags=[^&]*/,"")+(d?"&tags="+d:""),l.sign_time=n.signtime,l.more_title=n.more_title,l.more_url=n.more_url,l.list=n.edu.length>0?n.edu:"抱歉没有找到符合要求的课程，请选择其他分类"}else l=lib.extend({},t);null!=s.tags&&(l.tags=s.tags),data.set(l),data.fire()})}}();
        var filterTag=function(){function t(){lib.addClass(i,o),s.innerHTML="收起"}function e(){lib.removeClass(i,o),s.innerHTML="更多"}function a(){var t=i.offsetHeight,e=l.offsetHeight;e/t>=2?lib.show(n):lib.hide(n)}var i=lib.query("filter-tag"),r=lib.query("tag-type"),l=lib.query("tag-list"),n=lib.query("more-tag");lib.query("more-tag-icon");var s=lib.query("more-tag-text"),g=lib.getClass(filterHelper.activeClass),o=lib.getClass("filter-tag-opened");lib.on(n,"click",function(){lib.hasClass(i,o)?e():t()});var f={init:function(){f.render(data.get("filters")),lib.on(l,"click",function(t){var e=lib.getTarget(t);
if("A"===e.tagName&&!lib.hasClass(e,g)){var a=lib.attr(e,"data-tagid");"string"==typeof a&&ajax({tags:a})}}),data.onchange("filters",function(){f.render(data.get("filters"))}),data.onchange("tags",function(){var t=lib.query(filterHelper.activeClass);t&&lib.removeClass(t,g);for(var e=data.get("tags")||"",a=e.split(","),i=l.getElementsByTagName("a"),r=0,n=i.length;n>r;r++){var s=lib.attr(i[r],"data-tagid");"string"==typeof s&&-1!==lib.inArray(s,a)&&lib.addClass(i[r],g)}})},render:function(t){var n=filterHelper.getRenderData(t);
n.length>0?(n=n[0],r.innerHTML=n.title+"：",l.innerHTML=n.content,lib.show(i),e()):lib.hide(i),a()}};return f}();
        var dataList=function(){function t(){var t=Number(data.get("total")),r={"margin-bottom":"0"};2>t&&(r["border-bottom"]="none",r["padding-bottom"]="0");var a=e.getElementsByTagName("li");if(a.length>0){var i=a[a.length-1];lib.css(i,r)}}var e=lib.query("data-list"),r={org:function(t){return'<div class="'+lib.getClass("org")+'">'+"<strong>机构：</strong>"+'<a href="'+t.org_title_url+'" '+'title="'+t.org_title+'" '+'class="EC_ZHIXIN" target="_blank">'+t.org_title_cut+"</a>"+r.vcard(t)+"</div>"},course:function(t){return'<div class="'+lib.getClass("course")+'">'+'<a href="'+t.course_title_url+'" '+'title="'+t.course_title+'" '+'class="EC_ZHIXIN" target="_blank">'+t.course_title_cut+"</a>"+"</div>"
},vcard:function(t){return t.org_vcard&&"[]"!==t.org_vcard?'<i class="c-icon c-icon-v ec-ui-tip" data-tooltips="bl" data-renzheng=\''+t.org_vcard+"'></i>":""},more:function(t){return'<div class="'+lib.getClass("more")+'">'+'<a href="'+t.more_url+'" class="EC_ZHIXIN" target="_blank">'+t.more_title+"</a>"+"</div>"}},a={init:function(){t(),data.onchange("list",function(){var e=data.get("list");a.render(e),t(),vcard.render(),anti.update(data.get("sign_time"))})},render:function(t){if("string"==typeof t)lib.addClass(e,lib.getClass("no-data")),e.innerHTML=t;
else{for(var a,i=[],l=0,n=t.length;n>l;l++)a=t[l],i.push('<div class="'+lib.getClass("data-item")+'">'+r.org(a)+r.course(a)+"</div>");i.push(r.more({more_title:data.get("more_title"),more_url:data.get("more_url")})),lib.removeClass(e,lib.getClass("no-data")),e.innerHTML=i.join("")}}};return a}();
        
        filterTag.init();
        dataList.init();
        vcard.render();
        anti.init(eduData.sign_time);
        log.renderComplete(eduData);
        
    });

});

</script>

{%/block%}