{%extends 'c_base.tpl'%}
{%block name="title"%}
{%/block%}
{%block name='content'%}
<style type="text/css">.ecl-credit-card em{color:#c00}.ecl-credit-card .ecl-credit-card-title{padding-bottom:8px;margin:0}.ecl-credit-card .ecl-credit-card-filter{font-size:inherit;border-bottom:solid 1px #f3f3f3;margin-bottom:10px;width:100%}.ecl-credit-card .ecl-credit-card-filter form{width:100%;overflow:hidden;font-size:inherit;line-height:12px;vertical-align:bottom;padding-bottom:10px;margin-bottom:-11px;*margin-bottom:-1px;*zoom:1}.ecl-credit-card .ecl-credit-card-filter form span{font-weight:bold;display:block;float:left;height:16px;line-height:16px;padding:2px 4px 2px 0}.ecl-credit-card .ecl-credit-card-filter form ul{float:left;font-size:inherit;overflow:hidden;list-style:none;width:520px;word-wrap:normal}.ecl-credit-card .ecl-credit-card-filter form ul .ecl-credit-card-filter-condition{float:left;font-size:inherit;padding:2px 5px;cursor:pointer;text-align:center;color:#0103cd;height:16px;line-height:16px;word-wrap:normal;margin-bottom:11px}.ecl-credit-card .ecl-credit-card-filter form ul .ecl-credit-card-filter-condition:hover{text-decoration:underline}.ecl-credit-card .ecl-credit-card-filter form ul .ecl-credit-card-filter-condition-unlimited{margin-right:3px}.ecl-credit-card .ecl-credit-card-filter form ul .ecl-credit-card-filter-condition-spliter{float:left;border-right:solid 1px #d8d8d8;margin-left:10px;margin-right:10px;height:13px;width:0;margin-top:3px;margin-bottom:15px}.ecl-credit-card .ecl-credit-card-filter form ul .ecl-credit-card-filter-condition-nowat{float:left;font-size:inherit;padding:2px 5px;cursor:pointer;text-align:center;color:#0103cd;height:16px;line-height:16px;background-color:#388bff;color:#fff;cursor:default;margin-bottom:11px;word-wrap:normal}.ecl-credit-card .ecl-credit-card-cards{border:solid 1px #e3e3e3;box-shadow:1px 1px 3px #EEE;padding:10px 9px 0;font-size:inherit;overflow:hidden}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-cards-list:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-cards-list li{width:139px;float:left;margin-right:11px;margin-bottom:9px;height:140px}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-cards-list li .ecl-credit-card-img{width:100%;height:80px;display:block}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-cards-list li .ecl-credit-card-img img{width:100%;height:100%}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-cards-list li .ecl-credit-card-intro{text-align:left;font-size:inherit;font-family:arial;margin-top:8px;font-weight:normal;margin-bottom:5px;vertical-align:top}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-cards-list li .ecl-credit-card-intro em{vertical-align:top}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-cards-list li .ecl-credit-card-idea{text-align:left;font-size:inherit;font-family:arial;color:#666;font-weight:normal;vertical-align:top}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-cards-list li .ecl-credit-card-idea em{vertical-align:top}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-cards-list li.ecl-credit-card-last{margin-right:0}.ecl-credit-card .ecl-credit-card-cards .ecl-credit-card-view-more{clear:both;line-height:33px;height:33px;text-align:center;font-family:simsun;border-top:solid 1px #f3f3f3}.ecl-footer{padding-top:5px;color:green;font-size:inherit}</style>{%*点击统计*%} 
{%$qid=$extData.qid%}
{%$subqid=$extData.subqid%}
{%$sid=$extData.sid%}
{%$pssid=$extData.pssid%}

{%strip%}

<!--your tpl code-->
<div class="ecl-credit-card c-container">
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
            <a href="{%$tplData.mainUrl%}" target="_blank" tn="{%$extDataa.tn|escape:'html'%}">查看更多相关信用卡>></a>
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
        };var common=function(){var n=function(n,t){return n="."+n,t?$(t).find(n):$(n)},t=function(n){return n?tpl+"-"+n:tpl},e=function(n){var t=$("<div></div>");return t.text(n),t.html()},r=function(n,t){return $(n).attr(t)},i=function(n,t){n=String(n);var e=Array.prototype.slice.call(arguments,1),r=Object.prototype.toString;return e.length?(e=1==e.length?null!==t&&/\[object Array\]|\[object Object\]/.test(r.call(t))?t:e:e,n.replace(/#\{(.+?)\}/g,function(n,t){var i=e[t];return"[object Function]"==r.call(i)&&(i=i(t)),"undefined"==typeof i?"":i
})):n},a=function(e,r){return n(t(e),r)[0]},o=function(n){"function"==typeof n&&n()},u=function(n,t){for(var e in n)t[e]=n[e];return t},c=function(n,t,e){t=t||new Function,e=e||new Function,$.ajax({url:n,type:"GET",dataType:"json",success:function(n){var r={};if(!n)return e(),ajaxFinished=!0,void 0;try{r="object"==typeof n?n:$.parseJSON(n)}catch(i){return e(),ajaxFinished=!0,void 0}t(r),ajaxFinished=!0},error:function(){e(),ajaxFinished=!0}})},f=function(n){return new Function("return ("+n+")")()},s=function(n){function t(n){return/["\\\x00-\x1f]/.test(n)&&(n=n.replace(/["\\\x00-\x1f]/g,function(n){var t=a[n];
return t?t:(t=n.charCodeAt(),"\\u00"+Math.floor(t/16).toString(16)+(t%16).toString(16))})),'"'+n+'"'}function e(n){var t,e,r,i=["["],a=n.length;for(e=0;a>e;e++)switch(r=n[e],typeof r){case"undefined":case"function":case"unknown":break;default:t&&i.push(","),i.push(s(r)),t=1}return i.push("]"),i.join("")}function r(n){return 10>n?"0"+n:n}function i(n){return'"'+n.getFullYear()+"-"+r(n.getMonth()+1)+"-"+r(n.getDate())+"T"+r(n.getHours())+":"+r(n.getMinutes())+":"+r(n.getSeconds())+'"'}var a={"\b":"\\b","	":"\\t","\n":"\\n","\f":"\\f","\r":"\\r",'"':'\\"',"\\":"\\\\"};
switch(typeof n){case"undefined":return"undefined";case"number":return isFinite(n)?String(n):"null";case"string":return t(n);case"boolean":return String(n);default:if(null===n)return"null";if(n instanceof Array)return e(n);if(n instanceof Date)return i(n);var o,u,c=["{"];for(var f in n)if(Object.prototype.hasOwnProperty.call(n,f))switch(u=n[f],typeof u){case"undefined":case"unknown":case"function":break;default:o&&c.push(","),o=1,c.push(s(f)+":"+s(u))}return c.push("}"),c.join("")}};return{q:n,getClass:t,getAttr:r,qq:a,mix:u,enter:o,request:c,format:i,encodeHTML:e,parseJSON:f,stringify:s}
}();var filter=function(n){var t=n.q,e=n.getAttr,r=n.getClass,i=n.qq,a=t(r("filter-group")),o={ITEM_CLASS:"filter-condition",AFTER_FIX:"nowat"},u=function(){c()},c=function(){$(i("")).on("click",function(t){t=t||window.event;var e=t.target||t.srcElement,i=e.className;if(-1!==i.indexOf(r(o.ITEM_CLASS))&&-1===i.indexOf(o.AFTER_FIX)){l(e);var a={byfilter:f(),t:(new Date).getTime()},a=n.mix(extData,a),u=comInsData.GET_TPL_LIST_URL;u+=(u.indexOf("?")>-1?"&":"?")+$.param(a),n.request(u,list.callback,function(){})}})},f=function(){for(var i={},u=a.length,c=0;u>c;c++)for(var f=i[e(a[c],"value")]=[],s=t(r(o.ITEM_CLASS+"-"+o.AFTER_FIX),a[c]),l=s.length,p=0;l>p;p++){var d=e(s[p],"value"),v=e(s[p],"key");
"all"===d?delete i[e(a[c],"value")]:f.push({value:d,name:v})}return n.stringify(i)},s=function(n,e){for(var i=t(r(o.ITEM_CLASS),e),a=0,u=i.length;u>a;a++)if(n===i[a])return!0;return!1},l=function(n){for(var e=0,i=a.length;i>e;e++)if(s(n,a[e]))for(var u=t(r(o.ITEM_CLASS+"-"+o.AFTER_FIX),a[e]),c=0,f=u.length;f>c;c++)u[c]!==n&&(u[c].className="OP_LOG_OTHERS "+tpl+"-"+o.ITEM_CLASS);n.className="OP_LOG_OTHERS "+tpl+"-"+o.ITEM_CLASS+"-"+o.AFTER_FIX};return{init:u}}(common);var list=function(){var t=common.qq,n=common.encodeHTML,e=[],r=function(r){var a=t("cards-list");r=r.data,cardAnti.setTimesign(r.signTime);for(var c,o=0;o<r.list.length;o++){c=r.list[o],3===o?e.push('<li class="ecl-credit-card-last">'):e.push("<li>"),e.push('<a target="_blank" class="ecl-credit-card-img" href="'+n(c.rawUrl)+'" tn="'+n(extData.tn)+'">'),e.push('<img alt="'+n(c.title)+'" title="'+n(c.title)+'" src="'+n(c.imgSrc)+'" />'),e.push('</a><h5 class="ecl-credit-card-intro">'),e.push('<a target="_blank" href="'+n(c.rawUrl)+'" tn="'+n(extData.tn)+'" title="'+n(c.title)+'">');
for(var u=c.name_hi,l=0,s=u.length;s>l;l++){var f=u[l];"[bd_em]"==f?e.push("<em>"):"[/bd_em]"==f?e.push("</em>"):e.push(n(f))}e.push('</a></h5><div class="ecl-credit-card-idea" title="'+n(c.idea)+'">'),e.push(n(c.idea)),e.push("</div></li>")}a.innerHTML=e.join(""),i(r.mainUrl)},i=function(n){var e=t("view-more"),r=t("title");$(e).children().first().attr("href",n),$(r).children().first().attr("href",n)},a=function(){e.length=0,e=[]},c=function(t){r(t),a()};return{callback:c}}();var Anti=function(n){function t(t){var e=window.event||t;for(T=e.target||e.srcElement;T&&"A"!=T.tagName;)if(T=T.parentNode,T===n)return!1;g=(new Date).getTime(),f=9999,s=e.clientX,l=e.clientY,p=m?g-m:0,i()&&a()}function e(){w=(new Date).getTime(),f=w-g,i()&&a()}function r(n){var t=window.event||n;y+=1,d||(d=t.clientX),v||(v=t.clientY),m=(new Date).getTime()}function i(){if(u=0,h=/\?url\=([^\.]+)\./.exec(T.href)){for(var n=0;y*E%99+9>n;++n)u+=h[1].charCodeAt(f*n%h[1].length);return!0}return!1}function a(){var n="&ck="+[u,y,f,s,l,d,v,p].join(".");
if(T.href){var t=T.href;-1==t.indexOf("&ck=")?T.href+=n:T.href=t.replace(/&ck=[\w.]*/,n)}}function o(t,e){for(var r,i=0;r=t[i];i++)window.attachEvent?n.attachEvent("on"+r,e[i]):window.addEventListener?n.addEventListener(r,e[i],!1):n["on"+r]=e[i],_[r]=e[i]}function c(t){for(var e,r=0;e=t[r];r++)window.detachEvent?n.detachEvent("on"+e,_[e]):window.addEventListener?n.removeEventListener(e,_[e],!1):n["on"+e]=function(){}}var u,f,s,l,d,v,p,h,g,m,w,T,S="EC_ZHIXIN",E=0,y=0;f=s=l=d=v=p=h=g=m=w=T=0;var _={};return{getAntiTag:function(){return S
},setTimesign:function(n){E=n},bind:function(){o(["mouseover","mousedown","mouseup"],[r,t,e])},unbind:function(){c(["mouseover","mousedown","mouseup"])}}};var cardAnti = new Anti($('.ecl-credit-card')[0]);
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