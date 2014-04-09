{%extends 'c_base.tpl'%}

{%block name='data_modifier'%}
    {%$escaped_card_name='ecl-edu-examine'%}
    {%$extData.feData.hasShowURLGap=true%}

{%/block%}

{%block name='title'%}
    <h3 class="t {%$escaped_card_name%}-title c-gap-bottom-small">
        <a href="{%$tplData.queryurl%}" target="_blank">
            {%$tplData.title%}
        </a>
    </h3>
{%/block%}

{%block name='foot'%}
    {%strip%}
    <p class="c-showurl c-gap-top-small">
        jiaoyu.baidu.com
        <a href="http://baozhang.baidu.com/guarantee/" class="c-icon c-icon-bao c-gap-icon-left-small" target="_blank"></a>
    </p>
    {%/strip%}
{%/block%}

{%block name='content'%}

<style>
{%fe_fn_c_css css='tabs'%}
.ecl-edu-examine-title{margin-top:0}.ecl-edu-examine-container{line-height:1.7692307692;position:relative}.ecl-edu-examine-container h4,.ecl-edu-examine-container h5{margin:0;font-weight:normal}.ecl-edu-examine-no-data{padding:2.5em 1em;text-align:center}.zx-tip-layer{display:block}.ecl-edu-examine-line-info-list a,.ecl-edu-examine-line-info-list a em{text-decoration:none}.ecl-edu-examine-line-info-list a:hover,.ecl-edu-examine-line-info-list a:hover em{text-decoration:underline}.ecl-edu-examine-line-info-list li{border-bottom:1px solid #ececec;padding:.6153846154em 0;position:relative;line-height:0;*zoom:1}
.ecl-edu-examine-line-info-list .ecl-edu-examine-more-info{border-bottom:0;text-align:center;padding-top:.7692307692em;padding-bottom:0;line-height:1em}.ecl-edu-examine-line-info-list .ecl-edu-examine-more-info a,.ecl-edu-examine-line-info-list .ecl-edu-examine-more-info a em{text-decoration:underline!important;*line-height:1.1em}.ecl-edu-examine-line-info-col-1,.ecl-edu-examine-line-info-col-2,.ecl-edu-examine-line-info-col-3,.ecl-edu-examine-line-info-col-last{color:#666;display:inline-block;*display:inline;*zoom:1;line-height:1.2307692308em;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}
.ecl-edu-examine-line-info-col-last{position:absolute;right:0;top:50%;margin-top:-0.6153846154em}.c-tip-con .c-tip-cer{width:354px;color:#666;margin:0 10px 1px 10px}.opui-honourCard{font-size:12px;color:#666;line-height:1.5em;width:354px}.opui-honourCard-score{width:60px;padding:4px 2px 4px 2px;text-align:center;float:left}.opui-honourCard-score em{display:block;font-size:37px;line-height:37px;color:#8e8d8d;font-family:arial;font-style:normal}.opui-honourCard-info{background:#f5f5f5;overflow:hidden;zoom:1}.opui-honourCard-title a{*font-family:Microsoft YaHei}
.opui-honourCard-title a i{position:relative;left:-65px;*left:-68px}.opui-honourCard ol{list-style:none;margin:0;padding:0;float:left;_padding-top:5px}.opui-honourCard li{height:20px;line-height:20px;padding-left:20px;_vertical-align:bottom}.opui-honourCard li i{vertical-align:middle;_vertical-align:bottom}.opui-honourCard-selected{color:#2b2a2a;font-weight:bold;background:url(http://www.baidu.com/cache/aladdin/ui/honourCard/img/honourCard.png) no-repeat 3px 5px;*background-position:3px 2px}.ecl-edu-examine-container .c-loading{margin:0 auto}
.ecl-edu-examine-container .c-tabs-nav-selected{font-weight:bold}.ecl-edu-examine-line-info-list{*margin-top:2px}.ecl-edu-examine-line-info-ksxx .ecl-edu-examine-line-info-col-1,.ecl-edu-examine-line-info-bkzn .ecl-edu-examine-line-info-col-1,.ecl-edu-examine-line-info-ksxx .ecl-edu-examine-line-info-col-2,.ecl-edu-examine-line-info-bkzn .ecl-edu-examine-line-info-col-2,.ecl-edu-examine-line-info-ksxx .ecl-edu-examine-line-info-col-3,.ecl-edu-examine-line-info-bkzn .ecl-edu-examine-line-info-col-3,.ecl-edu-examine-line-info-ksxx .ecl-edu-examine-line-info-col-last,.ecl-edu-examine-line-info-bkzn .ecl-edu-examine-line-info-col-last{color:#000;margin-right:1.2em;width:auto}
.ecl-edu-examine-line-info-ksxx .ecl-edu-examine-line-info-col-last,.ecl-edu-examine-line-info-bkzn .ecl-edu-examine-line-info-col-last{position:relative;top:0;margin-top:0}.ecl-edu-examine-line-info-lnzt .ecl-edu-examine-line-info-col-last,.ecl-edu-examine-line-info-rmwd .ecl-edu-examine-line-info-col-last,.ecl-edu-examine-line-info-bkzl .ecl-edu-examine-line-info-col-last,.ecl-edu-examine-line-info-rmkc .ecl-edu-examine-line-info-col-last,.ecl-edu-examine-line-info-mnst .ecl-edu-examine-line-info-col-last{width:11em;text-align:left}
.ecl-edu-examine-line-info-bkzl .ecl-edu-examine-line-info-col-1{width:28em}.ecl-edu-examine-line-info-bkzl .ecl-edu-examine-line-info-col-2{width:7em}.ecl-edu-examine-line-info-0 .ecl-edu-examine-line-info-col-1,.ecl-edu-examine-line-info-0 .ecl-edu-examine-line-info-col-2,.ecl-edu-examine-line-info-0 .ecl-edu-examine-line-info-col-3,.ecl-edu-examine-line-info-0 .ecl-edu-examine-line-info-col-last{color:#000;margin-right:1.3em;width:auto}.ecl-edu-examine-line-info-0 .ecl-edu-examine-line-info-col-last{position:relative;top:0;margin-top:0}
.ecl-edu-examine-line-info-1 .ecl-edu-examine-line-info-col-last,.ecl-edu-examine-line-info-2 .ecl-edu-examine-line-info-col-last,.ecl-edu-examine-line-info-3 .ecl-edu-examine-line-info-col-last,.ecl-edu-examine-line-info-4 .ecl-edu-examine-line-info-col-last,.ecl-edu-examine-line-info-5 .ecl-edu-examine-line-info-col-last{width:11em}.ecl-edu-examine-line-info-3 .ecl-edu-examine-line-info-col-1{width:28em}.ecl-edu-examine-line-info-3 .ecl-edu-examine-line-info-col-2{width:7em}
</style>


{%function name=col_item item=null col=''%}{%strip%}

    <span class="{%$escaped_card_name%}-line-info-col-{%$col|escape:'html'%}">

    {%if $item.label%}
        {%$item.label%}：
    {%/if%}

    {%if $item.title_url%}

    <a href="{%$item.title_url%}" target="_blank">
        {%$item.title_cut%}
    </a>

    {%else%}

    <span>
        {%$item.title_cut%}
    </span>

    {%/if%}

    {%if isset($item.is_new) AND $item.is_new%}
    <i class="c-text c-text-danger c-gap-icon-left-small">新</i>
    {%/if%}

    {%if isset($item.is_hot) AND $item.is_hot%}
    <i class="c-text c-text-danger c-gap-icon-left-small">热</i>
    {%/if%}

    {%if $item.vcard%}
        {%$item_vcard = json_decode($item.vcard, true)%}

        {%if $item_vcard.value2%}
        <a class="c-icon c-icon-v c-icon-v{%$item_vcard.value2%} c-gap-icon-left-small" data-tooltips="bl"
                                data-renzheng='{%$item.vcard|escape:'html'%}'></a>
        {%/if%}
    {%/if%}

    </span>

{%/strip%}{%/function%}


{%strip%}
<div class="{%$escaped_card_name%}-container c-border">

    <div class="c-tabs">

        <ul class="c-tabs-nav"  data-click="{'fm':'beha', 'rsv_edu-click': '切换tab'}">
            {%foreach $tplData.class_list as $item%}

            <li class="c-tabs-nav-li {%if $tplData.cur_class_id == $item.class_id%}
                c-tabs-nav-selected
            {%/if%}
            ">
                {%$item.class_name%}
            </li>

            {%if !$item@last%}
            <li class="c-tabs-nav-sep"></li>
            {%/if%}

            {%/foreach%}
        </ul>

        {%foreach $tplData.class_list as $item%}

        <div class="c-tabs-content {%$escaped_card_name%}-line-info-{%if $item.class_abbr%}{%$item.class_abbr%}{%else%}{%$item@index%}{%/if%}" style="display:none;">
            {%if $item.class_id == $tplData.cur_class_id%}
            <ul class="{%$escaped_card_name%}-line-info-list">

                {%$info_list = $tplData.edu.info_list%}

                {%foreach $info_list as $item_row %}
                <li>
                {%if count($item_row) > 1%}
                    {%$item_last = array_pop($item_row)%}
                {%else%}
                    {%$item_last = null%}
                {%/if%}

                    {%foreach $item_row as $item_child%}

                    {%col_item item=$item_child col="{%$item_child@index + 1%}"%}

                    {%/foreach%}

                {%if $item_last%}
                    {%col_item item=$item_last col='last'%}
                {%/if%}

                </li>
                {%/foreach%}

                <li class="{%$escaped_card_name%}-more-info">
                    <a href="{%$tplData.edu.more_title_url%}" target="_blank">
                        {%$tplData.edu.more_title%}
                    </a>
                </li>
            </ul>
            {%else%}
            <i class="c-loading"></i>
            {%/if%}
        </div>

        {%/foreach%}

    </div>

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
    var tip=function(){function n(n){e.init({container:card.container,triggers:n})}var e,t={init:function(t){e?n(t):require(["pszx/tip"],function(i){e=i,n(t)})},dispose:function(){e.dispose()}};return disposeList.push(t),t}();

    var initCard = function () {

        var ajax=function(){function n(n){for(var e in t){var i=t[e],r=e,o=n[e];null==o&&(o=data.get(e)),r!==i.name&&(r=i.name,e in n&&delete n[e]),i.handler&&(o=i.handler(o)),n[r]=o}}var e={list:"请求数据异常，请稍后重试"},t={session_id:{name:"sessionID"},p_query:{name:"pQuery"},query:{name:"originQuery"},sid:{name:"sid"},subqid:{name:"subqid"},mode:{name:"mode"},srcid:{name:"srcid"},class_id:{name:"classId"}},i="ecomui/edu?controller=Bws&action=queryFake",r={request:function(t,r){t=t||{},$.extend({},t),n(t);var o=data.get("common_params");
$.isPlainObject(o)&&$.extend(t,o),t.pQuery&&(t.originQuery=t.pQuery),lib.get(i,t,function(n){var t={};if(n&&0===n.status){var i=n.data;t.class_id=i.cur_class_id,t.sign_time=i.signtime,t.list=i.edu.info_list.length>0?i.edu:"抱歉，暂未找到相关信息，请您查看其他分类。"}else t=$.extend({},e);data.set(t),data.fire(),"function"==typeof r&&r()})},dispose:function(){e=t=n=i=null}};return disposeList.push(r),r}();
        var dataList=function(){var n={lineInfo:function(e){var t,i="<li>",r=lib.getClass("line-info-col-");e.length>1&&(t=e.pop());for(var a=0,o=e.length;o>a;a++)i+=n.lineItem(e[a],r+(a+1));return t&&(i+=n.lineItem(t,r+"last")),i+="</li>"},lineItem:function(n,e){var t='<span class="'+e+'">';if(n.label&&(t+=n.label+"："),t+=n.title_url?'<a href="'+n.title_url+'" target="_blank">'+n.title_cut+"</a>":"<span>"+n.title_cut+"</span>",n.is_new&&(t+='<i class="c-text c-text-danger c-gap-icon-left-small">新</i>'),n.is_hot&&(t+='<i class="c-text c-text-danger c-gap-icon-left-small">热</i>'),n.vcard){var i=$.parseJSON(n.vcard);
i.value2&&(t+='<a class="c-icon c-icon-v c-icon-v'+i.value2+' c-gap-icon-left-small" '+'data-tooltips="bl" '+"data-renzheng='"+n.vcard+"'>"+"</a>")}return t+="</span>"},more:function(n){return'<li class="'+lib.getClass("more-info")+'">'+'<a href="'+n.more_title_url+'" target="_blank">'+n.more_title+"</a>"+"</li>"}},e={render:function(e){var t=data.get("list");if("string"==typeof t)e.addClass(lib.getClass("no-data")).html(t);else{for(var i='<ul class="'+lib.getClass("line-info-list")+'">',r=t.info_list,a=0,o=r.length;o>a;a++)i+=n.lineInfo(r[a]);
i+=n.more(t),i+="</ul>",e.removeClass(lib.getClass("no-data")).html(i)}tip.init({renzheng:"c-icon-v"})},dispose:function(){n=null}};return disposeList.push(e),e}();

        data.init({
            tags: '',
            mode: 0,
            list: []
        });

        A.use('tabs5', function(){
            A.ui.tabs5(card.qq('c-tabs'), {
                onChange: function (index, target) {
                    var element = $(target);
                    var target = data.get('class_list')[index];

                    if (element.find('ul').size() === 0) {
                        ajax.request(
                        {
                            class_id: target.class_id
                        },
                        function () {
                            dataList.render(element);
                            anti.addAnti(element);
                        });
                    }
                }
            });
        });

        tip.init({ renzheng: 'c-icon-v' });

        anti.addAnti(lib.query('line-info-list'));
        log.renderComplete(cardData);
    };

    card.ready(initCard);

});

</script>

{%/block%}