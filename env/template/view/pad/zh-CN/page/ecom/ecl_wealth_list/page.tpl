{%extends 'c_base.tpl'%}
{%block name="title"%}
{%/block%}
{%block name='content'%}
<style>.ecl-wealth-list-ui-select{font-size:15px;background:#FFF;width:124px;height:24px;top:1px;display:inline-block;*display:inline;zoom:1;position:relative;*top:8px;border:1px solid #e3e3e3;border-left:1px solid #888;border-top:1px solid #888;z-index:10}.ecl-wealth-list-ui-select .ecl-wealth-list-ui-select-box{cursor:pointer}.ecl-wealth-list-ui-select .ecl-wealth-list-ui-select-box .ecl-wealth-list-ui-select-value{display:inline-block;width:103px;padding:0 0 0 10px}.ecl-wealth-list-ui-select .ecl-wealth-list-ui-select-box span{background:#fbfbfb url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons_aea40f46.png) no-repeat -402px 5px;width:24px;height:24px;display:inline-block;position:absolute;border-left:1px solid #e3e3e3;right:0;top:0}.ecl-wealth-list-ui-select .ecl-wealth-list-ui-select-show{visibility:hidden;position:absolute;*margin:-3px 0 0 -1px;background:#FFF;top:24px;*top:27px;left:-1px;*left:0;width:104px;border:1px solid #e3e3e3;box-shadow:1px 1px 3px #eee;padding:0 10px 0 10px;cursor:default}.ecl-wealth-list-ui-select .ecl-wealth-list-ui-select-show span{display:inline-block;padding:4px 0;border-bottom:1px dashed #e3e3e3;width:100%}.ecl-wealth-list-ui-select .ecl-wealth-list-ui-select-show span a{display:block;width:100px;_width:98px;padding:2px 0;padding-left:5px}.ecl-wealth-list-ui-select .ecl-wealth-list-ui-select-show span a:hover{background:#288bff;color:#FFF}.ecl-wealth-list-ui-select .ecl-wealth-list-ui-select-show span .ecl-wealth-list-ui-select-select{background:#288bff;color:#FFF}.ecl-wealth-list-tabs{color:#666;width:100%;_position:relative;_z-index:1}.ecl-wealth-list-tabs ul{height:27px;border-bottom:1px solid #d9d9d9;background-color:#fafafa}.ecl-wealth-list-tabs ul .ecl-wealth-list-tabs-split{height:14px;width:0;padding:0;margin-top:6px;border-left:1px solid #dedede}.ecl-wealth-list-tabs ul li{float:left;*display:inline;_position:relative;top:1px;height:25px;line-height:27px;border-style:solid;border-width:2px 1px 0 1px;border-color:transparent;*border-color:#fafafa #fafafa #d9d9d9;list-style:none;cursor:pointer;white-space:nowrap;overflow:hidden;text-align:center}.ecl-wealth-list-tabs ul .ecl-wealth-list-tabs-item{width:99px}.ecl-wealth-list-tabs ul .ecl-wealth-list-tabs-item-cur{padding-bottom:1px;border-color:#2c99ff #e4e4e4 #FFF #dedede;background-color:#FFF;color:#000;font-weight:bold}.ecl-wealth-list em{color:#c00}.ecl-wealth-list .ecl-wealth-list-title{padding-bottom:8px;margin:0}.ecl-wealth-list .ecl-wealth-list-card{border:solid 1px #e3e3e3;box-shadow:1px 1px 3px #EEE;padding:0 10px}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-search{padding:15px 0 17px;position:relative;z-index:10}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-search .ecl-wealth-list-search-unit{display:inline-block;*display:inline;padding-right:15px;position:relative;*top:-5px;zoom:1}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-search .ecl-wealth-list-search-unit .ecl-wealth-list-search-label{font-weight:bold;padding-right:10px}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-search .ecl-wealth-list-search-btn{display:inline-block;width:70px;padding:1px 0 1px 0;background:#fbfbfb;text-decoration:none;color:#000;border:1px solid #bec1c6;text-align:center;position:absolute;right:0;_right:11px;cursor:pointer;top:15px;*top:17px}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-search .ecl-wealth-list-search-btn:hover{border:1px solid #2196ff}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result{padding-top:10px}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result li{float:left}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul{border-bottom:1px solid #f3f3f3;width:100%}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-img{position:relative;width:42px}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-img a{margin-top:5px;display:block}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-product-item{width:275px;padding:10px 0}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-product-item:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-product-item a{float:left;display:block;text-decoration:none}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-product-item a:hover{text-decoration:underline}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-product-item a em{text-decoration:none}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-product-item a em:hover{text-decoration:underline}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-product-item span{margin-left:5px}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-product-item span.ecl-wealth-list-breakeven{background-color:#ff8300}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-cycle-item{width:80px;text-align:center;padding:10px 0}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-returns-item{width:80px;padding:10px 0;text-align:center}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-returns-item span{color:#ff8300;font-weight:bold}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-origin-item{width:80px;text-align:center;padding:10px 0}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result .ecl-wealth-list-result-header{background:#f5f5f5;border:0}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result .ecl-wealth-list-result-header li{padding:10px 0}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result .ecl-wealth-list-error-item{text-align:center;font-size:14px;font-weight:bold;padding:15px 0;color:#217cc6}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result .ecl-wealth-list-error-item span{color:#bcc1c7;font-size:40px}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result-more{color:#0102ca;border:0;font-size:inherit;text-align:center;padding:8px 0}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result-more a{color:#0102ca;font-family:simsun;line-height:12px}.ecl-footer{padding-top:5px;color:green;font-size:inherit}{%fe_fn_c_css css='text'%}
</style>{%*点击统计*%} 
{%$qid=$extData.qid%}
{%$subqid=$extData.subqid%}
{%$sid=$extData.sid%}
{%$pssid=$extData.pssid%}

{%strip%}
<div class="ecl-wealth-list c-container">
    <h4 class="ecl-wealth-list-title">
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
    <div class="ecl-wealth-list-card">
        <div class="ecl-wealth-list-search" data-click="{'rsv_wealth_list_opt':'search', 'fm':'beha'}">
            <a class="ecl-wealth-list-search-btn OP_LOG_BTN" data-click="{'rsv_wealth_list_opt':'search_btn', 'fm':'alop'}" href="{%$tplData.mpUrl|escape:'html'%}" target="_blank">查询</a>
            <div class="ecl-wealth-list-search-unit">
                <label class="ecl-wealth-list-search-label">投资金额</label>
                 <div id="ecl-wealth-list-amount" class="ecl-wealth-list-ui-select">
                    <div class="ecl-wealth-list-ui-select-box OP_LOG_OTHERS" data-click="{'fm':'beha'}">
                        <div class="ecl-wealth-list-ui-select-value">{%$tplData.amountName|escape:'html'%}</div>
                        <span></span>
                    </div>
                    <div class="ecl-wealth-list-u-select-show"></div>
                </div>
            </div>
            <div class="ecl-wealth-list-search-unit">
                <label class="ecl-wealth-list-search-label">计划理财周期</label>
                <div id="ecl-wealth-list-cycle" class="ecl-wealth-list-ui-select OP_LOG_OTHERS" data-click="{'fm':'beha'}">
                    <div class="ecl-wealth-list-ui-select-box OP_LOG_OTHERS" data-click="{'fm':'beha'}">
                        <div class="ecl-wealth-list-ui-select-value">{%$tplData.cycleName|escape:'html'%}</div>
                        <span></span>
                    </div>
                    <div class="ecl-wealth-list-ui-select-show"></div>
                </div>
            </div>
        </div>
        <div class="ecl-wealth-list-tabs" data-click="{'rsv_loan_list_opt': 'tabs', 'fm':'beha'}">
            <ul>
                {%foreach $tplData.tab.list as $tab%}
                    {%if $tab.status eq '1'%}
                        {%assign var="num" value=$tab@index+1%}
                    {%/if%}
                    {%if $tab@index neq 0%}
                    <li class="ecl-wealth-list-tabs-split" {%if $tab.status eq '1' or $tab@index eq $num%}style="visibility: hidden;"{%/if%}></li>{%/if%}<li class="ecl-wealth-list-tabs-item{%if $tab.status eq '1'%} ecl-wealth-list-tabs-item-cur{%/if%} OP_LOG_OTHERS" data-value="{%$tab.value|escape:'html'%}" data-status="{%$tab.status|escape:'html'%}">{%$tab.name|escape:'html'%}</li>
                {%/foreach%}
            </ul>
        </div>
        <div class="ecl-wealth-list-result">
            <ul class="ecl-wealth-list-result-header">
                <li class="ecl-wealth-list-result-img"></li>
                <li class="ecl-wealth-list-result-product-item">理财产品</li>
                <li class="ecl-wealth-list-result-cycle-item">理财周期</li>
                <li class="ecl-wealth-list-result-returns-item">参考年收益</li>
                <li class="ecl-wealth-list-result-origin-item">起始金额</li>
            </ul>
            {%foreach $tplData.list as $item%}
                <ul class="ecl-wealth-list-result-item OP_LOG_OTHERS" data-click="{'fm': 'alop'}">
                    <li class="ecl-wealth-list-result-img">
                        <a href="{%$item.rawUrl|escape:'html'%}" target="_blank" tn="{%$extData.tn|escape:'html'%}"><img src="{%$item.supplierLogoUrl|escape:'html'%}" width="32" height="32" alt="{%$item.titleAll|escape:'html'%}"/></a>
                    </li>
                    <li class="ecl-wealth-list-result-product-item">
                        <a href="{%$item.rawUrl|escape:'html'%}" target="_blank" title="{%$item.titleAll|escape:'html'%}" tn="{%$extData.tn|escape:'html'%}">
                            {%foreach $item.title as $pipe%}
                                {%if $pipe eq "[bd_em]"%}
                                    <em>
                                {%else if $pipe eq "[/bd_em]"%}
                                    </em>
                                {%else%}
                                    {%$pipe|escape:'html'%}
                                {%/if%}
                            {%/foreach%}
                        </a>
                        {%if ($item.active eq '1') and ($item.breakEven eq '1')%}
                            <span class="c-text c-text-danger">热</span>
                        {%else%}
                            {%if $item.breakEven eq '1'%}
                                {%*<span class="ecl-wealth-list-breakeven">保本</span>*%}
                            {%/if%}
                            {%if $item.active eq '1'%}
                                <span class="c-text c-text-danger">热</span>
                            {%/if%}
                        {%/if%}
                    </li>
                    <li class="ecl-wealth-list-result-cycle-item">
                        {%if $item.investCycle eq ''%}
                            --
                        {%else%}
                            {%$item.investCycle|escape:'html'%}
                        {%/if%}
                    </li>
                    <li class="ecl-wealth-list-result-returns-item">
                        <span>
                            {%if $item.expectedProfitRate eq ''%}
                                高达12%
                            {%else%}
                                {%$item.expectedProfitRate|escape:'html'%}%
                            {%/if%}
                        </span>
                    </li>
                    <li class="ecl-wealth-list-result-origin-item">
                        {%if $item.lowestAmount eq ''%}
                            --
                        {%else%}
                            {%$item.lowestAmount|escape:'html'%}
                        {%/if%}
                    </li>
                </ul>
            {%/foreach%}
        </div>
        <div class="ecl-wealth-list-result-more">
            <a target="_blank" href="{%$tplData.mainUrl|escape:'html'%}" tn="{%$extData.tn|escape:'html'%}">查看更多产品&gt;&gt;</a>
        </div>
    </div>
    <div class='ecl-footer'>
        caifu.baidu.com
    </div>
</div>
{%/strip%}
<script data-compress="off">
    A.setup('WEALTH_LIST_DATA', {
        amountValue: "{%$tplData.amountValue|escape:'html'%}",
        amountName: "{%$tplData.amountName|escape:'html'%}",
        cycleValue: "{%$tplData.cycleValue|escape:'html'%}",
        cycleName: "{%$tplData.cycleName|escape:'html'%}",
        amountList: '{%json_encode($tplData.amountList)%}',
        cycleList: '{%json_encode($tplData.cycleList)%}',
        mpUrl: "{%$tplData.mpUrl|escape:'html'%}",
        productType: "{%$tplData.tab.productType|escape:'html'%}",
        GET_TPL_LIST_URL: '{%$tplData.ajaxUrl%}'
    })
</script>
<script>
    A.setup(function () {
        var ajaxFinished = false;
        var extData = {};
        {%foreach from=$extData key=prop item=value%}extData['{%$prop|escape:"javascript"%}'] = '{%$value|escape:"javascript"%}';{%/foreach%}
        var card = this;
        var tpl = 'ecl-wealth-list';
        var wealthListData = card.data.WEALTH_LIST_DATA;
        var selectAmount = null;
        var selectCycle = null;var common=function(){var t=function(t,e){return t="."+t,e?$(e).find(t):$(t)},e=function(t){return t?tpl+"-"+t:tpl},n=function(t){var e=$("<div></div>");return e.text(t),e.html()},r=function(t,e){return $(t).attr(e)},i=function(t,e){t=String(t);var n=Array.prototype.slice.call(arguments,1),r=Object.prototype.toString;return n.length?(n=1==n.length?null!==e&&/\[object Array\]|\[object Object\]/.test(r.call(e))?e:n:n,t.replace(/#\{(.+?)\}/g,function(t,e){var i=n[e];return"[object Function]"==r.call(i)&&(i=i(e)),"undefined"==typeof i?"":i
})):t},a=function(n,r){return t(e(n),r)[0]},o=function(t){"function"==typeof t&&t()},c=function(t,e){for(var n in t)e[n]=t[n];return e},l=function(t,e,n){e=e||new Function,n=n||new Function,$.ajax({url:t,type:"GET",dataType:"json",success:function(t){var r={};if(!t)return n(),ajaxFinished=!0,void 0;try{r="object"==typeof t?t:$.parseJSON(t)}catch(i){return n(),ajaxFinished=!0,void 0}e(r),ajaxFinished=!0},error:function(){n(),ajaxFinished=!0}})},u=function(t){return new Function("return ("+t+")")()},s=function(t){function e(t){return/["\\\x00-\x1f]/.test(t)&&(t=t.replace(/["\\\x00-\x1f]/g,function(t){var e=a[t];
return e?e:(e=t.charCodeAt(),"\\u00"+Math.floor(e/16).toString(16)+(e%16).toString(16))})),'"'+t+'"'}function n(t){var e,n,r,i=["["],a=t.length;for(n=0;a>n;n++)switch(r=t[n],typeof r){case"undefined":case"function":case"unknown":break;default:e&&i.push(","),i.push(s(r)),e=1}return i.push("]"),i.join("")}function r(t){return 10>t?"0"+t:t}function i(t){return'"'+t.getFullYear()+"-"+r(t.getMonth()+1)+"-"+r(t.getDate())+"T"+r(t.getHours())+":"+r(t.getMinutes())+":"+r(t.getSeconds())+'"'}var a={"\b":"\\b","	":"\\t","\n":"\\n","\f":"\\f","\r":"\\r",'"':'\\"',"\\":"\\\\"};
switch(typeof t){case"undefined":return"undefined";case"number":return isFinite(t)?String(t):"null";case"string":return e(t);case"boolean":return String(t);default:if(null===t)return"null";if(t instanceof Array)return n(t);if(t instanceof Date)return i(t);var o,c,l=["{"];for(var u in t)if(Object.prototype.hasOwnProperty.call(t,u))switch(c=t[u],typeof c){case"undefined":case"unknown":case"function":break;default:o&&l.push(","),o=1,l.push(s(u)+":"+s(c))}return l.push("}"),l.join("")}};return{q:t,getClass:e,getAttr:r,qq:a,mix:c,enter:o,request:l,format:i,encodeHTML:n,parseJSON:u,stringify:s}
}();var logic=function(){common.q;var t=common.qq,e=common.parseJSON,n=function(){$(function(){var t="http://s1.bdstatic.com/r/www/cache/biz/ecom/";require.config({paths:{"zxui/ui":t+"zxui/20131210/ui/",Select:t+"ui/20140115/Select"}}),require(["Select"],function(t){selectAmount=new t({main:"ecl-wealth-list-amount",prefix:"ecl-wealth-list-ui-select",data:r(e(wealthListData.amountList)),showtype:"text",onafterselect:i}),selectAmount.setValue({value:wealthListData.amountValue,text:wealthListData.amountName}),selectCycle=new t({main:"ecl-wealth-list-cycle",prefix:"ecl-wealth-list-ui-select",data:r(e(wealthListData.cycleList)),showtype:"text",onafterselect:i}),selectCycle.setValue({value:wealthListData.cycleValue,text:wealthListData.cycleName}),i()
})})},i=function(){var e=t("search-btn"),n={amount:selectAmount.getValue(),cycle:selectCycle.getValue(),productType:wealthListData.productType},i=wealthListData.mpUrl;i+=(-1===i.indexOf("?")?"?":"&")+$.param(n),e.href=encodeURI(i.replace(/&amp;/gi,"&"))},r=function(t){for(var e=0,n=t.length;n>e;e++)t[e].text=t[e].name,delete t[e].name;return t};return{module:n,deal:r,changeMainUrl:i}}();var list=function(){var t=common.qq,e=common.format,n='<li class="ecl-wealth-list-result-img"><a href="#{rawUrl}" target="_blank" tn='+extData.tn+">"+'<img src="#{supplierLogoUrl}" '+'width="32" '+'height="32" '+'alt="#{titleAll}"'+"/>"+"</a>"+"</li>"+'<li class="ecl-wealth-list-result-product-item">'+'<a href="#{rawUrl}" target="_blank" '+'title="#{titleAll}" '+"tn="+extData.tn+">#{title}</a>"+"#{baoben}"+"</li>"+'<li class="ecl-wealth-list-result-cycle-item">'+"#{investCycle}"+"</li>"+'<li class="ecl-wealth-list-result-returns-item">'+"<span>#{expectedProfitRate}</span>"+"</li>"+'<li class="ecl-wealth-list-result-origin-item">'+"#{lowestAmount}"+"</li>",i='<ul class="ecl-wealth-list-result-header"><li class="ecl-wealth-list-result-img"></li><li class="ecl-wealth-list-result-product-item">理财产品</li><li class="ecl-wealth-list-result-cycle-item">理财周期</li><li class="ecl-wealth-list-result-returns-item">参考年收益</li><li class="ecl-wealth-list-result-origin-item">起始金额</li></ul>',r=[],a=function(e){var n=t("result");
if(cardAnti.setTimesign(e.data.signTime),r.push(i),"0"==e.status){for(var a=e.data.list,c=0,s=a.length;s>c;c++)r.push("<ul class=\"ecl-wealth-list-result-item OP_LOG_OTHERS\" data-click=\"{'fm': 'alop'}\">"),l(a[c]),r.push("</ul>");n.innerHTML=r.join(""),o(e.data.mainUrl)}else n.innerHTML=u()},o=function(e){$(t("result-more")).children().first().attr("href",e),$(t("title")).children().first().attr("href",e)},l=function(t){r.push(e(n,{supplierLogoUrl:t.supplierLogoUrl,rawUrl:t.rawUrl,titleAll:t.titleAll.replace(/\"/g,"&quot;").replace(/\'/g,"&#39;"),title:s(t.title).replace(/\"/g,"&quot;").replace(/\'/g,"&#39;"),investCycle:""===t.investCycle?"--":t.investCycle,expectedProfitRate:""===t.expectedProfitRate?"高达12%":t.expectedProfitRate+"%",breakEven:t.breakEven,lowestAmount:""===t.lowestAmount?"--":t.lowestAmount,baoben:c(t.breakEven,t.active)}))
},c=function(t,e){return"1"==t&&"1"==e?'<span class="c-text c-text-danger">热</span>':"1"==t&&"1"!=e?"":"1"!=t&&"1"==e?'<span class="c-text c-text-danger">热</span>':""},s=function(t){for(var e="",n=0,i=t.length;i>n;n++){var r=t[n];e+="[bd_em]"===r?"<em>":"[/bd_em]"===r?"</em>":r}return e},u=function(){var t='<div style="text-align:center;padding: 15px 0; color: #217cc6; font-weight:bold;">抱歉，没有找到符合的理财产品，再挑挑看吧：）</div>';return t},f=function(){r.length=0,r=[]},d=function(t){a(t),f()};return{callback:d,callbackError:u}
}();var tabs=function(){var t=common.qq,e=common.getAttr,n={TAB_CLASS:tpl+"-tabs-item",CUR_TAB_CLASS:tpl+"-tabs-item-cur",SPLIT_CLASS:tpl+"-tabs-split"},i=function(){r()},r=function(){$(t("")).on("click",function(t){t=t||window.event;var i=t.target||t.srcElement,r=i.className;if(r.indexOf(n.TAB_CLASS)>-1&&-1===r.indexOf(n.CUR_TAB_CLASS)){a(i),wealthListData.productType=e(i,"data-value"),logic.changeMainUrl();var o={cycle:selectCycle.getValue(),amount:selectAmount.getValue(),productType:wealthListData.productType,t:(new Date).getTime()};
o=common.mix(extData,o);var l=wealthListData.GET_TPL_LIST_URL;l+=(l.indexOf("?")>-1?"&":"?")+$.param(o),common.request(l,function(t){""===t?list.callbackError():list.callback(t)},function(){})}})},a=function(t){for(var e=t.parentNode,i=e.childNodes,r=0,a=i.length;a>r;r++)i[r].className.indexOf(n.CUR_TAB_CLASS)>-1&&$(i[r]).removeClass(n.CUR_TAB_CLASS);$(t).addClass(n.CUR_TAB_CLASS),o(t)},o=function(t){for(var e=t.parentNode,i=e.childNodes,r=0,a=i.length;a>r;r++)i[r].className===n.SPLIT_CLASS&&(i[r].style.visibility="visible");
t.previousSibling&&$(t.previousSibling).css("visibility","hidden"),t.nextSibling&&$(t.nextSibling).css("visibility","hidden")};return{init:i}}();var Anti=function(t){function e(e){var n=window.event||e;for(b=n.target||n.srcElement;b&&"A"!=b.tagName;)if(b=b.parentNode,b===t)return!1;h=(new Date).getTime(),s=9999,u=n.clientX,f=n.clientY,p=g?h-g:0,r()&&a()}function n(){w=(new Date).getTime(),s=w-h,r()&&a()}function i(t){var e=window.event||t;S+=1,d||(d=e.clientX),v||(v=e.clientY),g=(new Date).getTime()}function r(){if(c=0,m=/\?url\=([^\.]+)\./.exec(b.href)){for(var t=0;S*x%99+9>t;++t)c+=m[1].charCodeAt(s*t%m[1].length);return!0}return!1}function a(){var t="&ck="+[c,S,s,u,f,d,v,p].join(".");
if(b.href){var e=b.href;-1==e.indexOf("&ck=")?b.href+=t:b.href=e.replace(/&ck=[\w.]*/,t)}}function o(e,n){for(var i,r=0;i=e[r];r++)window.attachEvent?t.attachEvent("on"+i,n[r]):window.addEventListener?t.addEventListener(i,n[r],!1):t["on"+i]=n[r],T[i]=n[r]}function l(e){for(var n,i=0;n=e[i];i++)window.detachEvent?t.detachEvent("on"+n,T[n]):window.addEventListener?t.removeEventListener(n,T[n],!1):t["on"+n]=function(){}}var c,s,u,f,d,v,p,m,h,g,w,b,y="EC_ZHIXIN",x=0,S=0;s=u=f=d=v=p=m=h=g=w=b=0;var T={};return{getAntiTag:function(){return y
},setTimesign:function(t){x=t},bind:function(){o(["mouseover","mousedown","mouseup"],[i,e,n])},unbind:function(){l(["mouseover","mousedown","mouseup"])}}};var cardAnti = new Anti($('.ecl-wealth-list')[0]);
        cardAnti.bind();
        cardAnti.setTimesign("{%$tplData.signTime|escape:'javascript'%}");
        common.enter(function () {
            logic.module();
            tabs.init();
        });
        this.dispose = function () {
            if (!ajaxFinished) {
                list.callback = undefined;
                list.callbackError = undefined;
            }
        }
    });
</script>
{%/block%}