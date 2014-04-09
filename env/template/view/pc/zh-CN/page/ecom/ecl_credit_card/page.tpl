{%extends 'c_base.tpl'%}
{%block name="title"%}{%/block%}
{%block name='content'%}
<style type="text/css">.ecl-credit-card{font-size:14px;width:538px}.ecl-credit-card em{color:#c00}.ecl-credit-card .ecl-credit-card-title{padding-bottom:8px;margin:0}.ecl-credit-card .ecl-credit-card-filter{border-bottom:solid 1px #f3f3f3;margin-bottom:10px}.ecl-credit-card .ecl-credit-card-filter form{overflow:hidden;font-size:13px;line-height:12px;vertical-align:bottom;padding-bottom:10px;margin-bottom:-11px;*margin-bottom:-1px;*zoom:1}.ecl-credit-card .ecl-credit-card-filter form span{font-weight:bold;display:block;float:left;height:16px;line-height:16px;padding:2px 4px 2px 0}.ecl-credit-card .ecl-credit-card-filter form ul{float:left;font-size:0;overflow:hidden;list-style:none;width:458px;word-wrap:normal}.ecl-credit-card .ecl-credit-card-filter form ul .ecl-credit-card-filter-condition{float:left;font-size:13px;padding:2px 5px;cursor:pointer;text-align:center;color:#0103cd;height:16px;line-height:16px;word-wrap:normal;margin-bottom:11px}.ecl-credit-card .ecl-credit-card-filter form ul .ecl-credit-card-filter-condition:hover{text-decoration:underline}.ecl-credit-card .ecl-credit-card-filter form ul .ecl-credit-card-filter-condition-unlimited{margin-right:3px}.ecl-credit-card .ecl-credit-card-filter form ul .ecl-credit-card-filter-condition-spliter{float:left;border-right:solid 1px #d8d8d8;margin-left:10px;margin-right:10px;height:13px;width:0;margin-top:3px;margin-bottom:15px}.ecl-credit-card .ecl-credit-card-filter form ul .ecl-credit-card-filter-condition-nowat{float:left;font-size:13px;padding:2px 5px;cursor:pointer;text-align:center;color:#0103cd;height:16px;line-height:16px;background-color:#388bff;color:#fff;cursor:default;margin-bottom:11px;word-wrap:normal}.ecl-credit-card .ecl-credit-card-cards{border:solid 1px #e3e3e3;box-shadow:1px 1px 3px #EEE;padding:10px 9px 0;font-size:13px;overflow:hidden}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-cards-list:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-cards-list li{width:121px;float:left;margin-right:11px;margin-bottom:9px;height:120px}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-cards-list li .ecl-credit-card-img{width:100%;height:75px;display:block}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-cards-list li .ecl-credit-card-img img{width:100%;height:100%}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-cards-list li .ecl-credit-card-intro{text-align:left;font-size:13px;font-family:arial;margin-top:8px;font-weight:normal;margin-bottom:5px;vertical-align:top}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-cards-list li .ecl-credit-card-intro em{vertical-align:top}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-cards-list li .ecl-credit-card-idea{text-align:left;font-size:13px;font-family:arial;color:#666;font-weight:normal;vertical-align:top}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-cards-list li .ecl-credit-card-idea em{vertical-align:top}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-cards-list li.ecl-credit-card-last{margin-right:0}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-view-more{clear:both;line-height:33px;height:33px;text-align:center;font-family:simsun;border-top:solid 1px #f3f3f3;font-size:13px}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-view-more span{text-align:left;display:inline-block;width:393px}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-view-more span label{font-weight:bold}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-view-more a{color:#0102ca;font-family:simsun;font-size:12px;line-height:12px}.ecl-footer{padding-top:5px;color:green;font-size:12px}</style>{%*点击统计*%} 
{%$qid=$extData.qid%}
{%$subqid=$extData.subqid%}
{%$sid=$extData.sid%}
{%$pssid=$extData.pssid%}

{%strip%}

<!--your tpl code-->
<div class="ecl-credit-card">
    <h4 class="ecl-credit-card-title">
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
    <div class="ecl-credit-card-cards">
        <div class="ecl-credit-card-filter">
            {%foreach $tplData.filter as $unit%}
                {%assign var="allflag" value=0%}
                {%foreach $unit.items as $item%}
                    {%if $item.status eq 1%}
                        {%assign var="allflag" value=1%}
                    {%/if%}
                {%/foreach%}
            <form data-click="{'rsv_credit_opt':'filter','fm':'beha'}">
                <span>{%$unit.name|escape:'html'%}：</span>
                <ul class="ecl-credit-card-filter-group" value="{%$unit.key|escape:'html'%}">
                    <li value="all" class="{%if $allflag eq 1%}ecl-credit-card-filter-condition OP_LOG_OTHERS{%else%}ecl-credit-card-filter-condition-nowat OP_LOG_OTHERS{%/if%}">不限</li>
                    {%foreach $unit.items as $item%}
                        <li class="ecl-credit-card-filter-condition-spliter"></li>
                        <li value="{%$item.value|escape:'html'%}" key="{%$item.name|escape:'html'%}" class="{%if $item.status eq 0%}ecl-credit-card-filter-condition OP_LOG_OTHERS{%else%}ecl-credit-card-filter-condition-nowat OP_LOG_OTHERS{%/if%}">{%$item.name|escape:'html'%}</li>
                    {%/foreach%}
                </ul>
            </form>
            {%/foreach%}
        </div>
        <ul class="ecl-credit-card-cards-list">
            {%foreach $tplData.list as $item%}
            {%if ($item@index == 3)%}
            <li class="ecl-credit-card-last">
            {%else%}
            <li>
            {%/if%}
                <a target="_blank" class="ecl-credit-card-img" href="{%$item.rawUrl|escape:'html'%}" tn="{%$extData.tn|escape:'html'%}">
                    <img alt="{%$item.title|escape:'html'%}" title="{%$item.title|escape:'html'%}" src="{%$item.imgSrc|escape:'html'%}" />
                </a>
                <h5 class="ecl-credit-card-intro">
                    <a target="_blank" href="{%$item.rawUrl|escape:'html'%}" tn="{%$extData.tn|escape:'html'%}" title="{%$item.title|escape:'html'%}">
                        {%foreach $item.name_hi as $txt%}
                            {%if $txt eq "[bd_em]"%}
                                <em>
                            {%else if $txt eq "[/bd_em]"%}
                                </em>
                            {%else%}
                                {%$txt|escape:'html'%}
                            {%/if%}
                        {%/foreach%}
                    </a>
                </h5>
                <div class="ecl-credit-card-idea" title="{%$item.idea|escape:'html'%}">
                    {%$item.idea|escape:'html'%}
                </div>
            </li>
            {%/foreach%}
        </ul>
        <div class="ecl-credit-card-view-more">
            {%if $tplData.activity eq 1%}
            <span>
                <label>活动：</label>
                <a target="_blank" href="{%$tplData.activityUrl|escape:'html'%}" tn="{%$extData.tn|escape:'html'%}">
                    {%foreach $tplData.activityTitle as $pipe%}
                        {%if $pipe eq "[bd_em]"%}
                            <em>
                        {%else if $pipe eq "[/bd_em]"%}
                            </em>
                        {%else%}
                            {%$pipe|escape:'html'%}
                        {%/if%}
                    {%/foreach%}
                </a>
                <i class="c-text c-text-danger c-gap-left-small">热</i>
            </span>
            {%/if%}
            <a href="{%$tplData.mainUrl%}" target="_blank">查看更多相关信用卡>></a>
        </div>
    </div>
    <div class='ecl-footer'>
        caifu.baidu.com
    </div>
</div>

{%/strip%}<script>
    A.init(function () {
        var extData = {};
        {%foreach from=$extData key=prop item=value%}extData['{%$prop|escape:"javascript"%}'] = '{%$value|escape:"javascript"%}';{%/foreach%}
        var card = this;
        var tpl = 'ecl-credit-card';
        
        var comInsData = {
            'GET_TPL_LIST_URL': '{%$tplData.ajaxUrl%}'
        };var common=function(){var t=function(t,n){t="."+t;return n?$(n).find(t):$(t)};var n=function(t){return t?tpl+"-"+t:tpl};var r=function(t){var n=$("<div></div>");n.text(t);return n.html()};var e=function(t,n){return $(t).attr(n)};var u=function(t,n){t=String(t);var r=Array.prototype.slice.call(arguments,1);var e=Object.prototype.toString;if(r.length){r=r.length==1?n!==null&&/\[object Array\]|\[object Object\]/.test(e.call(n))?n:r:r;return t.replace(/#\{(.+?)\}/g,function(t,n){var u=r[n];if("[object Function]"==e.call(u)){u=u(n)}return"undefined"==typeof u?"":u})}return t};var a=function(r,e){return t(n(r),e)[0]};var i=function(t){if(typeof t==="function"){t()}};var o=function(t,n){for(var r in t){n[r]=t[r]}return n};var c=function(t,n,r){n=n||new Function;r=r||new Function;$.ajax({url:t,type:"GET",dataType:"json",success:function(t){var e={};if(!t){r();ajaxFinished=true;return}try{if(typeof t==="object"){e=t}else{e=$.parseJSON(t)}}catch(u){r();ajaxFinished=true;return}n(e);ajaxFinished=true},error:function(t){r();ajaxFinished=true}})};var f=function(t){return new Function("return ("+t+")")()};return{q:t,getClass:n,getAttr:e,qq:a,mix:o,enter:i,request:c,format:u,encodeHTML:r,parseJSON:f}}();var filter=function(r){var t=r.q;var n=r.getAttr;var e=r.getClass;var a=r.qq;var i=t(e("filter-group"));var u={ITEM_CLASS:"filter-condition",AFTER_FIX:"nowat"};var o=function(){c()};var c=function(){$(a("")).on("click",function(t){t=t||window.event;var n=t.target||t.srcElement;var a=n.className;if(a.indexOf(e(u.ITEM_CLASS))!==-1&&a.indexOf(u.AFTER_FIX)===-1){l(n);var i={byfilter:v(),t:(new Date).getTime()};var i=r.mix(extData,i);var o=comInsData.GET_TPL_LIST_URL;o+=(o.indexOf("?")>-1?"&":"?")+$.param(i);r.request(o,list.callback,function(){})}})};var v=function(){var r={};var a=i.length;for(var o=0;o<a;o++){var c=r[n(i[o],"value")]=[];var v=t(e(u.ITEM_CLASS+"-"+u.AFTER_FIX),i[o]);var f=v.length;for(var l=0;l<f;l++){var s=n(v[l],"value");var S=n(v[l],"key");if(s==="all"){delete r[n(i[o],"value")]}else{c.push({value:s,name:S})}}}return $.stringify(r)};var f=function(r,n){var a=t(e(u.ITEM_CLASS),n);for(var i=0,o=a.length;i<o;i++){if(r===a[i]){return true}}return false};var l=function(r){for(var n=0,a=i.length;n<a;n++){if(f(r,i[n])){var o=t(e(u.ITEM_CLASS+"-"+u.AFTER_FIX),i[n]);for(var c=0,v=o.length;c<v;c++){if(o[c]!==r){o[c].className="OP_LOG_OTHERS "+tpl+"-"+u.ITEM_CLASS}}}}r.className="OP_LOG_OTHERS "+tpl+"-"+u.ITEM_CLASS+"-"+u.AFTER_FIX};return{init:o}}(common);var list=function(){var r=common.qq;var t=common.encodeHTML;var e=[];var a=function(a){var i=r("cards-list");a=a.data;cardAnti.setTimesign(a.signTime);for(var c=0,l;c<a.list.length;c++){l=a.list[c];if(c===3){e.push('<li class="ecl-credit-card-last">')}else{e.push("<li>")}e.push('<a target="_blank" class="ecl-credit-card-img" href="'+t(l.rawUrl)+'" tn="'+t(extData.tn)+'">');e.push('<img alt="'+t(l.title)+'" title="'+t(l.title)+'" src="'+t(l.imgSrc)+'" />');e.push('</a><h5 class="ecl-credit-card-intro">');e.push('<a target="_blank" href="'+t(l.rawUrl)+'" tn="'+t(extData.tn)+'" title="'+t(l.title)+'">');var u=l["name_hi"];for(var o=0,v=u.length;o<v;o++){var f=u[o];if(f=="[bd_em]"){e.push("<em>")}else if(f=="[/bd_em]"){e.push("</em>")}else{e.push(t(f))}}e.push('</a></h5><div class="ecl-credit-card-idea" title="'+t(l.idea)+'">');e.push(t(l.idea));e.push("</div></li>")}i.innerHTML=e.join("");n(a.mainUrl)};var n=function(t){var e=r("view-more");var a=r("title");$(e).children().first().attr("href",t);$(a).children().first().attr("href",t)};var i=function(){e.length=0;e=[]};var c=function(r){a(r);i()};return{callback:c}}();var Anti=function(e){var t="EC_ZHIXIN";var n=0;var r=0,a,i,o,c,f,u,v,l,s,d,h,m;i=o=c=f=u=v=l=s=d=h=m=0;function g(t){var n=window.event||t;m=n.target||n.srcElement;while(m&&m.tagName!="A"){m=m.parentNode;if(m===e){return false}}s=(new Date).getTime();i=9999;o=n.clientX;c=n.clientY;if(!d){v=0}else{v=s-d}if(w()){T()}}function p(){h=(new Date).getTime();i=h-s;if(w()){T()}}function E(e){var t=window.event||e;r+=1;if(!f){f=t.clientX}if(!u){u=t.clientY}d=(new Date).getTime()}function w(){a=0;l=/\?url\=([^\.]+)\./.exec(m.href);if(l){for(var e=0;e<r*n%99+9;++e){a+=l[1].charCodeAt(i*e%l[1].length)}return true}return false}function T(){var e="&ck="+[a,r,i,o,c,f,u,v].join(".");if(m.href){var t=m.href;if(t.indexOf("&ck=")==-1){m.href+=e}else{m.href=t.replace(/&ck=[\w.]*/,e)}}}var _=0;var S={};function A(e,n,r){for(var a in n){S[++_]=r[a];e[t+a]=_;if(window.attachEvent){e.attachEvent("on"+n[a],r[a])}else{e.addEventListener(n[a],r[a],false)}}}var L={};function F(t,n){for(var r=0,a;a=t[r];r++){if(window.attachEvent){e.attachEvent("on"+a,n[r])}else if(window.addEventListener){e.addEventListener(a,n[r],false)}else{e["on"+a]=n[r]}L[a]=n[r]}}function x(t){for(var n=0,r;r=t[n];n++){if(window.detachEvent){e.detachEvent("on"+r,L[r])}else if(window.addEventListener){e.removeEventListener(r,L[r],false)}else{e["on"+r]=function(){}}}}function I(e,n){for(var r in n){var a=e[t+r];var i=S[a];if(i){if(window.detachEvent){e.detachEvent("on"+n[r],i)}else{e.removeEventListener(n[r],i)}}S[a]=null}}function O(e,t){var n=[];var r=t.getElementsByTagName("A");var a=" "+e+" ";for(var i=0,o;o=r[i];i++){if(o.className&&(" "+o.className+" ").indexOf(a)>=0){n.push(o)}}return n}return{getAntiTag:function(){return t},setTimesign:function(e){n=e},bind:function(){F(["mouseover","mousedown","mouseup"],[E,g,p])},unbind:function(){x(["mouseover","mousedown","mouseup"])}}};var cardAnti = new Anti($('.ecl-credit-card')[0]);
        cardAnti.bind();
        cardAnti.setTimesign("{%$tplData.signTime|escape:'javascript'%}");
        common.enter(function () {
            filter.init();
        });

        var ajaxFinished = false;

        this.dispose = function () {
            if (!ajaxFinished) {
                list.callback = undefined;
            }
        };
    });
</script>
{%/block%}