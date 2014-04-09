{%extends 'c_base.tpl'%}
{%block name="title"%}{%/block%}
{%block name='content'%}
<style>.ecl-loan-list-ui-input-select-car{width:73px!important;_width:78px!important}.ecl-loan-list-ui-input-select-car .ecl-loan-list-ui-input-select-box .ecl-loan-list-ui-input-select-value{width:54px!important}.ecl-loan-list-ui-input-select-car .ecl-loan-list-ui-input-select-show{width:53px!important}.ecl-loan-list-ui-input-select-car .ecl-loan-list-ui-input-select-show span a{width:48px!important;_width:52px!important}.ecl-loan-list-ui-input-select{font-size:13px;background:#FFF;width:83px;_width:88px;height:24px;display:inline-block;*display:inline;*zoom:1;position:relative;border:1px solid #e3e3e3;margin-right:5px;vertical-align:bottom;*vertical-align:baseline}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-box{cursor:pointer}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-box .ecl-loan-list-ui-input-select-value{display:inline-block;color:#000;width:64px;overflow:hidden;padding:4px 0 4px 15px;margin:0;*padding-top:3px;border:0;outline:0;background-color:#fff}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-box span{position:absolute;font-size:12px;right:5px;top:11px;height:6px;overflow:hidden;cursor:inherit}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-box span label{color:#e3e3e3;position:relative;bottom:9px;*bottom:10px;_bottom:9px;cursor:inherit}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-tips{position:absolute;font-size:12px;padding:7px;width:164px;top:-44px;left:-55px;z-index:999;border:1px solid #e3e3e3;background:#FFF;visibility:hidden;box-shadow:1px 1px 3px #ccc}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-tips span{position:absolute;color:#e3e3e3;top:28px;*top:27px;_top:29px;left:91px;z-index:1000;text-shadow:1px 1px 3px #ccc}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-tips span span{position:absolute;color:#FFF;top:-2px;left:0;z-index:500;text-shadow:none}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-show{position:absolute;visibility:hidden;background:#FFF;top:24px;left:-1px;width:63px;border:1px solid #e3e3e3;box-shadow:1px 1px 3px #eee;padding:0 10px 0 10px;cursor:default;z-index:30}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-show span{display:inline-block;padding:4px 0;border-bottom:1px dashed #e3e3e3;width:100%}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-show span a{display:block;width:58px;_width:62px;padding:2px 0;padding-left:5px}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-show span a:hover{background:#288bff;color:#FFF}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-show span .ecl-loan-list-ui-input-select-select{background:#288bff;color:#FFF}.ecl-loan-list-ui-input-select .ecl-loan-list-ui-input-select-show span input{width:77px;outline:0;padding-left:3px;border:0}.ecl-loan-list-ui-input-select-error{border-color:#f00}.ecl-loan-list-ui-select-car{width:73px!important}.ecl-loan-list-ui-select-car .ecl-loan-list-ui-select-box .ecl-loan-list-ui-select-value{width:54px!important}.ecl-loan-list-ui-select-car .ecl-loan-list-ui-select-show{width:53px!important}.ecl-loan-list-ui-select-car .ecl-loan-list-ui-select-show span a{width:48px!important;_width:52px!important}.ecl-loan-list-ui-select{font-size:13px;background:#FFF;width:83px;height:24px;display:inline-block;*display:inline;*zoom:1;position:relative;border:1px solid #e3e3e3}.ecl-loan-list-ui-select .ecl-loan-list-ui-select-box{cursor:pointer}.ecl-loan-list-ui-select .ecl-loan-list-ui-select-box .ecl-loan-list-ui-select-value{display:inline-block;width:64px;padding:4px 0 6px 15px;*padding-bottom:4px}.ecl-loan-list-ui-select .ecl-loan-list-ui-select-box span{position:absolute;font-size:12px;right:5px;top:11px;height:6px;overflow:hidden;cursor:inherit}.ecl-loan-list-ui-select .ecl-loan-list-ui-select-box span label{color:#e3e3e3;position:relative;bottom:9px;*bottom:10px;_bottom:9px;cursor:inherit}.ecl-loan-list-ui-select .ecl-loan-list-ui-select-show{visibility:hidden;position:absolute;*margin:-3px 0 0 -1px;background:#FFF;top:24px;*top:27px;left:-1px;*left:0;width:63px;border:1px solid #e3e3e3;box-shadow:1px 1px 3px #eee;padding:0 10px 0 10px;cursor:default;z-index:30}.ecl-loan-list-ui-select .ecl-loan-list-ui-select-show span{display:inline-block;padding:4px 0;border-bottom:1px dashed #e3e3e3;width:100%}.ecl-loan-list-ui-select .ecl-loan-list-ui-select-show span a{display:block;width:58px;padding:2px 0;padding-left:5px}.ecl-loan-list-ui-select .ecl-loan-list-ui-select-show span a:hover{background:#288bff;color:#FFF}.ecl-loan-list-ui-select .ecl-loan-list-ui-select-show span .ecl-loan-list-ui-select-select{background:#288bff;color:#FFF}.ecl-loan-list{font-size:14px;width:538px}.ecl-loan-list em{color:#c00}.ecl-loan-list .ecl-loan-list-title{padding-bottom:8px;margin:0}.ecl-loan-list .ecl-loan-list-card{border:solid 1px #e3e3e3;box-shadow:1px 1px 3px #EEE;padding:0 10px;font-size:13px}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-tabs{color:#666;width:100%;padding-top:10px}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-tabs ul{height:27px;border-bottom:1px solid #d9d9d9;background-color:#fafafa}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-tabs ul .ecl-loan-list-tabs-split{height:14px;width:0;padding:0;margin-top:6px;border-left:1px solid #dedede}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-tabs ul li{float:left;*display:inline;position:relative;_top:1px;height:25px;line-height:27px;border-style:solid;border-width:2px 1px 0 1px;border-color:transparent;*border-color:#fafafa #fafafa #d9d9d9;list-style:none;cursor:pointer;white-space:nowrap;overflow:hidden;text-align:center}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-tabs ul .ecl-loan-list-tabs-item{width:104px}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-tabs ul .ecl-loan-list-tabs-item-cur{padding-bottom:1px;border-color:#2c99ff #e4e4e4 #FFF #dedede;background-color:#FFF;color:#000;font-weight:bold}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-search{padding:9px 0 15px 5px;position:relative}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-search .ecl-loan-list-search-common{visibility:visible}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-search .ecl-loan-list-search-car{visibility:hidden;position:relative;top:-32px}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-search .ecl-loan-list-search-unit .ecl-loan-list-search-label{width:37px}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-search table{border-collapse:collapse}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-search table tr td{padding-top:6px}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-search table tr .ecl-loan-list-search-label{font-weight:bold;padding-right:5px}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-search table tr .ecl-loan-list-search-unit{padding-right:30px}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-search table tr .ecl-loan-list-search-ui{vertical-align:middle}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-search .ecl-loan-list-search-btn{display:inline-block;width:70px;height:26px;line-height:26px;*line-height:29px;_line-height:26px;background:#2196ff;text-decoration:none;color:#000;border:1px solid #f3f3f3;text-align:center;position:absolute;right:0;_right:11px;cursor:pointer;top:15px;_top:18px;z-index:10;color:#FFF}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result{margin-top:-32px}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result li{display:inline-block;*display:inline;zoom:1}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul{border-bottom:1px solid #f3f3f3;width:100%}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul .ecl-loan-list-result-img{position:relative;width:38px}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul .ecl-loan-list-result-img img{position:absolute;bottom:-9px;*bottom:9px}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul .ecl-loan-list-result-left{padding:18px 0;width:175px;position:relative;*position:none;z-index:20}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul .ecl-loan-list-result-left a{text-decoration:none}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul .ecl-loan-list-result-left a:hover{text-decoration:underline}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul .ecl-loan-list-result-mid{width:179px;padding:18px 0}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul .ecl-loan-list-result-mid label{color:#333;font-weight:bold}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul .ecl-loan-list-result-mid span{color:#ff8400;font-weight:bold}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul .ecl-loan-list-result-right{padding:18px 0}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul .ecl-loan-list-result-right label{color:#333;font-weight:bold}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result ul .ecl-loan-list-result-right span{color:#ff8400;font-weight:bold}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result .ecl-loan-list-result-header{background:#f5f5f5;border:0}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result .ecl-loan-list-result-header li{padding:10px 0}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result .ecl-loan-list-error-item{text-align:center;font-size:14px;font-weight:bold;padding:15px 0;color:#217cc6}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result-more{border:0;font-size:13px;padding:6px 0;text-align:center}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result-more span{text-align:left;display:inline-block;width:430px}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result-more span label{font-weight:bold}.ecl-loan-list .ecl-loan-list-card .ecl-loan-list-result-more a{color:#0102ca;font-family:simsun;font-size:12px;line-height:12px}.ecl-footer{padding-top:5px;color:green;font-size:12px}</style>{%*点击统计*%} 
{%$qid=$extData.qid%}
{%$subqid=$extData.subqid%}
{%$sid=$extData.sid%}
{%$pssid=$extData.pssid%}
{%strip%}
<div class="ecl-loan-list">
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
    })
</script>
<script>
    A.init(function () {
        var extData = {};
        {%foreach from=$extData key=prop item=value%}extData['{%$prop|escape:"javascript"%}'] = '{%$value|escape:"javascript"%}';{%/foreach%}var card = this;var tpl = 'ecl-loan-list';
        var loanListData = card.data.LOAN_LIST_DATA;
        var valueOfLoan = null;
        var limitTime = null;
        var carPrice=null;
        var carFirstPay=null; 
        var carLimitTime=null; 
        var _tabid='2101';
        var ajaxFinished = false;var common=function(){var t=function(t,n){t="."+t;return n?$(n).find(t):$(t)};var n=function(t){return t?tpl+"-"+t:tpl};var r=function(t){var n=$("<div></div>");n.text(t);return n.html()};var e=function(t,n){return $(t).attr(n)};var u=function(t,n){t=String(t);var r=Array.prototype.slice.call(arguments,1);var e=Object.prototype.toString;if(r.length){r=r.length==1?n!==null&&/\[object Array\]|\[object Object\]/.test(e.call(n))?n:r:r;return t.replace(/#\{(.+?)\}/g,function(t,n){var u=r[n];if("[object Function]"==e.call(u)){u=u(n)}return"undefined"==typeof u?"":u})}return t};var a=function(r,e){return t(n(r),e)[0]};var i=function(t){if(typeof t==="function"){t()}};var o=function(t,n){for(var r in t){n[r]=t[r]}return n};var c=function(t,n,r){n=n||new Function;r=r||new Function;$.ajax({url:t,type:"GET",dataType:"json",success:function(t){var e={};if(!t){r();ajaxFinished=true;return}try{if(typeof t==="object"){e=t}else{e=$.parseJSON(t)}}catch(u){r();ajaxFinished=true;return}n(e);ajaxFinished=true},error:function(t){r();ajaxFinished=true}})};var f=function(t){return new Function("return ("+t+")")()};return{q:t,getClass:n,getAttr:e,qq:a,mix:o,enter:i,request:c,format:u,encodeHTML:r,parseJSON:f}}();var logic=function(){var t=common.qq;var e=common.parseJSON;var module=function(){var t="http://s1.bdstatic.com/r/www/cache/biz/ecom/";require.config({paths:{"zxui/ui":t+"zxui/20131210/ui/",Select:t+"ui/20140115/Select",InputSelect:t+"finance/20140310/InputSelect"}});require(["Select"],function(t){limitTime=new t({main:"ecl-loan-list-limit-time",prefix:"ecl-loan-list-ui-select",data:a(e(loanListData.durationList)),showtype:"text",onafterselect:n});carLimitTime=new t({main:"ecl-loan-list-car-limit-time",prefix:"ecl-loan-list-ui-select",data:a(e(loanListData.durationList)),showtype:"text",onafterselect:n});carFirstPay=new t({main:"ecl-loan-list-car-first-pay",prefix:"ecl-loan-list-ui-select",data:[],showtype:"text",onafterselect:n});limitTime.setValue({value:loanListData.duration.indexOf("月")>-1?parseInt(loanListData.duration,10):parseInt(loanListData.duration,10)*12,text:loanListData.duration});carLimitTime.setValue({value:loanListData.duration.indexOf("月")>-1?parseInt(loanListData.duration,10):parseInt(loanListData.duration,10)*12,text:loanListData.duration});require(["InputSelect"],function(t){valueOfLoan=new t({main:"ecl-loan-list-value-of-loan",prefix:"ecl-loan-list-ui-input-select",data:a(e(loanListData.quotaList)),showtype:"value",onafterselect:n});carPrice=new t({main:"ecl-loan-list-total-cost",prefix:"ecl-loan-list-ui-input-select",data:[],showtype:"value",onafterselect:n});valueOfLoan.setValue({value:loanListData.quota,text:loanListData.quota});n()})})};var a=function(t){for(var e=0,a=t.length;e<a;e++){t[e].text=t[e].name;delete t[e].name}return t};var n=function(){if(!valueOfLoan.isError()&&!carPrice.isError()){var e={};if(_tabid=="2103"){e={carPrice:carPrice.getValue(),carFirstPay:carFirstPay.getValue(),duration:carLimitTime.getValue(),city:loanListData.city}}else{e={quota:valueOfLoan.getValue(),duration:limitTime.getValue(),city:loanListData.city}}var a=loanListData.mpUrl;a.indexOf("city")>-1?delete e.city:"";a=a.replace(/&amp;/gi,"&");a+=(a.indexOf("?")>-1?"&":"?")+$.param(e);t("search-btn").href=a;$(t("title")).find("a").last().attr("href",a);$(t("result-more")).find("a").last().attr("href",a)}};return{module:module,deal:a}}();var tabs=function(){var t=common.qq;var a=common.getAttr;var e={TAB_CLASS:tpl+"-tabs-item",CUR_TAB_CLASS:tpl+"-tabs-item-cur",SPLIT_CLASS:tpl+"-tabs-split"};var i=function(){n()};var n=function(){$(t("")).on("click",function(t){t=t||window.event;var i=t.target||t.srcElement;var n=i.className;if(n.indexOf(e.TAB_CLASS)>-1&&n.indexOf(e.CUR_TAB_CLASS)===-1){if(!valueOfLoan.isError()&&!carPrice.isError()){r(i);var l={city:loanListData.city,categoryId:a(i,"tab-value"),t:(new Date).getTime()};var o=loanListData.GET_TPL_LIST_URL;l=common.mix(extData,l);o+=(o.indexOf("?")>-1?"&":"?")+$.param(l);common.request(o,function(t){if(t===""){list.renderError()}else{list.renderUI(a(i,"tab-value"));list.render(t);_tabid=a(i,"tab-value")}},function(){})}}})};var r=function(t){var a=t.parentNode;var i=a.childNodes;for(var n=0,r=i.length;n<r;n++){if(i[n].className.indexOf(e.CUR_TAB_CLASS)>-1){$(i[n]).removeClass(e.CUR_TAB_CLASS)}}$(t).addClass(e.CUR_TAB_CLASS);l(t)};var l=function(t){var a=t.parentNode;var i=a.childNodes;for(var n=0,r=i.length;n<r;n++){if(i[n].className===e.SPLIT_CLASS){$(i[n]).css("visibility","visible")}}if(t.previousSibling){$(t.previousSibling).css("visibility","hidden")}if(t.nextSibling){$(t.nextSibling).css("visibility","hidden")}};return{init:i}}();var list=function(){var t=common.qq;var a=common.format;var e="";var i="";var r=""+'<ul class="ecl-loan-list-result-header">'+'<li class="ecl-loan-list-result-img"></li>'+'<li class="ecl-loan-list-result-left">#{title}</li>'+'<li class="ecl-loan-list-result-mid">#{mid}</li>'+'<li class="ecl-loan-list-result-right">#{last}</li>'+"</ul>";var l={common:{title:"贷款产品",mid:"抵押类型/放款时间",last:"月供/总利息"},car:{title:"车贷产品",mid:"抵押类型/放款时间",last:"月供/总利息"},house:{title:"银行",mid:"首套房利率",last:"二手房利率"}};var n=[];var s="2101";var o=function(a){var e=t("result");a=a.data;cardAnti.setTimesign(a.signTime);p(a.categoryId);c(a);e.innerHTML=n.join("");g();f(a);y(a)};var c=function(t){var r=t.list;var l=t.categoryId;if(l=="2104"){e=""+"<label>#{fdiscount}</label><span>( #{frate} )</span>";i=""+"<label>#{sdiscount}</label><span>( #{srate} )</span>"}else{e="#{type}/#{lendTime}";i=""+"<label>#{mPayment}/</label><span>#{totalInterest}</span>"}for(var s=0,o=r.length;s<o;s++){var c=r[s];var u={};if(l=="2104"){u={logoSrc:c.logoSrc,url:c.viewDetailUrl,title:c.title,fdiscount:c.fdiscount,frate:c.frate,sdiscount:c.sdiscount,srate:c.srate}}else{u={logoSrc:c.logoSrc,url:c.url,title:c.title,lendTime:c["lend_time"],mPayment:c["m_payment"],type:c.type,totalInterest:c["total_interest"]}}var f=""+'<li class="ecl-loan-list-result-img">'+'<a href="#{url}" target="_blank" tn='+extData.tn+">"+'<img src="#{logoSrc}" '+'width="28" '+'height="28" '+'alt="#{title}"'+"/>"+"</a>"+"</li>"+'<li class="ecl-loan-list-result-left">'+'<a href="#{url}" target="_blank" '+"tn="+extData.tn+">#{title}</a>"+"</li>"+'<li class="ecl-loan-list-result-mid">'+e+"</li>"+'<li class="ecl-loan-list-result-right">'+i+"</li>";n.push("<ul>"+a(f,u)+"</ul>")}};var u=function(a){var e=t("search-car");var i=t("search-common");var r=t("result");var l=t("search-btn");if(a=="2103"&&m("2103")){$(e).css("visibility","visible");$(i).css("visibility","hidden");$(r).css("marginTop","-32px");$(l).css("visibility","visible")}else if(a=="2104"&&m("2104")){$(e).css("visibility","hidden");$(i).css("visibility","hidden");$(r).css("marginTop","-72px");$(l).css("visibility","hidden")}else{if(m("2101")){$(e).css("visibility","hidden");$(i).css("visibility","visible");$(r).css("marginTop","-32px");$(l).css("visibility","visible")}}};var f=function(t){var a=t.categoryId;if(a=="2103"){carPrice.setData(logic.deal(t.carPriceList));carFirstPay.setData(logic.deal(t.carFirstPayList));carPrice.setValue({value:t.carPrice,text:t.carPrice});carFirstPay.setValue({value:t.carFirstPay,text:t.carFirstPay+"成"});carLimitTime.setValue({value:t.duration.indexOf("月")>-1?parseInt(t.duration,10):parseInt(t.duration,10)*12,text:t.duration})}else if(a=="2101"||a=="2102"){valueOfLoan.setData(logic.deal(t.quotaList));limitTime.setValue({text:t.duration,value:t.duration.indexOf("年")>-1?parseInt(t.duration,10)*12:parseInt(t.duration,10)});valueOfLoan.setValue({value:t.quota,text:t.quota})}};var v=function(){var a=t("result");a.innerHTML=""+'<div class="'+tpl+'-error-item">'+"抱歉，没有找到符合的贷款产品，再挑挑看吧：）"+"</div>"};function d(t,a){for(var e=0,i=a.length;e<i;e++){if(t==a[e]){return true}}return false}var m=function(t){var a=["2101","2102"];var e=["2103"];var i=["2104"];if(d(t,a)&&d(s,a)||d(t,e)&&d(s,e)||d(t,i)&&d(s,i)){s=t;return false}else{s=t;return true}};var p=function(t){var e={};if(t=="2101"||t=="2102"){e=l.common}else if(t=="2103"){e=l.car}else if(t=="2104"){e=l.house}n.push(a(r,{title:e.title,mid:e.mid,last:e.last}))};var y=function(a){var e={};if(a.categoryId=="2103"){e={carPrice:carPrice.getValue(),carFirstPay:carFirstPay.getValue(),duration:carLimitTime.getValue(),city:loanListData.city}}else{e={quota:valueOfLoan.getValue(),duration:limitTime.getValue(),city:loanListData.city}}loanListData.mpUrl=a.mpUrl;var i=a.mpUrl;i.indexOf("city")>-1?delete e.city:"";i=i.replace(/&amp;/gi,"&");i+=(i.indexOf("?")>-1?"&":"?")+$.param(e);$(t("result-more")).children().first().attr("href",a.moreUrl);$(t("title")).children().first().attr("href",a.mainUrl);$(t("search")).children().first().attr("href",i)};var g=function(){n.length=0;n=[]};return{render:o,renderError:v,renderUI:u}}();var Anti=function(t){var e="EC_ZHIXIN";var a=0;var i=0,r,n,l,s,o,c,u,f,v,d,m,p;n=l=s=o=c=u=f=v=d=m=p=0;function h(e){var a=window.event||e;p=a.target||a.srcElement;while(p&&p.tagName!="A"){p=p.parentNode;if(p===t){return false}}v=(new Date).getTime();n=9999;l=a.clientX;s=a.clientY;if(!d){u=0}else{u=v-d}if(L()){b()}}function g(){m=(new Date).getTime();n=m-v;if(L()){b()}}function y(t){var e=window.event||t;i+=1;if(!o){o=e.clientX}if(!c){c=e.clientY}d=(new Date).getTime()}function L(){r=0;f=/\?url\=([^\.]+)\./.exec(p.href);if(f){for(var t=0;t<i*a%99+9;++t){r+=f[1].charCodeAt(n*t%f[1].length)}return true}return false}function b(){var t="&ck="+[r,i,n,l,s,o,c,u].join(".");if(p.href){var e=p.href;if(e.indexOf("&ck=")==-1){p.href+=t}else{p.href=e.replace(/&ck=[\w.]*/,t)}}}var x=0;var w={};function S(t,a,i){for(var r in a){w[++x]=i[r];t[e+r]=x;if(window.attachEvent){t.attachEvent("on"+a[r],i[r])}else{t.addEventListener(a[r],i[r],false)}}}var T={};function $(e,a){for(var i=0,r;r=e[i];i++){if(window.attachEvent){t.attachEvent("on"+r,a[i])}else if(window.addEventListener){t.addEventListener(r,a[i],false)}else{t["on"+r]=a[i]}T[r]=a[i]}}function D(e){for(var a=0,i;i=e[a];a++){if(window.detachEvent){t.detachEvent("on"+i,T[i])}else if(window.addEventListener){t.removeEventListener(i,T[i],false)}else{t["on"+i]=function(){}}}}function P(t,a){for(var i in a){var r=t[e+i];var n=w[r];if(n){if(window.detachEvent){t.detachEvent("on"+a[i],n)}else{t.removeEventListener(a[i],n)}}w[r]=null}}function O(t,e){var a=[];var i=e.getElementsByTagName("A");var r=" "+t+" ";for(var n=0,l;l=i[n];n++){if(l.className&&(" "+l.className+" ").indexOf(r)>=0){a.push(l)}}return a}return{getAntiTag:function(){return e},setTimesign:function(t){a=t},bind:function(){$(["mouseover","mousedown","mouseup"],[y,h,g])},unbind:function(){D(["mouseover","mousedown","mouseup"])}}};var cardAnti = new Anti($('.ecl-loan-list')[0]);
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