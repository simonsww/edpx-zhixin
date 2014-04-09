{%extends 'base_div.tpl'%}

{%block name='content'%}

<style>
.ecl-edu-dropdown-container{font-size:13px;line-height:16px;width:600px;position:relative}.ecl-edu-dropdown-container .c-icon-v,.ecl-edu-dropdown-container .c-icon-bao{margin-left:4px}.ecl-edu-dropdown-container h3,.ecl-edu-dropdown-container h4,.ecl-edu-dropdown-container h5{font-weight:normal;margin:0}.ecl-edu-dropdown-container a{color:#00c;text-decoration:underline}.ecl-edu-dropdown-container a:hover{text-decoration:underline}.ecl-edu-dropdown-container em{color:#c00}.ecl-edu-dropdown-title{font-size:16px;line-height:18px}
.ecl-edu-dropdown-body{margin-top:9px;position:relative}.ecl-edu-dropdown-edu-home{color:#008000}.zx-tip-layer{display:block}.ecl-edu-dropdown-filter-tag{*zoom:1;height:16px;overflow:hidden;position:relative}.ecl-edu-dropdown-filter-tag:before,.ecl-edu-dropdown-filter-tag:after{display:table;line-height:0;content:""}.ecl-edu-dropdown-filter-tag:after{clear:both}.ecl-edu-dropdown-filter-tag-opened{height:auto;overflow:visible}.ecl-edu-dropdown-tag-type{float:left}.ecl-edu-dropdown-tag-list{float:left;margin-top:-4px}
.ecl-edu-dropdown-tag-list li{float:left;font-size:0;line-height:0;margin-top:4px;white-space:nowrap}.ecl-edu-dropdown-tag-list a,.ecl-edu-dropdown-tag-list i{font-size:13px;line-height:16px;vertical-align:top}.ecl-edu-dropdown-tag-list a{display:inline-block;*display:inline;*zoom:1;color:#00c;padding:0 1em;text-decoration:none}.ecl-edu-dropdown-tag-list .ecl-edu-dropdown-tag-active{background-color:#388bff;color:#FFF}.ecl-edu-dropdown-tag-list i{display:inline-block;*display:inline;*zoom:1;color:#d1d2d3;font-style:normal;margin:0 6.5px}
.ecl-edu-dropdown-tag-list{width:32.46153846153846em}.ecl-edu-dropdown-city-selector{position:absolute;right:0;top:-8px;z-index:2}.ecl-edu-dropdown-city-btn{display:inline-block;*display:inline;*zoom:1;border:1px solid #d8d8d8;border-top-color:#999;border-left-color:#b2b2b2;background-color:#FFF;cursor:pointer;vertical-align:top}.ecl-edu-dropdown-city-btn:before,.ecl-edu-dropdown-city-btn:after{display:table;line-height:0;content:""}.ecl-edu-dropdown-city-btn:after{clear:both}
.ecl-edu-dropdown-city-text{float:left;padding:0 8px;height:22px;line-height:22px;vertical-align:top}.ecl-edu-dropdown-city-pull-down{float:left;background-color:#f6f6f6;border-left:1px solid #d9d9d9;width:18px;height:22px;line-height:22px;text-align:center;vertical-align:top}.ecl-edu-dropdown-city-pull-down i{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/edu/img/city-triangle.png') no-repeat;width:7px;height:4px;display:inline-block;*display:inline;*zoom:1;vertical-align:top;position:relative;top:9px}.ecl-edu-dropdown-city-layer{border:1px solid #bfbfbf;background-color:#FFF;line-height:1.2307692308em;padding:.7692307692em;width:24.2307692308em;position:absolute}
.ecl-edu-dropdown-city-layer strong{font-weight:normal;color:#888}.ecl-edu-dropdown-city-layer ul{margin:0;padding:0}.ecl-edu-dropdown-city-layer li{display:inline-block;*display:inline;*zoom:1}.ecl-edu-dropdown-city-layer a{display:inline-block;padding:0 .5em;text-decoration:none}.ecl-edu-dropdown-city-layer a:hover{color:#FFF;background-color:#2c99ff;text-decoration:none}.ecl-edu-dropdown-city-hot,.ecl-edu-dropdown-city-tab-nav,.ecl-edu-dropdown-city-tab-content{border-top:1px solid #DDD;margin-top:.6153846154em}
.ecl-edu-dropdown-city-hot{padding-top:.6153846154em}.ecl-edu-dropdown-city-hot ul{margin-left:-1em}.ecl-edu-dropdown-city-hot li{margin-left:1em}.ecl-edu-dropdown-city-tab-nav,.ecl-edu-dropdown-city-tab-content{padding-top:.2307692308em}.ecl-edu-dropdown-city-tab-nav li,.ecl-edu-dropdown-city-tab-content li{margin-top:.3846153846em}.ecl-edu-dropdown-city-tab-nav{font-size:.9230769231em}.ecl-edu-dropdown-city-tab-nav ul{margin-left:-0.8em}.ecl-edu-dropdown-city-tab-nav li{margin-left:.8em}.ecl-edu-dropdown-city-tab-nav a{padding:0;width:1.5384615385em;text-align:center}
.ecl-edu-dropdown-city-tab-content ul{display:none;margin-left:-1em}.ecl-edu-dropdown-city-tab-content li{width:5.3em;margin-left:1em}.ecl-edu-dropdown-city-tab-content a{overflow:hidden;text-overflow:ellipsis;white-space:nowrap;max-width:5em}a.ecl-edu-dropdown-active{color:#FFF;background-color:#2c99ff}ul.ecl-edu-dropdown-active{display:block}.ecl-edu-dropdown-city-layer{right:0;top:24px}.ecl-edu-dropdown-data-list{border-top:1px solid #f3f3f3;margin-top:9px}.ecl-edu-dropdown-data-list li{*zoom:1;border-bottom:1px solid #f3f3f3;padding-top:2px;padding-bottom:9px;position:relative}
.ecl-edu-dropdown-data-list li:before,.ecl-edu-dropdown-data-list li:after{display:table;line-height:0;content:""}.ecl-edu-dropdown-data-list li:after{clear:both}.ecl-edu-dropdown-data-list .c-icon-v{vertical-align:bottom}.ecl-edu-dropdown-no-data{padding:25px 0;text-align:center}.ecl-edu-dropdown-course-info{float:left;width:523px;overflow:hidden}.ecl-edu-dropdown-course-info div{font-size:0;line-height:0;margin-top:8px;overflow:hidden}.ecl-edu-dropdown-course-info div a,.ecl-edu-dropdown-course-info div span,.ecl-edu-dropdown-course-info div label{font-size:13px;line-height:16px}
.ecl-edu-dropdown-course-info div h5{display:inline-block;*display:inline;*zoom:1}.ecl-edu-dropdown-course-info div label{color:#666;cursor:text;font-weight:normal}.ecl-edu-dropdown-course-info div a{display:inline-block;*display:inline;*zoom:1}.ecl-edu-dropdown-course-info a em,.ecl-edu-dropdown-course-info a:hover em{text-decoration:underline}.ecl-edu-dropdown-course-title,.ecl-edu-dropdown-course-title em{font-size:14px!important}.ecl-edu-dropdown-consult,.ecl-edu-dropdown-video{color:#666!important;margin-left:8px}
.ecl-edu-dropdown-consult i,.ecl-edu-dropdown-video i{margin-right:2px}.ecl-edu-dropdown-course-address{margin-left:1em}.ecl-edu-dropdown-price-info{position:absolute;top:28px;right:0}.ecl-edu-dropdown-price-info a,.ecl-edu-dropdown-price-info em{display:block;text-align:center}.ecl-edu-dropdown-price-info em{color:#ff8a00;font-weight:bold;font-style:normal;margin-bottom:6px}.ecl-edu-dropdown-price-info a{background-color:#388bff;color:#FFF;width:5.2em;height:20px;line-height:20px}.ecl-edu-dropdown-price-info a:hover,.ecl-edu-dropdown-price-info a:link,.ecl-edu-dropdown-price-info a:visited{color:#FFF;text-decoration:none}
.ecl-edu-dropdown-footer{text-align:center;font-size:0;line-height:0}.ecl-edu-dropdown-ui-pager{display:inline-block;*display:inline;*zoom:1;margin-top:10px}.ecl-edu-dropdown-ui-pager a{border:1px solid #CCC;color:#03C;float:left;font-size:13px;height:20px;line-height:20px;padding:0 6px;margin:0 3px;text-align:center;text-decoration:none;overflow:hidden}.ecl-edu-dropdown-ui-pager a em{position:absolute;top:6px}.ecl-edu-dropdown-ui-pager a:hover{background-color:#eff4fa;text-decoration:none}.ecl-edu-dropdown-ui-pager .ecl-edu-dropdown-ui-pager-current{font-weight:bold;border-color:#FFF;color:#666;cursor:default}
.ecl-edu-dropdown-ui-pager .ecl-edu-dropdown-ui-pager-current:hover{background-color:#FFF}.ecl-edu-dropdown-ui-pager .ecl-edu-dropdown-ui-pager-ellipsis{border-color:#FFF}.ecl-edu-dropdown-ui-pager .ecl-edu-dropdown-ui-pager-ellipsis:hover{background-color:#FFF;cursor:default}.ecl-edu-dropdown-ui-pager .ecl-edu-dropdown-ui-pager-disabled{color:#999;cursor:default}.ecl-edu-dropdown-ui-pager .ecl-edu-dropdown-ui-pager-prev{padding-left:15px;position:relative}.ecl-edu-dropdown-ui-pager .ecl-edu-dropdown-ui-pager-prev em{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/edu/img/icon_20131011.gif') no-repeat -1px -12px;width:6px;height:10px;left:5px}
.ecl-edu-dropdown-ui-pager .ecl-edu-dropdown-ui-pager-next{padding-right:15px;position:relative}.ecl-edu-dropdown-ui-pager .ecl-edu-dropdown-ui-pager-next em{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/edu/img/icon_20131011.gif') no-repeat -6px -12px;width:6px;height:10px;right:5px}
</style>



{%$escaped_card_name = "ecl-edu-dropdown"%}

{%strip%}
<div class="{%$escaped_card_name%}-container" data-click="{'fm': 'alxl'}">

    <h4 class="t">
        <a class="{%$escaped_card_name%}-title"
            href="{%$tplData.queryurl%}" target="_blank">
            {%$tplData.title%}
        </a>
    </h4>

    <div class="{%$escaped_card_name%}-body">

        <div class="{%$escaped_card_name%}-filter-tag">
            <strong class="{%$escaped_card_name%}-tag-type"></strong>
            <ul class="{%$escaped_card_name%}-tag-list" data-click="{'fm': 'beha', 'rsv_edu-click': '筛选'}">
            </ul>
        </div>

        <div class="{%$escaped_card_name%}-city-selector"
            data-click="{'fm': 'beha'}">

            <span class="{%$escaped_card_name%}-city-btn OP_LOG_BTN"
                data-click="{'rsv_edu-click': '切换城市'}">

                <span class="{%$escaped_card_name%}-city-text">
                    {%$tplData.curcity|escape:'html'%}
                </span>

                <span class="{%$escaped_card_name%}-city-pull-down">
                    <i></i>
                </span>

            </span>
            <div class="{%$escaped_card_name%}-city-layer"
                data-click="{'rsv_edu-click': '选择城市'}" style="display:none;">
            </div>
        </div>


        {%if count($tplData.edu) > 0%}
        <ul class="{%$escaped_card_name%}-data-list" >

            {%foreach $tplData.edu as $item%}
            {%$show_count = 0%}
            <li>
                <div class="{%$escaped_card_name%}-course-info">
                    <div>
                        <h5 data-click="{'rsv_edu-click': 'coursetitle{%$item@index%}'}">
                            <a href="{%$item.titleurl%}" class="{%$escaped_card_name%}-course-title EC_ZHIXIN" target="_blank">
                                {%if $tplData.needRedden == 1%}
                                    {%$item.title%}
                                {%else%}
                                    {%$item.title|escape:'html'|highlight:0%}
                                {%/if%}
                            </a>

                        </h5>

                        {%if $item.bridgeurl%}
                        <a class="{%$escaped_card_name%}-consult EC_ZHIXIN"
                            href="{%$item.bridgeurl%}" target="_blank">
                            <i class="c-icon c-icon-qa"></i>咨询
                        </a>
                        {%/if%}

                        {%if $item.videourl%}
                        <a class="{%$escaped_card_name%}-video EC_ZHIXIN"
                            href="{%$item.videourl%}" target="_blank">
                            <i class="c-icon c-icon-play-blue"></i>试听
                        </a>
                        {%/if%}
                    </div>

                    {%if $item.intro%}
                    <div>

                        <label>简介：</label>

                        <span>
                        {%if $tplData.needRedden == 1%}
                            {%$item.intro%}
                        {%else%}
                            {%$item.intro|escape:'html'|highlight:0%}
                        {%/if%}
                        </span>

                    </div>
                    {%$show_count = $show_count + 1%}
                    {%/if%}

                    {%if $item.teacherdesc%}
                    <div>

                        <label>老师：</label>

                        <span>
                        {%if $tplData.needRedden == 1%}
                            {%$item.teacherdesc%}
                        {%else%}
                            {%$item.teacherdesc|escape:'html'|highlight:0%}
                        {%/if%}
                        </span>

                    </div>
                    {%$show_count = $show_count + 1%}
                    {%/if%}

                    {%if ($show_count < 2) and ($item.begintime)%}
                    <div>
                        <label>开课：</label>

                        <span>
                        {%if $tplData.needRedden%}
                            {%$item.begintime%}
                        {%else%}
                            {%$item.begintime|escape:'html'|highlight:0%}
                        {%/if%}
                        </span>

                    </div>
                    {%$show_count = $show_count + 1%}
                    {%/if%}

                    {%if ($show_count < 2) and ($item.timedesc)%}
                    <div>
                        <label>安排：</label>

                        <span>
                        {%if $tplData.needRedden%}
                            {%$item.timedesc%}
                        {%else%}
                            {%$item.timedesc|escape:'html'|highlight:0%}
                        {%/if%}
                        </span>

                    </div>
                    {%$show_count = $show_count + 1%}
                    {%/if%}

                    {%if ($show_count < 2) and ($item.classperiod)%}
                    <div>
                        <label>课时：</label>

                        <span>
                        {%if $tplData.needRedden == 1%}
                            {%$item.classperiod%}
                        {%else%}
                            {%$item.classperiod|escape:'html'|highlight:0%}
                        {%/if%}
                        </span>

                    </div>
                    {%$show_count = $show_count + 1%}
                    {%/if%}

                    <div>
                        <label>机构：</label>

                        <a href="{%$item.orgurl|escape:'html'%}" data-click="{'rsv_edu-click':'courseorg{%$item@index%}'}" class="EC_ZHIXIN" target="_blank">
                            {%$item.orgname|escape:'html'%}
                        </a>

                        {%if $item.vcard and ($item.vcard != "[]")%}
                        <a class="c-icon c-icon-v zx-edu-icon-v" data-tooltips="bl" data-renzheng='{%$item.vcard|escape:'html'%}'>
                        </a>
                        {%/if%}

                        <label class="{%$escaped_card_name%}-course-address" >{%if $item.address == '在线课程'%}类型：{%elseif $item.address%}校区：{%/if%}</label>

                        <span>{%$item.address|escape:'html'%}</span>

                        {%if $item.addressurl%}
                        <span>
                            [<a href="{%$item.addressurl|escape:'html'%}" target="_blank" class="EC_ZHIXIN">地图</a>]
                        </span>
                        {%/if%}
                    </div>
                </div>
                <div class="{%$escaped_card_name%}-price-info">

                    {%if $item.cost == '暂无'%}
                        {%$item.cost = ''%}
                    {%/if%}

                    {%if $item.saleprice%}
                        <em>{%$item.saleprice|replace: "&yen;":"¥"|escape:'html'%}</em>
                    {%elseif $item.cost%}
                        <em>{%$item.cost|replace: "&yen;":"¥"|escape:'html'%}</em>
                    {%else%}
                        <em>&nbsp;</em>
                    {%/if%}

                    <a class="EC_ZHIXIN" data-click="{'rsv_edu-click':'coursedetail{%$item@index%}'}" hidefocus="true" href="{%$item.detailurl|escape:'html'%}" target="_blank">
                        查看详情
                    </a>
                </div>
            </li>
            {%/foreach%}

        </ul>
        {%/if%}


        <div class="{%$escaped_card_name%}-footer">
            <div class="{%$escaped_card_name%}-pagination" data-click="{'fm':'beha', 'rsv_edu-click': '翻页'}">

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
    filters_json: '{%$tplData.filtersjson%}',
    total: '{%$tplData.totalpage%}',
    page: '{%$tplData.page%}',
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
        'pager', 'vcard', 'log',
        'filterHelper'
    ]);

    card.ready(function () {

        // 把数据塞入 data 统一管理
        data.set({
            card: eduData.card,

            // 请求参数
            city_id: eduData.city_id,
            city: eduData.city,
            tags: '',
            page: eduData.page,
            total: eduData.total,

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

            ipcity_id: eduData.ipcity_id,
            ipcity: eduData.ipcity,

            // 渲染数据
            filters: lib.parseJSON(eduData.filters_json),
            // 首屏是 smarty 渲染, 这里就不存了
            list: []
        });

        var ajax=function(){function t(t){for(var e in i)null==t[e]&&(t[e]=data.get(e)),e!==i[e]&&(t[i[e]]=t[e],delete t[e])}var e={total:0,page:0,list:"请求数据异常，请稍后重试"},i={page:"page",tags:"tags",city_id:"cityid",city:"city",session_id:"sessionID",query:"originQuery",sid:"sid",subqid:"subqid",mode:"mode",srcid:"srcid"},a="ecomui/edu?controller=Bws&action=query",s={request:function(i){i=i||{};var s=lib.extend({},i);t(i);var r="string"==typeof i.tags?i.tags:"";r=r.split(","),r.length>1&&(i.tags=r[0]);var l=data.get("common_params");
lib.isPlainObject(l)&&lib.extend(i,l);for(var n in i)(""===i[n]||null==i[n])&&delete i[n];var d=lib.query("title");lib.get(a,i,function(t){t=t||{};var a=t.responseText,r=lib.parseJSON(a),l={};if(r&&0===r.status){var n=r.data;if(s.city_id)l.filters=n.filters,l.city=n.curcity,l.city_id=n.curcityid,d.href=n.queryurl;else{var g=i.tags||"";d.href=d.href.replace(/&tags=[^&]*/,"")+(g?"&tags="+g:"")}l.sign_time=n.signtime,l.total=n.totalpage,l.page=n.page,l.list=n.edu.length>0?n.edu:"抱歉没有找到符合要求的课程，请选择其他分类"}else l=lib.extend({},e);
null!=s.tags&&(l.tags=s.tags),"string"==typeof l.list&&(l.total=0),data.set(l),data.fire()})},dispose:function(){e=i=t=a=null}};return disposeList.push(s),s}();
        var filterTag=function(){function t(t){var e=lib.getTarget(t);if("A"===e.tagName&&!lib.hasClass(e,s)){var i=lib.attr(e,"data-tagid");"string"==typeof i&&ajax.request({tags:i,page:1})}}var e=lib.query("filter-tag"),i=lib.query("tag-type"),a=lib.query("tag-list"),r=lib.query("more-tag"),l=lib.query("more-tag-icon"),n=lib.query("more-tag-text");filterHelper.defaultTag={id:"",name:"全部",cnt:1};var s=lib.getClass(filterHelper.activeClass),g={init:function(){g.render(data.get("filters")),lib.on(a,"click",t),data.onchange("filters",function(){g.render(data.get("filters"))
}),data.onchange("tags",function(){var t=lib.query(filterHelper.activeClass);t&&lib.removeClass(t,s);for(var e=data.get("tags")||"",i=e.split(","),r=a.getElementsByTagName("a"),l=0,n=r.length;n>l;l++){var g=lib.attr(r[l],"data-tagid");"string"==typeof g&&-1!==lib.inArray(g,i)&&lib.addClass(r[l],s)}})},render:function(t){var r=filterHelper.getRenderData(t);r.length>0?(r=r[0],i.innerHTML=r.title+"：",a.innerHTML=r.content,e.style.visibility="visible"):e.style.visibility="hidden"},dispose:function(){lib.off(a,"click",t),e=i=a=r=l=n=s=null
}};return disposeList.push(g),g}();
        var dataList=function(){function e(e,a){for(var i,l=2,r=0,t=[],n=["intro","teacherdesc","begintime","timedesc","classperiod"],c=0,d=n.length;d>c&&!(r>=l);c++)i=n[c],e[i]&&"function"==typeof s[i]&&(t.push(s[i](e,a)),r++);return t.push("<div>"),t.push(s.org(e,a)),t.push(s.vcard(e,a)),t.push(s.address(e,a)),t.push("</div>"),t.join("")}var a=lib.query("data-list"),i='<li><div class="'+lib.getClass("course-info")+'">'+"<div>"+"<h5 data-click=\"{'rsv_edu-click': 'coursetitle#{index}'}\">"+'<a href="#{titleurl}" class="'+lib.getClass("course-title")+' EC_ZHIXIN" target="_blank">'+"#{title}"+"</a>"+"</h5>#{consult}#{video}"+"</div>"+"#{intro}"+"</div>"+'<div class="'+lib.getClass("price-info")+'">'+"#{price}"+"</div>"+"</li>",s={intro:function(e){return"<div><label>简介：</label><span>"+e.intro+"</span></div>"
},teacherdesc:function(e){return"<div><label>老师：</label><span>"+e.teacherdesc+"</span></div>"},begintime:function(e){return"<div><label>开课：</label><span>"+e.begintime+"<span></div>"},timedesc:function(e){return"<div><label>安排：</label><span>"+e.timedesc+"<span></div>"},classperiod:function(e){return"<div><label>课时：</label><span>"+e.period+"<span></div>"},org:function(e,a){return"<label>机构：</label><a class=\"EC_ZHIXIN\" data-click=\"{'rsv_edu-click': 'courseorg"+a+"'}\" "+'href="'+e.orgurl+'" target="_blank">'+e.orgname+"</a>"
},vcard:function(e){return e.vcard&&"[]"!==e.vcard?'<a class="c-icon c-icon-v zx-edu-icon-v" data-tooltips="bl" data-renzheng=\''+e.vcard+"'>"+"</a>":""},address:function(e){var a;return a=e.addressurl?'<span>[<a class="EC_ZHIXIN" href="'+e.addressurl+'" target="_blank">地图</a>]</span>':"",'<label class="'+lib.getClass("course-address")+'">'+("在线课程"===e.address?"类型：":"校区：")+"</label>"+"<span>"+e.address+"</span>"+a},consult:function(e){return e.bridgeurl?'<a class="'+lib.getClass("consult")+' EC_ZHIXIN" href="'+e.bridgeurl+'" target="_blank">'+'<i class="c-icon c-icon-qa"></i>咨询'+"</a>":""
},video:function(e){return e.videourl?'<a class="'+lib.getClass("video")+' EC_ZHIXIN" href="'+e.videourl+'" target="_blank">'+'<i class="c-icon c-icon-play-blue"></i>试听'+"</a>":""},price:function(e,a){"暂无"===e.cost&&(e.cost="");var i=e.saleprice||e.cost||"&nbsp;",s="<a class=\"EC_ZHIXIN\" data-click=\"{'rsv_edu-click': 'coursedetail"+a+"'}\" "+' href="'+e.detailurl+'" target="_blank">查看详情</a>';return"<em>"+i+"</em>"+s}},l={init:function(){data.onchange("list",function(){var e=data.get("list");l.render(e),vcard.dispose(),vcard.init()
})},render:function(l){if("string"==typeof l)lib.addClass(a,lib.getClass("no-data")),a.innerHTML=l;else{for(var r,t,n=[],c=0,d=l.length;d>c;c++)r=l[c],t={index:c,title:r.title,titleurl:r.titleurl,intro:e(r,c),price:s.price(r,c),consult:s.consult(r,c),video:s.video(r,c)},n.push(lib.renderTpl(i,t));lib.removeClass(a,lib.getClass("no-data")),a.innerHTML=n.join("")}},dispose:function(){a=i=s=e=null}};return disposeList.push(l),l}();
        var city=function(){function t(t){var e=i.getElementsByTagName("span")[0];e&&(t.length>4&&(t=t.substr(0,4)+"..."),e.innerHTML=t)}var i=lib.query("city-btn"),e=lib.query("city-layer"),n="ecomui/edu?controller=util&action=city",c={init:function(){require(["pszx/city"],function(c){c.prefix=data.get("card"),lib.post(n,null,function(n,a){"string"==typeof a&&(a=lib.parseJSON(a)),a.hot_cities.length>6&&(a.hot_cities.length=6),c.init({trigger:i,element:e,curCity:{id:data.get("ipcity_id"),text:data.get("ipcity")},hotCities:a.hot_cities,allCities:a.all_cities,onChange:function(t){ajax.request({city_id:t.id,city:t.text,tags:"",page:1}),this.hide()
}}),disposeList.push(c),data.onchange("city",function(){t(data.get("city"))})})})},dispose:function(){i=e=n=t=null}};return disposeList.push(c),c}();

        pager.onchange = function (page) {
            ajax.request({ page: page });
            lib.backToTop();
        };

        vcard.init();
        filterTag.init();
        city.init();
        dataList.init();
        pager.init();
        anti.addAnti(lib.query('container'), true);
        log.renderComplete(eduData);
    });

});

</script>

{%/block%}