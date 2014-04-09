{%extends 'c_base.tpl'%}
{%block name="title"%}
<div class="ecl-car-accurate" data-click="{'rsv_car_city': '{%$tplData.currentCity.name|escape:'html'%}'}">
    <h4 class="t ecl-car-accurate-title c-gap-bottom-small">
        <a class="ecl-car-accurate-title-link" target="_blank" href="{%$tplData.mainUrl|escape:'html'%}" tn="{%$extData.tn|escape:'html'%}">
            {%strip%}
            {%foreach $tplData.title as $pipe%}
                {%if $pipe eq "[em]"%}<em>
                {%else if $pipe eq "[/em]"%}</em>
                {%else%}{%$pipe|escape:'html'%}
                {%/if%}
            {%/foreach%}
            {%/strip%}
        </a>
    </h4>
    <div id="ecl-car-accurate-city" class="ecl-car-accurate-ui-city OP_LOG_OTHERS" data-click="{'fm':'beha'}">
        <div class="ecl-car-accurate-ui-city-box">
            <div class="ecl-car-accurate-ui-city-value">{%$tplData.currentCity.name|escape:'html'%}</div>
            <span class="ecl-car-accurate-ui-city-shadow"></span>
        </div>
        <div class="ecl-car-accurate-ui-city-show"></div>
    </div>
</div>
{%/block%}
{%block name='content'%}
<style type="text/css">.ecl-car-accurate-ui-city{margin-right:18px;font-size:13px;background:#FFF;height:24px;display:inline-block;position:relative;border:1px solid #d7d7d7;border-top:1px solid #999;border-left:1px solid #999;*display:inline;*zoom:1;vertical-align:bottom}.ecl-car-accurate-ui-city-box{cursor:pointer}.ecl-car-accurate-ui-city-value{float:left;display:inline-block;padding:0 8px;line-height:25px;color:#2b2b2b;*display:inline;*zoom:1}.ecl-car-accurate-ui-city-shadow{float:left;background:#fbfbfb url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons_aea40f46.png) no-repeat -402px 5px;width:24px;height:24px;display:inline-block;border-left:1px solid #d7d7d7}.ecl-car-accurate-ui-city-show{display:none;background:#FFF;top:24px;right:-1px;width:350px;border:1px solid #bbb;padding:5px 10px 0 10px;cursor:default;position:absolute}.ecl-car-accurate-ui-city-show label{color:#666;margin-left:-2px;display:inline-block;*display:inline;*zoom:1}.ecl-car-accurate-ui-city-show label em{color:#00c;padding-left:10px}.ecl-car-accurate-ui-city-show ul{margin:5px 0 5px 0;border-top:1px solid #d8d8d8}.ecl-car-accurate-ui-city-show ul li{display:inline-block;padding:3px 0;width:80px;margin:2px 0 2px 5px;cursor:pointer;*display:inline;*zoom:1;color:#00c}.ecl-car-accurate-ui-city-show ul li span{padding:0 7px}.ecl-car-accurate-ui-city-show ul li span:hover{background:#388bff;color:#FFF}.ecl-car-accurate-ui-city-show ul li.ecl-car-accurate-ui-city-remen{width:55px}.ecl-car-accurate-ui-city-tabs{border-top:1px solid #d8d8d8;padding:5px 0 5px 1px}.ecl-car-accurate-ui-city-tabs a{display:inline-block;font-family:"Arial";font-size:14px;text-align:center;width:21px;padding:0;margin-right:10px;color:#00c;cursor:pointer;*display:inline;*zoom:1}.ecl-car-accurate-ui-city-tabs a:hover{background:#CCC;color:#FFF}.ecl-car-accurate-ui-city-tabs a:active{background:#388bff;color:#FFF}.ecl-car-accurate-ui-city-tabs .ecl-car-accurate-ui-city-select{background:#388bff;color:#FFF}.ecl-car-accurate-ui-city-tabs .ecl-car-accurate-ui-city-select:hover{background:#388bff;color:#FFF}.ecl-car-accurate{position:relative;height:29px}.ecl-car-accurate:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-car-accurate .ecl-car-accurate-title{float:left;margin-top:0;font-size:16px}.ecl-car-accurate .ecl-car-accurate-ui-city{position:absolute;right:-1px;z-index:2;margin-right:0}.ecl-car-accurate-table{color:#000}.ecl-car-accurate-table .ecl-car-accurate-table-boardtime,.ecl-car-accurate-table .ecl-car-accurate-table-mileage,.ecl-car-accurate-table .ecl-car-accurate-table-price{text-align:center}.ecl-car-accurate-table td.ecl-car-accurate-table-price{color:#ff8400}.ecl-car-accurate-table .ecl-car-accurate-table-title{width:290px;white-space:nowrap}.ecl-car-accurate-table .ecl-car-accurate-table-title a{display:block;width:290px;white-space:nowrap;word-wrap:normal;overflow:hidden;text-overflow:ellipsis}.ecl-car-accurate-table .ecl-car-accurate-table-boardtime{width:58px}.ecl-car-accurate-table .ecl-car-accurate-table-mileage{width:80px}.ecl-car-accurate-more{padding-top:9px;text-align:center;font-size:13px;line-height:1.54}{%fe_fn_c_css css='table'%}
</style>{%*点击统计*%} 
{%$sessionid=$extData.sessionid%}
{%$subqid=$extData.subqid%}
{%$sid=$extData.sid%}
{%$pssid=$extData.pssid%}

{%strip%}

<div>
    <div class="c-border ecl-car-accurate-card" data-click="{'rsv_car_city': '{%$tplData.currentCity.name|escape:'html'%}'}">
        <div class="ecl-car-accurate-table">
            <table class="c-table">
                <thead>
                    <tr>
                        <th class="ecl-car-accurate-table-title">车型</th>
                        <th class="ecl-car-accurate-table-boardtime">车龄</th>
                        <th class="ecl-car-accurate-table-mileage">表显里程</th>
                        <th class="ecl-car-accurate-table-price">转让价</th>
                    </tr>
                </thead>
                <tbody>
                    {%foreach $tplData.cars.list as $car%}
                    <tr>
                        <td class="ecl-car-accurate-table-title">
                            <a href="{%$car.url|escape:'html'%}" title="{%$car.title|escape:'html'%}" target="_blank">{%$car.title|escape:'html'%}</a>
                        </td>
                        <td class="ecl-car-accurate-table-boardtime">{%$car.boardTime|escape:'html'%}年</td>
                        <td class="ecl-car-accurate-table-mileage">
                            {%if $car.mileage lt 1000%}
                                {%$car.mileage|escape:html%}公里
                            {%else%}
                                {%($car.mileage/10000)|string_format:"%.2f"|escape:html%}万公里
                            {%/if%}
                        </td>
                        <td class="ecl-car-accurate-table-price">{%$car.price|escape:html%}万</td>
                    </tr>
                    {%/foreach%}
                </tbody>
            </table>
        </div>
        <div class="ecl-car-accurate-more">
            <a href="{%$tplData.moreUrl|escape:'html'%}" target="_blank">查看更多车源>></a>
        </div>
    </div>
    <div class='c-showurl c-gap-top-small'>
        ershouche.baidu.com
    </div>
</div>

{%/strip%}
<script type="text/javascript" data-compress="off">
    A.setup('CAR_ACCURATE_DATA', {
        allCities: "{%$tplData.allCities|@json_encode|escape:'javascript'%}",
        hotCities: "{%$tplData.hotCities|@json_encode|escape:'javascript'%}",
        ajaxUrl: "{%$tplData.ajaxUrl|escape:'javascript'%}",
        extData: "{%$extData|@json_encode|escape:'javascript'%}",
        timesign: "{%$tplData.timesign|escape:'javascript'%}",
        clickData: {
            subqid: "{%$extData.subqid|escape:'javascript'%}",
            wd: "{%$extData.wd|escape:'javascript'%}",
            key: "{%$extData.key|escape:'javascript'%}",
            srcid: "{%$extData.srcid|escape:'javascript'%}",
            resourceid: "{%$extData.resourceid|escape:'javascript'%}",
            qid: "{%$extData.qid|escape:'javascript'%}",
            pvid: "{%$extData.pvid|escape:'javascript'%}",
            pssid: "{%$extData.pssid|escape:'javascript'%}",
            tn: "{%$extData.tn|escape:'javascript'%}",
            zt: "{%$extData.zt|escape:'javascript'%}",
            debug: "{%$extData.debug|escape:'javascript'%}"
        }
    });
</script>
<script type="text/javascript">
    A.init(function () {
        var card = this;
        var citySelect;

        var data = card.data.CAR_ACCURATE_DATA;
        var ajaxFinished = false;var common=function(){var t=function(t,n){t="."+t;return n?$(n).find(t):$(t)};var n=function(t){return t?tpl+"-"+t:tpl};var r=function(t){var n=$("<div></div>");n.text(t);return n.html()};var e=function(t,n){return $(t).attr(n)};var u=function(t,n){t=String(t);var r=Array.prototype.slice.call(arguments,1);var e=Object.prototype.toString;if(r.length){r=r.length==1?n!==null&&/\[object Array\]|\[object Object\]/.test(e.call(n))?n:r:r;return t.replace(/#\{(.+?)\}/g,function(t,n){var u=r[n];if("[object Function]"==e.call(u)){u=u(n)}return"undefined"==typeof u?"":u})}return t};var a=function(r,e){return t(n(r),e)[0]};var i=function(t){if(typeof t==="function"){t()}};var o=function(t,n){for(var r in t){n[r]=t[r]}return n};var c=function(t,n,r){n=n||new Function;r=r||new Function;$.ajax({url:t,type:"GET",dataType:"json",success:function(t){var e={};if(!t){r();ajaxFinished=true;return}try{if(typeof t==="object"){e=t}else{e=$.parseJSON(t)}}catch(u){r();ajaxFinished=true;return}n(e);ajaxFinished=true},error:function(t){r();ajaxFinished=true}})};var f=function(t){return new Function("return ("+t+")")()};return{q:t,getClass:n,getAttr:e,qq:a,mix:o,enter:i,request:c,format:u,encodeHTML:r,parseJSON:f}}();var Anti=function(e){var n="EC_ZHIXIN";var t=0;var r=0,i,a,o,u,f,c,v,s,l,d,w,h;a=o=u=f=c=v=s=l=d=w=h=0;function m(n){var t=window.event||n;h=t.target||t.srcElement;while(h&&h.tagName!="A"){h=h.parentNode;if(h===e){return false}}l=(new Date).getTime();a=9999;o=t.clientX;u=t.clientY;if(!d){v=0}else{v=l-d}if(E()){j()}}function p(){w=(new Date).getTime();a=w-l;if(E()){j()}}function g(e){var n=window.event||e;r+=1;if(!f){f=n.clientX}if(!c){c=n.clientY}d=(new Date).getTime()}function E(){i=0;s=/\?url\=([^\.]+)\./.exec(h.href);if(s){for(var e=0;e<r*t%99+9;++e){i+=s[1].charCodeAt(a*e%s[1].length)}return true}return false}function j(){var e="&ck="+[i,r,a,o,u,f,c,v].join(".");if(h.href){var n=h.href;if(n.indexOf("&ck=")==-1){h.href+=e}else{h.href=n.replace(/&ck=[\w.]*/,e)}}}var y=0;var x={};function T(e,t,r){for(var i in t){x[++y]=r[i];e[n+i]=y;if(window.attachEvent){e.attachEvent("on"+t[i],r[i])}else{e.addEventListener(t[i],r[i],false)}}}var F={};function b(n,t){for(var r=0,i;i=n[r];r++){if(window.attachEvent){e.attachEvent("on"+i,t[r])}else if(window.addEventListener){e.addEventListener(i,t[r],false)}else{e["on"+i]=t[r]}F[i]=t[r]}}function A(n){for(var t=0,r;r=n[t];t++){if(window.detachEvent){e.detachEvent("on"+r,F[r])}else if(window.addEventListener){e.removeEventListener(r,F[r],false)}else{e["on"+r]=function(){}}}}function N(e,t){for(var r in t){var i=e[n+r];var a=x[i];if(a){if(window.detachEvent){e.detachEvent("on"+t[r],a)}else{e.removeEventListener(t[r],a)}}x[i]=null}}function L(e,n){var t=[];var r=n.getElementsByTagName("A");var i=" "+e+" ";for(var a=0,o;o=r[a];a++){if(o.className&&(" "+o.className+" ").indexOf(i)>=0){t.push(o)}}return t}return{getAntiTag:function(){return n},setTimesign:function(e){t=e},bind:function(){b(["mouseover","mousedown","mouseup"],[g,m,p])},unbind:function(){A(["mouseover","mousedown","mouseup"])}}};var main=function(){var e;var t;var n="<tr>"+'<td class="ecl-car-accurate-table-title">'+'<a href="#{url}" title="#{title}" target="_blank">#{title}</a>'+"</td>"+'<td class="ecl-car-accurate-table-boardtime">#{boardTime}年</td>'+'<td class="ecl-car-accurate-table-mileage">#{mileage}</td>'+'<td class="ecl-car-accurate-table-price">#{price}万</td>'+"</tr>";function a(n){e=n||{};t=new Anti($(".ecl-car-accurate-card").get(0));t.bind();t.setTimesign(e.timesign);var a="http://s1.bdstatic.com/r/www/cache/biz/ecom/";require.config({paths:{"zxui/ui":a+"zxui/20131210/ui/",CitySelect:a+"ui/20140115/City"}});require(["CitySelect"],function(t){citySelect=new t({main:""+e.prefix+"-city",prefix:""+e.prefix+"-ui-city",data:r(),onafterselect:i})})}function r(){var t=e.hotCities;var n=e.allCities;var a=[];var r=[];$.each(t,function(e,t){r.push(t.name)});a.push("热门城市|"+r.join(","));$.each(n,function(e,t){var n=[];$.each(t,function(e,t){n.push(t.name)});a.push(e+"|"+n.join(","))});return a}function i(){common.request(o(),function(e){var a=e.data;if(e.status==1){$(".ecl-car-accurate-table tbody").html('<tr><td colspan="4" style="text-align:center">系统异常，请稍后再试~</td></tr>');return}t.setTimesign(a.timesign);c();var r="";$.each(a.title,function(e,t){if(t=="[em]"){r+="<em>"}else if(t=="[/em]"){r+="</em>"}else{r+=common.encodeHTML(t)}});$("a.ecl-car-accurate-title-link").html(r);$("a.ecl-car-accurate-title-link").attr("href",encodeURI(a.mainUrl));$(".ecl-car-accurate-more a").attr("href",encodeURI(a.moreUrl));if(a.cars.list.length==0){$(".ecl-car-accurate-table tbody").html('<tr><td colspan="4" style="text-align:center">暂无车辆~</td></tr>');return}var i=[];$.each(a.cars.list,function(e,t){t.url=encodeURI(t.url);t.title=common.encodeHTML(t.title);t.boardTime=common.encodeHTML(t.boardTime);if(t.mileage<1e3){t.mileage=t.mileage+"公里"}else{t.mileage=Math.ceil(t.mileage/10);t.mileage=t.mileage/1e3;t.mileage=t.mileage+"万公里"}t.mileage=common.encodeHTML(t.mileage);i.push(common.format(n,t))});$(".ecl-car-accurate-table tbody").html(i.join(""))},function(){$(".ecl-car-accurate-table tbody").html('<tr><td colspan="4" style="text-align:center">'+"数据异常，请稍候再试～"+"</td></tr>")})}function c(){var e=citySelect.getValue();var t='{"rsv_car_city":"'+e+'"}';$(".ecl-car-accurate").attr("data-click",t);$(".ecl-car-accurate-card").attr("data-click",t)}function o(){var t=citySelect.getValue();var n;$.each(e.allCities,function(e,a){$.each(a,function(e,a){if(a.name==t){n=a.value;return}})});var a=e.extData;var r=e.ajaxUrl+"&"+$.param($.extend({city:n},e.clickData));return r}return{init:a,flush:i}}();common.enter(function() {
            main.init({
                prefix: 'ecl-car-accurate',
                allCities: common.parseJSON(data.allCities),
                hotCities: common.parseJSON(data.hotCities),
                ajaxUrl: data.ajaxUrl,
                extData: common.parseJSON(data.extData),
                timesign: data.timesign,
                clickData: data.clickData
            });
        });

        this.dispose = function() {
            if (!ajaxFinished) {
                main.flush = undefined;
            }
            
            if (citySelect && citySelect.dispose) {
                citySelect.dispose();
            }
        };
    });
</script>
{%/block%}