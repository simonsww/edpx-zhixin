{%extends 'c_base.tpl'%}
{%block name="title"%}
{%/block%}
{%block name='content'%}
<style>.ecl-common-insurance{font-size:15px}.ecl-common-insurance em{color:#c00}.ecl-common-insurance .ecl-common-insurance-title{padding-bottom:8px;margin:0}.ecl-common-insurance .ecl-common-insurance-card{border:solid 1px #e3e3e3;box-shadow:1px 1px 3px #EEE;padding:0 9px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-filter{padding:12px 0 2px;border-bottom:solid 1px #f3f3f3}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-filter form{overflow:hidden;font-size:15px;line-height:12px;vertical-align:bottom;padding-bottom:12px;*zoom:1}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-filter form span{font-weight:bold;float:left;padding:2px 4px 2px 0}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-filter form ul{float:left;font-size:0;overflow:hidden;list-style:none}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-filter form ul .ecl-common-insurance-filter-condition{float:left;padding:0 12px;cursor:pointer;font-size:15px;text-align:center;color:#0103cd;height:16px;line-height:16px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-filter form ul .ecl-common-insurance-filter-condition:hover{text-decoration:underline}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-filter form ul .ecl-common-insurance-filter-condition-unlimited{margin-right:3px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-filter form ul .ecl-common-insurance-filter-condition-spliter{float:left;border-right:solid 1px #d8d8d8;margin:2px 8px 0 7px;height:13px;width:0}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-filter form ul .ecl-common-insurance-filter-condition-nowat{float:left;font-size:15px;padding:0 12px;cursor:pointer;text-align:center;background-color:#388bff;color:#fff;height:16px;line-height:16px;cursor:default}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result ul li{padding:9px 0 4px;*padding-bottom:1px;border-bottom:solid 1px #f3f3f3;position:relative;*zoom:1}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result ul li:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-more{border:0;font-size:15px;padding:6px 0;text-align:center}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-more a{color:#0102ca;font-size:15px;font-family:simsun;line-height:12px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-left{width:72px;height:72px;float:left;margin-right:10px;margin-top:1px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-left img{width:100%;height:100%}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-mid{float:left;width:450px;word-wrap:break-word;word-break:break-all;overflow:hidden;font-size:15px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-mid h5{height:16px;margin:0 0 12px;font-weight:normal}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-mid h5 a{font-size:18px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-mid p{word-break:break-all;word-wrap:break-word;height:16px;margin-bottom:11px;*margin-bottom:10px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-mid p .ecl-common-insurance-project{width:176px;line-height:16px;float:left;position:relative}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-mid p .ecl-common-insurance-project label{color:#BBB;display:inline-block;position:absolute;font-size:15px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-mid p .ecl-common-insurance-project span{color:#000;padding-left:11px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-mid div{color:#666}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-mid div span{display:inline-block;*display:inline;*zoom:1;width:108px;margin:0 0 1px 11px;overflow:hidden;height:20px;word-wrap:normal;white-space:nowrap;*height:auto;*margin-bottom:5px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-right{width:96px;float:right;margin-top:23px;position:absolute;right:0}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-right p{color:#fe8500;font-size:0;text-align:center;height:21px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-right p .ecl-common-insurance-result-price-sign{font-size:15px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-right p .ecl-common-insurance-result-price-number{font:17px arial bold;padding:0 2px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-right p .ecl-common-insurance-result-price-after{font-size:15px;margin-right:2px}.ecl-common-insurance .ecl-common-insurance-card .ecl-common-insurance-result-right a{margin:0 auto;float:right;width:65px;height:20px;margin-right:1px;text-align:center;font-size:15px;line-height:20px;cursor:pointer;text-decoration:none}.ecl-footer{padding-top:5px;color:green;font-size:15px}{%fe_fn_c_css css='text'%}
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
                    <a href="{%$unit.website|escape:'html'%}" target="_blank" tn="{%$extData.tn|escape:'html'%}"><img src="{%$unit.logoSrc|escape:'html'%}" width="72" height="72" alt="{%$unit.title|escape:'html'%}"/></a>
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
                    <a class="c-btn c-btn-primary" target="_blank" href="{%$unit.url|escape:'html'%}" tn="{%$extData.tn|escape:'html'%}">查看详情</a>
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
        var ajaxFinished = false;var common=function(){var n=function(n,t){n="."+n;return t?$(t).find(n):$(n)};var t=function(n){return n?tpl+"-"+n:tpl};var e=function(n){var t=$("<div></div>");t.text(n);return t.html()};var r=function(n,t){return $(n).attr(t)};var u=function(n,t){n=String(n);var e=Array.prototype.slice.call(arguments,1);var r=Object.prototype.toString;if(e.length){e=e.length==1?t!==null&&/\[object Array\]|\[object Object\]/.test(r.call(t))?t:e:e;return n.replace(/#\{(.+?)\}/g,function(n,t){var u=e[t];if("[object Function]"==r.call(u)){u=u(t)}return"undefined"==typeof u?"":u})}return n};var i=function(e,r){return n(t(e),r)[0]};var a=function(n){if(typeof n==="function"){n()}};var o=function(n,t){for(var e in n){t[e]=n[e]}return t};var c=function(n,t,e){t=t||new Function;e=e||new Function;$.ajax({url:n,type:"GET",dataType:"json",success:function(n){var r={};if(!n){e();ajaxFinished=true;return}try{if(typeof n==="object"){r=n}else{r=$.parseJSON(n)}}catch(u){e();ajaxFinished=true;return}t(r);ajaxFinished=true},error:function(n){e();ajaxFinished=true}})};var f=function(n){return new Function("return ("+n+")")()};var s=function(n){var t={"\b":"\\b","	":"\\t","\n":"\\n","\f":"\\f","\r":"\\r",'"':'\\"',"\\":"\\\\"};function e(n){if(/["\\\x00-\x1f]/.test(n)){n=n.replace(/["\\\x00-\x1f]/g,function(n){var e=t[n];if(e){return e}e=n.charCodeAt();return"\\u00"+Math.floor(e/16).toString(16)+(e%16).toString(16)})}return'"'+n+'"'}function r(n){var t=["["],e=n.length,r,u,i;for(u=0;u<e;u++){i=n[u];switch(typeof i){case"undefined":case"function":case"unknown":break;default:if(r){t.push(",")}t.push(s(i));r=1}}t.push("]");return t.join("")}function u(n){return n<10?"0"+n:n}function i(n){return'"'+n.getFullYear()+"-"+u(n.getMonth()+1)+"-"+u(n.getDate())+"T"+u(n.getHours())+":"+u(n.getMinutes())+":"+u(n.getSeconds())+'"'}switch(typeof n){case"undefined":return"undefined";case"number":return isFinite(n)?String(n):"null";case"string":return e(n);case"boolean":return String(n);default:if(n===null){return"null"}else if(n instanceof Array){return r(n)}else if(n instanceof Date){return i(n)}else{var a=["{"],o,c;for(var f in n){if(Object.prototype.hasOwnProperty.call(n,f)){c=n[f];switch(typeof c){case"undefined":case"unknown":case"function":break;default:if(o){a.push(",")}o=1;a.push(s(f)+":"+s(c))}}}a.push("}");return a.join("")}}};return{q:n,getClass:t,getAttr:r,qq:i,mix:o,enter:a,request:c,format:u,encodeHTML:e,parseJSON:f,stringify:s}}();var filter=function(t){var r=t.getClass;var n=t.qq;var e=t.q;var a=t.getAttr;var i=e(r("filter-group"));var u={ITEM_CLASS:"filter-condition",AFTER_FIX:"nowat"};var o=function(){f()};var f=function(){$(n("")).on("click",function(n){n=n||window.event;var e=n.target||n.srcElement;var a=e.className;if(a.indexOf(r(u.ITEM_CLASS))!==-1&&a.indexOf(u.AFTER_FIX)===-1){s(e);var i={byfilter:c(),t:(new Date).getTime()};var i=t.mix(extData,i);var o=comInsData.GET_TPL_LIST_URL;o+=(o.indexOf("?")>-1?"&":"?")+$.param(i);t.request(o,list.callback,function(){})}})};var c=function(){var n={};var o=i.length;for(var f=0;f<o;f++){var c=n[a(i[f],"value")]=[];var l=e(r(u.ITEM_CLASS+"-"+u.AFTER_FIX),i[f]);var s=l.length;for(var v=0;v<s;v++){var g=a(l[v],"value");if("all"===g){delete n[a(i[f],"value")]}else{c.push(g)}}}return t.stringify(n)};var l=function(t,n){var a=e(r(u.ITEM_CLASS),n);for(var i=0,o=a.length;i<o;i++){if(t===a[i]){return true}}return false};var s=function(t){for(var n=0,a=i.length;n<a;n++){if(l(t,i[n])){var o=e(r(u.ITEM_CLASS+"-"+u.AFTER_FIX),i[n]);for(var f=0,c=o.length;f<c;f++){if(o[f]!==t){o[f].className="OP_LOG_OTHERS "+tpl+"-"+u.ITEM_CLASS}}}}t.className="OP_LOG_OTHERS "+tpl+"-"+u.ITEM_CLASS+"-"+u.AFTER_FIX};return{init:o}}(common);var list=function(){var r=common.qq;var t=common.format;var e=[];var n=""+"<li>"+'<div class="ecl-common-insurance-result-left">'+'<a href="#{website}" target="_blank" tn='+extData.tn+">"+'<img src="#{logoSrc}" '+'width="56" '+'height="56" '+'alt="#{title}"'+"/>"+"</a>"+"</div>"+'<div class="ecl-common-insurance-result-mid">'+"<h5>"+'<a target="_blank" class="c-title" href="#{url}" tn="'+extData.tn+'">#{title}</a>#{official}'+"</h5>"+"<p>";var a=""+'<span class="ecl-common-insurance-project">'+"<label>•</label>"+"<span>#{proType}：#{proPay}</span>"+"</span>";var i=""+"</p>"+"<div>";var u="<span>#{feature}</span>";var c=""+"</div>"+"</div>"+'<div class="ecl-common-insurance-result-right">'+"<p>"+'<span class="ecl-common-insurance-result-price-sign">'+"&yen;"+"</span>"+'<span class="ecl-common-insurance-result-price-number">'+"#{price}"+"</span>"+'<span class="ecl-common-insurance-result-price-after">'+"#{paymentMethod}"+"</span>"+"</p>"+'<a class="c-btn c-btn-primary" target="_blank" href="#{url}" tn="'+extData.tn+'">'+"查看详情"+"</a>"+"</div>"+"</li>";var o=function(t){var n=t.data;var a=r("result");var i=n.list;cardAnti.setTimesign(n.signTime);e.push("<ul>");for(var u=0,c=i.length;u<c;u++){l(i[u])}e.push("</ul>");a.innerHTML=e.join("");s(n["redirect_url"])};var l=function(r){var a="";if(r.official&&r.official==1){a=""+'<span class="c-text c-text-public c-text-mult c-gap-left-small">'+"官网"+"</span>"}e.push(t(n,{official:a,logoSrc:r.logoSrc,url:r.url,title:r.title,website:r.website,feature:r.feature}));f(r.projects||[]);e.push(i);v(r.featureItems||[]);e.push(t(c,{price:r.price,paymentMethod:r["payment_method"],url:r.url}))};var s=function(t){var e=r("result-more");var n=r("title");$(e).find("a").last().attr("href",t);$(n).children().first().attr("href",t)};var f=function(r){var n="";for(var i=0,u=r.length;i<u;i++){n+=t(a,{proType:r[i].type,proPay:r[i].pay})}e.push(n)};var v=function(r){var n="";for(var a=0,i=r.length;a<i;a++){if(a>5){break}n+=t(u,{feature:r[a]})}e.push(n)};var p=function(){e.length=0;e=[]};var h=function(r){o(r);p()};return{callback:h}}();var Anti=function(e){var n="EC_ZHIXIN";var t=0;var r=0,a,i,o,u,c,f,s,l,v,p,d,h;i=o=u=c=f=s=l=v=p=d=h=0;function m(n){var t=window.event||n;h=t.target||t.srcElement;while(h&&h.tagName!="A"){h=h.parentNode;if(h===e){return false}}v=(new Date).getTime();i=9999;o=t.clientX;u=t.clientY;if(!p){s=0}else{s=v-p}if(E()){T()}}function g(){d=(new Date).getTime();i=d-v;if(E()){T()}}function w(e){var n=window.event||e;r+=1;if(!c){c=n.clientX}if(!f){f=n.clientY}p=(new Date).getTime()}function E(){a=0;l=/\?url\=([^\.]+)\./.exec(h.href);if(l){for(var e=0;e<r*t%99+9;++e){a+=l[1].charCodeAt(i*e%l[1].length)}return true}return false}function T(){var e="&ck="+[a,r,i,o,u,c,f,s].join(".");if(h.href){var n=h.href;if(n.indexOf("&ck=")==-1){h.href+=e}else{h.href=n.replace(/&ck=[\w.]*/,e)}}}var y=0;var b={};function S(e,t,r){for(var a in t){b[++y]=r[a];e[n+a]=y;if(window.attachEvent){e.attachEvent("on"+t[a],r[a])}else{e.addEventListener(t[a],r[a],false)}}}var _={};function x(n,t){for(var r=0,a;a=n[r];r++){if(window.attachEvent){e.attachEvent("on"+a,t[r])}else if(window.addEventListener){e.addEventListener(a,t[r],false)}else{e["on"+a]=t[r]}_[a]=t[r]}}function A(n){for(var t=0,r;r=n[t];t++){if(window.detachEvent){e.detachEvent("on"+r,_[r])}else if(window.addEventListener){e.removeEventListener(r,_[r],false)}else{e["on"+r]=function(){}}}}function F(e,t){for(var r in t){var a=e[n+r];var i=b[a];if(i){if(window.detachEvent){e.detachEvent("on"+t[r],i)}else{e.removeEventListener(t[r],i)}}b[a]=null}}function L(e,n){var t=[];var r=n.getElementsByTagName("A");var a=" "+e+" ";for(var i=0,o;o=r[i];i++){if(o.className&&(" "+o.className+" ").indexOf(a)>=0){t.push(o)}}return t}return{getAntiTag:function(){return n},setTimesign:function(e){t=e},bind:function(){x(["mouseover","mousedown","mouseup"],[w,m,g])},unbind:function(){A(["mouseover","mousedown","mouseup"])}}};var cardAnti = new Anti($('.' + tpl)[0]);
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