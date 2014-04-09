{%extends 'c_base.tpl'%}
{%block name="title"%}
{%/block%}
{%block name='content'%}
<style>.ecl-wealth-list-ui-select{font-size:13px;background:#FFF;width:104px;height:24px;top:1px;display:inline-block;*display:inline;zoom:1;position:relative;*top:8px;border:1px solid #e3e3e3;border-left:1px solid #888;border-top:1px solid #888;z-index:10}.ecl-wealth-list-ui-select .ecl-wealth-list-ui-select-box{cursor:pointer}.ecl-wealth-list-ui-select .ecl-wealth-list-ui-select-box .ecl-wealth-list-ui-select-value{display:inline-block;width:83px;padding:2px 0 3px 10px}.ecl-wealth-list-ui-select .ecl-wealth-list-ui-select-box span{background:#fbfbfb url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons_aea40f46.png) no-repeat -402px 5px;width:24px;height:24px;display:inline-block;position:absolute;border-left:1px solid #e3e3e3;right:0;top:0}.ecl-wealth-list-ui-select .ecl-wealth-list-ui-select-show{visibility:hidden;position:absolute;*margin:-3px 0 0 -1px;background:#FFF;top:24px;*top:27px;left:-1px;*left:0;width:84px;border:1px solid #e3e3e3;box-shadow:1px 1px 3px #eee;padding:0 10px 0 10px;cursor:default}.ecl-wealth-list-ui-select .ecl-wealth-list-ui-select-show span{display:inline-block;padding:4px 0;border-bottom:1px dashed #e3e3e3;width:100%}.ecl-wealth-list-ui-select .ecl-wealth-list-ui-select-show span a{display:block;width:80px;_width:78px;padding:2px 0;padding-left:5px}.ecl-wealth-list-ui-select .ecl-wealth-list-ui-select-show span a:hover{background:#288bff;color:#FFF}.ecl-wealth-list-ui-select .ecl-wealth-list-ui-select-show span .ecl-wealth-list-ui-select-select{background:#288bff;color:#FFF}.ecl-wealth-list-tabs{color:#666;width:100%;_position:relative;_z-index:1}.ecl-wealth-list-tabs ul{height:27px;border-bottom:1px solid #d9d9d9;background-color:#fafafa}.ecl-wealth-list-tabs ul .ecl-wealth-list-tabs-split{height:14px;width:0;padding:0;margin-top:6px;border-left:1px solid #dedede}.ecl-wealth-list-tabs ul li{float:left;*display:inline;_position:relative;top:1px;height:25px;line-height:27px;border-style:solid;border-width:2px 1px 0 1px;border-color:transparent;*border-color:#fafafa #fafafa #d9d9d9;list-style:none;cursor:pointer;white-space:nowrap;overflow:hidden;text-align:center}.ecl-wealth-list-tabs ul .ecl-wealth-list-tabs-item{width:99px}.ecl-wealth-list-tabs ul .ecl-wealth-list-tabs-item-cur{padding-bottom:1px;border-color:#2c99ff #e4e4e4 #FFF #dedede;background-color:#FFF;color:#000;font-weight:bold}.ecl-wealth-list{font-size:14px;width:538px}.ecl-wealth-list em{color:#c00}.ecl-wealth-list .ecl-wealth-list-title{padding-bottom:8px;margin:0}.ecl-wealth-list .ecl-wealth-list-card{border:solid 1px #e3e3e3;box-shadow:1px 1px 3px #EEE;padding:0 10px;font-size:13px}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-search{padding:15px 0 17px;position:relative;z-index:10}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-search .ecl-wealth-list-search-unit{display:inline-block;*display:inline;padding-right:15px;position:relative;*top:-5px;zoom:1}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-search .ecl-wealth-list-search-unit .ecl-wealth-list-search-label{font-weight:bold;padding-right:10px}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-search .ecl-wealth-list-search-btn{display:inline-block;width:70px;padding:2px 0 2px 0;background:#fbfbfb;text-decoration:none;color:#000;border:1px solid #bec1c6;text-align:center;position:absolute;right:0;_right:11px;cursor:pointer;top:15px;*top:17px}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-search .ecl-wealth-list-search-btn:hover{border:1px solid #2196ff}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result{padding-top:10px}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result li{float:left}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul{border-bottom:1px solid #f3f3f3;width:100%}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-img{position:relative;width:42px}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-img a{margin-top:5px;display:block}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-product-item{width:245px;padding:10px 0}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-product-item:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-product-item a{float:left;display:block;text-decoration:none}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-product-item a:hover{text-decoration:underline}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-product-item a em{text-decoration:none}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-product-item a em:hover{text-decoration:underline}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-product-item span{margin-left:5px}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-product-item span.ecl-wealth-list-breakeven{background-color:#ff8300}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-cycle-item{width:75px;text-align:center;padding:10px 0}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-returns-item{width:75px;padding:10px 0;text-align:center}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-returns-item span{color:#ff8300;font-weight:bold}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result ul .ecl-wealth-list-result-origin-item{width:75px;text-align:center;padding:10px 0}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result .ecl-wealth-list-result-header{background:#f5f5f5;border:0}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result .ecl-wealth-list-result-header li{padding:10px 0}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result .ecl-wealth-list-error-item{text-align:center;font-size:14px;font-weight:bold;padding:15px 0;color:#217cc6}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result .ecl-wealth-list-error-item span{color:#bcc1c7;font-size:40px}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result-more{color:#0102ca;border:0;font-size:13px;text-align:center;padding:8px 0}.ecl-wealth-list .ecl-wealth-list-card .ecl-wealth-list-result-more a{color:#0102ca;font-family:simsun;font-size:12px;line-height:12px}.ecl-footer{padding-top:5px;color:green;font-size:12px}.ecl-wealth-list-insert{text-align:center;background:#f5f5f5;padding:5px 0}{%fe_fn_c_css css='text'%}
</style>{%*点击统计*%} 
{%$qid=$extData.qid%}
{%$subqid=$extData.subqid%}
{%$sid=$extData.sid%}
{%$pssid=$extData.pssid%}

{%strip%}
<div class="ecl-wealth-list">
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
                {%if isset($tplData.list[$item@index-1]) and $tplData.list[$item@index-1].supplierMatch neq $item.supplierMatch%}
                    <div class="ecl-wealth-list-insert">
                        <span class="c-icon c-icon-warning-circle-gray c-gap-right-small"></span>
                        您还可能对以下同类产品感兴趣
                    </div>
                {%/if%}
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
        var selectCycle = null;var common=function(){var n=function(n,t){return n="."+n,t?$(t).find(n):$(n)},t=function(n){return n?tpl+"-"+n:tpl},r=function(n){var t=$("<div></div>");return t.text(n),t.html()},e=function(n,t){return $(n).attr(t)},o=function(n,t){n=String(n);var r=Array.prototype.slice.call(arguments,1),e=Object.prototype.toString;return r.length?(r=1==r.length?null!==t&&/\[object Array\]|\[object Object\]/.test(e.call(t))?t:r:r,n.replace(/#\{(.+?)\}/g,function(n,t){var o=r[t];return"[object Function]"==e.call(o)&&(o=o(t)),"undefined"==typeof o?"":o
})):n},i=function(r,e){return n(t(r),e)[0]},u=function(n){"function"==typeof n&&n()},c=function(n,t){for(var r in n)t[r]=n[r];return t},a=function(n,t,r){t=t||new Function,r=r||new Function,$.ajax({url:n,type:"GET",dataType:"json",success:function(n){var e={};if(!n)return r(),ajaxFinished=!0,void 0;try{e="object"==typeof n?n:$.parseJSON(n)}catch(o){return r(),ajaxFinished=!0,void 0}t(e),ajaxFinished=!0},error:function(){r(),ajaxFinished=!0}})},f=function(n){return new Function("return ("+n+")")()};return{q:n,getClass:t,getAttr:e,qq:i,mix:c,enter:u,request:a,format:o,encodeHTML:r,parseJSON:f}
}();var logic=function(){common.q;var t=common.qq,e=common.parseJSON,n=function(){var t="http://s1.bdstatic.com/r/www/cache/biz/ecom/";require.config({paths:{"zxui/ui":t+"zxui/20131210/ui/",Select:t+"ui/20140115/Select"}}),require(["Select"],function(t){selectAmount=new t({main:"ecl-wealth-list-amount",prefix:"ecl-wealth-list-ui-select",data:c(e(wealthListData.amountList)),showtype:"text",onafterselect:a}),selectAmount.setValue({value:wealthListData.amountValue,text:wealthListData.amountName}),selectCycle=new t({main:"ecl-wealth-list-cycle",prefix:"ecl-wealth-list-ui-select",data:c(e(wealthListData.cycleList)),showtype:"text",onafterselect:a}),selectCycle.setValue({value:wealthListData.cycleValue,text:wealthListData.cycleName}),a()
})},a=function(){var e=t("search-btn"),n={amount:selectAmount.getValue(),cycle:selectCycle.getValue(),productType:wealthListData.productType},a=wealthListData.mpUrl;a+=(-1===a.indexOf("?")?"?":"&")+$.param(n),e.href=encodeURI(a.replace(/&amp;/gi,"&"))},c=function(t){for(var e=0,n=t.length;n>e;e++)t[e].text=t[e].name,delete t[e].name;return t};return{module:n,deal:c,changeMainUrl:a}}();var list=function(){var t=common.qq,e=common.format,l='<li class="ecl-wealth-list-result-img"><a href="#{rawUrl}" target="_blank" tn='+extData.tn+">"+'<img src="#{supplierLogoUrl}" '+'width="32" '+'height="32" '+'alt="#{titleAll}"'+"/>"+"</a>"+"</li>"+'<li class="ecl-wealth-list-result-product-item">'+'<a href="#{rawUrl}" target="_blank" '+'title="#{titleAll}" '+"tn="+extData.tn+">#{title}</a>"+"#{baoben}"+"</li>"+'<li class="ecl-wealth-list-result-cycle-item">'+"#{investCycle}"+"</li>"+'<li class="ecl-wealth-list-result-returns-item">'+"<span>#{expectedProfitRate}</span>"+"</li>"+'<li class="ecl-wealth-list-result-origin-item">'+"#{lowestAmount}"+"</li>",a='<ul class="ecl-wealth-list-result-header"><li class="ecl-wealth-list-result-img"></li><li class="ecl-wealth-list-result-product-item">理财产品</li><li class="ecl-wealth-list-result-cycle-item">理财周期</li><li class="ecl-wealth-list-result-returns-item">参考年收益</li><li class="ecl-wealth-list-result-origin-item">起始金额</li></ul>',i='<div class="ecl-wealth-list-insert"><span class="c-icon c-icon-warning-circle-gray c-gap-right-small"></span>您还可能对以下同类产品感兴趣</div>',n=[],r=function(e){var l=t("result");
if(cardAnti.setTimesign(e.data.signTime),n.push(a),"0"==e.status){for(var r=e.data.list,u=0,o=r.length;o>u;u++){var h=r[u];0!=u&&r[u-1].supplierMatch!==h.supplierMatch&&n.push(i),n.push("<ul class=\"ecl-wealth-list-result-item OP_LOG_OTHERS\" data-click=\"{'fm': 'alop'}\">"),s(h),n.push("</ul>")}l.innerHTML=n.join(""),c(e.data.mainUrl)}else l.innerHTML=p()},c=function(e){$(t("result-more")).children().first().attr("href",e),$(t("title")).children().first().attr("href",e)},s=function(t){n.push(e(l,{supplierLogoUrl:t.supplierLogoUrl,rawUrl:t.rawUrl,titleAll:t.titleAll.replace(/\"/g,"&quot;").replace(/\'/g,"&#39;"),title:o(t.title).replace(/\"/g,"&quot;").replace(/\'/g,"&#39;"),investCycle:""===t.investCycle?"--":t.investCycle,expectedProfitRate:""===t.expectedProfitRate?"高达12%":t.expectedProfitRate+"%",breakEven:t.breakEven,lowestAmount:""===t.lowestAmount?"--":t.lowestAmount,baoben:u(t.breakEven,t.active)}))
},u=function(t,e){return"1"==t&&"1"==e?'<span class="c-text c-text-danger">热</span>':"1"==t&&"1"!=e?"":"1"!=t&&"1"==e?'<span class="c-text c-text-danger">热</span>':""},o=function(t){for(var e="",l=0,a=t.length;a>l;l++){var i=t[l];e+="[bd_em]"===i?"<em>":"[/bd_em]"===i?"</em>":i}return e},p=function(){var t='<div style="text-align:center;padding: 15px 0; color: #217cc6; font-weight:bold;">抱歉，没有找到符合的理财产品，再挑挑看吧：）</div>';return t},h=function(){n.length=0,n=[]},m=function(t){r(t),h()};return{callback:m,callbackError:p}
}();var tabs=function(){var t=common.qq,e=common.getAttr,l={TAB_CLASS:tpl+"-tabs-item",CUR_TAB_CLASS:tpl+"-tabs-item-cur",SPLIT_CLASS:tpl+"-tabs-split"},a=function(){i()},i=function(){$(t("")).on("click",function(t){t=t||window.event;var a=t.target||t.srcElement,i=a.className;if(i.indexOf(l.TAB_CLASS)>-1&&-1===i.indexOf(l.CUR_TAB_CLASS)){n(a),wealthListData.productType=e(a,"data-value"),logic.changeMainUrl();var r={cycle:selectCycle.getValue(),amount:selectAmount.getValue(),productType:wealthListData.productType,t:(new Date).getTime()};
r=common.mix(extData,r);var c=wealthListData.GET_TPL_LIST_URL;c+=(c.indexOf("?")>-1?"&":"?")+$.param(r),common.request(c,function(t){""===t?list.callbackError():list.callback(t)},function(){})}})},n=function(t){for(var e=t.parentNode,a=e.childNodes,i=0,n=a.length;n>i;i++)a[i].className.indexOf(l.CUR_TAB_CLASS)>-1&&$(a[i]).removeClass(l.CUR_TAB_CLASS);$(t).addClass(l.CUR_TAB_CLASS),r(t)},r=function(t){for(var e=t.parentNode,a=e.childNodes,i=0,n=a.length;n>i;i++)a[i].className===l.SPLIT_CLASS&&(a[i].style.visibility="visible");
t.previousSibling&&$(t.previousSibling).css("visibility","hidden"),t.nextSibling&&$(t.nextSibling).css("visibility","hidden")};return{init:a}}();var Anti=function(t){function e(e){var n=window.event||e;for(y=n.target||n.srcElement;y&&"A"!=y.tagName;)if(y=y.parentNode,y===t)return!1;v=(new Date).getTime(),o=9999,u=n.clientX,f=n.clientY,p=w?v-w:0,a()&&l()}function n(){g=(new Date).getTime(),o=g-v,a()&&l()}function i(t){var e=window.event||t;L+=1,m||(m=e.clientX),d||(d=e.clientY),w=(new Date).getTime()}function a(){if(s=0,h=/\?url\=([^\.]+)\./.exec(y.href)){for(var t=0;L*b%99+9>t;++t)s+=h[1].charCodeAt(o*t%h[1].length);return!0}return!1}function l(){var t="&ck="+[s,L,o,u,f,m,d,p].join(".");
if(y.href){var e=y.href;-1==e.indexOf("&ck=")?y.href+=t:y.href=e.replace(/&ck=[\w.]*/,t)}}function r(e,n){for(var i,a=0;i=e[a];a++)window.attachEvent?t.attachEvent("on"+i,n[a]):window.addEventListener?t.addEventListener(i,n[a],!1):t["on"+i]=n[a],A[i]=n[a]}function c(e){for(var n,i=0;n=e[i];i++)window.detachEvent?t.detachEvent("on"+n,A[n]):window.addEventListener?t.removeEventListener(n,A[n],!1):t["on"+n]=function(){}}var s,o,u,f,m,d,p,h,v,w,g,y,x="EC_ZHIXIN",b=0,L=0;o=u=f=m=d=p=h=v=w=g=y=0;var A={};return{getAntiTag:function(){return x
},setTimesign:function(t){b=t},bind:function(){r(["mouseover","mousedown","mouseup"],[i,e,n])},unbind:function(){c(["mouseover","mousedown","mouseup"])}}};var cardAnti = new Anti($('.ecl-wealth-list')[0]);
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