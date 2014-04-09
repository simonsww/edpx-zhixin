{%extends 'c_base.tpl'%}
{%block name="title"%}
{%/block%}
{%block name='content'%}
<style>.ecl-loan-list-ui-input-select-car{width:73px!important;_width:78px!important}.ecl-loan-list-ui-input-select-car .ecl-loan-list-ui-input-select-box .ecl-loan-list-ui-input-select-value{width:54px!important}.ecl-loan-list-ui-input-select-car .ecl-loan-list-ui-input-select-show{width:53px!important}.ecl-loan-list-ui-input-select-car .ecl-loan-list-ui-input-select-show span a{width:48px!important;_width:52px!important}.ecl-loan-list-ui-input-select{font-size:15px;background:#FFF;width:83px;_width:88px;height:24px;display:inline-block;*display:inline;*zoom:1;position:relative;border:1px solid #e3e3e3;margin-right:5px;vertical-align:bottom;*vertical-align:baseline}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-box{cursor:pointer}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-box .ecl-loan-list-ui-input-select-value{display:inline-block;color:#000;width:48px;overflow:hidden;font-size:15px;padding:0 0 0 15px;margin:0;*padding-top:3px;border:0;outline:0;background-color:#fff}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-box span{position:absolute;right:5px;top:10px;height:6px;overflow:hidden;cursor:inherit}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-box span label{color:#e3e3e3;position:relative;bottom:15px;*bottom:16px;_bottom:15px;cursor:inherit}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-tips{position:absolute;font-size:15px;padding:7px;width:205px;top:-50px;left:-55px;z-index:999;border:1px solid #e3e3e3;background:#FFF;visibility:hidden;box-shadow:1px 1px 3px #ccc}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-tips span{position:absolute;color:#e3e3e3;top:30px;*top:29px;_top:31px;left:91px;z-index:1000;text-shadow:1px 1px 3px #ccc}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-tips span span{position:absolute;color:#FFF;top:-2px;left:0;z-index:500;text-shadow:none}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-show{position:absolute;visibility:hidden;background:#FFF;top:24px;left:-1px;width:63px;border:1px solid #e3e3e3;box-shadow:1px 1px 3px #eee;padding:0 10px 0 10px;cursor:default;z-index:30}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-show span{display:inline-block;padding:4px 0;border-bottom:1px dashed #e3e3e3;width:100%}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-show span a{display:block;width:58px;_width:62px;padding:2px 0;padding-left:5px}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-show span a:hover{background:#288bff;color:#FFF}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-show span .ecl-loan-list-ui-input-select-select{background:#288bff;color:#FFF}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-show span input{width:77px;outline:0;padding-left:3px;border:0}.ecl-loan-list-ui-input-select-error{border-color:#f00}.ecl-loan-list-ui-select-car{width:73px!important}.ecl-loan-list-ui-select-car .ecl-loan-list-ui-select-box .ecl-loan-list-ui-select-value{width:54px!important}.ecl-loan-list-ui-select-car .ecl-loan-list-ui-select-show{width:53px!important}.ecl-loan-list-ui-select-car .ecl-loan-list-ui-select-show span a{width:48px!important;_width:52px!important}.ecl-loan-list-ui-select{font-size:15px;background:#FFF;width:83px;height:24px;display:inline-block;*display:inline;*zoom:1;position:relative;border:1px solid #e3e3e3}.ecl-loan-list-ui-select .ecl-loan-list-ui-select-box{cursor:pointer}.ecl-loan-list-ui-select .ecl-loan-list-ui-select-box .ecl-loan-list-ui-select-value{display:inline-block;width:64px;padding:0 0 0 15px;*padding-bottom:4px}.ecl-loan-list-ui-select .ecl-loan-list-ui-select-box span{position:absolute;right:5px;top:10px;height:6px;overflow:hidden;cursor:inherit}.ecl-loan-list-ui-select .ecl-loan-list-ui-select-box span label{color:#e3e3e3;position:relative;bottom:15px;*bottom:16px;_bottom:15px;cursor:inherit}.ecl-loan-list-ui-select .ecl-loan-list-ui-select-show{visibility:hidden;position:absolute;*margin:-3px 0 0 -1px;background:#FFF;top:24px;*top:27px;left:-1px;*left:0;width:63px;border:1px solid #e3e3e3;box-shadow:1px 1px 3px #eee;padding:0 10px 0 10px;cursor:default;z-index:30}.ecl-loan-list-ui-select .ecl-loan-list-ui-select-show span{display:inline-block;padding:4px 0;border-bottom:1px dashed #e3e3e3;width:100%}.ecl-loan-list-ui-select .ecl-loan-list-ui-select-show span a{display:block;width:58px;padding:2px 0;padding-left:5px}.ecl-loan-list-ui-select .ecl-loan-list-ui-select-show span a:hover{background:#288bff;color:#FFF}.ecl-loan-list-ui-select .ecl-loan-list-ui-select-show span .ecl-loan-list-ui-select-select{background:#288bff;color:#FFF}.ecl-loan-list em{color:#c00}.ecl-loan-list .ecl-loan-list-title{padding-bottom:8px;margin:0}.ecl-loan-list .ecl-loan-list-card{border:solid 1px #e3e3e3;box-shadow:1px 1px 3px #EEE;padding:0 10px;font-size:inherit}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-tabs{color:#666;width:100%;padding-top:10px}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-tabs ul{height:27px;border-bottom:1px solid #d9d9d9;background-color:#fafafa}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-tabs ul .ecl-loan-list-tabs-split{height:14px;width:0;padding:0;margin-top:6px;border-left:1px solid #dedede}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-tabs ul li{float:left;*display:inline;position:relative;_top:1px;height:25px;line-height:27px;border-style:solid;border-width:2px 1px 0 1px;border-color:transparent;*border-color:#fafafa #fafafa #d9d9d9;list-style:none;cursor:pointer;white-space:nowrap;overflow:hidden;text-align:center}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-tabs ul .ecl-loan-list-tabs-item{width:104px}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-tabs ul .ecl-loan-list-tabs-item-cur{padding-bottom:1px;border-color:#2c99ff #e4e4e4 #FFF #dedede;background-color:#FFF;color:#000;font-weight:bold}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-search{padding:9px 0 15px 5px;position:relative}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-search .ecl-loan-list-search-common{visibility:visible}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-search .ecl-loan-list-search-car{visibility:hidden;position:relative;top:-32px}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-search .ecl-loan-list-search-unit .ecl-loan-list-search-label{width:37px}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-search table{border-collapse:collapse}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-search table tr td{padding-top:6px}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-search table tr .ecl-loan-list-search-label{font-weight:bold;padding-right:5px}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-search table tr .ecl-loan-list-search-unit{padding-right:30px}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-search table tr .ecl-loan-list-search-ui{vertical-align:middle}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-search .ecl-loan-list-search-btn{display:inline-block;width:70px;height:26px;line-height:26px;*line-height:29px;_line-height:26px;background:#2196ff;text-decoration:none;color:#000;border:1px solid #f3f3f3;text-align:center;position:absolute;right:0;_right:11px;cursor:pointer;top:15px;_top:18px;z-index:10;color:#FFF}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result{margin-top:-32px}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result li{display:inline-block;*display:inline;zoom:1}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul{border-bottom:1px solid #f3f3f3;width:100%}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul .ecl-loan-list-result-img{position:relative;width:38px}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul .ecl-loan-list-result-img img{position:absolute;bottom:-9px;*bottom:9px}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul .ecl-loan-list-result-left{padding:18px 0;width:200px;position:relative;*position:none;z-index:20}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul .ecl-loan-list-result-left a{text-decoration:none}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul .ecl-loan-list-result-left a:hover{text-decoration:underline}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul .ecl-loan-list-result-mid{width:200px;padding:18px 0}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul .ecl-loan-list-result-mid label{color:#333;font-weight:bold}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul .ecl-loan-list-result-mid span{color:#ff8400;font-weight:bold}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul .ecl-loan-list-result-right{padding:18px 0}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul .ecl-loan-list-result-right label{color:#333;font-weight:bold}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul .ecl-loan-list-result-right span{color:#ff8400;font-weight:bold}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result .ecl-loan-list-result-header{background:#f5f5f5;border:0}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result .ecl-loan-list-result-header li{padding:10px 0}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result .ecl-loan-list-error-item{text-align:center;font-size:14px;font-weight:bold;padding:15px 0;color:#217cc6}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result-more{color:#0102ca;border:0;font-size:inherit;text-align:center;padding:8px 0}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result-more a{color:#0102ca;font-family:simsun;font-size:inherit;line-height:12px}.ecl-footer{padding-top:5px;color:green;font-size:inherit}</style>{%*点击统计*%} 
{%$qid=$extData.qid%}
{%$subqid=$extData.subqid%}
{%$sid=$extData.sid%}
{%$pssid=$extData.pssid%}
{%strip%}
<div class="ecl-loan-list c-container">
    <h4 class="t ecl-loan-list-title">
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
    <div class="ecl-loan-list-card">
        <div class="ecl-loan-list-tabs" data-click="{'rsv_loan_list_opt': 'tabs', 'fm':'beha'}">
            <ul>
                {%foreach $tplData.categoryList as $tab%}
                    {%if $tab.status eq '1'%}
                        {%assign var="num" value=$tab@index+1%}
                    {%/if%}
                    {%if $tab@index neq 0%}
                    <li class="ecl-loan-list-tabs-split" {%if $tab.status eq '1' or $tab@index eq $num%}style="visibility: hidden;"{%/if%}></li>{%/if%}<li class="ecl-loan-list-tabs-item{%if $tab.status eq '1'%} ecl-loan-list-tabs-item-cur{%/if%} OP_LOG_OTHERS" tab-value="{%$tab.value|escape:'html'%}" tab-status="{%$tab.status|escape:'html'%}">{%$tab.name|escape:'html'%}</li>
                {%/foreach%}
            </ul>
        </div>
        <div class="ecl-loan-list-search">
            <a class="ecl-loan-list-search-btn" target="_blank" tn="{%$extData.tn|escape:'html'%}">查询</a>
            <div class="ecl-loan-list-search-common" data-click="{'rsv_loan_list_opt':'search', 'fm':'beha'}">
                <table>
                    <tr>
                        <td class="ecl-loan-list-search-label">贷款金额</td>
                        <td class="ecl-loan-list-ui">
                            <div id="ecl-loan-list-value-of-loan" class="ecl-loan-list-ui-input-select ecl-loan-list-ui-input-select-common">
                                <div class='ecl-loan-list-ui-input-select-box'>
                                    <input class="ecl-loan-list-ui-input-select-value" value="{%$tplData.quota|escape:'html'%}"/>
                                    <span><label>◆</label></span>
                                </div>
                                <div class='ecl-loan-list-ui-input-select-tips'></div>
                                <div class='ecl-loan-list-ui-input-select-show'></div>
                            </div>
                        </td>
                        <td class="ecl-loan-list-search-unit">
                            <span>万元</span>
                        </td>
                        <td class="ecl-loan-list-search-label">贷款期限</td>
                        <td class="ecl-loan-list-ui">
                            <div id="ecl-loan-list-limit-time" class="ecl-loan-list-ui-select  ecl-loan-list-ui-select-common">
                                <div class='ecl-loan-list-ui-select-box'>
                                    <div class="ecl-loan-list-ui-select-value">{%$tplData.duration|escape:'html'%}</div>
                                    <span><label>◆</label></span>
                                </div>
                                <div class='ecl-loan-list-ui-select-show'></div>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="ecl-loan-list-search-car" data-click="{'rsv_loan_list_opt':'search', 'fm':'beha'}">
                <table>
                    <tr>
                        <td class="ecl-loan-list-search-label">总车价</td>
                        <td class="ecl-loan-list-ui"><div id="ecl-loan-list-total-cost" class="ecl-loan-list-ui-input-select ecl-loan-list-ui-input-select-car">
                                <div class='ecl-loan-list-ui-input-select-box'>
                                    <input class="ecl-loan-list-ui-input-select-value" value="{%$tplData.carPrice|escape:'html'%}"/>
                                    <span><label>◆</label></span>
                                </div>
                                <div class='ecl-loan-list-ui-input-select-tips'></div>
                                <div class='ecl-loan-list-ui-input-select-show'></div>
                            </div>
                        </td>
                        <td class="ecl-loan-list-search-unit"><span>万元</span></td>
                        <td class="ecl-loan-list-search-label">首付</td>
                        <td class="ecl-loan-list-ui"><div id="ecl-loan-list-car-first-pay" class="ecl-loan-list-ui-select ecl-loan-list-ui-select-car">
                                <div class='ecl-loan-list-ui-select-box'>
                                    <div class="ecl-loan-list-ui-select-value">{%$tplData.quota|escape:'html'%}</div>
                                    <span><label>◆</label></span>
                                </div>
                                <div class='ecl-loan-list-ui-select-show'></div>
                            </div>
                        </td>
                        <td class="ecl-loan-list-search-unit"></td>
                        <td class="ecl-loan-list-search-label">期限</td>
                        <td class="ecl-loan-list-ui"><div id="ecl-loan-list-car-limit-time" class="ecl-loan-list-ui-select ecl-loan-list-ui-select-car">
                                <div class='ecl-loan-list-ui-select-box'>
                                    <div class="ecl-loan-list-ui-select-value">{%$tplData.duration|escape:'html'%}</div>
                                    <span><label>◆</label></span>
                                </div>
                                <div class='ecl-loan-list-ui-select-show'></div>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="ecl-loan-list-result">
            <ul class="ecl-loan-list-result-header">
                <li class="ecl-loan-list-result-img"></li>
                <li class="ecl-loan-list-result-left">贷款产品</li>
                <li class="ecl-loan-list-result-mid">抵押类型/放款时间</li>
                <li class="ecl-loan-list-result-right">月供/总利息</li>
            </ul>
            {%foreach $tplData.list as $item%}
                <ul>
                    <li class="ecl-loan-list-result-img">
                        <a href="{%$item.url|escape:'html'%}" target="_blank" tn="{%$extData.tn|escape:'html'%}"><img src="{%$item.logoSrc|escape:'html'%}" width="28" height="28" alt="{%$item.title|escape:'html'%}"/></a>
                    </li>
                    <li class="ecl-loan-list-result-left">
                        <a href="{%$item.url|escape:'html'%}" target="_blank" tn="{%$extData.tn|escape:'html'%}">{%$item.title|escape:'html'%}</a>
                    </li>
                    <li class="ecl-loan-list-result-mid">
                        {%$item.type|escape:'html'%}/{%$item.lend_time|escape:'html'%}
                    </li>
                    <li class="ecl-loan-list-result-right">
                        <label>{%$item.m_payment|escape:'html'%}/</label>
                        <span>{%$item.total_interest|escape:'html'%}</span>
                    </li>
                </ul>
            {%/foreach%}
        </div>
        <div class="ecl-loan-list-result-more">
            <a target="_blank" href="{%$tplData.moreUrl|escape:'html'%}" tn="{%$extData.tn|escape:'html'%}">查看更多产品&gt;&gt;</a>
        </div>
    </div>
    <div class='ecl-footer'>
        caifu.baidu.com
    </div>
</div>
{%/strip%}
<script data-compress="off">
    A.setup('LOAN_LIST_DATA', {
        duration : "{%$tplData.duration|escape:'html'%}",
        quota: "{%$tplData.quota|escape:'html'%}",
        durationList: '{%$tplData.durationList%}',
        quotaList: '{%$tplData.quotaList%}',
        mpUrl: "{%$tplData.mpUrl|escape:'html'%}",
        city: "{%$tplData.city|escape:'html'%}",
        GET_TPL_LIST_URL: '{%$tplData.ajaxUrl%}'
    });
</script>
<script>
    A.init(function () {
        var extData = {};{%foreach from=$extData key=prop item=value%}extData['{%$prop|escape:"javascript"%}'] = '{%$value|escape:"javascript"%}';{%/foreach%}
        var tpl = 'ecl-loan-list';
        var card = this;
        var loanListData = card.data.LOAN_LIST_DATA;
        var valueOfLoan = null;
        var limitTime = null;
        var carPrice=null;
        var carFirstPay=null;
        var carLimitTime=null;
        var _tabid='2101';
        var ajaxFinished = false;var common=function(){var n=function(n,t){return n="."+n,t?$(t).find(n):$(n)},t=function(n){return n?tpl+"-"+n:tpl},e=function(n){var t=$("<div></div>");return t.text(n),t.html()},r=function(n,t){return $(n).attr(t)},u=function(n,t){n=String(n);var e=Array.prototype.slice.call(arguments,1),r=Object.prototype.toString;return e.length?(e=1==e.length?null!==t&&/\[object Array\]|\[object Object\]/.test(r.call(t))?t:e:e,n.replace(/#\{(.+?)\}/g,function(n,t){var u=e[t];return"[object Function]"==r.call(u)&&(u=u(t)),"undefined"==typeof u?"":u
})):n},i=function(e,r){return n(t(e),r)[0]},o=function(n){"function"==typeof n&&n()},a=function(n,t){for(var e in n)t[e]=n[e];return t},c=function(n,t,e){t=t||new Function,e=e||new Function,$.ajax({url:n,type:"GET",dataType:"json",success:function(n){var r={};if(!n)return e(),ajaxFinished=!0,void 0;try{r="object"==typeof n?n:$.parseJSON(n)}catch(u){return e(),ajaxFinished=!0,void 0}t(r),ajaxFinished=!0},error:function(){e(),ajaxFinished=!0}})},f=function(n){return new Function("return ("+n+")")()},s=function(n){function t(n){return/["\\\x00-\x1f]/.test(n)&&(n=n.replace(/["\\\x00-\x1f]/g,function(n){var t=i[n];
return t?t:(t=n.charCodeAt(),"\\u00"+Math.floor(t/16).toString(16)+(t%16).toString(16))})),'"'+n+'"'}function e(n){var t,e,r,u=["["],i=n.length;for(e=0;i>e;e++)switch(r=n[e],typeof r){case"undefined":case"function":case"unknown":break;default:t&&u.push(","),u.push(s(r)),t=1}return u.push("]"),u.join("")}function r(n){return 10>n?"0"+n:n}function u(n){return'"'+n.getFullYear()+"-"+r(n.getMonth()+1)+"-"+r(n.getDate())+"T"+r(n.getHours())+":"+r(n.getMinutes())+":"+r(n.getSeconds())+'"'}var i={"\b":"\\b","	":"\\t","\n":"\\n","\f":"\\f","\r":"\\r",'"':'\\"',"\\":"\\\\"};
switch(typeof n){case"undefined":return"undefined";case"number":return isFinite(n)?String(n):"null";case"string":return t(n);case"boolean":return String(n);default:if(null===n)return"null";if(n instanceof Array)return e(n);if(n instanceof Date)return u(n);var o,a,c=["{"];for(var f in n)if(Object.prototype.hasOwnProperty.call(n,f))switch(a=n[f],typeof a){case"undefined":case"unknown":case"function":break;default:o&&c.push(","),o=1,c.push(s(f)+":"+s(a))}return c.push("}"),c.join("")}};return{q:n,getClass:t,getAttr:r,qq:i,mix:a,enter:o,request:c,format:u,encodeHTML:e,parseJSON:f,stringify:s}
}();var logic=function(){var t=common.qq,e=common.parseJSON,n=function(){$(function(){var t="http://s1.bdstatic.com/r/www/cache/biz/ecom/";require.config({paths:{"zxui/ui":t+"zxui/20131210/ui/",Select:t+"ui/20140115/Select",InputSelect:t+"ui/20140115/InputSelect"}}),require(["Select"],function(t){limitTime=new t({main:"ecl-loan-list-limit-time",prefix:"ecl-loan-list-ui-select",data:a(e(loanListData.durationList)),showtype:"text",onafterselect:i}),carLimitTime=new t({main:"ecl-loan-list-car-limit-time",prefix:"ecl-loan-list-ui-select",data:a(e(loanListData.durationList)),showtype:"text",onafterselect:i}),carFirstPay=new t({main:"ecl-loan-list-car-first-pay",prefix:"ecl-loan-list-ui-select",data:[],showtype:"text",onafterselect:i}),limitTime.setValue({value:loanListData.duration.indexOf("月")>-1?parseInt(loanListData.duration,10):12*parseInt(loanListData.duration,10),text:loanListData.duration}),carLimitTime.setValue({value:loanListData.duration.indexOf("月")>-1?parseInt(loanListData.duration,10):12*parseInt(loanListData.duration,10),text:loanListData.duration}),require(["InputSelect"],function(t){valueOfLoan=new t({main:"ecl-loan-list-value-of-loan",prefix:"ecl-loan-list-ui-input-select",data:a(e(loanListData.quotaList)),showtype:"value",onafterselect:i}),carPrice=new t({main:"ecl-loan-list-total-cost",prefix:"ecl-loan-list-ui-input-select",data:[],showtype:"value",onafterselect:i}),valueOfLoan.setValue({value:loanListData.quota,text:loanListData.quota}),i()
})})})},a=function(t){for(var e=0,n=t.length;n>e;e++)t[e].text=t[e].name,delete t[e].name;return t},i=function(){if(!valueOfLoan.isError()&&!carPrice.isError()){var e={};e="2103"==_tabid?{carPrice:carPrice.getValue(),carFirstPay:carFirstPay.getValue(),duration:carLimitTime.getValue(),city:loanListData.city}:{quota:valueOfLoan.getValue(),duration:limitTime.getValue(),city:loanListData.city};var n=loanListData.mpUrl;n.indexOf("city")>-1?delete e.city:"",n=n.replace(/&amp;/gi,"&"),n+=(n.indexOf("?")>-1?"&":"?")+$.param(e),t("search-btn").href=n
}};return{module:n,deal:a}}();var tabs=function(){var t=common.qq,e=common.getAttr,n={TAB_CLASS:tpl+"-tabs-item",CUR_TAB_CLASS:tpl+"-tabs-item-cur",SPLIT_CLASS:tpl+"-tabs-split"},a=function(){i()},i=function(){$(t("")).on("click",function(t){t=t||window.event;var a=t.target||t.srcElement,i=a.className;if(i.indexOf(n.TAB_CLASS)>-1&&-1===i.indexOf(n.CUR_TAB_CLASS)&&!valueOfLoan.isError()&&!carPrice.isError()){r(a);var o={city:loanListData.city,categoryId:e(a,"tab-value"),t:(new Date).getTime()},u=loanListData.GET_TPL_LIST_URL;o=common.mix(extData,o),u+=(u.indexOf("?")>-1?"&":"?")+$.param(o),common.request(u,function(t){""===t?list.renderError():(list.renderUI(e(a,"tab-value")),list.render(t),_tabid=e(a,"tab-value"))
},function(){})}})},r=function(t){for(var e=t.parentNode,a=e.childNodes,i=0,r=a.length;r>i;i++)a[i].className.indexOf(n.CUR_TAB_CLASS)>-1&&$(a[i]).removeClass(n.CUR_TAB_CLASS);$(t).addClass(n.CUR_TAB_CLASS),o(t)},o=function(t){for(var e=t.parentNode,a=e.childNodes,i=0,r=a.length;r>i;i++)a[i].className===n.SPLIT_CLASS&&$(a[i]).css("visibility","visible");t.previousSibling&&$(t.previousSibling).css("visibility","hidden"),t.nextSibling&&$(t.nextSibling).css("visibility","hidden")};return{init:a}}();var list=function(){function t(t,e){for(var i=0,a=e.length;a>i;i++)if(t==e[i])return!0;return!1}var e=common.qq,i=common.format,a="",n="",r='<ul class="ecl-loan-list-result-header"><li class="ecl-loan-list-result-img"></li><li class="ecl-loan-list-result-left">#{title}</li><li class="ecl-loan-list-result-mid">#{mid}</li><li class="ecl-loan-list-result-right">#{last}</li></ul>',l={common:{title:"贷款产品",mid:"抵押类型/放款时间",last:"月供/总利息"},car:{title:"车贷产品",mid:"抵押类型/放款时间",last:"月供/总利息"},house:{title:"银行",mid:"首套房利率",last:"二手房利率"}},s=[],o="2101",c=function(t){var i=e("result");
t=t.data,cardAnti.setTimesign(t.signTime),v(t.categoryId),u(t),i.innerHTML=s.join(""),y(),d(t),g(t)},u=function(t){var e=t.list,r=t.categoryId;"2104"==r?(a="<label>#{fdiscount}</label><span>( #{frate} )</span>",n="<label>#{sdiscount}</label><span>( #{srate} )</span>"):(a="#{type}/#{lendTime}",n="<label>#{mPayment}/</label><span>#{totalInterest}</span>");for(var l=0,o=e.length;o>l;l++){var c=e[l],u={};u="2104"==r?{logoSrc:c.logoSrc,url:c.viewDetailUrl,title:c.title,fdiscount:c.fdiscount,frate:c.frate,sdiscount:c.sdiscount,srate:c.srate}:{logoSrc:c.logoSrc,url:c.url,title:c.title,lendTime:c.lend_time,mPayment:c.m_payment,type:c.type,totalInterest:c.total_interest};
var f='<li class="ecl-loan-list-result-img"><a href="#{url}" target="_blank" tn='+extData.tn+">"+'<img src="#{logoSrc}" '+'width="28" '+'height="28" '+'alt="#{title}"'+"/>"+"</a>"+"</li>"+'<li class="ecl-loan-list-result-left">'+'<a href="#{url}" target="_blank" '+"tn="+extData.tn+">#{title}</a>"+"</li>"+'<li class="ecl-loan-list-result-mid">'+a+"</li>"+'<li class="ecl-loan-list-result-right">'+n+"</li>";s.push("<ul>"+i(f,u)+"</ul>")}},f=function(t){var i=e("search-car"),a=e("search-common"),n=e("result"),r=e("search-btn");
"2103"==t&&p("2103")?($(i).css("visibility","visible"),$(a).css("visibility","hidden"),$(n).css("marginTop","-32px"),$(r).css("visibility","visible")):"2104"==t&&p("2104")?($(i).css("visibility","hidden"),$(a).css("visibility","hidden"),$(n).css("marginTop","-72px"),$(r).css("visibility","hidden")):p("2101")&&($(i).css("visibility","hidden"),$(a).css("visibility","visible"),$(n).css("marginTop","-32px"),$(r).css("visibility","visible"))},d=function(t){var e=t.categoryId;"2103"==e?(carPrice.setData(logic.deal(t.carPriceList)),carFirstPay.setData(logic.deal(t.carFirstPayList)),carPrice.setValue({value:t.carPrice,text:t.carPrice}),carFirstPay.setValue({value:t.carFirstPay,text:t.carFirstPay+"成"}),carLimitTime.setValue({value:t.duration.indexOf("月")>-1?parseInt(t.duration,10):12*parseInt(t.duration,10),text:t.duration})):("2101"==e||"2102"==e)&&(valueOfLoan.setData(logic.deal(t.quotaList)),limitTime.setValue({text:t.duration,value:t.duration.indexOf("年")>-1?12*parseInt(t.duration,10):parseInt(t.duration,10)}),valueOfLoan.setValue({value:t.quota,text:t.quota}))
},m=function(){var t=e("result");t.innerHTML='<div class="'+tpl+'-error-item">'+"抱歉，没有找到符合的贷款产品，再挑挑看吧：）"+"</div>"},p=function(e){var i=["2101","2102"],a=["2103"],n=["2104"];return t(e,i)&&t(o,i)||t(e,a)&&t(o,a)||t(e,n)&&t(o,n)?(o=e,!1):(o=e,!0)},v=function(t){var e={};"2101"==t||"2102"==t?e=l.common:"2103"==t?e=l.car:"2104"==t&&(e=l.house),s.push(i(r,{title:e.title,mid:e.mid,last:e.last}))},g=function(t){var i={};i="2103"==t.categoryId?{carPrice:carPrice.getValue(),carFirstPay:carFirstPay.getValue(),duration:carLimitTime.getValue(),city:loanListData.city}:{quota:valueOfLoan.getValue(),duration:limitTime.getValue(),city:loanListData.city},loanListData.mpUrl=t.mpUrl;
var a=t.mpUrl;a.indexOf("city")>-1?delete i.city:"",a=a.replace(/&amp;/gi,"&"),a+=(a.indexOf("?")>-1?"&":"?")+$.param(i),$(e("result-more")).children().first().attr("href",t.moreUrl),$(e("title")).children().first().attr("href",t.mainUrl),$(e("search")).children().first().attr("href",a)},y=function(){s.length=0,s=[]};return{render:c,renderError:m,renderUI:f}}();var Anti=function(t){function e(e){var i=window.event||e;for(L=i.target||i.srcElement;L&&"A"!=L.tagName;)if(L=L.parentNode,L===t)return!1;g=(new Date).getTime(),c=9999,u=i.clientX,f=i.clientY,v=h?g-h:0,n()&&r()}function i(){y=(new Date).getTime(),c=y-g,n()&&r()}function a(t){var e=window.event||t;S+=1,d||(d=e.clientX),m||(m=e.clientY),h=(new Date).getTime()}function n(){if(s=0,p=/\?url\=([^\.]+)\./.exec(L.href)){for(var t=0;S*x%99+9>t;++t)s+=p[1].charCodeAt(c*t%p[1].length);return!0}return!1}function r(){var t="&ck="+[s,S,c,u,f,d,m,v].join(".");
if(L.href){var e=L.href;-1==e.indexOf("&ck=")?L.href+=t:L.href=e.replace(/&ck=[\w.]*/,t)}}function l(e,i){for(var a,n=0;a=e[n];n++)window.attachEvent?t.attachEvent("on"+a,i[n]):window.addEventListener?t.addEventListener(a,i[n],!1):t["on"+a]=i[n],w[a]=i[n]}function o(e){for(var i,a=0;i=e[a];a++)window.detachEvent?t.detachEvent("on"+i,w[i]):window.addEventListener?t.removeEventListener(i,w[i],!1):t["on"+i]=function(){}}var s,c,u,f,d,m,v,p,g,h,y,L,b="EC_ZHIXIN",x=0,S=0;c=u=f=d=m=v=p=g=h=y=L=0;var w={};return{getAntiTag:function(){return b
},setTimesign:function(t){x=t},bind:function(){l(["mouseover","mousedown","mouseup"],[a,e,i])},unbind:function(){o(["mouseover","mousedown","mouseup"])}}};var cardAnti = new Anti($('.ecl-loan-list')[0]);
        cardAnti.bind();
        cardAnti.setTimesign("{%$tplData.signTime|escape:'javascript'%}");
        common.enter(function () {
            logic.module();
            tabs.init();
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