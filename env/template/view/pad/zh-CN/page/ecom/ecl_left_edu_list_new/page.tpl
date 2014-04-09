{%extends 'base.tpl'%}

{%block name='content'%}

<style>
.ecl-edu-dropdown-container{font-size:15px;line-height:18px;width:680px;position:relative}.ecl-edu-dropdown-container .c-icon-v{display:none}.ecl-edu-dropdown-container h4,.ecl-edu-dropdown-container h5{font-weight:normal;margin:0}.ecl-edu-dropdown-container a{color:#00c;text-decoration:underline}.ecl-edu-dropdown-container a:hover{text-decoration:underline}.ecl-edu-dropdown-container em{color:#c00}.ecl-edu-dropdown-title{font-size:18px;line-height:20px}.ecl-edu-dropdown-body{margin-top:10px;position:relative}
.ecl-edu-dropdown-edu-home{color:#008000}.ecl-edu-dropdown-filter-tag{*zoom:1;height:18px;overflow:hidden;position:relative}.ecl-edu-dropdown-filter-tag:before,.ecl-edu-dropdown-filter-tag:after{display:table;line-height:0;content:""}.ecl-edu-dropdown-filter-tag:after{clear:both}.ecl-edu-dropdown-filter-tag-opened{height:auto;overflow:visible}.ecl-edu-dropdown-tag-type{float:left}.ecl-edu-dropdown-tag-list{float:left;margin-top:-5px}.ecl-edu-dropdown-tag-list li{float:left;font-size:0;line-height:0;margin-top:5px;white-space:nowrap}
.ecl-edu-dropdown-tag-list a,.ecl-edu-dropdown-tag-list i{font-size:15px;line-height:18px;vertical-align:top}.ecl-edu-dropdown-tag-list a{display:inline-block;*display:inline;*zoom:1;color:#00c;padding:0 1em;text-decoration:none}.ecl-edu-dropdown-tag-list .ecl-edu-dropdown-tag-active{background-color:#388bff;color:#FFF}.ecl-edu-dropdown-tag-list i{display:inline-block;*display:inline;*zoom:1;color:#d1d2d3;font-style:normal;margin:0 7.5px}.ecl-edu-dropdown-tag-list{width:31.53333333333333em}.ecl-edu-dropdown-city-selector{position:absolute;right:0;top:-10px;z-index:2}
.ecl-edu-dropdown-city-btn{display:inline-block;*display:inline;*zoom:1;border:1px solid #d8d8d8;border-top-color:#999;border-left-color:#b2b2b2;background-color:#FFF;cursor:pointer;vertical-align:top}.ecl-edu-dropdown-city-btn:before,.ecl-edu-dropdown-city-btn:after{display:table;line-height:0;content:""}.ecl-edu-dropdown-city-btn:after{clear:both}.ecl-edu-dropdown-city-text{float:left;padding:0 9px;height:26px;line-height:26px;vertical-align:top}.ecl-edu-dropdown-city-pull-down{float:left;background-color:#f6f6f6;border-left:1px solid #d9d9d9;width:18px;height:26px;line-height:26px;text-align:center;vertical-align:top}
.ecl-edu-dropdown-city-pull-down i{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/edu/img/city-triangle.png') no-repeat;width:7px;height:4px;display:inline-block;*display:inline;*zoom:1;vertical-align:top;position:relative;top:11px}.ecl-edu-dropdown-city-layer{background-color:#FFF;border-width:1px;border-style:solid;border-color:#bbb #bfbfbf #c9c9c9 #bbb;width:381px;padding:0 11px;position:absolute;right:0;top:28px;z-index:10}.ecl-edu-dropdown-city-layer strong{font-weight:normal;color:#888}.ecl-edu-dropdown-city-layer ul{*zoom:1}
.ecl-edu-dropdown-city-layer ul:before,.ecl-edu-dropdown-city-layer ul:after{display:table;line-height:0;content:""}.ecl-edu-dropdown-city-layer ul:after{clear:both}.ecl-edu-dropdown-city-layer li{float:left;line-height:0}.ecl-edu-dropdown-city-layer a{display:inline-block;*display:inline;*zoom:1;color:#0000ce;line-height:18px;height:18px;padding:0 8px;text-decoration:none}.ecl-edu-dropdown-city-layer a:hover{color:#FFF;background-color:#2c99ff;text-decoration:none}.ecl-edu-dropdown-cur-city,.ecl-edu-dropdown-hot-city,.ecl-edu-dropdown-city-nav-tab{border-bottom:1px solid #DDD}
.ecl-edu-dropdown-cur-city{padding:10px 0}.ecl-edu-dropdown-hot-city{padding:10px 0}.ecl-edu-dropdown-hot-city li{margin-right:15px}.ecl-edu-dropdown-city-nav-tab{padding-top:4px;padding-bottom:10px}.ecl-edu-dropdown-city-nav-tab li{font-size:14px;margin-right:9px;margin-top:6px}.ecl-edu-dropdown-city-nav-tab a{padding-left:0;padding-right:0;text-align:center;width:24.454545454545453px}.ecl-edu-dropdown-city-tab-content{padding-top:1px;padding-bottom:10px}.ecl-edu-dropdown-city-tab-content ul{display:none}.ecl-edu-dropdown-city-tab-content li{margin-right:14px;margin-top:9px;width:5.3em}
.ecl-edu-dropdown-city-tab-content li a{overflow:hidden;text-overflow:ellipsis;white-space:nowrap;max-width:5em}a.ecl-edu-dropdown-city-active{color:#FFF;background-color:#2c99ff}ul.ecl-edu-dropdown-city-active{display:block}.ecl-edu-dropdown-data-list{border-top:1px solid #f3f3f3;margin-top:10px}.ecl-edu-dropdown-data-list li{*zoom:1;border-bottom:1px solid #f3f3f3;padding-top:2px;padding-bottom:10px;position:relative}.ecl-edu-dropdown-data-list li:before,.ecl-edu-dropdown-data-list li:after{display:table;line-height:0;content:""}
.ecl-edu-dropdown-data-list li:after{clear:both}.ecl-edu-dropdown-no-data{padding:27.5px 0;text-align:center}.ecl-edu-dropdown-course-info{float:left;width:603px;overflow:hidden}.ecl-edu-dropdown-course-info div{font-size:0;line-height:0;margin-top:9px;overflow:hidden}.ecl-edu-dropdown-course-info div a,.ecl-edu-dropdown-course-info div span,.ecl-edu-dropdown-course-info div label{font-size:15px;line-height:18px}.ecl-edu-dropdown-course-info div h5{display:inline-block;*display:inline;*zoom:1}.ecl-edu-dropdown-course-info div label{color:#666;cursor:text;font-weight:normal}
.ecl-edu-dropdown-course-info div a{display:inline-block;*display:inline;*zoom:1}.ecl-edu-dropdown-course-info a em,.ecl-edu-dropdown-course-info a:hover em{text-decoration:underline}.ecl-edu-dropdown-course-title,.ecl-edu-dropdown-course-title em{font-size:16px!important}.ecl-edu-dropdown-consult,.ecl-edu-dropdown-video{color:#666!important;margin-left:9px}.ecl-edu-dropdown-consult i,.ecl-edu-dropdown-video i{display:inline-block;*display:inline;*zoom:1;margin-right:2px;vertical-align:bottom}.ecl-edu-dropdown-consult i{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/edu/img/icon_20131011.gif') no-repeat 0 0;width:12px;height:12px;overflow:hidden}
.ecl-edu-dropdown-video i{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/edu/img/try-listen.png') no-repeat 0 50%;width:16px;height:16px}.ecl-edu-dropdown-course-address{margin-left:1em}.ecl-edu-dropdown-price-info{position:absolute;top:32px;right:0}.ecl-edu-dropdown-price-info a,.ecl-edu-dropdown-price-info em{display:block;text-align:center}.ecl-edu-dropdown-price-info em{color:#ff8a00;font-weight:bold;font-style:normal;margin-bottom:7px}.ecl-edu-dropdown-price-info a{background-color:#388bff;color:#FFF;width:5.2em;height:23px;line-height:23px}
.ecl-edu-dropdown-price-info a:hover,.ecl-edu-dropdown-price-info a:link,.ecl-edu-dropdown-price-info a:visited{color:#FFF;text-decoration:none}.ecl-edu-dropdown-footer{text-align:center;font-size:0;line-height:0}.ecl-edu-dropdown-ui-pager{display:inline-block;*display:inline;*zoom:1;margin-top:11px}.ecl-edu-dropdown-ui-pager a{border:1px solid #CCC;color:#03C;float:left;font-size:15px;height:24px;line-height:24px;padding:0 10px;margin:0 5px;text-align:center;text-decoration:none;overflow:hidden}.ecl-edu-dropdown-ui-pager a em{position:absolute;top:8px}
.ecl-edu-dropdown-ui-pager a:hover{background-color:#eff4fa;text-decoration:none}.ecl-edu-dropdown-ui-pager .ecl-edu-dropdown-ui-pager-current{font-weight:bold;border-color:#FFF;color:#666;cursor:default}.ecl-edu-dropdown-ui-pager .ecl-edu-dropdown-ui-pager-current:hover{background-color:#FFF}.ecl-edu-dropdown-ui-pager .ecl-edu-dropdown-ui-pager-ellipsis{border-color:#FFF}.ecl-edu-dropdown-ui-pager .ecl-edu-dropdown-ui-pager-ellipsis:hover{background-color:#FFF;cursor:default}.ecl-edu-dropdown-ui-pager .ecl-edu-dropdown-ui-pager-disabled{color:#999;cursor:default}
.ecl-edu-dropdown-ui-pager .ecl-edu-dropdown-ui-pager-prev{padding-left:19px;position:relative}.ecl-edu-dropdown-ui-pager .ecl-edu-dropdown-ui-pager-prev em{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/edu/img/icon_20131011.gif') no-repeat -1px -12px;width:6px;height:10px;left:6px}.ecl-edu-dropdown-ui-pager .ecl-edu-dropdown-ui-pager-next{padding-right:19px;position:relative}.ecl-edu-dropdown-ui-pager .ecl-edu-dropdown-ui-pager-next em{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/edu/img/icon_20131011.gif') no-repeat -6px -12px;width:6px;height:10px;right:6px}
</style>



{%$escaped_card_name = "ecl-edu-dropdown"%}

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

                <span class="{%$escaped_card_name%}-city-text">{%$tplData.curcity|escape:'html'%}</span>

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
                            <i></i>咨询
                        </a>
                        {%/if%}

                        {%if $item.videourl%}
                        <a class="{%$escaped_card_name%}-video EC_ZHIXIN"
                            href="{%$item.videourl%}" target="_blank">
                            <i></i>试听
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

                        <a href="{%$item.orgurl|escape:'html'%}" data-click="{'rsv_edu-click':'courseorg{%$item@index%}'}" class="EC_ZHIXIN" target="_blank">{%$item.orgname|escape:'html'%}</a>

                        {%if $item.vcard and ($item.vcard != "[]")%}
                        <i class="c-icon c-icon-v ec-ui-tip" data-tooltips="bl" data-renzheng='{%$item.vcard|escape:'html'%}'>
                        </i>
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

        var ajax=function(){function t(t){for(var e in i)null==t[e]&&(t[e]=data.get(e)),e!==i[e]&&(t[i[e]]=t[e],delete t[e])}var e={total:0,page:0,list:"请求数据异常，请稍后重试"},i={page:"page",tags:"tags",city_id:"cityid",city:"city",session_id:"sessionID",query:"originQuery",sid:"sid",subqid:"subqid",mode:"mode",srcid:"srcid"},a="ecomui/edu?controller=Bws&action=query";return function(i){i=i||{};var s=lib.extend({},i);t(i);var r="string"==typeof i.tags?i.tags:"";r=r.split(","),r.length>1&&(i.tags=r[0]);var l=data.get("common_params");
lib.isPlainObject(l)&&lib.extend(i,l);for(var n in i)(""===i[n]||null==i[n])&&delete i[n];var d=lib.query("title");lib.get(a,i,function(t){t=t||{};var a=t.responseText,r=lib.parseJSON(a),l={};if(r&&0===r.status){var n=r.data;if(s.city_id)l.filters=n.filters,l.city=n.curcity,l.city_id=n.curcityid,d.href=n.queryurl;else{var g=i.tags||"";d.href=d.href.replace(/&tags=[^&]*/,"")+(g?"&tags="+g:"")}l.sign_time=n.signtime,l.total=n.totalpage,l.page=n.page,l.list=n.edu.length>0?n.edu:"抱歉没有找到符合要求的课程，请选择其他分类"}else l=lib.extend({},e);
null!=s.tags&&(l.tags=s.tags),"string"==typeof l.list&&(l.total=0),data.set(l),data.fire()})}}();
        var filterTag=function(){var t=lib.query("filter-tag"),e=lib.query("tag-type"),a=lib.query("tag-list");lib.query("more-tag"),lib.query("more-tag-icon"),lib.query("more-tag-text"),filterHelper.defaultTag={id:"",name:"全部",cnt:1};var i=lib.getClass(filterHelper.activeClass),r={init:function(){r.render(data.get("filters")),lib.on(a,"click",function(t){var e=lib.getTarget(t);if("A"===e.tagName&&!lib.hasClass(e,i)){var a=lib.attr(e,"data-tagid");"string"==typeof a&&ajax({tags:a,page:1})}}),data.onchange("filters",function(){r.render(data.get("filters"))
}),data.onchange("tags",function(){var t=lib.query(filterHelper.activeClass);t&&lib.removeClass(t,i);for(var e=data.get("tags")||"",r=e.split(","),l=a.getElementsByTagName("a"),n=0,g=l.length;g>n;n++){var s=lib.attr(l[n],"data-tagid");"string"==typeof s&&-1!==lib.inArray(s,r)&&lib.addClass(l[n],i)}})},render:function(i){var r=filterHelper.getRenderData(i);r.length>0?(r=r[0],e.innerHTML=r.title+"：",a.innerHTML=r.content,t.style.visibility="visible"):t.style.visibility="hidden"}};return r}();
        var dataList=function(){function e(e,a){for(var i,t=2,l=0,s=[],n=["intro","teacherdesc","begintime","timedesc","classperiod"],c=0,d=n.length;d>c&&!(l>=t);c++)i=n[c],e[i]&&"function"==typeof r[i]&&(s.push(r[i](e,a)),l++);return s.push("<div>"),s.push(r.org(e,a)),s.push(r.vcard(e,a)),s.push(r.address(e,a)),s.push("</div>"),s.join("")}var a=lib.query("data-list");lib.query("more-course");var i='<li><div class="'+lib.getClass("course-info")+'">'+"<div>"+"<h5 data-click=\"{'rsv_edu-click': 'coursetitle#{index}'}\">"+'<a href="#{titleurl}" class="'+lib.getClass("course-title")+' EC_ZHIXIN" target="_blank">'+"#{title}"+"</a>"+"</h5>#{consult}#{video}"+"</div>"+"#{intro}"+"</div>"+'<div class="'+lib.getClass("price-info")+'">'+"#{price}"+"</div>"+"</li>",r={intro:function(e){return"<div><label>简介：</label><span>"+e.intro+"</span></div>"
},teacherdesc:function(e){return"<div><label>老师：</label><span>"+e.teacherdesc+"</span></div>"},begintime:function(e){return"<div><label>开课：</label><span>"+e.begintime+"<span></div>"},timedesc:function(e){return"<div><label>安排：</label><span>"+e.timedesc+"<span></div>"},classperiod:function(e){return"<div><label>课时：</label><span>"+e.period+"<span></div>"},org:function(e,a){return"<label>机构：</label><a class=\"EC_ZHIXIN\" data-click=\"{'rsv_edu-click': 'courseorg"+a+"'}\" "+'href="'+e.orgurl+'" target="_blank">'+e.orgname+"</a>"
},vcard:function(e){return e.vcard&&"[]"!==e.vcard?'<i class="c-icon c-icon-v ec-ui-tip" data-tooltips="bl" data-renzheng=\''+e.vcard+"'>"+"</i>":""},address:function(e){var a;return a=e.addressurl?'<span>[<a class="EC_ZHIXIN" href="'+e.addressurl+'" target="_blank">地图</a>]</span>':"",'<label class="'+lib.getClass("course-address")+'">'+("在线课程"===e.address?"类型：":"校区：")+"</label>"+"<span>"+e.address+"</span>"+a},consult:function(e){return e.bridgeurl?'<a class="'+lib.getClass("consult")+' EC_ZHIXIN" href="'+e.bridgeurl+'" target="_blank">'+"<i></i>咨询"+"</a>":""
},video:function(e){return e.videourl?'<a class="'+lib.getClass("video")+' EC_ZHIXIN" href="'+e.videourl+'" target="_blank">'+"<i></i>试听"+"</a>":""},price:function(e,a){"暂无"===e.cost&&(e.cost="");var i=e.saleprice||e.cost||"&nbsp;",r="<a class=\"EC_ZHIXIN\" data-click=\"{'rsv_edu-click': 'coursedetail"+a+"'}\" "+' href="'+e.detailurl+'" target="_blank">查看详情</a>';return"<em>"+i+"</em>"+r}},t={init:function(){data.onchange("list",function(){var e=data.get("list");t.render(e),vcard.render(),anti.update(data.get("sign_time"))
})},render:function(t){if("string"==typeof t)lib.addClass(a,lib.getClass("no-data")),a.innerHTML=t;else{for(var l,s,n=[],c=0,d=t.length;d>c;c++)l=t[c],s={index:c,title:l.title,titleurl:l.titleurl,intro:e(l,c),price:r.price(l,c),consult:r.consult(l,c),video:r.video(l,c)},n.push(lib.renderTpl(i,s));lib.removeClass(a,lib.getClass("no-data")),a.innerHTML=n.join("")}}};return t}();
        var Layer=function(){function i(i){if("click"===i.showBy)lib.on(i.trigger,"click",function(){return i.isHidden()&&i.show(),!1});else{var n;lib.on(i.trigger,"mouseover",function(){n||(n=setTimeout(function(){n&&i.isHidden()&&(n=null,i.show())},100))}),lib.on(i.trigger,"mouseout",function(){n&&(clearTimeout(n),n=null)})}}function n(i){function n(n){var o=lib.getTarget(n);lib.contains(i.main,o)||i.hide()}function o(n){u=setTimeout(function(){if(u){n=n||window.event;var o=n.relatedTarget||n.toElement;lib.contains(i.trigger,o)||lib.contains(i.main,o)||i.hide()
}},500)}function e(){u&&(clearTimeout(u),u=null)}function t(){-1!==i.hideBy.indexOf("blur")&&lib.off(document,"click",n),-1!==i.hideBy.indexOf("out")&&(lib.off(i.trigger,"mouseout",o),lib.off(i.trigger,"mouseover",e),lib.off(i.main,"mouseout",o),lib.off(i.main,"mouseover",e))}var u;-1!==i.hideBy.indexOf("blur")&&setTimeout(function(){i.isHidden()||lib.on(document,"click",n)},150),-1!==i.hideBy.indexOf("out")&&(lib.on(i.trigger,"mouseout",o),lib.on(i.trigger,"mouseover",e),lib.on(i.main,"mouseout",o),lib.on(i.main,"mouseover",e)),i.onbeforehide=function(){t()
}}function o(n){for(var o in n)this[o]=n[o];i(this)}return o.prototype={constructor:o,show:function(){this.main.style.display="block","function"==typeof this.onshow&&this.onshow(),n(this)},hide:function(){"function"==typeof this.onbeforehide&&this.onbeforehide(),this.main.style.display="none","function"==typeof this.onhide&&this.onhide()},isHidden:function(){return"none"===lib.css(this.main,"display")},on:function(i,n){lib.on(this.main,i,n)},off:function(i,n){lib.off(this.main,i,n)}},o}();
        var citySelector=function(){function t(t){var i=a.getElementsByTagName("span")[0];i&&(t.length>4&&(t=t.substr(0,4)+"..."),i.innerHTML=t)}var i=function(){function t(t,i){return'<a class="'+lib.getClass(n)+'" hidefocus="true" href="javascript:void(0);" title="'+i+'" data-city-id="'+t+'">'+i+"</a>"}function i(i,a){var e=[];a?e.push('<ul data-target="'+a+'">'):e.push("<ul>");for(var s,r=0,l=i.length;l>r;r++)s=i[r],e.push("<li>"),e.push(t(s.id,s.text)),e.push("</li>");return e.push("</ul>"),e.join("")}function a(t,i,a){var e=[lib.getClass(u)];
t&&e.push(t);var s=['<div class="'];return s.push(e.join(" ")),s.push('">'),i&&(s.push("<strong>"),s.push(i),s.push("</strong>")),s.push(a),s.push("</div>"),s.join("")}function e(){for(var t=["<ul>"],i=0,a=d.length;a>i;i++)t.push('<li><a href="javascript:void(0);" data-tab="'),t.push(d[i]),t.push('">'),t.push(d[i]),t.push("</a></li>");return t.join("")}function s(t){for(var a=[],e=c.all_cities,s=0,r=t.length;r>s;s++){var l=t.charAt(s);a.push(e[l])}return a=lib.merge.apply(null,a),i(a,t)}function r(){var r=a(lib.getClass(g),"当前地区：",t(c.cur_city.id,c.cur_city.text));
r+=a(lib.getClass(v),null,i(c.hot_cities));var l=['<div class="'+lib.getClass(h)+' c-clearfix">'];l.push(e()),l.push("</div>"),l.push('<div class="'+lib.getClass(o)+'  c-clearfix">');for(var n=0,u=d.length;u>n;n++)l.push(s(d[n]));return l.push("</div>"),r+=a(lib.getClass(b),null,l.join(""))}function l(t){this.layer=new Layer({trigger:t.trigger,main:t.layer,showBy:"click",hideBy:"blur"}),c=t.datasource,this.layer.main.innerHTML=r(),this.switchTab(d[0]);var i=this;this.layer.on("click",function(t){var a=lib.getTarget(t);
if("A"===a.tagName){var e=lib.attr(a,"data-tab");if(e)i.switchTab(e);else{var s=lib.attr(a,"data-city-id");if(s){var r=a.innerHTML;i.switchCity(s,r)}}}return!1})}var c,c,n="city-item",u="city-category",h="city-nav-tab",o="city-tab-content",y="city-active",g="cur-city",v="hot-city",b="all-city",d=["A","B","C","D","E","F","G","H","J","K","L","M","N","P","Q","R","S","T","W","X","Y","Z"];return l.prototype={constructor:l,switchTab:function(t){var i=lib.inArray(t,d);if(-1!==i&&i!==this.activeTab){var a=this.layer.main,e=lib.$(h,a)[0],s=e.getElementsByTagName("a");
e=lib.$(o,a)[0];var r=e.getElementsByTagName("ul"),l=lib.getClass(y);null!=this.activeTab&&(lib.removeClass(s[this.activeTab],l),lib.removeClass(r[this.activeTab],l)),lib.addClass(s[i],l),lib.addClass(r[i],l),this.activeTab=i}},switchCity:function(t,i){this.selectCity(t),"function"==typeof this.oncitychange&&this.oncitychange({cityId:t,cityName:i})},selectCity:function(t){for(var i=this.layer.main.getElementsByTagName("a"),a=this.activeCity,e=lib.getClass(y),s=0,r=i.length;r>s;s++){var l=lib.attr(i[s],"data-city-id");
l&&l==t&&lib.addClass(i[s],e),a&&l==a&&lib.removeClass(i[s],e)}this.activeCity=t}},l}(),a=lib.query("city-btn"),e=lib.query("city-layer"),s="ecomui/edu?controller=util&action=city",r={init:function(){lib.post(s,null,function(s,r){"string"==typeof r&&(r=lib.parseJSON(r)),r.cur_city={id:data.get("ipcity_id"),text:data.get("ipcity")},r.hot_cities.length>6&&(r.hot_cities.length=6);var l=new i({trigger:a,layer:e,datasource:r});l.oncitychange=function(t){ajax({city_id:t.cityId,city:t.cityName,tags:"",page:1}),l.layer.hide()
},data.onchange("city",function(){t(data.get("city"))})})}};return r}();

        pager.onpagechange = function (page) {
            ajax({ 
                page: page
            });
            lib.backToTop();
        };

        vcard.render();
        filterTag.init();
        citySelector.init();
        dataList.init();
        log.renderComplete(eduData);
        anti.init(eduData.sign_time);

        $(function () {
            // esl 配置
            require.config({
                baseUrl: 'http://s1.bdstatic.com/r/www/cache/biz/ecom/zxui/20131011',
                paths : {
                    zxui: 'http://s1.bdstatic.com/r/www/cache/biz/ecom/zxui/20131011',
                    tipapi: 'http://s1.bdstatic.com/r/www/cache/biz/ecom/common/api/tip/tipapi'
                }
            });

            pager.init();
        });
    });

});

</script>

{%/block%}