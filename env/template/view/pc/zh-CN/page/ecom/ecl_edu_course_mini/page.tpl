{%extends 'c_base.tpl'%}

{%block name='data_modifier'%}
    {%$escaped_card_name = 'ecl-edu-course-mini'%}

    {%$is_new = array_keys($tplData.edu) !== range(0, count($tplData.edu) - 1)%}

    {%if $is_new%}

        {%$course_list = $tplData.edu.class_list%}
        {%$item_default = $tplData.edu.default%}

        {%if count($course_list) > 0%}
            {%$escaped_type='list-mode'%}
        {%else%}
            {%$escaped_type='card-mode'%}
        {%/if%}

    {%else%}
        {%$course_list = $tplData.edu%}
        {%$item_default = $tplData.edu[0]%}

        {%if $tplData.mini_card_type == 2%}
            {%$escaped_type='card-mode'%}
        {%else%}
            {%$escaped_type='list-mode'%}
        {%/if%}
    {%/if%}


    {%$escaped_srcid = $extData.srcid%}

{%/block%}

{%block name='title'%}
    <h4 class="t {%$escaped_card_name%}-title c-gap-bottom-small">
        <a href="{%$tplData.queryurl%}" target="_blank">
            {%$tplData.title%}
        </a>
    </h4>
{%/block%}

{%block name='foot'%}
{%strip%}
    <div class="c-gap-top {%$escaped_card_name%}-all-course">
        <a href="{%$tplData.moreurl%}" target="_blank">
            {%$tplData.more_title%}
        </a>
    </div>
    <p class="c-showurl c-gap-top-small">
        jiaoyu.baidu.com
        <a href="http://baozhang.baidu.com/guarantee/"
            class="c-icon c-icon-bao c-gap-icon-left-small" target="_blank"></a>
    </p>
{%/strip%}
{%/block%}

{%block name='content'%}

<style>
{%fe_fn_c_css css="btn"%}
.ecl-edu-course-mini-title{margin-top:0}.ecl-edu-course-mini-container{line-height:1.7692307692;position:relative}.ecl-edu-course-mini-container h4,.ecl-edu-course-mini-container h5{margin:0;font-weight:normal}.ecl-edu-course-mini-no-data{padding:2.5em 1em;text-align:center}.zx-tip-layer{display:block}.ecl-edu-course-mini-image-tag{display:block;line-height:0;position:relative;_zoom:1}.ecl-edu-course-mini-image-tag img{width:121px;height:91px}.ecl-edu-course-mini-image-tag-wrapper{position:absolute;left:0;bottom:0;width:121px;height:18px;_bottom:-1px}
.ecl-edu-course-mini-image-tag-mask{background-color:#000;width:100%;height:100%;opacity:.6;filter:alpha(opacity=60)}.ecl-edu-course-mini-image-tag-text{color:#FFF;font-weight:normal;position:absolute;left:0;top:0;width:121px;height:18px;line-height:18px;text-align:center}.ecl-edu-course-mini-list-mode{padding-bottom:.3846153846153846em}.ecl-edu-course-mini-card-mode .c-span6{line-height:0}.ecl-edu-course-mini-data-list{*zoom:1}.ecl-edu-course-mini-data-list:before,.ecl-edu-course-mini-data-list:after{display:table;line-height:0;content:""}
.ecl-edu-course-mini-data-list:after{clear:both}.ecl-edu-course-mini-data-item{position:relative}.ecl-edu-course-mini-image-tag{text-decoration:none!important}.ecl-edu-course-mini-image-tag-mask,.ecl-edu-course-mini-image-tag-text{cursor:pointer}.ecl-edu-course-mini-course-title,.ecl-edu-course-mini-course-count{display:block}.ecl-edu-course-mini-course-title{text-decoration:none}.ecl-edu-course-mini-course-title em{text-decoration:none}.ecl-edu-course-mini-course-title:hover,.ecl-edu-course-mini-course-title:hover em{text-decoration:underline}
.ecl-edu-course-mini-course-count{font-weight:normal;position:absolute;right:.3em;bottom:0}.ecl-edu-course-mini-all-course{line-height:1em}.ecl-edu-course-mini-card-mode{position:relative}.ecl-edu-course-mini-card-mode .c-btn{padding:0 .6923076923076923em;position:absolute;right:.7692307692307692em;bottom:.7692307692307692em}.ecl-edu-course-mini-rec-list{border-top:1px solid #e3e3e3;line-height:1em;padding-top:.7692307692307692em;padding-bottom:.3846153846153846em}.ecl-edu-course-mini-rec-list label{color:#666}
.ecl-edu-course-mini-rec-list a,.ecl-edu-course-mini-rec-list span{margin-right:1em}.ecl-edu-course-mini-29094 .ecl-edu-course-mini-course-title{height:3.5em}.ecl-edu-course-mini-29204 .ecl-edu-course-mini-course-title{text-align:center}.ecl-edu-course-mini-29204 .ecl-edu-course-mini-course-count{display:none}
</style>

{%strip%}

<div class="{%$escaped_card_name%}-container {%$escaped_card_name%}-{%$escaped_srcid%} c-border {%$escaped_card_name%}-{%$escaped_type%}" data-click="{'fm': 'alop'}">

{%if $escaped_type === 'list-mode'%}

    <ul class="{%$escaped_card_name%}-data-list" >
    {%foreach $course_list as $item%}

        {%if $item@last%}
            {%$escaped_class = ' c-span-last'%}
        {%else%}
            {%$escaped_class = ''%}
        {%/if%}

        {%if $is_new%}

        <li class="{%$escaped_card_name%}-data-item c-span6{%$escaped_class%}">

            <a href="{%$item.img_url%}"
                class="{%$escaped_card_name%}-image-tag"
                target="_blank">
                <img src="{%$item.img%}" />

                <div class="{%$escaped_card_name%}-image-tag-wrapper">
                    <div class="{%$escaped_card_name%}-image-tag-mask">
                    </div>
                    <div class="{%$escaped_card_name%}-image-tag-text">
                        {%$item.tag%}
                    </div>
                </div>
            </a>

            <a hidefocus="true"
                class="{%$escaped_card_name%}-course-title c-gap-top-small"
                href="{%$item.name_url%}"
                target="_blank">
                {%$item.name_cut%}
            </a>

            {%if isset($item.count)%}
            <strong class="{%$escaped_card_name%}-course-count">
                共{%$item.count%}个
            </strong>
            {%/if%}
        </li>

        {%else%}

        <li class="{%$escaped_card_name%}-data-item c-span6{%$escaped_class%}">

            <a href="{%$item.course_class_img_url%}"
                class="{%$escaped_card_name%}-image-tag"
                target="_blank">
                <img src="{%$item.course_class_img%}" />

                <div class="{%$escaped_card_name%}-image-tag-wrapper">
                    <div class="{%$escaped_card_name%}-image-tag-mask">
                    </div>
                    <div class="{%$escaped_card_name%}-image-tag-text">
                        {%$item.course_class_tag%}
                    </div>
                </div>
            </a>

            <a hidefocus="true"
                class="{%$escaped_card_name%}-course-title c-gap-top-small"
                href="{%$item.course_class_title_url%}"
                target="_blank">
                {%$item.course_class_title_cut%}
            </a>

            <strong class="{%$escaped_card_name%}-course-count">
                共{%$item.course_class_count%}个
            </strong>
        </li>

        {%/if%}

    {%/foreach%}
    </ul>

    {%if count($tplData.edu.rec_data) > 0%}
    <div class="{%$escaped_card_name%}-rec-list c-gap-top-small">

        {%if isset($tplData.edu.rec_title)%}
        <label>{%$tplData.edu.rec_title%}：</label>
        {%/if%}

        {%foreach $tplData.edu.rec_data as $item%}

        {%if $item.name_url%}
        <a href="{%$item.name_url|escape:'html'%}" target="_blank">
        {%else%}
        <span>
        {%/if%}

            {%$item.name%}

        {%if $item.name_url%}
        </a>
        {%else%}
        </span>
        {%/if%}

        {%/foreach%}

    </div>
    {%/if%}

{%else%}

    <div class="c-row">

        {%if $is_new%}

        <a class="c-span6" href="{%$item_default.img_url%}" target="_blank">
            <img class="c-img c-img6" src="{%$item_default.img%}" />
        </a>

        <p class="c-span14">
            {%foreach $item_default.text_list as $text%}
                {%$text|escape:'html'%}<br />
            {%/foreach%}
        </p>

        <a class="c-btn c-btn-primary c-btn-mini"
            href="{%$item_default.detail_url%}"
            target="_blank">
            查看详情
        </a>

        {%else%}

        <a class="c-span6" href="{%$item_default.course_class_img_url%}" target="_blank">
            <img class="c-img c-img6" src="{%$item_default.course_class_img%}" />
        </a>

        <p class="c-span14">
            {%foreach $item_default.course_class_desc as $text%}
                {%$text|escape:'html'%}<br />
            {%/foreach%}
        </p>

        <a class="c-btn c-btn-primary c-btn-mini"
            href="{%$item_default.course_class_detail_url%}"
            target="_blank">
            查看详情
        </a>

        {%/if%}
    </div>

{%/if%}

</div>
{%/strip%}

<script data-compress="off">
A.setup('EDU_DATA', {
    card: '{%$escaped_card_name%}',
    session_id: '{%$extData.sessionID%}',
    query: '{%$extData.originQuery%}',
    city_id: '{%$tplData.curcityid%}',
    city: '{%$tplData.curcity%}',
    ipcity_id: '{%$tplData.ipcityid%}',
    ipcity: '{%$tplData.ipcity%}',
    sid: '{%$extData.sid%}',
    subqid: '{%$extData.subqid%}',
    edusid: '{%$extData.edusid%}',
    srcid: '{%$extData.srcid%}',
    filters_json: '{%$tplData.filtersjson%}',
    total: '{%$tplData.totalpage%}',
    page: '{%$tplData.page%}',
    sign_time: '{%$tplData.signtime%}',
    server_time: '{%$tplData.servertime%}',
    req_info: '{%$tplData.req_info%}'
});
</script>


<script>
A.setup(function() {

    'use strict';

    var card = this;

    // 卡片通用逻辑
    var cardData=card.data.EDU_DATA,cardElement=card.container,CLASS_CARD=cardData.card,CLASS_ACTIVE=CLASS_CARD+"-active",CLASS_OPENED=CLASS_CARD+"-opened",CLASS_PAGER=CLASS_CARD+"-ui-pager",disposeList=[];card.dispose=function(){$.each(disposeList,function(a,d){d.dispose()}),card=cardData=cardElement=disposeList=null};
    require.config({paths:{zxui:"http://s1.bdstatic.com/r/www/cache/biz/ecom/zxui/20131210",pszx:"http://s1.bdstatic.com/r/www/cache/biz/ecom/ui/20140311/pszx"}});
    var lib=function(){var n=CLASS_CARD+"-",e={contains:function(n,e){return n===e?!0:$.contains(n,e)},post:function(n,e,t){for(var r in e)(""===e[r]||null==e[r])&&delete e[r];$.post(n,e,t,"json")},get:function(n,e,t){for(var r in e)(""===e[r]||null==e[r])&&delete e[r];$.get(n,e,t,"json")},array2Object:function(n,e,t){var r={};return $.each(n,function(n,o){$.isPlainObject(o)?e&&(r[o[e]]=t?o[t]:o):r[o]=1}),r},renderTpl:function(n,e){return e=e||{},n.replace(/\$\{(.+?)\}/g,function(n,t){return null==e[t]?"":e[t]})
},backToTop:function(){window.scrollTo(0,cardElement.offsetTop)},json2Query:function(n){var e=[];if(n)for(var t in n)e.push(t+"="+n[t]);return e.join("&")},query2Json:function(n){for(var e=n.split("&"),t={},r=0;e.length>r;r++){var o=e[r];if(o){var c=o.indexOf("="),i=0>c?decodeURIComponent(o):decodeURIComponent(o.slice(0,c)),a=0>c?!0:decodeURIComponent(o.slice(c+1));t.hasOwnProperty(i)?a!==!0&&(t[i]=[].concat(t[i],a)):t[i]=a}}return t},updateURL:function(n,t){var r=n.indexOf("?");if(r>=0){var o=n.substr(0,r),c=n.substr(r+1),i=e.query2Json(c);
$.extend(i,t),c=e.json2Query(i),n=o+"?"+c}return n},$:function(n){return $(n,cardElement)},query:function(n,t){return t||(n=e.getClass(n)),e.$("."+n)},getClass:function(e){return n+e},dispose:function(){n=null}};return disposeList.push(e),e}();
    var data=function(){var n={},t={},e={},r={init:function(n){for(var t in cardData)r.set(t,cardData[t]);for(t in n)r.set(t,n[t])},set:function(e,i){if("string"==typeof e)void 0!==n[e]&&(t[e]=n[e]),n[e]=void 0!==i?i:null;else if($.isPlainObject(e))for(var o in e)r.set(o,e[o])},get:function(t){return n[t]},ischange:function(e){var r=n[e],i=t[e];return void 0!==i&&r!==i},onchange:function(n,t){var r=e[n];$.isArray(r)||(r=[],e[n]=r),r.push(t)},fire:function(){for(var i in n)if(r.ischange(i)){var o=e[i];if(o)for(var a=0,c=o.length;c>a;a++)"function"==typeof o[a]&&o[a]();
t[i]=void 0}},dispose:function(){n=t=e=null}};return disposeList.push(r),r}();
    var anti=function(){var n=function(n){function e(e){var t=window.event||e;for(A=t.target||t.srcElement;A&&"A"!=A.tagName;)if(A=A.parentNode,A===n)return!1;A&&(g=(new Date).getTime(),s=9999,f=t.clientX,d=t.clientY,p=m?g-m:0,r()&&o())}function t(){w=(new Date).getTime(),s=w-g,r()&&o()}function i(n){var e=window.event||n;E+=1,v||(v=e.clientX),l||(l=e.clientY),m=(new Date).getTime()}function r(){if(u=0,A){if(h=/\?url\=([^\.]+)\./.exec(A.href)){for(var n=0;E*L%99+9>n;++n)u+=h[1].charCodeAt(s*n%h[1].length);return!0
}return!1}}function o(){var n="&ck="+[u,E,s,f,d,v,l,p].join(".");if(A.href){var e=A.href;-1==e.indexOf("&ck=")?A.href+=n:A.href=e.replace(/&ck=[\w.]*/,n)}}function a(e,t){for(var i,r=0;i=e[r];r++)window.attachEvent?n.attachEvent("on"+i,t[r]):window.addEventListener?n.addEventListener(i,t[r],!1):n["on"+i]=t[r],S[i]=t[r]}function c(e){for(var t,i=0;t=e[i];i++)window.detachEvent?n.detachEvent("on"+t,S[t]):window.addEventListener?n.removeEventListener(t,S[t],!1):n["on"+t]=function(){}}var u,s,f,d,v,l,p,h,g,m,w,A,C="EC_ZHIXIN",L=0,E=0;
s=f=d=v=l=p=h=g=m=w=A=0;var S={};return{getAntiTag:function(){return C},setTimesign:function(n){L=n},bind:function(){a(["mouseover","mousedown","mouseup"],[i,e,t])},unbind:function(){c(["mouseover","mousedown","mouseup"]),n=null}}},e=[],t={init:function(t,i){t.jquery&&(t=t[0]);var r=n(t);r.bind(),r.setTimesign(i),e.push(r)},addAnti:function(t,i){t.jquery&&(t=t[0]);var r=n(t);r.bind(),r.setTimesign(data.get("sign_time")),e.push(r),i&&data.onchange("sign_time",function(){r.setTimesign(data.get("sign_time"))})},dispose:function(){for(var t=0,i=e.length;i>t;t++)e[t].unbind();
n=e=null}};return disposeList.push(t),t}();
    var log={renderComplete:function(n){if(n){var e=new Image;e.src="http://vs-static.baidu.com/edu/w.gif?Logtype=edushow&subqid="+n.subqid+"&qid="+n.session_id+"&srcid="+n.srcid+"&sid="+n.sid+"&edusid="+n.edusid}}};

    var initCard = function () {
        anti.init(cardElement, cardData.sign_time);
        log.renderComplete(cardData);
    };

    card.ready(initCard);

});
</script>

{%/block%}