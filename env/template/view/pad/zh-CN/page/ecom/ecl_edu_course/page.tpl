{%extends 'c_base.tpl'%}

{%block name='data_modifier'%}

    {%$escaped_card_name = 'ecl-edu-course'%}
    {%$escaped_default_logo = 'http://www.baidu.com/cache/biz/ecom/edu/org-default.jpg'%}

{%/block%}


{%block name="title"%}
    <h4 class="t {%$escaped_card_name%}-title c-gap-bottom-small">
        <a href="{%$tplData.queryurl%}" target="_blank">
            {%$tplData.title%}
        </a>
    </h4>
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
{%fe_fn_c_css css="btn"%}
.ecl-edu-course-title{font-size:1.17em;margin-top:0}.ecl-edu-course-container{line-height:1.7692307692;position:relative}.ecl-edu-course-container h4,.ecl-edu-course-container h5{margin:0;font-weight:normal}.ecl-edu-course-no-data{padding:2.5em 1em;text-align:center}.zx-tip-layer{display:block;position:absolute}.ecl-edu-course-filter{height:1.307692307692308em;overflow:hidden;position:relative;*zoom:1}.ecl-edu-course-filter:before,.ecl-edu-course-filter:after{display:table;line-height:0;content:""}
.ecl-edu-course-filter:after{clear:both}.ecl-edu-course-tag-type,.ecl-edu-course-tag-list a,.ecl-edu-course-tag-list i,.ecl-edu-course-more-tag{line-height:1em;padding:.1538461538461538em 0;*padding-bottom:1px;*padding-top:3px}.ecl-edu-course-opened{height:auto;overflow:visible}.ecl-edu-course-tag-type{float:left;display:inline-block;*display:inline;*zoom:1}.ecl-edu-course-tag-list{float:left;margin-top:-0.3076923076923077em}.ecl-edu-course-tag-list li{float:left;margin-top:.3076923076923077em;white-space:nowrap;line-height:0}
.ecl-edu-course-tag-list a{display:inline-block;*display:inline;*zoom:1;color:#00c;padding-left:.8em;padding-right:.8em;text-decoration:none}.ecl-edu-course-tag-list .ecl-edu-course-active{background-color:#388bff;color:#FFF}.ecl-edu-course-tag-list i{display:inline-block;*display:inline;*zoom:1;color:#d1d2d3;font-style:normal;margin:0 .5em}.ecl-edu-course-more-tag{cursor:pointer;position:absolute;top:0;right:0;width:3.1em}.ecl-edu-course-city-btn{display:inline-block;*display:inline;*zoom:1;border:1px solid #d8d8d8;border-top-color:#999;border-left-color:#b2b2b2;background-color:#FFF;cursor:pointer;height:1.692307692307692em;vertical-align:top}
.ecl-edu-course-city-btn:before,.ecl-edu-course-city-btn:after{display:table;line-height:0;content:""}.ecl-edu-course-city-btn:after{clear:both}.ecl-edu-course-city-text{float:left;padding:0 .6153846154em;height:1.692307692307692em;line-height:1.692307692307692em;vertical-align:top}.ecl-edu-course-city-dropdown{float:left;background-color:#f6f6f6;border-left:1px solid #d9d9d9;width:18px;height:1.692307692307692em;line-height:1.692307692307692em;text-align:center;vertical-align:top}
.ecl-edu-course-city-dropdown .c-icon{*margin-top:4px}.ecl-edu-course-city-layer{border:1px solid #bfbfbf;background-color:#FFF;display:none;line-height:1.2307692308em;padding:.7692307692em;width:24.2307692308em;position:absolute;right:0}.ecl-edu-course-city-layer strong{font-weight:normal;color:#888}.ecl-edu-course-city-layer ul{margin:0;padding:0}.ecl-edu-course-city-layer li{display:inline-block;*display:inline;*zoom:1}.ecl-edu-course-city-layer a{display:inline-block;*display:inline;*zoom:1;padding:0 .5em;text-decoration:none}
.ecl-edu-course-city-layer a:hover{color:#FFF;background-color:#2c99ff;text-decoration:none}.ecl-edu-course-city-layer a.ecl-edu-course-active{color:#FFF;background-color:#2c99ff}.ecl-edu-course-city-layer ul.ecl-edu-course-active{display:block}.ecl-edu-course-city-hot,.ecl-edu-course-city-tab-nav,.ecl-edu-course-city-tab-content{border-top:1px solid #DDD;margin-top:.6153846154em}.ecl-edu-course-city-hot{padding-top:.6153846154em}.ecl-edu-course-city-hot ul{margin-left:-1em}.ecl-edu-course-city-hot li{margin-left:1em}
.ecl-edu-course-city-tab-nav,.ecl-edu-course-city-tab-content{padding-top:.2307692308em}.ecl-edu-course-city-tab-nav li,.ecl-edu-course-city-tab-content li{margin-top:.3846153846em}.ecl-edu-course-city-tab-nav{font-size:.9230769231em;font-family:arial}.ecl-edu-course-city-tab-nav ul{margin-left:-0.8em}.ecl-edu-course-city-tab-nav li{margin-left:.8em}.ecl-edu-course-city-tab-nav a{padding:0;width:1.5384615385em;text-align:center}.ecl-edu-course-city-tab-content ul{display:none;margin-left:-1em}.ecl-edu-course-city-tab-content li{width:5.3em;margin-left:1em}
.ecl-edu-course-city-tab-content a{overflow:hidden;text-overflow:ellipsis;white-space:nowrap;max-width:5em}.ecl-edu-course-pager{text-align:center;line-height:0;*zoom:1}.ecl-edu-course-ui-pager{display:inline-block;*display:inline;*zoom:1}.ecl-edu-course-ui-pager a{border:1px solid #CCC;color:#03C;float:left;height:1.538461538461538em;line-height:1.538461538461538em;padding:0 .4615384615384615em;margin-right:.4615384615384615em;text-decoration:none;overflow:hidden}.ecl-edu-course-ui-pager a em{position:absolute;top:50%;margin-top:-5px}
.ecl-edu-course-ui-pager a:hover{background-color:#eff4fa;text-decoration:none}.ecl-edu-course-ui-pager .ecl-edu-course-ui-pager-current{font-weight:bold;border-color:#FFF;color:#666;cursor:default}.ecl-edu-course-ui-pager .ecl-edu-course-ui-pager-current:hover{background-color:#FFF}.ecl-edu-course-ui-pager .ecl-edu-course-ui-pager-ellipsis{border-color:#FFF}.ecl-edu-course-ui-pager .ecl-edu-course-ui-pager-ellipsis:hover{background-color:#FFF;cursor:default}.ecl-edu-course-ui-pager .ecl-edu-course-ui-pager-disabled{color:#999;cursor:default}
.ecl-edu-course-ui-pager .ecl-edu-course-ui-pager-prev{padding-left:1.2em;position:relative;line-height:1.692307692307692em \9}.ecl-edu-course-ui-pager .ecl-edu-course-ui-pager-prev em{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/edu/img/icon_20131011.gif') no-repeat -1px -12px;width:6px;height:10px;left:.3846153846153846em}.ecl-edu-course-ui-pager .ecl-edu-course-ui-pager-next{padding-right:1.2em;position:relative;line-height:1.692307692307692em \9}.ecl-edu-course-ui-pager .ecl-edu-course-ui-pager-next em{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/edu/img/icon_20131011.gif') no-repeat -6px -12px;width:6px;height:10px;right:.3846153846153846em}
.c-tip-con .c-tip-cer{color:#666;margin:0 10px 1px 10px}.opui-honourCard{color:#666;line-height:1.5em}.opui-honourCard-score{width:60px;padding:4px 2px 4px 2px;text-align:center;float:left}.opui-honourCard-score em{display:block;font-size:37px;line-height:37px;color:#8e8d8d;font-family:arial;font-style:normal}.opui-honourCard-info{background:#f5f5f5;overflow:hidden}.opui-honourCard-title a i{position:relative;left:-70px}.opui-honourCard ol{list-style:none;margin:4px 0 0;padding:0;float:left}.opui-honourCard li{height:20px;line-height:20px;padding-left:20px}
.opui-honourCard li i{vertical-align:middle}.opui-honourCard-selected{color:#2b2a2a;font-weight:bold;background:url(http://www.baidu.com/cache/aladdin/ui/honourCard/img/honourCard.png) no-repeat 3px 5px}.ecl-edu-course-container{padding-bottom:.3846153846153846em}.ecl-edu-course-filter{padding-top:.3846153846em;margin-bottom:.8em}.ecl-edu-course-tag-list{width:28em}.ecl-edu-course-tag-list a{padding-left:.5em;padding-right:.5em}.ecl-edu-course-city-selector{position:absolute;right:.7692307692307692em;top:.7692307692307692em;z-index:2}
.ecl-edu-course-city-layer{top:1.692307692307692em}.ecl-edu-course-data-list{*zoom:1}.ecl-edu-course-data-list:before,.ecl-edu-course-data-list:after{display:table;line-height:0;content:""}.ecl-edu-course-data-list:after{clear:both}.ecl-edu-course-data-list li{float:left;width:100%;border-bottom:1px solid #f3f3f3;padding-bottom:.3846153846153846em;margin-top:-0.3076923076923077em}.ecl-edu-course-data-list h5{font-size:1.1em}.ecl-edu-course-data-list .c-span17 .ecl-edu-course-wrapper{margin-right:1.076923076923077em}
.ecl-edu-course-data-list .c-span-last{padding-top:1.846153846153846em;text-align:right;line-height:0}.ecl-edu-course-data-list .c-span-last .ecl-edu-course-wrapper{display:inline-block;*display:inline;*zoom:1;width:5.538461538461538em;text-align:center}.ecl-edu-course-data-list .c-span-last strong{color:#ffb400;font-size:1.1em;line-height:1em}.ecl-edu-course-data-list .c-span-last .c-btn{display:block;margin-top:.5384615384615385em;font-size:13px}.ecl-edu-course-org-logo{border:1px solid #f0f0f0;display:block;padding:1px;line-height:0;margin-top:.3076923076923077em}
.ecl-edu-course-org-logo img{width:59px;height:59px}.ecl-edu-course-last-row{_margin-top:5px}.ecl-edu-course-course-actions{float:right}a.ecl-edu-course-icon-link{color:#666;margin-left:.3846153846153846em}a.ecl-edu-course-icon-link .c-icon{cursor:pointer;margin-right:.1538461538461538em}.ecl-edu-course-address .c-icon{margin-right:.1538461538461538em}
</style>

{%strip%}
<div class="{%$escaped_card_name%}-container c-border">

    <div class="{%$escaped_card_name%}-filter">
        <strong class="{%$escaped_card_name%}-tag-type"></strong>
        <ul class="{%$escaped_card_name%}-tag-list" data-click="{'fm': 'beha'}">
        </ul>
    </div>

    <div class="{%$escaped_card_name%}-city-selector"
        data-click="{'fm': 'beha'}">

        <span class="{%$escaped_card_name%}-city-btn OP_LOG_BTN"
            data-click="{'fm': 'beha'}">

            <span class="{%$escaped_card_name%}-city-text">
                {%$tplData.curcity|escape:'html'%}
            </span>

            <span class="{%$escaped_card_name%}-city-dropdown">
                <i class="c-icon c-icon-triangle-down"></i>
            </span>

        </span>
        <div class="{%$escaped_card_name%}-city-layer"></div>
    </div>


    {%if count($tplData.edu) > 0%}
    <ul class="{%$escaped_card_name%}-data-list" >

        {%foreach $tplData.edu as $item%}
        <li class="c-row c-gap-bottom" {%if isset($item.debug)%} data-debug="{%$item.debug_info%}"{%/if%}>
            <div class="c-span3">
                <a href="{%$item.orglogo_url%}" class="{%$escaped_card_name%}-org-logo" target="_blank">
                    {%if $item.orglogo%}
                    <img src="{%$item.orglogo|escape:'html'%}" />
                    {%else%}
                    <img src="{%$escaped_default_logo%}" />
                    {%/if%}
                </a>
            </div>

            <div class="c-span17">
                <div class="{%$escaped_card_name%}-wrapper">
                    <div>
                        <h5 data-click="{'rsv_edu-click': 'coursetitle{%$item@index%}'}">
                            <a href="{%$item.titleurl%}" target="_blank">
                                {%$item.ori_title_cut_2%}
                            </a>
                            {%if $item.reserve_url%}
                            <a href="{%$item.reserve_url%}" target="_blank" class="c-text c-text-warning c-gap-icon-left-small zx-edu-coupon" data-coupon="{'text': '{%$item.reserve_desc%}', 'a': {'url': '{%$item.reserve_url%}', 'text': '立即免费预约'}}">惠</a>
                            {%/if%}
                        </h5>
                    </div>

                    <div>

                        简介：{%$item.intro%}

                        {%if $item.addressurl%}
                        <a href="{%$item.addressurl%}" class="{%$escaped_card_name%}-address c-gap-icon-left-small" target="_blank">
                        {%else%}
                        <span class="{%$escaped_card_name%}-icon-link c-gap-icon-left-small">
                        {%/if%}

                            <i class="c-icon c-icon-location-blue"></i>{%$item.address_2%}

                        {%if $item.addressurl%}
                        </a>
                        {%else%}
                        </span>
                        {%/if%}

                    </div>

                    <div class="{%$escaped_card_name%}-last-row">
                        <div class="{%$escaped_card_name%}-course-actions">

                            {%if $item.bridgeurl%}
                            <a class="{%$escaped_card_name%}-icon-link" href="{%$item.bridgeurl%}" target="_blank">
                                <i class="c-icon c-icon-qa"></i>咨询
                            </a>
                            {%/if%}

                            {%if $item.videourl%}
                            <a class="{%$escaped_card_name%}-icon-link" href="{%$item.videourl%}" target="_blank">
                                <i class="c-icon c-icon-ting"></i>试听
                            </a>
                            {%/if%}

                            {%if $item.reserve_url%}
                            <a class="{%$escaped_card_name%}-icon-link" href="{%$item.reserve_url%}" target="_blank">
                                <i class="c-icon c-icon-calendar-blue"></i>预约
                            </a>
                            {%/if%}

                        </div>


                        机构：

                        <a href="{%$item.orgurl|escape:'html'%}" target="_blank">
                            {%$item.orgname|escape:'html'%}
                        </a>

                        {%if $item.vcard and ($item.vcard != "[]")%}
                            {%$item_vcard = json_decode($item.vcard, true)%}

                            {%if isset($item_vcard.value2)%}
                            <a class="c-icon c-icon-v c-icon-v{%$item_vcard.value2%} c-gap-icon-left-small" data-tooltips="bl"
                                data-renzheng='{%$item.vcard|escape:'html'%}'></a>
                            {%/if%}
                        {%/if%}

                    </div>
                </div>
            </div>
            <div class="c-span4 c-span-last">
                <div class="{%$escaped_card_name%}-wrapper">
                    {%if $item.cost == '暂无'%}
                        {%$item.cost = ''%}
                    {%/if%}
                    <strong>
                    {%if $item.saleprice%}
                        {%$item.saleprice|replace: "&yen;":"¥"|escape:'html'%}
                    {%elseif $item.cost%}
                        {%$item.cost|replace: "&yen;":"¥"|escape:'html'%}
                    {%else%}
                        &nbsp;
                    {%/if%}
                    </strong>

                    <a class="c-btn c-btn-mini c-btn-primary" href="{%$item.detailurl|escape:'html'%}" target="_blank">
                        查看详情
                    </a>
                </div>
            </div>
        </li>
        {%/foreach%}

    </ul>
    {%/if%}

    <div class="{%$escaped_card_name%}-pager">
        <div class="{%$escaped_card_name%}-pagination c-gap-top c-gap-bottom-small" data-click="{'fm':'beha', 'rsv_edu-click': '翻页'}">

        </div>
    </div>
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
    filters: {%$tplData.filtersjson%},
    total: '{%$tplData.totalpage%}',
    page: '{%$tplData.page%}',
    sign_time: '{%$tplData.signtime%}',
    server_time: '{%$tplData.servertime%}',
    common_params: {%json_encode($tplData.common_params)%}
});
</script>

<script>

A.setup(function () {

    'use strict';

    var card = this;

    // 卡片通用逻辑
    var cardData=card.data.EDU_DATA,cardElement=card.container,CLASS_CARD=cardData.card,CLASS_ACTIVE=CLASS_CARD+"-active",CLASS_OPENED=CLASS_CARD+"-opened",CLASS_PAGER=CLASS_CARD+"-ui-pager",disposeList=[];card.dispose=function(){$.each(disposeList,function(a,d){d.dispose()}),card=cardData=cardElement=disposeList=null};
    var lib=function(){var n=CLASS_CARD+"-",e={contains:function(n,e){return n===e?!0:$.contains(n,e)},post:function(n,e,r){for(var t in e)(""===e[t]||null==e[t])&&delete e[t];$.post(n,e,r,"json")},get:function(n,e,r){for(var t in e)(""===e[t]||null==e[t])&&delete e[t];$.get(n,e,r,"json")},array2Object:function(n,e,r){var t={};return $.each(n,function(n,o){$.isPlainObject(o)?e&&(t[o[e]]=r?o[r]:o):t[o]=1}),t},renderTpl:function(n,e){return e=e||{},n.replace(/\$\{(.+?)\}/g,function(n,r){return null==e[r]?"":e[r]})
},backToTop:function(){window.scrollTo(0,cardElement.offsetTop)},json2Query:function(n){var e=[];if(n)for(var r in n)e.push(r+"="+n[r]);return e.join("&")},query2Json:function(n){for(var e=n.split("&"),r={},t=0;e.length>t;t++){var o=e[t];if(o){var a=o.indexOf("="),i=0>a?decodeURIComponent(o):decodeURIComponent(o.slice(0,a)),c=0>a?!0:decodeURIComponent(o.slice(a+1));r.hasOwnProperty(i)?c!==!0&&(r[i]=[].concat(r[i],c)):r[i]=c}}return r},updateURL:function(n,r){var t=n.indexOf("?");if(t>=0){var o=n.substr(0,t),a=n.substr(t+1),i=e.query2Json(a);
$.extend(i,r),a=e.json2Query(i),n=o+"?"+a}return n},$:function(n){return $(n,cardElement)},query:function(n,r){return r||(n=e.getClass(n)),e.$("."+n)},getClass:function(e){return n+e},dispose:function(){n=null}};return disposeList.push(e),e}();
    var data=function(){var n={},r={},t={},e={init:function(n){for(var r in cardData)e.set(r,cardData[r]);for(r in n)e.set(r,n[r])},set:function(t,o){if("string"==typeof t)void 0!==n[t]&&(r[t]=n[t]),n[t]=void 0!==o?o:null;else if($.isPlainObject(t))for(var i in t)e.set(i,t[i])},get:function(r){return n[r]},ischange:function(t){var e=n[t],o=r[t];return void 0!==o&&e!==o},onchange:function(n,r){var e=t[n];$.isArray(e)||(e=[],t[n]=e),e.push(r)},fire:function(){for(var o in n)if(e.ischange(o)){var i=t[o];if(i)for(var a=0,c=i.length;c>a;a++)"function"==typeof i[a]&&i[a]();
r[o]=void 0}},dispose:function(){n=r=t=null}};return disposeList.push(e),e}();
    var anti=function(){var n=function(n){function e(e){var t=window.event||e;for(C=t.target||t.srcElement;C&&"A"!=C.tagName;)if(C=C.parentNode,C===n)return!1;C&&(h=(new Date).getTime(),s=9999,f=t.clientX,d=t.clientY,p=m?h-m:0,r()&&o())}function t(){A=(new Date).getTime(),s=A-h,r()&&o()}function i(n){var e=window.event||n;E+=1,v||(v=e.clientX),l||(l=e.clientY),m=(new Date).getTime()}function r(){if(c=0,C){if(g=/\?url\=([^\.]+)\./.exec(C.href)){for(var n=0;E*L%99+9>n;++n)c+=g[1].charCodeAt(s*n%g[1].length);return!0
}return!1}}function o(){var n="&ck="+[c,E,s,f,d,v,l,p].join(".");if(C.href){var e=C.href;-1==e.indexOf("&ck=")?C.href+=n:C.href=e.replace(/&ck=[\w.]*/,n)}}function a(e,t){for(var i,r=0;i=e[r];r++)window.attachEvent?n.attachEvent("on"+i,t[r]):window.addEventListener?n.addEventListener(i,t[r],!1):n["on"+i]=t[r],S[i]=t[r]}function u(e){for(var t,i=0;t=e[i];i++)window.detachEvent?n.detachEvent("on"+t,S[t]):window.addEventListener?n.removeEventListener(t,S[t],!1):n["on"+t]=function(){}}var c,s,f,d,v,l,p,g,h,m,A,C,w="EC_ZHIXIN",L=0,E=0;
s=f=d=v=l=p=g=h=m=A=C=0;var S={};return{getAntiTag:function(){return w},setTimesign:function(n){L=n},bind:function(){a(["mouseover","mousedown","mouseup"],[i,e,t])},unbind:function(){u(["mouseover","mousedown","mouseup"]),n=null}}},e=[],t={init:function(t,i){t.jquery&&(t=t[0]);var r=n(t);r.bind(),r.setTimesign(i),e.push(r)},addAnti:function(t,i){t.jquery&&(t=t[0]);var r=n(t);r.bind(),r.setTimesign(data.get("sign_time")),e.push(r),i&&data.onchange("sign_time",function(){r.setTimesign(data.get("sign_time"))})},dispose:function(){for(var t=0,i=e.length;i>t;t++)e[t].unbind();
n=e=null}};return disposeList.push(t),t}();
    var log={renderComplete:function(n){if(n){var e=new Image;e.src="http://vs-static.baidu.com/edu/w.gif?Logtype=edushow&subqid="+n.subqid+"&qid="+n.session_id+"&srcid="+n.srcid+"&sid="+n.sid+"&edusid="+n.edusid}}};
    var tip=function(){function n(n){e.init({container:card.container,triggers:n})}var e,t={init:function(t){e?n(t):require(["pszx/tip"],function(i){e=i,n(t)})},dispose:function(){e.dispose()}};return disposeList.push(t),t}();
    var pager=function(){var n,e={showAlways:0,showCount:6,padding:0,lang:{prev:"<em></em>上一页",next:"下一页<em></em>",ellipsis:"..."}},t=lib.query("pagination"),i={init:function(){require(["zxui/ui/Pager"],function(r){var o={main:t[0],prefix:CLASS_PAGER};$.extend(o,e),n||(n=new r(o),i.render())});var r=!1,o=function(){data.ischange("page")&&data.ischange("total")?r?r=!1:(r=!0,i.render()):i.render()};data.onchange("page",o),data.onchange("total",o);var a="a:not(."+CLASS_PAGER+"-ellipsis"+")"+":not(."+CLASS_PAGER+"-current"+")";
t.on("click",a,function(n){var e=$(n.target),t=e.data("page")+1;"function"==typeof i.onchange&&i.onchange(t)})},render:function(){var e=Number(data.get("page"))-1,i=Number(data.get("total"));n&&(n.page=e,n.total=i,n.render()),1>=i?t.hide():t.show()},dispose:function(){t.off(),n.dispose(),n=t=null}};return disposeList.push(i),i}();
    var filterHelper=function(){var n='<li><a hidefocus="true" href="javascript:void(0);" data-tagid="${id}" class="${activeClass}">${name}</a><i>|</i></li>',e={defaultTag:null,getRenderData:function(t){var i=[];if(t&&t.length>0)for(var r,a,o=0,u=t.length;u>o;o++){if(r={},a=t[o],a.cnt>0){var s=a.tags||[];if(s=$.grep(s,function(n){return n.cnt>0}),0===s.length||1===s.length&&s.id>1e7)continue;e.defaultTag&&s.unshift(e.defaultTag);var c=s[0];c.activeClass=CLASS_ACTIVE,r.title=a.tagtype;var d="";$.each(s,function(e,t){t.cnt>0&&(t.activeClass=t.activeClass||"",d+=lib.renderTpl(n,t))
}),r.content=d.replace(/<i>\|<\/i><\/li>$/,"</li>")}r.title&&i.push(r)}return i},dispose:function(){n=null}};return disposeList.push(e),e}();

    var initCard = function () {

        bds.ready(function () {
            require.config({paths:{zxui:"http://s1.bdstatic.com/r/www/cache/biz/ecom/zxui/20131210",pszx:"http://s1.bdstatic.com/r/www/cache/biz/ecom/ui/20140312/pszx"}});
            var filter=function(){var n=lib.query("filter"),e=lib.query("tag-type"),t=lib.query("tag-list");filterHelper.defaultTag={id:"",name:"全部",cnt:1};var i={init:function(){i.render(data.get("filters")),t.on("click","a:not(."+CLASS_ACTIVE+")",function(n){var e=$(n.target),t=e.data("tagid");null!=t&&ajax.request({tags:t,page:1})}),data.onchange("filters",function(){i.render(data.get("filters"))}),data.onchange("tags",function(){var n=t.find("."+CLASS_ACTIVE);n.removeClass(CLASS_ACTIVE);var e=data.get("tags")||"",i=lib.array2Object(e.split(","));
t.find("a").each(function(){var n=$(this),e=n.data("tagid");null!=e&&i[e]&&n.addClass(CLASS_ACTIVE)})})},render:function(i){var a=filterHelper.getRenderData(i);a.length>0?(a=a[0],e.html(a.title+"："),t.html(a.content),n.css({visibility:"visible"})):n.css({visibility:"hidden"})},dispose:function(){t.off(),n=e=t=null}};return disposeList.push(i),i}();
            var dataList=function(){function e(){var e=Number(data.get("total")),t={"margin-bottom":"0"};2>e&&(t["border-bottom"]="none",t["padding-bottom"]="0");var i=n.find("li");i.length>0&&i.last().css(t)}var n=lib.query("data-list"),t="http://www.baidu.com/cache/biz/ecom/edu/org-default.jpg",i='<li class="c-row c-gap-bottom"><div class="c-span3"><a href="${logourl}" class="'+lib.getClass("org-logo")+'" target="_blank">'+'<img src="${logo}" />'+"</a>"+"</div>"+'<div class="c-span17">'+'<div class="'+lib.getClass("wrapper")+'">'+"<div>"+"<h5>"+'<a href="${titleurl}" target="_blank">'+"${title}"+"</a>${coupon}"+"</h5>"+"</div>"+"<div>"+"简介：${intro}${address}"+"</div>"+'<div class="'+lib.getClass("last-row")+'">'+'<div class="'+lib.getClass("course-actions")+'">'+"${consult}${video}${reserve}"+"</div>"+"机构：${org}${vcard}"+"</div>"+"</div>"+"</div>"+'<div class="c-span4 c-span-last">'+'<div class="'+lib.getClass("wrapper")+'">'+"${price}${detail}"+"</div>"+"</div>"+"</li>",a={org:function(e,n){return"<a data-click=\"{'rsv_edu-click': 'courseorg"+n+"'}\" "+'href="'+e.orgurl+'" target="_blank">'+e.orgname+"</a>"
},coupon:function(e){return e.reserve_url?'<a href="'+e.reserve_url+'" target="_blank" class="c-text c-text-warning c-gap-icon-left-small zx-edu-coupon" data-coupon="{\'text\': \''+e.reserve_desc+"', 'a': {'url': '"+e.reserve_url+"', 'text': '立即免费预约'}}\">惠</a>":""},vcard:function(e){if(e.vcard&&"[]"!==e.vcard){var n=$.parseJSON(e.vcard);if(n.value2)return'<a class="c-icon c-icon-v c-icon-v'+n.value2+' c-gap-icon-left-small" '+'data-tooltips="bl" '+"data-renzheng='"+e.vcard+"'>"+"</a>"}return""},address:function(e){return e.addressurl?'<a href="'+e.addressurl+'" class="'+lib.getClass("address")+' c-gap-icon-left-small" target="_blank">'+'<i class="c-icon c-icon-location-blue"></i>'+e.address_2+"</a>":'<span class="'+lib.getClass("address")+' c-gap-icon-left-small">'+'<i class="c-icon c-icon-location-blue"></i>'+e.address_2+"</span>"
},consult:function(e){return e.bridgeurl?'<a class="'+lib.getClass("icon-link")+'" href="'+e.bridgeurl+'" target="_blank">'+'<i class="c-icon c-icon-qa"></i>咨询'+"</a>":""},video:function(e){return e.videourl?'<a class="'+lib.getClass("icon-link")+'" href="'+e.videourl+'" target="_blank">'+'<i class="c-icon c-icon-ting"></i>试听'+"</a>":""},reserve:function(e){return e.reserve_url?'<a class="'+lib.getClass("icon-link")+'" href="'+e.reserve_url+'" target="_blank">'+'<i class="c-icon c-icon-calendar-blue"></i>预约'+"</a>":""
},price:function(e){"暂无"===e.cost&&(e.cost="");var n=e.saleprice||e.cost||"&nbsp;";return"<strong>"+n+"</strong>"},detail:function(e){return'<a class="c-btn c-btn-mini c-btn-primary" href="'+e.detailurl+'" target="_blank">查看详情</a>'}},r={init:function(){e(),data.onchange("list",function(){var e=data.get("list");r.render(e),tip.init({renzheng:"c-icon-v","coupon.edu":"zx-edu-coupon"})})},render:function(r){if("string"==typeof r)n.addClass(lib.getClass("no-data")).html(r);else{for(var o,s,c=[],l=0,u=r.length;u>l;l++)o=r[l],s={index:l,title:o.ori_title_cut_2,titleurl:o.titleurl,coupon:a.coupon(o),logo:o.orglogo||t,logourl:o.orglogo_url,intro:o.intro,address:a.address(o,l),consult:a.consult(o,l),video:a.video(o,l),reserve:a.reserve(o,l),org:a.org(o,l),vcard:a.vcard(o,l),price:a.price(o,l),detail:a.detail(o,l)},c.push(lib.renderTpl(i,s));
n.removeClass(lib.getClass("no-data")).html(c.join("")),e()}},dispose:function(){n=t=i=a=e=null}};return disposeList.push(r),r}();
            var city=function(){function t(t){t.length>4&&(t=t.substr(0,4)+"...");var e=lib.query("city-text");e.html(t)}var e=lib.query("city-btn"),n=lib.query("city-layer"),i="ecomui/edu?controller=util&action=city",a={init:function(){require(["pszx/city"],function(a){lib.post(i,function(i){i.hot_cities.length>6&&(i.hot_cities.length=6),a.init({prefix:data.get("card"),trigger:e,element:n,curCity:{id:data.get("ipcity_id"),text:data.get("ipcity")},hotCities:i.hot_cities,allCities:i.all_cities,onChange:function(t){ajax.request({city_id:t.id,city:t.text,tags:"",page:1}),this.hide()
}}),disposeList.push(a),data.onchange("city",function(){t(data.get("city"))})})})},dispose:function(){e=n=i=t=null}};return disposeList.push(a),a}();
            var ajax=function(){function t(t){for(var e in n){var i=n[e],a=e,r=t[e];null==r&&(r=data.get(e)),a!==i.name&&(a=i.name,e in t&&delete t[e]),i.handler&&(r=i.handler(r)),t[a]=r}}var e={total:0,page:0,list:"请求数据异常，请稍后重试"},n={page:{name:"page",handler:function(t){return"number"!=typeof t&&(t=Number(t)),t}},tags:{name:"tags",handler:function(t){return"number"==typeof t?t+="":$.isArray(t)&&(t=t.join(",")),t}},city_id:{name:"cityid"},city:{name:"city"},session_id:{name:"sessionID"},query:{name:"originQuery"},sid:{name:"sid"},subqid:{name:"subqid"},mode:{name:"mode"},srcid:{name:"srcid"}},i="ecomui/edu?controller=Bws&action=query",a={request:function(n){n=n||{};
var a=$.extend({},n);t(n);var r=data.get("common_params");$.isPlainObject(r)&&$.extend(n,r),lib.get(i,n,function(t){var i={};if(t&&0===t.status){var r=t.data,s=lib.$(".t > a"),o=s.prop("href");if(a.city_id)i.filters=r.filters,i.city=r.curcity,i.city_id=r.curcityid,o=r.queryurl;else{var c=n.tags||"";o=lib.updateURL(o,{tags:c})}s.prop("href",o),i.sign_time=r.signtime,i.total=r.totalpage,i.page=r.page,i.list=r.edu.length>0?r.edu:"抱歉没有找到符合要求的课程，请选择其他分类"}else i=$.extend({},e);null!=a.tags&&(i.tags=n.tags),"string"==typeof i.list&&(i.total=0),data.set(i),data.fire()
})},dispose:function(){e=n=t=i=null}};return disposeList.push(a),a}();

            data.init({
                tags: '',
                mode: 0,
                list: []
            });

            pager.onchange = function (page) {
                ajax.request({ page: page });
                lib.backToTop();
            };

            tip.init({
                renzheng: 'c-icon-v',
                'coupon.edu': 'zx-edu-coupon'
            });
            filter.init();
            city.init();
            dataList.init();
            pager.init();
            anti.addAnti(cardElement, true);
            log.renderComplete(cardData);
        });
    };

    card.ready(initCard);

});

</script>

{%/block%}