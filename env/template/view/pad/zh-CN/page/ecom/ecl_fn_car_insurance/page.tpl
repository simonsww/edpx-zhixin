{%extends 'c_base.tpl'%}
{%block name="title"%}
<h4 class="t ecl-fn-car-insurance-title c-gap-bottom-small">
    <a class="ecl-fn-car-insurance-title-link" target="_blank" href="{%$tplData.mpUrl|escape:'html'%}" tn="{%$extData.tn|escape:'html'%}">
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
{%/block%}
{%block name='content'%}
<style type="text/css">.ecl-fn-car-insurance-ui-city{margin-right:18px;font-size:15px;background:#FFF;width:113px;height:24px;display:inline-block;position:relative;border:1px solid #d7d7d7;border-top:1px solid #999;border-left:1px solid #999;*display:inline;*zoom:1;vertical-align:bottom}.ecl-fn-car-insurance-ui-city-box{cursor:pointer}.ecl-fn-car-insurance-ui-city-value{display:inline-block;padding:1px 0 0 15px;color:#2b2b2b;*display:inline;*zoom:1}.ecl-fn-car-insurance-ui-city-shadow{background:#fbfbfb url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons_aea40f46.png) no-repeat -402px 5px;width:24px;height:24px;display:inline-block;position:absolute;border-left:1px solid #d7d7d7;right:0;top:0}.ecl-fn-car-insurance-ui-city-show{display:none;background:#FFF;top:24px;left:-1px;width:350px;border:1px solid #bbb;padding:5px 10px 0 10px;cursor:default;position:absolute}.ecl-fn-car-insurance-ui-city-show label{color:#666;margin-left:-2px;display:inline-block;*display:inline;*zoom:1}.ecl-fn-car-insurance-ui-city-show label em{color:#00c;padding-left:10px}.ecl-fn-car-insurance-ui-city-show ul{margin:5px 0 5px 0;border-top:1px solid #d8d8d8}.ecl-fn-car-insurance-ui-city-show ul li{display:inline-block;padding:3px 0;width:80px;margin:2px 0 2px 5px;cursor:pointer;*display:inline;*zoom:1;color:#00c}.ecl-fn-car-insurance-ui-city-show ul li span{padding:0 7px}.ecl-fn-car-insurance-ui-city-show ul li span:hover{background:#388bff;color:#FFF}.ecl-fn-car-insurance-ui-city-show ul li.ecl-fn-car-insurance-ui-city-remen{width:77px}.ecl-fn-car-insurance-ui-city-tabs{border-top:1px solid #d8d8d8;padding:5px 0 5px 1px}.ecl-fn-car-insurance-ui-city-tabs a{display:inline-block;font-family:"Arial";font-size:14px;text-align:center;width:21px;padding:0;margin-right:10px;color:#00c;cursor:pointer;*display:inline;*zoom:1}.ecl-fn-car-insurance-ui-city-tabs a:hover{background:#CCC;color:#FFF}.ecl-fn-car-insurance-ui-city-tabs a:active{background:#388bff;color:#FFF}.ecl-fn-car-insurance-ui-city-tabs .ecl-fn-car-insurance-ui-city-select{background:#388bff;color:#FFF}.ecl-fn-car-insurance-ui-city-tabs .ecl-fn-car-insurance-ui-city-select:hover{background:#388bff;color:#FFF}.ecl-fn-car-insurance-tabs{color:#666;width:100%;_position:relative;_z-index:1}.ecl-fn-car-insurance-tabs ul{height:27px;border-bottom:1px solid #d9d9d9;background-color:#fafafa}.ecl-fn-car-insurance-tabs ul .ecl-fn-car-insurance-tabs-split{height:14px;width:0;padding:0;margin-top:6px;border-left:1px solid #dedede}.ecl-fn-car-insurance-tabs ul li{float:left;*display:inline;_position:relative;top:1px;height:25px;line-height:27px;border-style:solid;border-width:2px 1px 0 1px;border-color:transparent;*border-color:#fafafa #fafafa #d9d9d9;list-style:none;cursor:pointer;white-space:nowrap;overflow:hidden;text-align:center}.ecl-fn-car-insurance-tabs ul .ecl-fn-car-insurance-tabs-item{width:99px}.ecl-fn-car-insurance-tabs ul .ecl-fn-car-insurance-tabs-item-cur{padding-bottom:1px;border-color:#2c99ff #e4e4e4 #FFF #dedede;background-color:#FFF;color:#000;font-weight:bold}.ecl-fn-car-insurance-card{padding-bottom:0!important}.ecl-fn-car-insurance-title{font-size:1.17em}.ecl-fn-car-insurance-search{padding:0 0 15px 0;position:relative;z-index:2}.ecl-fn-car-insurance-search table{border-collapse:collapse}.ecl-fn-car-insurance-search table tr td{padding-top:6px}.ecl-fn-car-insurance-search-btn{font-size:inherit!important}.ecl-fn-car-insurance-search-label{font-weight:bold;padding-right:5px}.ecl-fn-car-insurance-search-unit{padding-right:30px}.ecl-fn-car-insurance-search-ui{vertical-align:middle}.ecl-fn-car-insurance-search-ui form{position:relative}.ecl-fn-car-insurance-search-ui form input{display:inline-block;padding:2px 10px;width:93px;margin-right:5px;border:1px solid #999;border-bottom-color:#d8d8d8;border-right-color:#d8d8d8;outline:0;border-radius:0;font-size:15px;vertical-align:top;overflow:hidden}.ecl-fn-car-insurance-search-common{visibility:visible}.ecl-fn-car-insurance-search-unit .ecl-fn-car-insurance-search-label{width:37px}.ecl-fn-car-insurance-search-btn{position:absolute;right:0;_right:11px;top:7px;z-index:10}.ecl-fn-car-insurance-tips{display:inline-block;padding:5px 10px;width:220px;position:absolute;top:-45px;background:#fff;z-index:999;border:1px solid #c7c7c7;color:#333;display:none;left:-25px;box-shadow:1px 1px 3px #ccc}.ecl-fn-car-insurance-tips span{position:absolute;color:#c7c7c7;top:26px;_top:27px;left:45px;z-index:1000;text-shadow:1px 1px 3px #ccc}.ecl-fn-car-insurance-tips span span{position:absolute;color:#FFF;top:-2px;left:0;z-index:500;text-shadow:0 0 0 #fff}.ecl-fn-car-insurance-hrow{height:32px;line-height:32px;*zoom:1}.ecl-fn-car-insurance-hrow-index,.ecl-fn-car-insurance-row-index{float:left;position:relative;top:9px}.ecl-fn-car-insurance-row{cursor:pointer;border-top:1px solid #e3e3e3;height:32px;line-height:32px;*zoom:1}.ecl-fn-car-insurance-row:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-fn-car-insurance-row-hide{display:none;border-top:0}.ecl-fn-car-insurance-hrow-title,.ecl-fn-car-insurance-row-title{display:inline-block;float:left;width:330px}.ecl-fn-car-insurance-hrow-title a,.ecl-fn-car-insurance-row-title a{text-decoration:none}.ecl-fn-car-insurance-hrow-price,.ecl-fn-car-insurance-row-price{display:inline-block;width:210px;float:left}.ecl-fn-car-insurance-hrow-price label,.ecl-fn-car-insurance-row-price label{color:#888}.ecl-fn-car-insurance-hrow-price span,.ecl-fn-car-insurance-row-price span{color:#ff8400;font-weight:bold}.ecl-fn-car-insurance-row-price label{cursor:pointer}.ecl-fn-car-insurance-row-icon{position:relative;*top:7px}.ecl-fn-car-insurance-info{display:inline-block}.ecl-fn-car-insurance-info-hide{border-top:1px solid #e3e3e3;display:none}.ecl-fn-car-insurance-info-desc:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-fn-car-insurance-info-desc-left{display:inline-block;float:left}.ecl-fn-car-insurance-info-desc-left img{float:left}.ecl-fn-car-insurance-info-desc-right{float:right;width:486px}.ecl-fn-car-insurance-info-desc-right:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-fn-car-insurance-info-desc-right span{float:left;width:425px;line-height:20px}.ecl-fn-car-insurance-info-desc-right label{float:left;width:50px;line-height:20px;color:#888}.ecl-fn-car-insurance-info-items{padding-left:90px}.ecl-fn-car-insurance-info-items:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-fn-car-insurance-info-items span{width:91px;display:block;white-space:nowrap;height:20px;line-height:20px;float:left;padding-left:13px}.ecl-fn-car-insurance-info-items span i{font-style:normal}.ecl-fn-car-insurance-info-items span label{font-size:20px;padding-right:5px;vertical-align:middle;color:#2196ff}.ecl-fn-car-insurance-unselect{color:#aaa}.ecl-fn-car-insurance-unselect i{font-style:normal;text-decoration:line-through}.ecl-fn-car-insurance-unselect label{color:#aaa}.ecl-fn-car-insurance-info-oprz{display:inline-block;padding:0 0 15px 105px}.ecl-fn-car-insurance-info-oprz a{font-size:15px}.ecl-fn-car-insurance-error{text-align:center;font-size:14px;font-weight:bold;padding:15px 0;color:#217cc6}{%fe_fn_c_css css='index'%}
{%fe_fn_c_css css='btn'%}
{%fe_fn_c_css css='icon'%}
</style>{%*点击统计*%} 
{%$qid=$extData.qid%}
{%$subqid=$extData.subqid%}
{%$sid=$extData.sid%}
{%$pssid=$extData.pssid%}

{%strip%}
<div class="ecl-fn-car-insurance">
    <!--result-->
    <div class="c-border ecl-fn-car-insurance-card">
        <div class="ecl-fn-car-insurance-search">
            <a class="c-btn ecl-fn-car-insurance-search-btn OP_LOG_BTN" data-click="{'rsv_car_ins_opt':'search', 'fm':'beha'}" target="_blank" tn="{%$extData.tn|escape:'html'%}">快速报价</a>
            <div class="ecl-fn-car-insurance-search-common">
                <table>
                    <tr>
                        <td class="ecl-fn-car-insurance-search-label">所在城市</td>
                        <td class="ecl-fn-car-insurance-search-ui" data-click="{'rsv_car_ins_opt':'selectCity', 'fm':'beha'}">
                            <div id="ecl-fn-car-insurance-city" class="ecl-fn-car-insurance-ui-city OP_LOG_OTHERS">
                                <div class="ecl-fn-car-insurance-ui-city-box">
                                    <div class="ecl-fn-car-insurance-ui-city-value">{%$tplData.city|escape:'html'%}</div>
                                    <span class="ecl-fn-car-insurance-ui-city-shadow"></span>
                                </div>
                                <div class="ecl-fn-car-insurance-ui-city-show"></div>
                            </div>
                        </td>
                        <td class="ecl-fn-car-insurance-search-label">总购车款</td>
                        <td class="ecl-fn-car-insurance-search-ui" data-click="{'rsv_car_ins_opt':'selectPrice', 'fm':'beha'}">
                            <form>
                                <div class="ecl-fn-car-insurance-tips"><span>▼<span>▼</span></span></div>
                                <input class="ecl-fn-car-insurance-carPrice OP_LOG_OTHERS" type="text" value="{%$tplData.carPrice|escape:'html'%}"/>
                            </form>
                        </td>
                        <td class="ecl-fn-car-insurance-search-unit">
                            <span>万元</span>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="ecl-fn-car-insurance-tabs" data-click="{'rsv_fn_car_ins_opt': 'tabs', 'fm':'beha'}">
            <ul>
                {%foreach $tplData.tabs as $tab%}
                    {%if $tab.status eq '1'%}
                        {%assign var="num" value=$tab@index+1%}
                    {%/if%}
                    {%if $tab@index neq 0%}
                    <li class="ecl-fn-car-insurance-tabs-split" {%if $tab.status eq '1' or $tab@index eq $num%}style="visibility: hidden;"{%/if%}></li>{%/if%}<li class="ecl-fn-car-insurance-tabs-item{%if $tab.status eq '1'%} ecl-fn-car-insurance-tabs-item-cur{%/if%} OP_LOG_OTHERS" data-value="{%$tab.value|escape:'html'%}" data-status="{%$tab.status|escape:'html'%}">{%$tab.name|escape:'html'%}</li>
                {%/foreach%}
            </ul>
        </div>
        <div class="ecl-fn-car-insurance-result">
            {%foreach $tplData.list as $item%}
                <div class="ecl-fn-car-insurance-info {%if $item@index neq 0%}ecl-fn-car-insurance-info-hide{%/if%}" data-index="{%$item@index%}">
                    <div class="ecl-fn-car-insurance-hrow">
                        <span class="ecl-fn-car-insurance-hrow-index c-index c-index-hot{%$item@index+1%}">{%$item@index+1%}</span>
                        <div class="ecl-fn-car-insurance-hrow-title c-gap-left-small">
                            <a href="{%$item.lpUrl|escape:'html'%}" target="_blank" title="{%$item.titleAll|escape:'html'%}" data-click="{'rsv_fn_car_ins_opt': 'landingPage', 'fm': 'alop'}" tn="{%$extData.tn|escape:'html'%}" >{%$item.title|escape:'html'%}</a>
                        </div>
                        <div class="ecl-fn-car-insurance-hrow-price">
                            <label>参考报价：</label><span>&yen;{%$item.price|escape:'html'%}起</span>
                        </div>
                    </div>
                    <div class="ecl-fn-car-insurance-info-desc">
                        <div class="ecl-fn-car-insurance-info-desc-left">
                            <a class="OP_LOG_OTHERS" href="{%$item.lpUrl|escape:'html'%}" target="_blank" title="{%$item.titleAll|escape:'html'%}" tn="{%$extData.tn|escape:'html'%}" data-click="{'fm':'alop'}"><img src="{%$item.logoUrl|escape:'html'%}" alt="{%$item.titleAll|escape:'html'%}" width="72" height="72"/></a>
                        </div>
                        <div class="ecl-fn-car-insurance-info-desc-right c-gap-left-small">
                            <label>优惠：</label>
                            <span>{%$item.bonus|escape:'html'%}</span>
                            <label>特色：</label>
                            <span>{%$item.feature|escape:'html'%}</span>
                        </div>
                        <div class="ecl-fn-car-insurance-info-items">
                            {%foreach $item.content as $con%}
                                <span {%if $con.status eq 0%}class="ecl-fn-car-insurance-unselect"{%/if%}>
                                    <label>•</label>
                                    <i>{%$con.text|escape:'html'%}</i>
                                </span>
                            {%/foreach%}
                        </div>
                        <div class="ecl-fn-car-insurance-info-oprz c-gap-top-small">
                            <a href="{%$item.lpUrl|escape:'html'%}" class="c-btn c-btn-primary c-btn-mini" target="_blank" tn="{%$extData.tn%}">获取精确报价</a>
                        </div>
                    </div>
                </div>
                <div class="OP_LOG_OTHERS ecl-fn-car-insurance-row {%if $item@index eq 0%}ecl-fn-car-insurance-row-hide{%/if%}" data-index="{%$item@index%}" data-click="{'rsv_fn_car_ins_opt': 'content', 'fm': 'beha'}">
                    <span class="ecl-fn-car-insurance-row-index c-index c-index-hot{%$item@index+1%}">{%$item@index+1%}</span>
                    <div class="ecl-fn-car-insurance-row-title c-gap-left-small">
                        <a href="{%$item.lpUrl|escape:'html'%}" target="_blank" title="{%$item.titleAll|escape:'html'%}" data-click="{'rsv_fn_car_ins_opt': 'landingPage', 'fm': 'alop'}" tn="{%$extData.tn|escape:'html'%}">{%$item.title|escape:'html'%}</a>
                    </div>
                    <div class="ecl-fn-car-insurance-row-price">
                        <label class="ecl-fn-car-insurance-row-label">参考报价：</label>
                        <span class="ecl-fn-car-insurance-row-label">&yen;{%$item.price|escape:'html'%}起</span>
                    </div>
                    <span class="c-icon c-icon-chevron-bottom ecl-fn-car-insurance-row-icon"></span>
                </div>
            {%/foreach%}
        </div>
        <!--todo-->
    </div>
    <div class='c-showurl c-gap-top-small'>
        caifu.baidu.com
    </div>
</div>

{%/strip%}
<script data-compress="off">
    A.setup('CAR_INSURANCE_DATA', {
        carPrice: "{%$tplData.carPrice|escape:'javascript'%}",
        cityList: "{%$tplData.cityList|escape:'javascript'%}",
        listData: {%json_encode($tplData.list)%},
        GET_TPL_LIST_URL: '{%$tplData.ajaxUrl%}',
        tabValue: "{%$tplData.tabValue|escape:'javascript'%}"
    });
</script>
<script>
    A.init(function () {
        var extData = {};
        {%foreach from=$extData key=prop item=value%}extData['{%$prop|escape:"javascript"%}'] = '{%$value|escape:"javascript"%}';{%/foreach%}
        var card = this;
        var tpl = 'ecl-fn-car-insurance';
        var CAR_INSURANCE_DATA = card.data.CAR_INSURANCE_DATA;
        var citySelect = null;
        var curItemIndex = 0;
        var ajaxFinished = false;
        var tabValue = CAR_INSURANCE_DATA.tabValue;var common=function(){var n=function(n,t){return n="."+n,t?$(t).find(n):$(n)},t=function(n){return n?tpl+"-"+n:tpl},e=function(n){var t=$("<div></div>");return t.text(n),t.html()},r=function(n,t){return $(n).attr(t)},u=function(n,t){n=String(n);var e=Array.prototype.slice.call(arguments,1),r=Object.prototype.toString;return e.length?(e=1==e.length?null!==t&&/\[object Array\]|\[object Object\]/.test(r.call(t))?t:e:e,n.replace(/#\{(.+?)\}/g,function(n,t){var u=e[t];return"[object Function]"==r.call(u)&&(u=u(t)),"undefined"==typeof u?"":u
})):n},i=function(e,r){return n(t(e),r)[0]},o=function(n){"function"==typeof n&&n()},a=function(n,t){for(var e in n)t[e]=n[e];return t},c=function(n,t,e){t=t||new Function,e=e||new Function,$.ajax({url:n,type:"GET",dataType:"json",success:function(n){var r={};if(!n)return e(),ajaxFinished=!0,void 0;try{r="object"==typeof n?n:$.parseJSON(n)}catch(u){return e(),ajaxFinished=!0,void 0}t(r),ajaxFinished=!0},error:function(){e(),ajaxFinished=!0}})},f=function(n){return new Function("return ("+n+")")()},s=function(n){function t(n){return/["\\\x00-\x1f]/.test(n)&&(n=n.replace(/["\\\x00-\x1f]/g,function(n){var t=i[n];
return t?t:(t=n.charCodeAt(),"\\u00"+Math.floor(t/16).toString(16)+(t%16).toString(16))})),'"'+n+'"'}function e(n){var t,e,r,u=["["],i=n.length;for(e=0;i>e;e++)switch(r=n[e],typeof r){case"undefined":case"function":case"unknown":break;default:t&&u.push(","),u.push(s(r)),t=1}return u.push("]"),u.join("")}function r(n){return 10>n?"0"+n:n}function u(n){return'"'+n.getFullYear()+"-"+r(n.getMonth()+1)+"-"+r(n.getDate())+"T"+r(n.getHours())+":"+r(n.getMinutes())+":"+r(n.getSeconds())+'"'}var i={"\b":"\\b","	":"\\t","\n":"\\n","\f":"\\f","\r":"\\r",'"':'\\"',"\\":"\\\\"};
switch(typeof n){case"undefined":return"undefined";case"number":return isFinite(n)?String(n):"null";case"string":return t(n);case"boolean":return String(n);default:if(null===n)return"null";if(n instanceof Array)return e(n);if(n instanceof Date)return u(n);var o,a,c=["{"];for(var f in n)if(Object.prototype.hasOwnProperty.call(n,f))switch(a=n[f],typeof a){case"undefined":case"unknown":case"function":break;default:o&&c.push(","),o=1,c.push(s(f)+":"+s(a))}return c.push("}"),c.join("")}};return{q:n,getClass:t,getAttr:r,qq:i,mix:a,enter:o,request:c,format:u,encodeHTML:e,parseJSON:f,stringify:s}
}();var tabs=function(){var t=common.qq;common.format;var n=common.getAttr,e={TAB_CLASS:tpl+"-tabs-item",CUR_TAB_CLASS:tpl+"-tabs-item-cur",SPLIT_CLASS:tpl+"-tabs-split"},r=function(){i()},i=function(){$(t("")).on("click",function(t){t=t||window.event;var n=t.target||t.srcElement,r=n.className;r.indexOf(e.TAB_CLASS)>-1&&-1===r.indexOf(e.CUR_TAB_CLASS)&&(a(n),u(n))})},a=function(t){for(var n=t.parentNode,r=n.childNodes,i=0,a=r.length;a>i;i++)r[i].className.indexOf(e.CUR_TAB_CLASS)>-1&&$(r[i]).removeClass(e.CUR_TAB_CLASS);
$(t).addClass(e.CUR_TAB_CLASS),o(t)},o=function(t){for(var n=t.parentNode,r=n.childNodes,i=0,a=r.length;a>i;i++)r[i].className===e.SPLIT_CLASS&&$(r[i]).css("visibility","visible");t.previousSibling&&$(t.previousSibling).css("visibility","hidden"),t.nextSibling&&$(t.nextSibling).css("visibility","hidden")},u=function(e){tabValue=n(e,"data-value");var r={city:citySelect.getValue(),carPrice:t("carPrice").value,tabValue:tabValue,t:(new Date).getTime()},i=CAR_INSURANCE_DATA.GET_TPL_LIST_URL;r=common.mix(extData,r),i+=(i.indexOf("?")>-1?"&":"?")+$.param(r),common.request(i,function(n){0===n.status?(n=n.data,list.render(n),t("title-link").href=n.mpUrl):list.renderError(n.statusInfo)
},function(){list.renderError()})};return{init:r}}();var list=function(){var t=common.qq,n=common.format,e='<div class="'+tpl+'-info #{infoCn}" data-index="#{index}">'+'<div class="'+tpl+'-hrow">'+'<span class="'+tpl+'-hrow-index c-index c-index-hot#{addIndex}">'+"#{addIndex}"+"</span>"+'<div class="'+tpl+'-hrow-title c-gap-left-small">'+'<a href="#{lpUrl}" target="_blank">#{title}</a>'+"</div>"+'<div class="'+tpl+'-hrow-price">'+"<label>参考报价：</label>"+"<span>&yen;#{price}起</span>"+"</div>"+"</div>"+'<div class="'+tpl+'-info-desc">'+'<div class="'+tpl+'-info-desc-left">'+'<a class="OP_LOG_OTHERS" '+'href="#{lpUrl}" '+'target="_blank" '+'title="#{titleAll}" '+'tn="#{tn}" '+"data-click=\"{'fm':'alop'}\""+">"+'<img src="#{logoUrl}" '+'alt="#{titleAll}" '+'width="56" '+'height="56"'+"/>"+"</a>"+"</div>"+'<div class="'+tpl+'-info-desc-right c-gap-left-small">'+"<label>优惠：</label>"+"<span>#{bonus}</span>"+"<label>特色：</label>"+"<span>#{feature}</span>"+"</div>"+'<div class="'+tpl+'-info-items">#{labelCon}</div>'+'<div class="'+tpl+'-info-oprz c-gap-top-small">'+'<a href="#{lpUrl}" '+'class="c-btn c-btn-primary c-btn-mini" '+'target="_blank" tn="#{tn}"'+">获取精确报价</a>"+"</div>"+"</div>"+"</div>"+'<div class="OP_LOG_OTHERS '+tpl+'-row #{rowCn}" '+'data-index="#{index}" '+"data-click=\"{'fm':'beha'}\""+">"+'<span class="'+tpl+'-row-index c-index c-index-hot#{addIndex}">'+"#{addIndex}"+"</span>"+'<div class="'+tpl+'-row-title c-gap-left-small">'+'<a href="#{lpUrl}" '+'target="_blank" '+'title="#{titleAll}" '+'tn="#{tn}" '+"data-click=\"{'fm': 'alop'}\""+">#{title}</a>"+"</div>"+'<div class="'+tpl+'-row-price">'+'<label class="'+tpl+'-row-label">参考报价：</label>'+'<span class="'+tpl+'-row-label">&yen;#{price}起</span>'+"</div>"+'<span class="c-icon c-icon-chevron-bottom '+tpl+'-row-icon">'+"</span>"+"</div>",i='<span class="#{unselectCn}"><label>•</label><i>#{text}</i></span>',r=function(n,e){var i=t("result"),r=$(i).children(),l=r.length,a=null;
if("show"===n){for(var s=0;l>s;s++){var o=r[s];$(o).css("visibility","hidden")}var c=setTimeout(function(){$(r[0]).css("visibility","visible"),d()},50),u=1,d=function(){var t=r[u];return $(t).css("visibility","visible"),l>u?(a=setTimeout(d,20),u++,void 0):(clearTimeout(a),clearTimeout(c),e?e():"",void 0)}}else if("hide"===n){var u=l-1,f=function(){var t=r[u];return $(t).css("visibility","hidden"),u>0?(a=setTimeout(f,20),u--,void 0):(clearTimeout(a),e?e():"",void 0)};f()}},l=function(i){var l=i.list,s=[];cardAnti.setTimesign(i.signTime);
for(var o=0,c=l.length;c>o;o++){var u=l[o];s.push(n(e,{infoCn:0!==o?tpl+"-info-hide":"",rowCn:0===o?tpl+"-row-hide":"",index:o,bonus:u.bonus,feature:u.feature,addIndex:o+1,lpUrl:u.lpUrl,title:u.title,titleAll:u.titleAll,logoUrl:u.logoUrl,labelCon:a(u.content),tn:extData.tn,price:u.price}))}r("hide",function(){t("result").innerHTML=s.join(""),logic.renderInfo($(t("result")).children().first()),logic.bindEvent(),r("show")})},a=function(t){for(var e=[],r=0,l=t.length;l>r;r++){var a=t[r];e.push(n(i,{unselectCn:0==a.status?tpl+"-unselect":"",text:a.text}))
}return e.join("")},s=function(n){var e="";n=n?n:"数据异常，请稍候再试～",e='<div class="ecl-fn-car-insurance-error">'+n+"</div>",t("result").innerHTML=e},o=function(){html.length=0,html=[]};return{render:l,renderError:s,clear:o}}(this);var logic=function(){var t=common.q,n=common.qq;common.format;var e=common.getAttr,i=common.parseJSON,r=!0,a=0,l=function(){$(function(){var t="http://s1.bdstatic.com/r/www/cache/biz/ecom/";require.config({paths:{"zxui/ui":t+"zxui/20131210/ui/",CitySelect:t+"ui/20140115/City"}}),require(["CitySelect"],function(t){citySelect=new t({main:""+tpl+"-city",prefix:""+tpl+"-ui-city",data:i(CAR_INSURANCE_DATA.cityList)})}),s(),c()})},o=function(t,e){for(;t!=n("");){if(t===e)return!0;t=t.parentNode}return!1},s=function(){$(n("result")).on("click",function(n){var i=t(tpl+"-row");
n=n||window.event;var r=n.target||n.srcElement;if(r.className&&r.className.indexOf(tpl+"-row")>-1)for(var l=0,s=i.length;s>l;l++){var c=i[l];o(r,c)&&(a=parseInt(e(c,"data-index")),f())}})},c=function(){function t(){var t={city:citySelect.getValue(),carPrice:n("carPrice").value,tabValue:tabValue,t:(new Date).getTime()},e=CAR_INSURANCE_DATA.GET_TPL_LIST_URL;t=common.mix(extData,t),e+=(e.indexOf("?")>-1?"&":"?")+$.param(t),r&&common.request(e,function(t){0===t.status?(t=t.data,list.render(t),n("title-link").href=t.mpUrl):list.renderError(t.statusInfo)
},function(){list.renderError()})}$(n("search-btn")).on("click",t),$(n("carPrice")).on("keyup",function(){var t=/^((([1-9]{1}\d*)|([0]{1}))(\.(\d){1,2})?)?$/gi;t.test(this.value)?parseFloat(this.value)>500?(u("输入的最大值为500万"),r=!1):parseInt(this.value,10)<1?(u("输入的最小值为1万"),r=!1):""===this.value?(u("输入的值不能为空"),r=!1):(d(),r=!0):(u("请输入整数或者保留2位的小数"),r=!1)})},u=function(t){n("tips").innerHTML=t+"<span>▼<span>▼</span></span>",$(n("tips")).css("display","block"),$(n("carPrice")).css("border","1px solid red")},d=function(){$(n("tips")).css("display","none"),$(n("carPrice")).css({borderTop:"1px solid #999",borderLeft:"1px solid #999",borderRight:"1px solid #d7d7d7",borderBottom:"1px solid #d7d7d7"})
},f=function(){for(var n=t(tpl+"-info"),i=0,r=n.length;r>i;i++){var l=n[i],o=e(l,"data-index");o==a?($(l).css("display","block"),$(l.nextSibling).css("display","none")):($(l).css("display","none"),$(l.nextSibling).css("display","block"))}};return{module:l,renderInfo:f,bindEvent:s}}();var Anti=function(t){function n(n){var e=window.event||n;for(x=e.target||e.srcElement;x&&"A"!=x.tagName;)if(x=x.parentNode,x===t)return!1;h=(new Date).getTime(),s=9999,u=e.clientX,d=e.clientY,v=b?h-b:0,r()&&a()}function e(){g=(new Date).getTime(),s=g-h,r()&&a()}function i(t){var n=window.event||t;y+=1,f||(f=n.clientX),p||(p=n.clientY),b=(new Date).getTime()}function r(){if(c=0,m=/\?url\=([^\.]+)\./.exec(x.href)){for(var t=0;y*S%99+9>t;++t)c+=m[1].charCodeAt(s*t%m[1].length);return!0}return!1}function a(){var t="&ck="+[c,y,s,u,d,f,p,v].join(".");
if(x.href){var n=x.href;-1==n.indexOf("&ck=")?x.href+=t:x.href=n.replace(/&ck=[\w.]*/,t)}}function o(n,e){for(var i,r=0;i=n[r];r++)window.attachEvent?t.attachEvent("on"+i,e[r]):window.addEventListener?t.addEventListener(i,e[r],!1):t["on"+i]=e[r],A[i]=e[r]}function l(n){for(var e,i=0;e=n[i];i++)window.detachEvent?t.detachEvent("on"+e,A[e]):window.addEventListener?t.removeEventListener(e,A[e],!1):t["on"+e]=function(){}}var c,s,u,d,f,p,v,m,h,b,g,x,w="EC_ZHIXIN",S=0,y=0;s=u=d=f=p=v=m=h=b=g=x=0;var A={};return{getAntiTag:function(){return w
},setTimesign:function(t){S=t},bind:function(){o(["mouseover","mousedown","mouseup"],[i,n,e])},unbind:function(){l(["mouseover","mousedown","mouseup"])}}};var cardAnti = new Anti($('.' + tpl)[0]);
        cardAnti.bind();
        cardAnti.setTimesign("{%$tplData.signTime|escape:'javascript'%}");
        common.enter(function () {
            tabs.init();
            logic.module();
        });
        this.dispose = function () {
            if (!ajaxFinished) {
                list.render = undefined;
                list.renderError = undefined;
            }
        };
    });
</script>
{%/block%}