{%extends 'c_base.tpl'%}

{%block name='data_modifier'%}
    {%$escaped_card_name='ecl-edu-examine-sign'%}
    {%$extData.feData.hasShowURLGap=true%}

{%/block%}

{%block name='title'%}
    <h3 class="t {%$escaped_card_name%}-title">
        <a href="{%$tplData.queryurl%}" target="_blank">
            {%$tplData.title%}
        </a>
    </h3>
{%/block%}

{%block name='foot'%}
    {%strip%}
    <p class="c-showurl">
        jiaoyu.baidu.com
    </p>
    {%/strip%}
{%/block%}

{%block name='content'%}

<style>
.ecl-edu-examine-sign-title{margin-top:0}.ecl-edu-examine-sign-container{line-height:1.7692307692;position:relative}.ecl-edu-examine-sign-container h4,.ecl-edu-examine-sign-container h5{margin:0;font-weight:normal}.ecl-edu-examine-sign-no-data{padding:2.5em 1em;text-align:center}.zx-tip-layer{display:block}
</style>



{%strip%}
<div class="{%$escaped_card_name%}-container">

    {%foreach $tplData.edu.list_data as $item%}
    <div>
        <strong>{%$item.label%}：</strong>
        {%foreach $item.list as $item_info%}

        <span class="c-gap-right">

        {%if $item_info.text_url%}
        <a href="{%$item_info.text_url%}" target="_blank">
        {%/if%}

        {%$item_info.text%}

        {%if $item_info.text_url%}
        </a>
        {%/if%}

        {%if isset($item_info.is_new) AND $item_info.is_new%}
        <i class="c-text c-text-danger c-gap-icon-left-small">新</i>
        {%/if%}

        {%if isset($item_info.is_hot) AND $item_info.is_hot%}
        <i class="c-text c-text-danger c-gap-icon-left-small">热</i>
        {%/if%}

        </span>

        {%/foreach%}
    </div>
    {%/foreach%}

</div>
{%/strip%}

<script data-compress="off">
A.setup('EDU_DATA', {
    card: '{%$escaped_card_name%}',
    session_id: '{%$extData.sessionID%}',
    query: '{%$extData.originQuery%}',
    p_query: '{%$extData.pQuery%}',
    sid: '{%$extData.sid%}',
    subqid: '{%$extData.subqid%}',
    edusid: '{%$extData.edusid%}',
    srcid: '{%$extData.srcid%}',
    filters: '{%$tplData.class_json%}',
    sign_time: '{%$tplData.signtime%}',
    server_time: '{%$tplData.servertime%}',
    class_id: '{%$tplData.cur_class_id%}',
    class_list: {%json_encode($tplData.class_list)%},
    common_params: {%json_encode($tplData.common_params)%}
});
</script>

<script>

A.setup(function () {

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

        data.init({
            tags: '',
            mode: 0,
            list: []
        });

        anti.addAnti(lib.query('container'));
        log.renderComplete(cardData);
    };

    card.ready(initCard);

});

</script>

{%/block%}