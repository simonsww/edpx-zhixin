{%extends 'c_base.tpl'%}

{%block name='data_modifier'%}
    {%$escaped_card_name = 'ecl-edu-orgname'%}
    {%$escaped_default_logo = 'http://www.baidu.com/cache/biz/ecom/edu/org-default.jpg'%}
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
    <p class="c-showurl c-gap-top-small">
        jiaoyu.baidu.com
        <a href="http://baozhang.baidu.com/guarantee/" class="c-icon c-icon-bao c-gap-icon-left-small" target="_blank"></a>
    </p>
    {%/strip%}
{%/block%}

{%block name='content'%}

<style>
{%fe_fn_c_css css='btn'%}
.ecl-edu-orgname-title{margin-top:0}.ecl-edu-orgname-container{line-height:1.7692307692;position:relative}.ecl-edu-orgname-container h4,.ecl-edu-orgname-container h5{margin:0;font-weight:normal}.ecl-edu-orgname-no-data{padding:2.5em 1em;text-align:center}.zx-tip-layer{display:block}.ecl-edu-orgname-filter{height:1.307692307692308em;overflow:hidden;position:relative;*zoom:1}.ecl-edu-orgname-filter:before,.ecl-edu-orgname-filter:after{display:table;line-height:0;content:""}.ecl-edu-orgname-filter:after{clear:both}
.ecl-edu-orgname-tag-type,.ecl-edu-orgname-tag-list a,.ecl-edu-orgname-tag-list i,.ecl-edu-orgname-more-tag{line-height:1em;padding:.1538461538461538em 0;*padding-bottom:1px;*padding-top:3px}.ecl-edu-orgname-opened{height:auto;overflow:visible}.ecl-edu-orgname-tag-type{float:left;display:inline-block;*display:inline;*zoom:1}.ecl-edu-orgname-tag-list{float:left;margin-top:-0.3076923076923077em}.ecl-edu-orgname-tag-list li{float:left;margin-top:.3076923076923077em;white-space:nowrap;line-height:0}.ecl-edu-orgname-tag-list a{display:inline-block;*display:inline;*zoom:1;color:#00c;padding-left:.8em;padding-right:.8em;text-decoration:none}
.ecl-edu-orgname-tag-list .ecl-edu-orgname-active{background-color:#388bff;color:#FFF}.ecl-edu-orgname-tag-list i{display:inline-block;*display:inline;*zoom:1;color:#d1d2d3;font-style:normal;margin:0 .5em}.ecl-edu-orgname-more-tag{cursor:pointer;position:absolute;top:0;right:0;width:3.1em}.ecl-edu-orgname-city-btn{display:inline-block;*display:inline;*zoom:1;border:1px solid #d8d8d8;border-top-color:#999;border-left-color:#b2b2b2;background-color:#FFF;cursor:pointer;height:1.692307692307692em;vertical-align:top}
.ecl-edu-orgname-city-btn:before,.ecl-edu-orgname-city-btn:after{display:table;line-height:0;content:""}.ecl-edu-orgname-city-btn:after{clear:both}.ecl-edu-orgname-city-text{float:left;padding:0 .6153846154em;height:1.692307692307692em;line-height:1.692307692307692em;vertical-align:top}.ecl-edu-orgname-city-dropdown{float:left;background-color:#f6f6f6;border-left:1px solid #d9d9d9;width:18px;height:1.692307692307692em;line-height:1.692307692307692em;text-align:center;vertical-align:top}
.ecl-edu-orgname-city-dropdown .c-icon{*margin-top:4px}.ecl-edu-orgname-city-layer{border:1px solid #bfbfbf;background-color:#FFF;display:none;line-height:1.2307692308em;padding:.7692307692em;width:24.2307692308em;position:absolute;right:0}.ecl-edu-orgname-city-layer strong{font-weight:normal;color:#888}.ecl-edu-orgname-city-layer ul{margin:0;padding:0}.ecl-edu-orgname-city-layer li{display:inline-block;*display:inline;*zoom:1}.ecl-edu-orgname-city-layer a{display:inline-block;*display:inline;*zoom:1;padding:0 .5em;text-decoration:none}
.ecl-edu-orgname-city-layer a:hover{color:#FFF;background-color:#2c99ff;text-decoration:none}.ecl-edu-orgname-city-layer a.ecl-edu-orgname-active{color:#FFF;background-color:#2c99ff}.ecl-edu-orgname-city-layer ul.ecl-edu-orgname-active{display:block}.ecl-edu-orgname-city-hot,.ecl-edu-orgname-city-tab-nav,.ecl-edu-orgname-city-tab-content{border-top:1px solid #DDD;margin-top:.6153846154em}.ecl-edu-orgname-city-hot{padding-top:.6153846154em}.ecl-edu-orgname-city-hot ul{margin-left:-1em}.ecl-edu-orgname-city-hot li{margin-left:1em}
.ecl-edu-orgname-city-tab-nav,.ecl-edu-orgname-city-tab-content{padding-top:.2307692308em}.ecl-edu-orgname-city-tab-nav li,.ecl-edu-orgname-city-tab-content li{margin-top:.3846153846em}.ecl-edu-orgname-city-tab-nav{font-size:.9230769231em;font-family:arial}.ecl-edu-orgname-city-tab-nav ul{margin-left:-0.8em}.ecl-edu-orgname-city-tab-nav li{margin-left:.8em}.ecl-edu-orgname-city-tab-nav a{padding:0;width:1.5384615385em;text-align:center}.ecl-edu-orgname-city-tab-content ul{display:none;margin-left:-1em}.ecl-edu-orgname-city-tab-content li{width:5.3em;margin-left:1em}
.ecl-edu-orgname-city-tab-content a{overflow:hidden;text-overflow:ellipsis;white-space:nowrap;max-width:5em}.ecl-edu-orgname-pager{text-align:center;line-height:0;*zoom:1}.ecl-edu-orgname-ui-pager{display:inline-block;*display:inline;*zoom:1}.ecl-edu-orgname-ui-pager a{border:1px solid #CCC;color:#03C;float:left;height:1.538461538461538em;line-height:1.538461538461538em;padding:0 .4615384615384615em;margin-right:.4615384615384615em;text-decoration:none;overflow:hidden}.ecl-edu-orgname-ui-pager a em{position:absolute;top:50%;margin-top:-5px}
.ecl-edu-orgname-ui-pager a:hover{background-color:#eff4fa;text-decoration:none}.ecl-edu-orgname-ui-pager .ecl-edu-orgname-ui-pager-current{font-weight:bold;border-color:#FFF;color:#666;cursor:default}.ecl-edu-orgname-ui-pager .ecl-edu-orgname-ui-pager-current:hover{background-color:#FFF}.ecl-edu-orgname-ui-pager .ecl-edu-orgname-ui-pager-ellipsis{border-color:#FFF}.ecl-edu-orgname-ui-pager .ecl-edu-orgname-ui-pager-ellipsis:hover{background-color:#FFF;cursor:default}.ecl-edu-orgname-ui-pager .ecl-edu-orgname-ui-pager-disabled{color:#999;cursor:default}
.ecl-edu-orgname-ui-pager .ecl-edu-orgname-ui-pager-prev{padding-left:1.2em;position:relative;line-height:1.692307692307692em \9}.ecl-edu-orgname-ui-pager .ecl-edu-orgname-ui-pager-prev em{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/edu/img/icon_20131011.gif') no-repeat -1px -12px;width:6px;height:10px;left:.3846153846153846em}.ecl-edu-orgname-ui-pager .ecl-edu-orgname-ui-pager-next{padding-right:1.2em;position:relative;line-height:1.692307692307692em \9}.ecl-edu-orgname-ui-pager .ecl-edu-orgname-ui-pager-next em{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/edu/img/icon_20131011.gif') no-repeat -6px -12px;width:6px;height:10px;right:.3846153846153846em}
.c-tip-con .c-tip-cer{width:354px;color:#666;margin:0 10px 1px 10px}.opui-honourCard{font-size:12px;color:#666;line-height:1.5em;width:354px}.opui-honourCard-score{width:60px;padding:4px 2px 4px 2px;text-align:center;float:left}.opui-honourCard-score em{display:block;font-size:37px;line-height:37px;color:#8e8d8d;font-family:arial;font-style:normal}.opui-honourCard-info{background:#f5f5f5;overflow:hidden;zoom:1}.opui-honourCard-title a{*font-family:Microsoft YaHei}.opui-honourCard-title a i{position:relative;left:-65px;*left:-68px}
.opui-honourCard ol{list-style:none;margin:0;padding:0;float:left;_padding-top:5px}.opui-honourCard li{height:20px;line-height:20px;padding-left:20px;_vertical-align:bottom}.opui-honourCard li i{vertical-align:middle;_vertical-align:bottom}.opui-honourCard-selected{color:#2b2a2a;font-weight:bold;background:url(http://www.baidu.com/cache/aladdin/ui/honourCard/img/honourCard.png) no-repeat 3px 5px;*background-position:3px 2px}.ecl-edu-orgname-filter{margin-bottom:.6153846153846154em}.ecl-edu-orgname-tag-list{width:32em}
.ecl-edu-orgname-city-selector{position:absolute;right:1px;top:-2.307692307692308em;z-index:1}.ecl-edu-orgname-city-layer{top:1.692307692307692em}.ecl-edu-orgname-content{padding-bottom:.3846153846153846em}.ecl-edu-orgname-data-list{*zoom:1}.ecl-edu-orgname-data-list:before,.ecl-edu-orgname-data-list:after{display:table;line-height:0;content:""}.ecl-edu-orgname-data-list:after{clear:both}.ecl-edu-orgname-data-list li{float:left;width:100%;border-bottom:1px solid #f3f3f3;padding-bottom:.3846153846153846em;margin-top:-0.3076923076923077em;_margin-top:0}
.ecl-edu-orgname-data-list label{cursor:text}.ecl-edu-orgname-data-list .c-span17 .ecl-edu-orgname-wrapper{padding-right:.3076923076923077em}.ecl-edu-orgname-data-list .c-span-last{padding-top:2em;text-align:right;line-height:0}.ecl-edu-orgname-data-list .c-span-last .ecl-edu-orgname-wrapper{display:inline-block;*display:inline;*zoom:1;width:5.538461538461538em;text-align:center}.ecl-edu-orgname-data-list .c-span-last .c-btn{display:block;margin-top:.3846153846153846em}.ecl-edu-orgname-data-list h5{font-size:1.1em}
.ecl-edu-orgname-logo{border:1px solid #f0f0f0;display:block;padding:1px;line-height:0;margin-top:.3076923076923077em;_margin-top:0}.ecl-edu-orgname-logo img{width:52px;height:52px}.ecl-edu-orgname-cost{font-weight:bold;color:#ffb400}.ecl-edu-orgname-more-course{float:right}
</style>

{%strip%}
<div class="{%$escaped_card_name%}-container" data-click="{'fm': 'alop'}">

    <div class="{%$escaped_card_name%}-city-selector"
        data-click="{'fm': 'beha'}">

        <span class="{%$escaped_card_name%}-city-btn OP_LOG_BTN"
            data-click="{'fm': 'beha', 'rsv_edu-click': '切换城市'}">

            <span class="{%$escaped_card_name%}-city-text">
                {%$tplData.curcity|escape:'html'%}
            </span>

            <span class="{%$escaped_card_name%}-city-dropdown">
                <i class="c-icon c-icon-triangle-down"></i>
            </span>

        </span>
        <div class="{%$escaped_card_name%}-city-layer"
            data-click="{'rsv_edu-click': '选择城市'}"></div>
    </div>

    <div class="{%$escaped_card_name%}-filter">
        <strong class="{%$escaped_card_name%}-tag-type"></strong>

        <ul class="{%$escaped_card_name%}-tag-list"
            data-click="{'fm': 'beha', 'rsv_edu-click': '筛选'}">
        </ul>

        <div class="{%$escaped_card_name%}-more-tag OP_LOG_BTN"
            data-click="{'fm': 'beha'}" style="display: none;">
            <span class="{%$escaped_card_name%}-more-tag-text">更多</span>
            <span class="{%$escaped_card_name%}-more-tag-icon c-icon c-icon-triangle-down"></span>
        </div>

    </div>

    <div class="{%$escaped_card_name%}-content c-border">

        {%if count($tplData.edu) > 0%}
        <ul class="{%$escaped_card_name%}-data-list" >

            {%foreach $tplData.edu as $item%}

            <li class="c-gap-bottom c-row">

                <div class="c-span3">
                    <a class="{%$escaped_card_name%}-logo c-gap-top-small"
                        href="{%$item.org_logo_url%}" target="_blank">
                        {%if $item.icon%}
                        <img src="{%$item.icon|escape:'html'%}" />
                        {%else%}
                        <img src="{%$escaped_default_logo%}" />
                        {%/if%}
                    </a>
                </div>


                <div class="c-span17">
                    <div class="{%$escaped_card_name%}-wrapper">
                        <h5 data-click="{'rsv_edu-click': 'orgtitle{%$item@index%}'}">

                            <a href="{%$item.title_url%}" target="_blank">
                                {%$item.title%}
                            </a>

                            {%if $item.vcard and ($item.vcard != "[]")%}
                                {%$item_vcard = json_decode($item.vcard, true)%}

                                {%if isset($item_vcard.value2)%}
                                <a class="c-icon c-icon-v c-icon-v{%$item_vcard.value2%} c-gap-icon-left-small" data-tooltips="bl"
                                    data-renzheng='{%$item.vcard|escape:'html'%}'></a>
                                {%/if%}
                            {%/if%}
                        </h5>

                        {%if $item.intro%}
                        <p>
                            <label>简介：</label>
                            <span>
                                {%$item.intro_cut%}
                            </span>
                        </p>
                        {%/if%}

                        <p>
                            {%if $item.show_more == 1%}
                            <a class="{%$escaped_card_name%}-more-course" href="{%$item.more|escape:'html'%}" target="_blank">
                                更多课程 &gt;&gt;
                            </a>
                            {%/if%}

                            <label>推荐：</label>
                            <a href="{%$item.reco_url|escape:'html'%}" target="_blank"
                                data-click="{'rsv_edu-click':'reco_edu_orgtitle{%$item@index%}'}">
                                {%$item.reco_title_cut%}
                            </a>

                            <span class="{%$escaped_card_name%}-cost c-gap-left-small">
                                {%if $item.cost == '暂无'%}
                                    {%$item.cost = ''%}
                                {%/if%}

                                {%if $item.saleprice%}
                                    {%$item.saleprice|replace: "&yen;":"¥"|escape:'html'%}
                                {%elseif $item.cost%}
                                    {%$item.cost|replace: "&yen;":"¥"|escape:'html'%}
                                {%else%}
                                    &nbsp;
                                {%/if%}
                            </span>
                        </p>
                    </div>
                </div>

                <div class="c-span4 c-span-last">
                    <div class="{%$escaped_card_name%}-wrapper">
                        <i class="c-icon c-icon-star-gray">
                            <i class="c-icon c-icon-star" style="width:{%$item.grade * 20%}%;"></i>
                        </i>

                        <a class="c-btn c-btn-primary c-btn-mini" href="{%$item.org_detail_url|escape:'html'%}" target="_blank">
                            查看详情
                        </a>
                    </div>
                </div>
            </li>

            {%/foreach%}
        </ul>
        {%/if%}

        <div class="{%$escaped_card_name%}-pager">
            <div class="{%$escaped_card_name%}-pagination c-gap-top c-gap-bottom-small"
                data-click="{'fm':'beha', 'rsv_edu-click': '翻页'}">
            </div>
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
    var pager=function(){var n,e={showAlways:0,showCount:6,padding:0,lang:{prev:"<em></em>上一页",next:"下一页<em></em>",ellipsis:"..."}},t=lib.query("pagination"),i={init:function(){require(["zxui/ui/Pager"],function(r){var o={main:t[0],prefix:CLASS_PAGER};$.extend(o,e),n||(n=new r(o),i.render())});var r=!1,o=function(){data.ischange("page")&&data.ischange("total")?r?r=!1:(r=!0,i.render()):i.render()};data.onchange("page",o),data.onchange("total",o);var a="a:not(."+CLASS_PAGER+"-ellipsis"+")"+":not(."+CLASS_PAGER+"-current"+")";
t.on("click",a,function(n){var e=$(n.target),t=e.data("page")+1;"function"==typeof i.onchange&&i.onchange(t)})},render:function(){var e=Number(data.get("page"))-1,i=Number(data.get("total"));n&&(n.page=e,n.total=i,n.render()),1>=i?t.hide():t.show()},dispose:function(){t.off(),n.dispose(),n=t=null}};return disposeList.push(i),i}();
    var filterHelper=function(){var n='<li><a hidefocus="true" href="javascript:void(0);" data-tagid="${id}" class="${activeClass}">${name}</a><i>|</i></li>',e={defaultTag:null,getRenderData:function(t){var i=[];if(t&&t.length>0)for(var r,a,o=0,s=t.length;s>o;o++){if(r={},a=t[o],a.cnt>0){var u=a.tags||[];if(u=$.grep(u,function(n){return n.cnt>0}),0===u.length||1===u.length&&u.id>1e7)continue;e.defaultTag&&u.unshift(e.defaultTag);var c=u[0];c.activeClass=CLASS_ACTIVE,r.title=a.tagtype;var d="";$.each(u,function(e,t){t.cnt>0&&(t.activeClass=t.activeClass||"",d+=lib.renderTpl(n,t))
}),r.content=d.replace(/<i>\|<\/i><\/li>$/,"</li>")}r.title&&i.push(r)}return i},dispose:function(){n=null}};return disposeList.push(e),e}();

    var initCard = function () {

        var ajax=function(){function n(n){for(var e in t){var i=t[e],a=e,r=n[e];null==r&&(r=data.get(e)),a!==i.name&&(a=i.name,e in n&&delete n[e]),i.handler&&(r=i.handler(r)),n[a]=r}}var e={total:0,page:0,list:"请求数据异常，请稍后重试"},t={page:{name:"page",handler:function(n){return"number"!=typeof n&&(n=Number(n)),n}},tags:{name:"tags",handler:function(n){return"number"==typeof n?n+="":$.isArray(n)&&(n=n.join(",")),n}},city_id:{name:"cityid"},city:{name:"city"},session_id:{name:"sessionID"},query:{name:"originQuery"},sid:{name:"sid"},subqid:{name:"subqid"},mode:{name:"mode"},srcid:{name:"srcid"}},i="ecomui/edu?controller=Bws&action=query",a={request:function(t){t=t||{};
var a=$.extend({},t);n(t);var r=data.get("common_params");$.isPlainObject(r)&&$.extend(t,r),lib.get(i,t,function(n){var i={};if(n&&0===n.status){var r=n.data,o=lib.$(".t > a"),s=o.prop("href");if(a.city_id)i.filters=r.filters,i.city=r.curcity,i.city_id=r.curcityid,s=r.queryurl;else{var u=t.tags||"";s=lib.updateURL(s,{tags:u})}o.prop("href",s),i.sign_time=r.signtime,i.total=r.totalpage,i.page=r.page,i.list=r.edu.length>0?r.edu:"抱歉没有找到符合要求的机构，请选择其他分类"}else i=$.extend({},e);null!=a.tags&&(i.tags=t.tags),"string"==typeof i.list&&(i.total=0),data.set(i),data.fire()
})},dispose:function(){e=t=n=i=null}};return disposeList.push(a),a}();
        var filter=function(){function e(){t.addClass(CLASS_OPENED),s.html("收起"),o.removeClass("c-icon-triangle-down"),o.addClass("c-icon-triangle-up")}function n(){t.removeClass(CLASS_OPENED),s.html("更多"),o.removeClass("c-icon-triangle-up"),o.addClass("c-icon-triangle-down")}var t=lib.query("filter"),i=lib.query("tag-type"),a=lib.query("tag-list"),r=lib.query("more-tag"),o=lib.query("more-tag-icon"),s=lib.query("more-tag-text");filterHelper.defaultTag={id:"",name:"全部",cnt:1};var u={init:function(){u.render(data.get("filters")),a.on("click","a:not(."+CLASS_ACTIVE+")",function(e){var n=$(e.target),t=n.data("tagid");
null!=t&&ajax.request({tags:t,page:1})}),r.on("click",function(){t.hasClass(CLASS_OPENED)?n():e()}),data.onchange("filters",function(){u.render(data.get("filters"))}),data.onchange("tags",function(){var e=a.find("."+CLASS_ACTIVE);e.each(function(){$(this).removeClass(CLASS_ACTIVE)});var n=data.get("tags")||"",t=lib.array2Object(n.split(","));a.find("a").each(function(){var e=$(this),n=e.data("tagid");null!=n&&t[n]&&e.addClass(CLASS_ACTIVE)})})},render:function(e){var o=filterHelper.getRenderData(e);o.length>0?(o=o[0],i.html(o.title+"："),a.html(o.content),n(),t.show(),a.height()/t.height()>=2?r.show():r.hide()):t.hide()
},dispose:function(){a.off(),r.off(),t=i=a=r=o=s=e=n=null}};return disposeList.push(u),u}();
        var dataList=function(){function t(){var t=Number(data.get("total")),n={"margin-bottom":"0"};2>t&&(n["border-bottom"]="none",n["padding-bottom"]="0");var i=e.find("li");i.length>0&&i.last().css(n)}var e=lib.query("data-list"),n="http://www.baidu.com/cache/biz/ecom/edu/org-default.jpg",i='<li class="c-gap-bottom c-row"><div class="c-span3"><a class="'+lib.getClass("logo")+' c-gap-top-small" href="${logoUrl}" target="_blank">'+'<img src="${logo}" />'+"</a>"+"</div>"+'<div class="c-span17">'+'<div class="'+lib.getClass("wrapper")+'">'+"<h5 data-click=\"{'rsv_edu-click': 'orgtitle${index}'}\">"+'<a href="${titleUrl}" target="_blank">${title}</a>'+"${vcard}"+"</h5>"+"${intro}"+"<p>${moreCourse}${reco}${cost}</p>"+"</div>"+"</div>"+'<div class="c-span4 c-span-last">'+'<div class="'+lib.getClass("wrapper")+'">'+"${star}"+'<a class="c-btn c-btn-primary c-btn-mini" href="${detailUrl}" target="_blank">'+"查看详情"+"</a>"+"</div>"+"</div>"+"</li>",a={intro:function(t){return t.intro?"<p><label>简介：</label><span>"+t.intro_cut+"</span>"+"</p>":""
},vcard:function(t){if(t.vcard&&"[]"!==t.vcard){var e=' data-tooltips="bl"',n=" data-renzheng='"+t.vcard+"'",i=$.parseJSON(t.vcard);if(i.value2)return'<a class="c-icon c-icon-v c-icon-v'+i.value2+' c-gap-icon-left-small"'+e+n+"></a>"}return""},reco:function(t,e){return'<label>推荐：</label><a href="'+t.reco_url+'" target="_blank" '+"data-click=\"{'rsv_edu-click':'reco_edu_orgtitle"+e+"'}\">"+t.reco_title_cut+"</a>"},cost:function(t){"暂无"===t.cost&&(t.cost="");var e=t.saleprice||t.cost||"&nbsp;";return'<span class="'+lib.getClass("cost")+' c-gap-left-small">'+e+"</span>"
},moreCourse:function(t){return t.show_more?'<a href="'+t.more+'" target="_blank" class="'+lib.getClass("more-course")+'">'+"更多课程 &gt;&gt;"+"</a>":""},star:function(t){return'<i class="c-icon c-icon-star-gray"><i class="c-icon c-icon-star" style="width:'+20*t.grade+'%;"></i>'+"</i>"}},r={init:function(){t(),data.onchange("list",function(){var e=data.get("list");r.render(e),t(),tip.init({renzheng:"c-icon-v"})})},render:function(t){if("string"==typeof t)e.addClass(lib.getClass("no-data")).html(t);else{for(var r,o,s=[],c=0,l=t.length;l>c;c++)r=t[c],o={index:c,logo:r.icon||n,logoUrl:r.org_logo_url,title:r.title,titleUrl:r.title_url,vcard:a.vcard(r,c),intro:a.intro(r,c),moreCourse:a.moreCourse(r,c),reco:a.reco(r,c),cost:a.cost(r,c),star:a.star(r,c),detailUrl:r.org_detail_url},s.push(lib.renderTpl(i,o));
e.removeClass(lib.getClass("no-data")).html(s.join(""))}},dispose:function(){e=n=i=a=t=null}};return disposeList.push(r),r}();
        var city=function(){function t(t){t.length>4&&(t=t.substr(0,4)+"...");var e=lib.query("city-text");e.html(t)}var e=lib.query("city-btn"),n=lib.query("city-layer"),i="ecomui/edu?controller=util&action=city",a={init:function(){require(["pszx/city"],function(a){lib.post(i,function(i){i.hot_cities.length>6&&(i.hot_cities.length=6),a.init({prefix:data.get("card"),trigger:e,element:n,curCity:{id:data.get("ipcity_id"),text:data.get("ipcity")},hotCities:i.hot_cities,allCities:i.all_cities,onChange:function(t){ajax.request({city_id:t.id,city:t.text,tags:"",page:1}),this.hide()
}}),disposeList.push(a),data.onchange("city",function(){t(data.get("city"))})})})},dispose:function(){e=n=i=t=null}};return disposeList.push(a),a}();

        data.init({
            tags: '',
            mode: 0,
            list: []
        });

        pager.onchange = function (page) {
            ajax.request({ page: page });
            lib.backToTop();
        };

        tip.init({ renzheng: 'c-icon-v' });
        filter.init();
        city.init();
        dataList.init();
        pager.init();
        anti.addAnti(cardElement, true);

        log.renderComplete(cardData);
    };

    card.ready(initCard);

});

</script>

{%/block%}