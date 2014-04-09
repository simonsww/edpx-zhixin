{%extends 'c_base.tpl'%}
{%block name="title"%}
{%/block%}
{%block name='content'%}
<style>.ecl-common-insurance em{color:#c00}.ecl-common-insurance .ecl-common-insurance-title{padding-bottom:8px;margin:0}.ecl-common-insurance .ecl-common-insurance-card{border:solid 1px #e3e3e3;box-shadow:1px 1px 3px #EEE;padding:0 9px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-filter{padding:12px 0 2px;border-bottom:solid 1px #f3f3f3}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-filter form{overflow:hidden;font-size:13px;line-height:12px;vertical-align:bottom;padding-bottom:12px;*zoom:1}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-filter form span{font-weight:bold;float:left;padding:2px 4px 2px 0}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-filter form ul{float:left;font-size:0;overflow:hidden;list-style:none}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-filter form ul .ecl-common-insurance-filter-condition{float:left;font-size:12px;padding:0 12px;cursor:pointer;text-align:center;color:#0103cd;height:16px;line-height:16px;line-height:18px\9}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-filter form ul .ecl-common-insurance-filter-condition:hover{text-decoration:underline}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-filter form ul .ecl-common-insurance-filter-condition-unlimited{margin-right:3px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-filter form ul .ecl-common-insurance-filter-condition-spliter{float:left;border-right:solid 1px #d8d8d8;margin:2px 8px 0 7px;height:13px;width:0}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-filter form ul .ecl-common-insurance-filter-condition-nowat{float:left;font-size:12px;padding:0 12px;cursor:pointer;text-align:center;background-color:#388bff;color:#fff;height:16px;line-height:16px;line-height:18px\9;cursor:default}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result ul li{padding:9px 0 4px;*padding-bottom:1px;border-bottom:solid 1px #f3f3f3;*zoom:1}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result ul li:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-more{border:0;font-size:13px;padding:6px 0;text-align:center}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-more a{color:#0102ca;font-size:12px;font-family:simsun;line-height:12px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-left{width:56px;height:56px;float:left;margin-right:10px;margin-top:1px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-left img{width:100%;height:100%}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-mid{float:left;width:385px;word-wrap:break-word;word-break:break-all;overflow:hidden;font-size:13px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-mid h5{height:16px;margin:0 0 12px;font-weight:normal}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-mid h5 a{font-size:14px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-mid p{word-break:break-all;word-wrap:break-word;height:16px;margin-bottom:11px;*margin-bottom:10px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-mid p .ecl-common-insurance-project{width:176px;line-height:16px;float:left;position:relative}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-mid p .ecl-common-insurance-project label{color:#BBB;display:inline-block;position:absolute;font-size:20px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-mid p .ecl-common-insurance-project span{color:#000;padding-left:11px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-mid div{color:#666}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-mid div span{display:inline-block;*display:inline;*zoom:1;width:99px;margin:0 0 1px 11px;overflow:hidden;height:16px;word-wrap:normal;white-space:nowrap;*height:auto;*margin-bottom:5px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-right{width:65px;float:right;margin-top:23px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-right p{color:#fe8500;font-size:0;text-align:center;height:21px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-right p .ecl-common-insurance-result-price-sign{font-size:14px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-right p .ecl-common-insurance-result-price-number{font:17px arial bold;padding:0 2px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-right p .ecl-common-insurance-result-price-after{font-size:12px;margin-right:2px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-right a{margin:0 auto;float:right;width:65px;height:20px;margin-right:1px;text-align:center;background-color:#388bff;color:#fff;font-size:12px;line-height:20px;line-height:22px\9;cursor:pointer;text-decoration:none}.ecl-footer{padding-top:5px;color:green;font-size:12px}{%fe_fn_c_css css='text'%}
{%fe_fn_c_css css='btn'%}
</style>{%*点击统计*%} 
{%$qid=$extData.qid%}
{%$subqid=$extData.subqid%}
{%$sid=$extData.sid%}
{%$pssid=$extData.pssid%}

{%strip%} 
<div class="ecl-common-insurance c-container">
    <h4 class="t ecl-common-insurance-title c-title">
        <a target="_blank" class="c-title" href="{%$tplData.mainUrl|escape:'html'%}" tn="{%$extData.tn|escape:'html'%}">
            {%foreach $tplData.title_hi as $pipe%}
                {%if $pipe eq "[bd_em]"%}
                    <em>
                {%else if $pipe eq "[/bd_em]"%}
                    </em>
                {%else%}
                    {%$pipe|escape:'html'%}
                {%/if%}
            {%/foreach%}
        </a>
    </h4>

    <!--result-->
    <div class="ecl-common-insurance-card">
        <div class="ecl-common-insurance-filter">
            {%foreach $tplData.filter as $unit%}
                {%assign var="allflag" value=0%}
                {%foreach $unit.items as $item%}
                    {%if $item.status eq 1%}
                        {%assign var="allflag" value=1%}
                    {%/if%}
                {%/foreach%}
            <form data-click="{'rsv_common_insurance_opt':'filter','fm':'beha'}">
                <span>{%$unit.name|escape:'html'%}：</span>
                <ul class="ecl-common-insurance-filter-group" value="{%$unit.key|escape:'html'%}">
                    <li value="all" class="{%if $allflag eq 1%}ecl-common-insurance-filter-condition OP_LOG_OTHERS{%else%}ecl-common-insurance-filter-condition-nowat OP_LOG_OTHERS{%/if%}">不限</li>
                    {%foreach $unit.items as $item%}
                        <li class="ecl-common-insurance-filter-condition-spliter"></li>
                        <li value="{%$item.value|escape:'html'%}" class="{%if $item.status eq 0%}ecl-common-insurance-filter-condition OP_LOG_OTHERS{%else%}ecl-common-insurance-filter-condition-nowat OP_LOG_OTHERS{%/if%}">{%$item.name|escape:'html'%}</li>
                    {%/foreach%}
                </ul>
            </form>
            {%/foreach%}
        </div>
        <div class="ecl-common-insurance-result">
            <ul>
            {%foreach $tplData.list as $unit%}
            <li>
                <div class="ecl-common-insurance-result-left">
                    <a href="{%$unit.website|escape:'html'%}" target="_blank" tn="{%$extData.tn|escape:'html'%}"><img src="{%$unit.logoSrc|escape:'html'%}" width="56" height="56" alt="{%$unit.title|escape:'html'%}"/></a>
                </div>
                <div class="ecl-common-insurance-result-mid">
                    <h5>
                        <a target="_blank" class="c-title" href="{%$unit.url|escape:'html'%}" tn="{%$extData.tn|escape:'html'%}">{%$unit.title|escape:'html'|highlight:0%}</a>{%if isset($unit.official) and ($unit.official eq 1)%}<span class="c-text c-text-public c-text-mult c-gap-left-small">官网</span>{%/if%}
                    </h5>
                    <p>
                        {%foreach $unit.projects as $pro%}
                            <span class="ecl-common-insurance-project">
                                <label>•</label>
                                <span>{%$pro.type|escape:'html'|highlight:0%}：{%$pro.pay|escape:'html'%}</span>
                            </span>
                        {%/foreach%}
                    </p>
                    <div>
                        {%foreach $unit.featureItems as $item%}
                        {%if $item@index gt 5%}{%break%}{%/if%}
                        <span>{%$item|escape:'html'|highlight:0%}</span>
                        {%/foreach%}
                    </div>
                </div>
                <div class="ecl-common-insurance-result-right">
                    <p>
                        <span class="ecl-common-insurance-result-price-sign">&yen;</span>
                        <span class="ecl-common-insurance-result-price-number">{%$unit.price|escape:'html'%}</span>
                        <span class="ecl-common-insurance-result-price-after">{%$unit.payment_method|escape:'html'%}</span>
                    </p>
                    <a target="_blank" href="{%$unit.url|escape:'html'%}" tn="{%$extData.tn|escape:'html'%}">查看详情</a>
                </div>
            </li>
            {%/foreach%}
            </ul>
        </div>
        <div class="ecl-common-insurance-result-more">
            <a target="_blank" href="{%$tplData.mainUrl|escape:'html'%}" tn="{%$extData.tn|escape:'html'%}">查看更多产品&gt;&gt;</a>
        </div>
    </div>
    <div class='ecl-footer'>
        caifu.baidu.com
    </div>
</div>
{%/strip%}
<script data-compress="off">
    A.setup('COM_INS_DATA', {
        GET_TPL_LIST_URL: '{%$tplData.ajaxUrl%}'
    })
</script>
<script>
    A.setup(function () {

        var extData = {};
        {%foreach from=$extData key=prop item=value%}extData['{%$prop|escape:"javascript"%}'] = '{%$value|escape:"javascript"%}';{%/foreach%}
        var card = this;
        var tpl = 'ecl-common-insurance';
        var comInsData = card.data.COM_INS_DATA;
        var ajaxFinished = false;var common=function(){var t=function(t,n){t="."+t;return n?$(n).find(t):$(t)};var n=function(t){return t?tpl+"-"+t:tpl};var r=function(t){var n=$("<div></div>");n.text(t);return n.html()};var e=function(t,n){return $(t).attr(n)};var u=function(t,n){t=String(t);var r=Array.prototype.slice.call(arguments,1);var e=Object.prototype.toString;if(r.length){r=r.length==1?n!==null&&/\[object Array\]|\[object Object\]/.test(e.call(n))?n:r:r;return t.replace(/#\{(.+?)\}/g,function(t,n){var u=r[n];if("[object Function]"==e.call(u)){u=u(n)}return"undefined"==typeof u?"":u})}return t};var a=function(r,e){return t(n(r),e)[0]};var i=function(t){if(typeof t==="function"){t()}};var o=function(t,n){for(var r in t){n[r]=t[r]}return n};var c=function(t,n,r){n=n||new Function;r=r||new Function;$.ajax({url:t,type:"GET",dataType:"json",success:function(t){var e={};if(!t){r();ajaxFinished=true;return}try{if(typeof t==="object"){e=t}else{e=$.parseJSON(t)}}catch(u){r();ajaxFinished=true;return}n(e);ajaxFinished=true},error:function(t){r();ajaxFinished=true}})};var f=function(t){return new Function("return ("+t+")")()};return{q:t,getClass:n,getAttr:e,qq:a,mix:o,enter:i,request:c,format:u,encodeHTML:r,parseJSON:f}}();var filter=function(r){var t=r.getClass;var n=r.qq;var e=r.q;var a=r.getAttr;var i=e(t("filter-group"));var u={ITEM_CLASS:"filter-condition",AFTER_FIX:"nowat"};var o=function(){c()};var c=function(){$(n("")).on("click",function(n){n=n||window.event;var e=n.target||n.srcElement;var a=e.className;if(a.indexOf(t(u.ITEM_CLASS))!==-1&&a.indexOf(u.AFTER_FIX)===-1){l(e);var i={byfilter:f(),t:(new Date).getTime()};var i=r.mix(extData,i);var o=comInsData.GET_TPL_LIST_URL;o+=(o.indexOf("?")>-1?"&":"?")+$.param(i);r.request(o,list.callback,function(){})}})};var f=function(){var r={};var n=i.length;for(var o=0;o<n;o++){var c=r[a(i[o],"value")]=[];var f=e(t(u.ITEM_CLASS+"-"+u.AFTER_FIX),i[o]);var v=f.length;for(var l=0;l<v;l++){var s=a(f[l],"value");if("all"===s){delete r[a(i[o],"value")]}else{c.push(s)}}}return $.stringify(r)};var v=function(r,n){var a=e(t(u.ITEM_CLASS),n);for(var i=0,o=a.length;i<o;i++){if(r===a[i]){return true}}return false};var l=function(r){for(var n=0,a=i.length;n<a;n++){if(v(r,i[n])){var o=e(t(u.ITEM_CLASS+"-"+u.AFTER_FIX),i[n]);for(var c=0,f=o.length;c<f;c++){if(o[c]!==r){o[c].className="OP_LOG_OTHERS "+tpl+"-"+u.ITEM_CLASS}}}}r.className="OP_LOG_OTHERS "+tpl+"-"+u.ITEM_CLASS+"-"+u.AFTER_FIX};return{init:o}}(common);var list=function(){var r=common.qq;var t=common.format;var e=[];var a=""+"<li>"+'<div class="ecl-common-insurance-result-left">'+'<a href="#{website}" target="_blank" tn='+extData.tn+">"+'<img src="#{logoSrc}" '+'width="56" '+'height="56" '+'alt="#{title}"'+"/>"+"</a>"+"</div>"+'<div class="ecl-common-insurance-result-mid">'+"<h5>"+'<a target="_blank" class="c-title" href="#{url}" tn="'+extData.tn+'">#{title}</a>#{official}'+"</h5>"+"<p>";var n=""+'<span class="ecl-common-insurance-project">'+"<label>•</label>"+"<span>#{proType}：#{proPay}</span>"+"</span>";var i=""+"</p>"+"<div>";var c="<span>#{feature}</span>";var l=""+"</div>"+"</div>"+'<div class="ecl-common-insurance-result-right">'+"<p>"+'<span class="ecl-common-insurance-result-price-sign">'+"&yen;"+"</span>"+'<span class="ecl-common-insurance-result-price-number">'+"#{price}"+"</span>"+'<span class="ecl-common-insurance-result-price-after">'+"#{paymentMethod}"+"</span>"+"</p>"+'<a target="_blank" href="#{url}" tn="'+extData.tn+'">'+"查看详情"+"</a>"+"</div>"+"</li>";var o=function(t){var a=t.data;var n=r("result");var i=a.list;cardAnti.setTimesign(a.signTime);e.push("<ul>");for(var c=0,l=i.length;c<l;c++){u(i[c])}e.push("</ul>");n.innerHTML=e.join("");s(a["redirect_url"])};var u=function(r){var n="";if(r.official&&r.official==1){n=""+'<span class="c-text c-text-public c-text-mult c-gap-left-small">'+"官网"+"</span>"}e.push(t(a,{official:n,logoSrc:r.logoSrc,url:r.url,title:r.title,website:r.website,feature:r.feature}));f(r.projects||[]);e.push(i);v(r.featureItems||[]);e.push(t(l,{price:r.price,paymentMethod:r["payment_method"],url:r.url}))};var s=function(t){var e=r("result-more");var a=r("title");$(e).find("a").last().attr("href",t);$(a).children().first().attr("href",t)};var f=function(r){var a="";for(var i=0,c=r.length;i<c;i++){a+=t(n,{proType:r[i].type,proPay:r[i].pay})}e.push(a)};var v=function(r){var a="";for(var n=0,i=r.length;n<i;n++){if(n>5){break}a+=t(c,{feature:r[n]})}e.push(a)};var p=function(){e.length=0;e=[]};var m=function(r){o(r);p()};return{callback:m}}();var Anti=function(e){var t="EC_ZHIXIN";var n=0;var r=0,a,i,o,c,l,u,f,s,v,p,m,d;i=o=c=l=u=f=s=v=p=m=d=0;function h(t){var n=window.event||t;d=n.target||n.srcElement;while(d&&d.tagName!="A"){d=d.parentNode;if(d===e){return false}}v=(new Date).getTime();i=9999;o=n.clientX;c=n.clientY;if(!p){f=0}else{f=v-p}if(w()){T()}}function g(){m=(new Date).getTime();i=m-v;if(w()){T()}}function E(e){var t=window.event||e;r+=1;if(!l){l=t.clientX}if(!u){u=t.clientY}p=(new Date).getTime()}function w(){a=0;s=/\?url\=([^\.]+)\./.exec(d.href);if(s){for(var e=0;e<r*n%99+9;++e){a+=s[1].charCodeAt(i*e%s[1].length)}return true}return false}function T(){var e="&ck="+[a,r,i,o,c,l,u,f].join(".");if(d.href){var t=d.href;if(t.indexOf("&ck=")==-1){d.href+=e}else{d.href=t.replace(/&ck=[\w.]*/,e)}}}var _=0;var S={};function y(e,n,r){for(var a in n){S[++_]=r[a];e[t+a]=_;if(window.attachEvent){e.attachEvent("on"+n[a],r[a])}else{e.addEventListener(n[a],r[a],false)}}}var b={};function A(t,n){for(var r=0,a;a=t[r];r++){if(window.attachEvent){e.attachEvent("on"+a,n[r])}else if(window.addEventListener){e.addEventListener(a,n[r],false)}else{e["on"+a]=n[r]}b[a]=n[r]}}function x(t){for(var n=0,r;r=t[n];n++){if(window.detachEvent){e.detachEvent("on"+r,b[r])}else if(window.addEventListener){e.removeEventListener(r,b[r],false)}else{e["on"+r]=function(){}}}}function L(e,n){for(var r in n){var a=e[t+r];var i=S[a];if(i){if(window.detachEvent){e.detachEvent("on"+n[r],i)}else{e.removeEventListener(n[r],i)}}S[a]=null}}function F(e,t){var n=[];var r=t.getElementsByTagName("A");var a=" "+e+" ";for(var i=0,o;o=r[i];i++){if(o.className&&(" "+o.className+" ").indexOf(a)>=0){n.push(o)}}return n}return{getAntiTag:function(){return t},setTimesign:function(e){n=e},bind:function(){A(["mouseover","mousedown","mouseup"],[E,h,g])},unbind:function(){x(["mouseover","mousedown","mouseup"])}}};var cardAnti = new Anti($('.' + tpl)[0]);
        cardAnti.bind();
        cardAnti.setTimesign("{%$tplData.signTime|escape:'javascript'%}");
        common.enter(function () {
            filter.init();
        });

        this.dispose = function () {
            if (!ajaxFinished) {
                list.callback = undefined;
            }
        };
    });
</script>
{%/block%}