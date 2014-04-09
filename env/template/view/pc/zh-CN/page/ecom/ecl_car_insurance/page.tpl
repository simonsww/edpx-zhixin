{%extends 'base_div.tpl'%}

{%block name='content'%}

<style>.ecl-car-insurance-ui-city{margin-right:18px;font-size:13px;background:#FFF;width:113px;height:24px;display:inline-block;position:relative;border:1px solid #d7d7d7;border-top:1px solid #999;border-left:1px solid #999;*display:inline;*zoom:1;vertical-align:bottom}.ecl-car-insurance-ui-city-box{cursor:pointer}.ecl-car-insurance-ui-city-value{display:inline-block;padding:4px 0 4px 15px;color:#2b2b2b;*display:inline;*zoom:1}.ecl-car-insurance-ui-city-shadow{background:url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons_aea40f46.png) no-repeat center;background-position:-402px 5px;background-color:#fbfbfb;width:24px;height:24px;display:inline-block;position:absolute;border-left:1px solid #d7d7d7;right:0;top:0}.ecl-car-insurance-ui-city-show{display:none;background:#FFF;top:24px;background:#fff;left:-1px;width:350px;border:1px solid #bbb;padding:5px 10px 0 10px;cursor:default;position:absolute}.ecl-car-insurance-ui-city-show label{color:#666;margin-left:-2px;display:inline-block;*display:inline;*zoom:1}.ecl-car-insurance-ui-city-show label em{color:#00c;padding-left:10px}.ecl-car-insurance-ui-city-show ul{margin:5px 0 5px 0;border-top:1px solid #d8d8d8}.ecl-car-insurance-ui-city-show ul li{display:inline-block;padding:3px 0;width:80px;margin-left:5px;margin:2px 0;cursor:pointer;*display:inline;*zoom:1;color:#00c}.ecl-car-insurance-ui-city-show ul li span{padding:0 7px}.ecl-car-insurance-ui-city-show ul li span:hover{background:#388bff;color:#FFF}.ecl-car-insurance-ui-city-show ul li.ecl-car-insurance-ui-city-remen{width:55px}.ecl-car-insurance-ui-city-tabs{border-top:1px solid #d8d8d8;padding:5px 0 5px 1px}.ecl-car-insurance-ui-city-tabs a{display:inline-block;font-family:"Arial";font-size:14px;text-align:center;width:21px;padding:0;margin-right:10px;color:#00c;cursor:pointer;*display:inline;*zoom:1}.ecl-car-insurance-ui-city-tabs a:hover{background:#ccc;color:#FFF}.ecl-car-insurance-ui-city-tabs a:active{background:#388bff;color:#FFF}.ecl-car-insurance-ui-city-tabs .ecl-car-insurance-ui-city-select{background:#388bff;color:#FFF}.ecl-car-insurance-ui-city-tabs .ecl-car-insurance-ui-city-select:hover{background:#388bff;color:#FFF}.ecl-car-insurance{font-size:14px;width:538px}.ecl-car-insurance em{color:#c00}.ecl-car-insurance .ecl-car-insurance-title{padding-bottom:8px;margin:0}.ecl-car-insurance .ecl-car-insurance-card{border:solid 1px #e3e3e3;box-shadow:1px 1px 3px #EEE;padding:0 10px;font-size:13px}.ecl-car-insurance-tabs{width:503px;color:#666;padding-top:5px;*padding-top:10px;padding-left:13px}.ecl-car-insurance-tabs ul{border-bottom:1px solid #d9d9d9!important;background-color:#fafafa!important;font-size:13px;line-height:1.54}.ecl-car-insurance-tabs ul:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-car-insurance-tabs ul li{float:left;margin-bottom:-1px;_display:inline;position:relative;padding:3px 25px;border-style:solid;border-width:2px 1px 0 1px;border-color:transparent;_border-color:tomato;_filter:chroma(color=#ff6347);list-style:none;cursor:pointer;white-space:nowrap;overflow:hidden}.ecl-car-insurance-tabs ul li.ecl-car-insurance-tabs-item-cur{border-color:#2c99ff #e4e4e4 #fff #dedede;background-color:#fff;color:#000;cursor:default}.ecl-car-insurance-tabs ul li.ecl-car-insurance-tabs-split{height:16px;width:0;padding:0;margin-top:6px;border-style:solid;border-width:0 1px 0;border-color:transparent #fff transparent #dedede}.ecl-car-insurance-info{position:relative;border-bottom:1px solid #f3f3f3;*zoom:1}.ecl-car-insurance-info-header{padding-top:8px;padding-top:9px\9;*padding-top:9px}.ecl-car-insurance-info-header img{margin-right:10px}.ecl-car-insurance-info-header a{text-decoration:none}.ecl-car-insurance-info-header a:hover{text-decoration:underline}.ecl-car-insurance-info-desc{padding:15px 0 10px 13px}.ecl-car-insurance-info-desc:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-car-insurance-info-desc img{position:absolute}.ecl-car-insurance-info-wapper:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-car-insurance-info-node{float:left;padding:10px 0 10px 0;width:450px;margin-right:-55px}.ecl-car-insurance-info-node:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-car-insurance-info-node span{width:130px;display:block;white-space:nowrap;height:23px;line-height:23px;float:left;padding-left:13px}.ecl-car-insurance-info-node span i{font-style:normal}.ecl-car-insurance-info-node span label{font-size:20px;padding-right:5px;vertical-align:middle;color:#2196ff}.ecl-car-insurance-info-node span.ecl-car-insurance-unselect{color:#aaa}.ecl-car-insurance-info-node span.ecl-car-insurance-unselect i{font-style:normal;text-decoration:line-through}.ecl-car-insurance-info-node span.ecl-car-insurance-unselect label{color:#aaa}.ecl-car-insurance-info-btn{display:inline-block;float:right;width:76px;padding-top:20px;_margin-right:-10px}.ecl-car-insurance-info-btn p{width:100px;text-align:center;display:inline-block;color:#ff8400;font-weight:bold;padding-bottom:10px;margin-left:-10px}.ecl-car-insurance-info-btn a{background-color:#388bff;border-color:#3c8dff #408ffe #3680e6;padding:2px 10px;display:inline-block;width:55px;text-align:center;color:#fff;text-decoration:none}.ecl-car-insurance-info-btn a:hover{border-color:#2678ec #2575e7 #1c6fe2 #2677e7;box-shadow:1px 1px 1px rgba(0,0,0,0.4);-webkit-box-shadow:1px 1px 1px rgba(0,0,0,0.4);-moz-box-shadow:1px 1px 1px rgba(0,0,0,0.4);-o-box-shadow:1px 1px 1px rgba(0,0,0,0.4)}.ecl-car-insurance-info-desc-right{float:right;width:438px;height:60px}.ecl-car-insurance-info-desc-right:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-car-insurance-info-desc-right span{float:left;width:378px;line-height:20px}.ecl-car-insurance-info-desc-right label{float:left;width:60px;line-height:20px;color:#888}.ecl-car-insurance-search{padding:9px 0 15px 0;position:relative;z-index:2;border-bottom:1px solid #e3e3e3}.ecl-car-insurance-search table{border-collapse:collapse}.ecl-car-insurance-search table tr td{padding-top:6px}.ecl-car-insurance-search-label{font-weight:bold;padding-right:5px}.ecl-car-insurance-search-unit{padding-right:30px}.ecl-car-insurance-search-ui{vertical-align:middle}.ecl-car-insurance-search-ui form{position:relative}.ecl-car-insurance-search-ui form input{display:inline-block;padding:4px 10px;width:93px;margin-right:5px;border:1px solid #999;border-bottom-color:#d8d8d8;border-right-color:#d8d8d8;outline:0;box-sizing:content-box;-webkit-box-sizing:content-box;-moz-box-sizing:content-box;vertical-align:top;overflow:hidden}.ecl-car-insurance-search-common{visibility:visible}.ecl-car-insurance-search-unit .ecl-car-insurance-search-label{width:37px}.ecl-car-insurance-search-btn{display:inline-block;width:70px;padding:5px 0 4px 0;background:#fbfbfb;text-decoration:none;color:#000;border:1px solid #bec1c6;text-align:center;position:absolute;right:0;_right:11px;cursor:pointer;top:16px;_top:17px;z-index:10}.ecl-car-insurance-search-btn:hover{border:1px solid #2196ff}.ecl-car-insurance-result li{display:inline-block;*display:inline;*zoom:1;padding:8px 0}.ecl-car-insurance-result ul{border-bottom:1px solid #f3f3f3;width:100%;cursor:pointer}ul.ecl-car-insurance-hide{display:none}.ecl-car-insurance-icon{padding:0!important;margin-top:12px;float:right;*float:none;width:16px;height:16px;background:url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons_aea40f46.png) no-repeat;background-position:-70px -25px;margin-right:10px}.ecl-car-insurance-result-product-item{width:285px;position:relative;*zoom:1}.ecl-car-insurance-result-product-item a{text-decoration:none}.ecl-car-insurance-result-product-item a:hover{text-decoration:underline}.ecl-car-insurance-result-price-item{width:200px;color:#888}.ecl-car-insurance-result-price-item span{color:#ff8400;font-weight:bold}.ecl-car-insurance-error-item{text-align:center;font-size:14px;font-weight:bold;padding:15px 0;color:#217cc6}.ecl-car-insurance-result-more{color:#0102ca;border:0;font-size:13px;text-align:center;padding:8px 0}.ecl-car-insurance-result-more span{color:#0102ca;font-size:12px;line-height:12px}.ecl-car-insurance-result-more span em{display:inline-block;width:16px;height:16px;background:url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons_aea40f46.png) no-repeat;background-position:-70px -20px;position:relative;top:3px}.ecl-car-insurance-result-more-hide{display:none}.ecl-car-insurance-index{*zoom:1;margin-right:5px;display:inline-block;padding:1px 0;width:14px;color:#fff;line-height:100%;font-size:12px;text-align:center;background-color:#8eb9f5}.ecl-car-insurance-index1{background-color:#f54545}.ecl-car-insurance-index2{background-color:#ff8547}.ecl-car-insurance-index3{background-color:#ffac38}.ecl-car-insurance-tips{display:inline-block;padding:5px 10px;width:180px;position:absolute;top:-40px;background:#fff;z-index:999;border:1px solid #c7c7c7;color:#333;display:none;left:-25px;box-shadow:1px 1px 3px #ccc}.ecl-car-insurance-tips span{position:absolute;color:#c7c7c7;top:23px;_top:25px;left:45px;z-index:1000;text-shadow:1px 1px 3px #ccc}.ecl-car-insurance-tips span span{position:absolute;color:#FFF;top:-2px;left:0;z-index:500;text-shadow:0 0 0 #fff}.ecl-footer{padding-top:5px;color:green;font-size:12px}.ecl-car-insurance-error{text-align:center;font-size:14px;font-weight:bold;padding:15px 0;color:#217cc6}</style>{%*点击统计*%} 
{%$qid=$extData.qid%}
{%$subqid=$extData.subqid%}
{%$sid=$extData.sid%}
{%$pssid=$extData.pssid%}

{%strip%}

<div class="ecl-car-insurance">
    <h4 class="ecl-car-insurance-title">
        <a target="_blank" class="c-title ecl-car-insurance-title-link" href="{%$tplData.mpUrl|escape:'html'%}" tn="{%$extData.tn|escape:'html'%}">
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
    <div class="ecl-car-insurance-card">
        <div class="ecl-car-insurance-search">
            <a class="ecl-car-insurance-search-btn OP_LOG_BTN" data-click="{'rsv_car_ins_opt':'search', 'fm':'beha'}" target="_blank" tn="{%$extData.tn|escape:'html'%}">快速报价</a>
            <div class="ecl-car-insurance-search-common">
                <table>
                    <tr>
                        <td class="ecl-car-insurance-search-label">所在城市</td>
                        <td class="ecl-car-insurance-search-ui" data-click="{'rsv_car_ins_opt':'selectCity', 'fm':'beha'}">
                            <div id="ecl-car-insurance-city" class="ecl-car-insurance-ui-city OP_LOG_OTHERS">
                                <div class="ecl-car-insurance-ui-city-box">
                                    <div class="ecl-car-insurance-ui-city-value">{%$tplData.city|escape:'html'%}</div>
                                    <span class="ecl-car-insurance-ui-city-shadow"></span>
                                </div>
                                <div class="ecl-car-insurance-ui-city-show"></div>
                            </div>
                        </td>
                        <td class="ecl-car-insurance-search-label">总购车款</td>
                        <td class="ecl-car-insurance-search-ui" data-click="{'rsv_car_ins_opt':'selectPrice', 'fm':'beha'}">
                            <form>
                                <div class="ecl-car-insurance-tips"><span>▼<span>▼</span></span></div>
                                <input class="ecl-car-insurance-carPrice OP_LOG_OTHERS" type="text" value="{%$tplData.carPrice|escape:'html'%}"/>
                            </form>
                        </td>
                        <td class="ecl-car-insurance-search-unit">
                            <span>万元</span>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="ecl-car-insurance-result" data-click="{'fm':'beha'}">
            {%foreach $tplData.list as $item%}
            <ul class="ecl-car-insurance-result-item{%if $item@index eq 0%} ecl-car-insurance-hide{%/if%} OP_LOG_OTHERS" data-cmd="{index: {%$item@index%}}">
                <li class="ecl-car-insurance-result-product-item">
                    <span class="ecl-car-insurance-index ecl-car-insurance-index{%$item@index+1|escape:'html'%}">{%$item@index+1|escape:'html'%}</span>
                    <a class="OP_LOG_OTHERS" href="{%$item.lpUrl|escape:'html'%}" target="_blank" title="{%$item.titleAll|escape:'html'%}" tn="{%$extData.tn|escape:'html'%}" data-click="{'fm':'alop'}">{%$item.title|escape:'html'%}</a>
                </li>
                <li class="ecl-car-insurance-result-price-item">
                    参考报价：<span>&yen;{%$item.showPrice|escape:'html'%}起</span>
                </li>
                <li class="ecl-car-insurance-icon"></li>
            </ul>
            {%if $item@index eq 0%}
            <div class="ecl-car-insurance-info">
                <div class="ecl-car-insurance-info-header">
                    <span class="ecl-car-insurance-index ecl-car-insurance-index{%$item@index+1|escape:'html'%}">{%$item@index+1|escape:'html'%}</span>
                    <a class="OP_LOG_OTHERS" href="{%$item.lpUrl|escape:'html'%}" target="_blank" title="{%$item.titleAll|escape:'html'%}" tn="{%$extData.tn|escape:'html'%}" data-click="{'fm':'alop'}">{%$item.title|escape:'html'%}</a>
                </div>
                <div class="ecl-car-insurance-info-desc">
                    <a class="OP_LOG_OTHERS" href="{%$item.lpUrl|escape:'html'%}" target="_blank" title="{%$item.titleAll|escape:'html'%}" tn="{%$extData.tn|escape:'html'%}" data-click="{'fm':'alop'}"><img src="{%$item.logoUrl|escape:'html'%}" alt="{%$item.titleAll|escape:'html'%}" width="56" height="56"/></a>
                    <div class="ecl-car-insurance-info-desc-right">
                        <label>办理优惠:</label>
                        <span>{%$item.bonus|escape:'html'%}</span>
                        <label>理赔特色:</label>
                        <span>{%$item.feature|escape:'html'%}</span>
                    </div>
                </div>
                <div class="ecl-car-insurance-tabs OP_LOG_OTHERS" data-click="{'rsv_car_ins_opt': 'tabs', 'fm':'beha'}">
                    <ul>
                        {%foreach $item.tabs as $tab%}
                            {%if $tab.status eq '1'%}
                                {%assign var="curIndex" value=$tab@index%}
                            {%/if%}
                            {%if $tab@index neq 0%}
                                <li class="ecl-car-insurance-tabs-split" {%if $tab.status eq '1' or $tab@index eq $curIndex+1%}style="visibility: hidden;"{%/if%}></li>
                            {%/if%}
                            <li class="ecl-car-insurance-tabs-item{%if $tab.status eq '1'%} ecl-car-insurance-tabs-item-cur{%/if%} OP_LOG_OTHERS" data-index="{%$tab@index|escape:'html'%}" data-status="{%$tab.status|escape:'html'%}">
                                {%$tab.name|escape:'html'%}
                            </li>
                        {%/foreach%}
                    </ul>
                </div>
                <div class="ecl-car-insurance-info-wapper">
                    <div class="ecl-car-insurance-info-node">
                        {%foreach $item.tabs as $tab%}
                            {%if $tab@index eq $curIndex%}
                                {%foreach $tab.content as $con%}
                                <span {%if $con.status eq 0%}class="ecl-car-insurance-unselect"{%/if%}>
                                    <label>•</label>
                                    <i>{%$con.text|escape:'html'%}</i>
                                </span>
                                {%/foreach%}
                            {%/if%}
                        {%/foreach%}
                    </div>
                    <div class="ecl-car-insurance-info-btn OP_LOG_BTN" data-click="{'rsv_car_ins_opt': 'tabs', 'fm':'alop'}">
                        <p>&yen;{%$item.showPrice|escape:'html'%}起</p>
                        <a href="{%$item.lpUrl|escape:'html'%}" target="_blank" tn="{%$extData.tn%}">精确报价</a>
                    </div>
                </div>
            </div>
            {%/if%}
            {%/foreach%}
        </div>
        <div class="ecl-car-insurance-result-more {%if $tplData.totalNum <= 5%}ecl-car-insurance-result-more-hide{%/if%}">
            <span>查看更多车险<em></em></span>
        </div>
    </div>
    <div class='ecl-footer'>
        caifu.baidu.com
    </div>
</div>

{%/strip%}
<script type="text/javascript" data-compress="off">
    A.setup('CAR_INSURANCE_DATA', {
        carPrice: "{%$tplData.carPrice|escape:'javascript'%}",
        cityList: "{%$tplData.cityList|escape:'javascript'%}",
        listData: {%json_encode($tplData.list)%},
        GET_TPL_LIST_URL: '{%$tplData.ajaxUrl%}'
    });
</script>
<script type="text/javascript">
    A.init(function () {
         var extData = {};
        {%foreach from=$extData key=prop item=value%}extData['{%$prop|escape:"javascript"%}'] = '{%$value|escape:"javascript"%}';{%/foreach%}
        var card = this;
        var tpl = 'ecl-car-insurance';
        var CAR_INSURANCE_DATA = card.data.CAR_INSURANCE_DATA;
        var citySelect = null;
        var curItemIndex = 0;var common=function(){var t=function(t,n){t="."+t;return n?$(n).find(t):$(t)};var n=function(t){return t?tpl+"-"+t:tpl};var r=function(t){var n=$("<div></div>");n.text(t);return n.html()};var e=function(t,n){return $(t).attr(n)};var u=function(t,n){t=String(t);var r=Array.prototype.slice.call(arguments,1);var e=Object.prototype.toString;if(r.length){r=r.length==1?n!==null&&/\[object Array\]|\[object Object\]/.test(e.call(n))?n:r:r;return t.replace(/#\{(.+?)\}/g,function(t,n){var u=r[n];if("[object Function]"==e.call(u)){u=u(n)}return"undefined"==typeof u?"":u})}return t};var a=function(r,e){return t(n(r),e)[0]};var i=function(t){if(typeof t==="function"){t()}};var o=function(t,n){for(var r in t){n[r]=t[r]}return n};var c=function(t,n,r){n=n||new Function;r=r||new Function;$.ajax({url:t,type:"GET",dataType:"json",success:function(t){var e={};if(!t){r();ajaxFinished=true;return}try{if(typeof t==="object"){e=t}else{e=$.parseJSON(t)}}catch(u){r();ajaxFinished=true;return}n(e);ajaxFinished=true},error:function(t){r();ajaxFinished=true}})};var f=function(t){return new Function("return ("+t+")")()};return{Q:t,getClass:n,getAttr:e,qq:a,mix:o,enter:i,request:c,format:u,encodeHTML:r,parseJSON:f}}();var logic=function(){var t=common.Q;var e=common.qq;var a=common.format;var r=common.getAttr;var n=common.parseJSON;var i=""+'<div class="'+tpl+'-info-header">'+'<span class="'+tpl+"-index "+tpl+'-index#{index}">'+"#{index}"+"</span>"+'<a class="OP_LOG_OTHERS" '+'href="#{lpUrl}" '+'target="_blank" '+'title="#{titleAll}" '+'tn="#{tn}" '+"data-click=\"{'fm': 'alop'}\">"+"#{title}"+"</a>"+"</div>"+'<div class="'+tpl+'-info-desc">'+'<a class="OP_LOG_OTHERS" '+'href="#{lpUrl}" '+'target="_blank" '+'title="#{titleAll}" '+'tn="#{tn}" '+"data-click=\"{'fm': 'alop'}\">"+'<img src="#{logoUrl}" alt="#{titleAll}" width="56" height="56"/>'+"</a>"+'<div class="'+tpl+'-info-desc-right">'+"<label>办理优惠:</label>"+"<span>#{bonus}</span>"+"<label>理赔特色:</label>"+"<span>#{feature}</span>"+"</div>"+"</div>";var l=""+'<div class="'+tpl+'-tabs" '+'data-click="{'+"'rsv_car_insurance_opt': 'tabs', "+"'fm':'beha'"+'}">'+"<ul>#{tabBody}</ul>"+"</div>";var s=""+"#{tabSplit}"+'<li class="'+tpl+'-tabs-item #{curClass} OP_LOG_OTHERS" '+'data-status="#{status}" data-index="#{index}"'+">"+"#{name}"+"</li>";var c='<div class="'+tpl+'-info-wapper">'+'<div class="'+tpl+'-info-node">#{contentBody}</div>'+'<div class="'+tpl+'-info-btn">'+"<p>&yen;#{showPrice}起</p>"+'<a class="OP_LOG_OTHERS" '+'href="#{lpUrl}" '+'target="_blank" tn="#{tn}" '+"data-click=\"{'fm': 'alop'}\">精确报价</a>"+"</div></div>";var o="<span #{class}><label>•</label><i>#{text}</i></span>";var u=true;var module=function(){require.config({paths:{"zxui/ui":"http://s1.bdstatic.com/r/www/cache/biz/ecom/zxui/20131210/ui/",CitySelect:"http://s1.bdstatic.com/r/www/cache/biz/ecom/ui/20140115/City"}});require(["CitySelect"],function(t){citySelect=new t({main:""+tpl+"-city",prefix:""+tpl+"-ui-city",data:n(CAR_INSURANCE_DATA.cityList)})});v();f()};var d=function(t,a){while(t!=e("")){if(t===a){return true}else{t=t.parentNode}}return false};var v=function(){var a=t(tpl+"-result-item");$(e("result")).on("click",function(t){t=t||window.event;var e=t.target||t.srcElement;for(var r=0,n=a.length;r<n;r++){var i=a[r];if(d(e,i)){b(i);$(i).addClass(tpl+"-hide")}}})};var f=function(){function t(){var t={city:citySelect.getValue(),carPrice:e("carPrice").value,t:(new Date).getTime()};t=common.mix(extData,t);var a=CAR_INSURANCE_DATA.GET_TPL_LIST_URL;a+=(a.indexOf("?")>-1?"&":"?")+$.param(t);if(u){common.request(a,function(t){if(t.status==0){t=t.data;list.render(t);e("title-link").href=t.mpUrl}else{list.renderError(t.statusInfo)}},function(){list.renderError()})}}$(e("search-btn")).on("click",t);$(e("carPrice")).on("keyup",function(t){var e=/^((([1-9]{1}\d*)|([0]{1}))(\.(\d){1,2})?)?$/gi;if(!e.test(this.value)){p("请输入整数或者保留2位的小数");u=false}else{if(parseFloat(this.value)>500){p("输入的最大值为500万");u=false}else if(parseInt(this.value)<1){p("输入的最小值为1万");u=false}else if(this.value===""){p("输入的值不能为空");u=false}else{m();u=true}}})};var p=function(t){e("tips").innerHTML=t+"<span>▼<span>▼</span></span>";e("tips").style.display="block";e("carPrice").style.border="1px solid red"};var m=function(){e("tips").style.display="none";e("carPrice").style.borderTop="1px solid #999";e("carPrice").style.borderLeft="1px solid #999";e("carPrice").style.borderRight="1px solid #d7d7d7";e("carPrice").style.borderBottom="1px solid #d7d7d7"};var b=function(t){var a=e("result");var i=$(a).children();var l=i.length;for(var s=0;s<l;s++){var c=i[s];if(c.nodeName==="DIV"){$(c.previousSibling).removeClass(tpl+"-hide");$(c).remove();break}}curItemIndex=n(r(t,"data-cmd")).index;var o=$("<div></div>");o.attr("class",tpl+"-info");o[0].innerHTML=h(s);o.insertAfter(t)};var h=function(t){var e=[];var r=CAR_INSURANCE_DATA.listData[curItemIndex];e.push(a(i,{tn:extData["tn"],index:curItemIndex+1,lpUrl:r.lpUrl,title:r.title,logoUrl:r.logoUrl,bonus:r.bonus,feature:r.feature,titleAll:r.titleAll}));var n="";var u="";var d=0;var v=0;for(var f=0,p=r.tabs.length;f<p;f++){var m=r.tabs[f];if(m.status==1){v=f;break}}for(var f=0,p=r.tabs.length;f<p;f++){var m=r.tabs[f];var b="";var h="";if(m.status==1||f==v+1){h='style="visibility: hidden;"'}if(f!==0){b=""+'<li class="'+tpl+'-tabs-split"'+h+"></li>"}if(m.status==="1"){d=f}n+=a(s,{tabSplit:b,curClass:m.status==="1"?tpl+"-tabs-item-cur":"",status:m.status,name:m.name,index:f})}var y=r.tabs[d].content;for(var x=0,g=y.length;x<g;x++){var _=y[x];u+=a(o,{"class":_.status==="0"?'class="'+tpl+'-unselect"':"",text:_.text})}e.push(a(l,{tabBody:n}));e.push(a(c,{contentBody:u,showPrice:r.showPrice,lpUrl:r.lpUrl,tn:extData.tn}));return e.join("")};return{module:module,renderInfo:b,bindEvent:v}}();var tabs=function(){var t=common.qq;var e=common.format;var a=common.getAttr;var r={TAB_CLASS:tpl+"-tabs-item",CUR_TAB_CLASS:tpl+"-tabs-item-cur",SPLIT_CLASS:tpl+"-tabs-split"};var i=""+"<span #{status}>"+"<label>•</label>"+"<i>#{text}</i>"+" </span>";var n=function(){l()};var l=function(){$(t("")).on("click",function(t){t=t||window.event;var e=t.target||t.srcElement;var i=e.className;if(i.indexOf(r.TAB_CLASS)>-1&&i.indexOf(r.CUR_TAB_CLASS)===-1){s(e);o(a(e,"data-index"))}})};var s=function(t){var e=t.parentNode;var a=e.childNodes;for(var i=0,n=a.length;i<n;i++){if(a[i].className.indexOf(r.CUR_TAB_CLASS)>-1){$(a[i]).removeClass(r.CUR_TAB_CLASS)}}$(t).addClass(r.CUR_TAB_CLASS);c(t)};var c=function(t){var e=t.parentNode;var a=e.childNodes;for(var i=0,n=a.length;i<n;i++){if(a[i].className===r.SPLIT_CLASS){a[i].style.visibility="visible"}}if(t.previousSibling){t.previousSibling.style.visibility="hidden"}if(t.nextSibling){t.nextSibling.style.visibility="hidden"}};var o=function(a){var r=CAR_INSURANCE_DATA.listData[curItemIndex];var n=[];var l=r.tabs[a].content;for(var s=0,c=l.length;s<c;s++){var o=l[s];n.push(e(i,{status:o.status==="1"?"":'class="'+tpl+'-unselect"',text:o.text}))}t("info-node").innerHTML=n.join("");$(t("info-btn")).find("p")[0].innerHTML="&yen;"+r.tabs[a].price+"起"};return{init:n}}();var list=function(){var t=common.qq;var e=common.format;var i=""+'<ul class="'+tpl+'-result-item #{className} OP_LOG_OTHERS" data-cmd="{index: #{index}}">'+'<li class="'+tpl+'-result-product-item">'+'<span class="'+tpl+"-index "+tpl+'-index#{num}">#{num}</span>'+'<a class="OP_LOG_OTHERS" href="#{lpUrl}" target="_blank" title="#{titleAll}" tn="#{tn}" data-click="{"fm": "alop"}">#{title}</a>'+"</li>"+'<li class="'+tpl+'-result-price-item">'+"参考报价：<span>&yen;#{showPrice}起</span>"+"</li>"+'<li class="'+tpl+'-icon"></li>'+"</ul>";var a=function(e,i){var a=t("result");var r=$(a).children();var n=r.length;var l=null;if(e==="show"){for(var s=0;s<n;s++){var c=r[s];$(c).css("visibility","hidden")}var o=setTimeout(function(){$(r[0]).css("visibility","visible");v()},120);var u=1;function v(){var t=r[u];$(t).css("visibility","visible");if(u<n){l=setTimeout(v,50);u++}else{clearTimeout(l);clearTimeout(o);i?i():"";return}}}else if(e==="hide"){var u=n-1;function d(){var t=r[u];$(t).css("visibility","hidden");if(u>0){l=setTimeout(d,50);u--}else{clearTimeout(l);i?i():"";return}}d()}};var r=function(r){var n=r.list;var l=[];CAR_INSURANCE_DATA.listData=n;cardAnti.setTimesign(r.signTime);for(var s=0,c=n.length;s<c;s++){var o=n[s];l.push(e(i,{className:s===0?tpl+"-hide":"",index:s,num:s+1,lpUrl:o.lpUrl,title:o.title,titleAll:o.titleAll,tn:extData["tn"],showPrice:o.showPrice}))}a("hide",function(){t("result").innerHTML=l.join("");logic.renderInfo($(t("result")).children().first());logic.bindEvent();a("show")})};var n=function(e){var i="";e=e?e:"数据异常，请稍候再试～";i='<div class="ecl-car-insurance-error">'+e+"</div>";t("result").innerHTML=i};var l=function(){html.length=0;html=[]};return{render:r,renderError:n,clear:l}}();var Anti=function(t){var e="EC_ZHIXIN";var n=0;var i=0,r,a,l,s,o,c,u,v,f,d,p,m;a=l=s=o=c=u=v=f=d=p=m=0;function h(e){var n=window.event||e;m=n.target||n.srcElement;while(m&&m.tagName!="A"){m=m.parentNode;if(m===t){return false}}f=(new Date).getTime();a=9999;l=n.clientX;s=n.clientY;if(!d){u=0}else{u=f-d}if(A()){x()}}function b(){p=(new Date).getTime();a=p-f;if(A()){x()}}function g(t){var e=window.event||t;i+=1;if(!o){o=e.clientX}if(!c){c=e.clientY}d=(new Date).getTime()}function A(){r=0;v=/\?url\=([^\.]+)\./.exec(m.href);if(v){for(var t=0;t<i*n%99+9;++t){r+=v[1].charCodeAt(a*t%v[1].length)}return true}return false}function x(){var t="&ck="+[r,i,a,l,s,o,c,u].join(".");if(m.href){var e=m.href;if(e.indexOf("&ck=")==-1){m.href+=t}else{m.href=e.replace(/&ck=[\w.]*/,t)}}}var y=0;var w={};function S(t,n,i){for(var r in n){w[++y]=i[r];t[e+r]=y;if(window.attachEvent){t.attachEvent("on"+n[r],i[r])}else{t.addEventListener(n[r],i[r],false)}}}var T={};function _(e,n){for(var i=0,r;r=e[i];i++){if(window.attachEvent){t.attachEvent("on"+r,n[i])}else if(window.addEventListener){t.addEventListener(r,n[i],false)}else{t["on"+r]=n[i]}T[r]=n[i]}}function E(e){for(var n=0,i;i=e[n];n++){if(window.detachEvent){t.detachEvent("on"+i,T[i])}else if(window.addEventListener){t.removeEventListener(i,T[i],false)}else{t["on"+i]=function(){}}}}function C(t,n){for(var i in n){var r=t[e+i];var a=w[r];if(a){if(window.detachEvent){t.detachEvent("on"+n[i],a)}else{t.removeEventListener(n[i],a)}}w[r]=null}}function L(t,e){var n=[];var i=e.getElementsByTagName("A");var r=" "+t+" ";for(var a=0,l;l=i[a];a++){if(l.className&&(" "+l.className+" ").indexOf(r)>=0){n.push(l)}}return n}return{getAntiTag:function(){return e},setTimesign:function(t){n=t},bind:function(){_(["mouseover","mousedown","mouseup"],[g,h,b])},unbind:function(){E(["mouseover","mousedown","mouseup"])}}};var cardAnti = new Anti($('.' + tpl)[0]);
        cardAnti.bind();
        cardAnti.setTimesign("{%$tplData.signTime|escape:'javascript'%}");
        common.enter(function () {
            logic.module();
            tabs.init();
        });
    });
</script>
{%/block%}