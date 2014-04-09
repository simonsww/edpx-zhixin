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
<style type="text/css">.ecl-fn-car-insurance-ui-city{margin-right:18px;font-size:13px;background:#FFF;width:113px;height:24px;display:inline-block;position:relative;border:1px solid #d7d7d7;border-top:1px solid #999;border-left:1px solid #999;*display:inline;*zoom:1;vertical-align:bottom}.ecl-fn-car-insurance-ui-city-box{cursor:pointer}.ecl-fn-car-insurance-ui-city-value{display:inline-block;padding:2px 0 2px 15px;color:#2b2b2b;*display:inline;*zoom:1}.ecl-fn-car-insurance-ui-city-shadow{background:#fbfbfb url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons_aea40f46.png) no-repeat -402px 5px;width:24px;height:24px;display:inline-block;position:absolute;border-left:1px solid #d7d7d7;right:0;top:0}.ecl-fn-car-insurance-ui-city-show{display:none;background:#FFF;top:24px;left:-1px;width:350px;border:1px solid #bbb;padding:5px 10px 0 10px;cursor:default;position:absolute}.ecl-fn-car-insurance-ui-city-show label{color:#666;margin-left:-2px;display:inline-block;*display:inline;*zoom:1}.ecl-fn-car-insurance-ui-city-show label em{color:#00c;padding-left:10px}.ecl-fn-car-insurance-ui-city-show ul{margin:5px 0 5px 0;border-top:1px solid #d8d8d8}.ecl-fn-car-insurance-ui-city-show ul li{display:inline-block;padding:3px 0;width:80px;margin:2px 0 2px 5px;cursor:pointer;*display:inline;*zoom:1;color:#00c}.ecl-fn-car-insurance-ui-city-show ul li span{padding:0 7px}.ecl-fn-car-insurance-ui-city-show ul li span:hover{background:#388bff;color:#FFF}.ecl-fn-car-insurance-ui-city-show ul li.ecl-fn-car-insurance-ui-city-remen{width:55px}.ecl-fn-car-insurance-ui-city-tabs{border-top:1px solid #d8d8d8;padding:5px 0 5px 1px}.ecl-fn-car-insurance-ui-city-tabs a{display:inline-block;font-family:"Arial";font-size:14px;text-align:center;width:21px;padding:0;margin-right:10px;color:#00c;cursor:pointer;*display:inline;*zoom:1}.ecl-fn-car-insurance-ui-city-tabs a:hover{background:#CCC;color:#FFF}.ecl-fn-car-insurance-ui-city-tabs a:active{background:#388bff;color:#FFF}.ecl-fn-car-insurance-ui-city-tabs .ecl-fn-car-insurance-ui-city-select{background:#388bff;color:#FFF}.ecl-fn-car-insurance-ui-city-tabs .ecl-fn-car-insurance-ui-city-select:hover{background:#388bff;color:#FFF}.ecl-fn-car-insurance-tabs{color:#666;width:100%;_position:relative;_z-index:1}.ecl-fn-car-insurance-tabs ul{height:27px;border-bottom:1px solid #d9d9d9;background-color:#fafafa}.ecl-fn-car-insurance-tabs ul .ecl-fn-car-insurance-tabs-split{height:14px;width:0;padding:0;margin-top:6px;border-left:1px solid #dedede}.ecl-fn-car-insurance-tabs ul li{float:left;*display:inline;_position:relative;top:1px;height:25px;line-height:27px;border-style:solid;border-width:2px 1px 0 1px;border-color:transparent;*border-color:#fafafa #fafafa #d9d9d9;list-style:none;cursor:pointer;white-space:nowrap;overflow:hidden;text-align:center}.ecl-fn-car-insurance-tabs ul .ecl-fn-car-insurance-tabs-item{width:99px}.ecl-fn-car-insurance-tabs ul .ecl-fn-car-insurance-tabs-item-cur{padding-bottom:1px;border-color:#2c99ff #e4e4e4 #FFF #dedede;background-color:#FFF;color:#000;font-weight:bold}.ecl-fn-car-insurance-card{padding-bottom:0!important}.ecl-fn-car-insurance-title{margin-top:0}.ecl-fn-car-insurance-search{padding:0 0 15px 0;position:relative;z-index:2}.ecl-fn-car-insurance-search table{border-collapse:collapse}.ecl-fn-car-insurance-search table tr td{padding-top:6px}.ecl-fn-car-insurance-search-label{font-weight:bold;padding-right:5px}.ecl-fn-car-insurance-search-unit{padding-right:30px}.ecl-fn-car-insurance-search-ui{vertical-align:middle}.ecl-fn-car-insurance-search-ui form{position:relative}.ecl-fn-car-insurance-search-ui form input{display:inline-block;padding:4px 10px;width:93px;margin-right:5px;border:1px solid #999;border-bottom-color:#d8d8d8;border-right-color:#d8d8d8;outline:0;box-sizing:content-box;-webkit-box-sizing:content-box;-moz-box-sizing:content-box;vertical-align:top;overflow:hidden}.ecl-fn-car-insurance-search-common{visibility:visible}.ecl-fn-car-insurance-search-unit .ecl-fn-car-insurance-search-label{width:37px}.ecl-fn-car-insurance-search-btn{position:absolute;right:0;_right:11px;top:7px;z-index:10}.ecl-fn-car-insurance-tips{display:inline-block;padding:5px 10px;width:180px;position:absolute;top:-40px;background:#fff;z-index:999;border:1px solid #c7c7c7;color:#333;display:none;left:-25px;box-shadow:1px 1px 3px #ccc}.ecl-fn-car-insurance-tips span{position:absolute;color:#c7c7c7;top:24px;_top:25px;left:45px;z-index:1000;text-shadow:1px 1px 3px #ccc}.ecl-fn-car-insurance-tips span span{position:absolute;color:#FFF;top:-2px;left:0;z-index:500;text-shadow:0 0 0 #fff}.ecl-fn-car-insurance-hrow{height:32px;line-height:32px;*zoom:1}.ecl-fn-car-insurance-hrow-index,.ecl-fn-car-insurance-row-index{float:left;position:relative;top:9px}.ecl-fn-car-insurance-row{cursor:pointer;border-top:1px solid #e3e3e3;height:32px;line-height:32px;*zoom:1}.ecl-fn-car-insurance-row:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-fn-car-insurance-row-hide{display:none;border-top:0}.ecl-fn-car-insurance-hrow-title,.ecl-fn-car-insurance-row-title{display:inline-block;float:left;width:265px}.ecl-fn-car-insurance-hrow-title a,.ecl-fn-car-insurance-row-title a{text-decoration:none}.ecl-fn-car-insurance-hrow-price,.ecl-fn-car-insurance-row-price{display:inline-block;width:210px;float:left}.ecl-fn-car-insurance-hrow-price label,.ecl-fn-car-insurance-row-price label{color:#888}.ecl-fn-car-insurance-hrow-price span,.ecl-fn-car-insurance-row-price span{color:#ff8400;font-weight:bold}.ecl-fn-car-insurance-row-price label{cursor:pointer}.ecl-fn-car-insurance-row-icon{position:relative;*top:7px}.ecl-fn-car-insurance-info{display:inline-block}.ecl-fn-car-insurance-info-hide{border-top:1px solid #e3e3e3;display:none}.ecl-fn-car-insurance-info-desc:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-fn-car-insurance-info-desc-left{display:inline-block;float:left}.ecl-fn-car-insurance-info-desc-left img{float:left}.ecl-fn-car-insurance-info-desc-right{float:right;width:457px}.ecl-fn-car-insurance-info-desc-right:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-fn-car-insurance-info-desc-right span{float:left;width:378px;line-height:20px}.ecl-fn-car-insurance-info-desc-right label{float:left;width:40px;line-height:20px;color:#888}.ecl-fn-car-insurance-info-items{padding-left:90px}.ecl-fn-car-insurance-info-items:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0;*zoom:1}.ecl-fn-car-insurance-info-items span{width:91px;display:block;white-space:nowrap;height:20px;line-height:20px;float:left;padding-left:13px}.ecl-fn-car-insurance-info-items span i{font-style:normal}.ecl-fn-car-insurance-info-items span label{font-size:20px;padding-right:5px;vertical-align:middle;color:#2196ff}.ecl-fn-car-insurance-unselect{color:#aaa}.ecl-fn-car-insurance-unselect i{font-style:normal;text-decoration:line-through}.ecl-fn-car-insurance-unselect label{color:#aaa}.ecl-fn-car-insurance-info-oprz{display:inline-block;padding:0 0 15px 105px}.ecl-fn-car-insurance-error{text-align:center;font-size:14px;font-weight:bold;padding:15px 0;color:#217cc6}{%fe_fn_c_css css='index'%}
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
                            <a class="OP_LOG_OTHERS" href="{%$item.lpUrl|escape:'html'%}" target="_blank" title="{%$item.titleAll|escape:'html'%}" tn="{%$extData.tn|escape:'html'%}" data-click="{'fm':'alop'}"><img src="{%$item.logoUrl|escape:'html'%}" alt="{%$item.titleAll|escape:'html'%}" width="56" height="56"/></a>
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
        var tabValue = CAR_INSURANCE_DATA.tabValue;var common=function(){var t=function(t,n){t="."+t;return n?$(n).find(t):$(t)};var n=function(t){return t?tpl+"-"+t:tpl};var r=function(t){var n=$("<div></div>");n.text(t);return n.html()};var e=function(t,n){return $(t).attr(n)};var u=function(t,n){t=String(t);var r=Array.prototype.slice.call(arguments,1);var e=Object.prototype.toString;if(r.length){r=r.length==1?n!==null&&/\[object Array\]|\[object Object\]/.test(e.call(n))?n:r:r;return t.replace(/#\{(.+?)\}/g,function(t,n){var u=r[n];if("[object Function]"==e.call(u)){u=u(n)}return"undefined"==typeof u?"":u})}return t};var a=function(r,e){return t(n(r),e)[0]};var i=function(t){if(typeof t==="function"){t()}};var o=function(t,n){for(var r in t){n[r]=t[r]}return n};var c=function(t,n,r){n=n||new Function;r=r||new Function;$.ajax({url:t,type:"GET",dataType:"json",success:function(t){var e={};if(!t){r();ajaxFinished=true;return}try{if(typeof t==="object"){e=t}else{e=$.parseJSON(t)}}catch(u){r();ajaxFinished=true;return}n(e);ajaxFinished=true},error:function(t){r();ajaxFinished=true}})};var f=function(t){return new Function("return ("+t+")")()};return{q:t,getClass:n,getAttr:e,qq:a,mix:o,enter:i,request:c,format:u,encodeHTML:r,parseJSON:f}}();var tabs=function(){var t=common.qq;var r=common.format;var n=common.getAttr;var e={TAB_CLASS:tpl+"-tabs-item",CUR_TAB_CLASS:tpl+"-tabs-item-cur",SPLIT_CLASS:tpl+"-tabs-split"};var i=function(){a()};var a=function(){$(t("")).on("click",function(t){t=t||window.event;var r=t.target||t.srcElement;var n=r.className;if(n.indexOf(e.TAB_CLASS)>-1&&n.indexOf(e.CUR_TAB_CLASS)===-1){o(r);u(r)}})};var o=function(t){var r=t.parentNode;var n=r.childNodes;for(var i=0,a=n.length;i<a;i++){if(n[i].className.indexOf(e.CUR_TAB_CLASS)>-1){$(n[i]).removeClass(e.CUR_TAB_CLASS)}}$(t).addClass(e.CUR_TAB_CLASS);c(t)};var c=function(t){var r=t.parentNode;var n=r.childNodes;for(var i=0,a=n.length;i<a;i++){if(n[i].className===e.SPLIT_CLASS){$(n[i]).css("visibility","visible")}}if(t.previousSibling){$(t.previousSibling).css("visibility","hidden")}if(t.nextSibling){$(t.nextSibling).css("visibility","hidden")}};var u=function(r){tabValue=n(r,"data-value");var e={city:citySelect.getValue(),carPrice:t("carPrice").value,tabValue:tabValue,t:(new Date).getTime()};var i=CAR_INSURANCE_DATA.GET_TPL_LIST_URL;e=common.mix(extData,e);i+=(i.indexOf("?")>-1?"&":"?")+$.param(e);common.request(i,function(r){if(0===r.status){r=r.data;list.render(r);t("title-link").href=r.mpUrl}else{list.renderError(r.statusInfo)}},function(){list.renderError()})};return{init:i}}();var list=function(t){var e=common.qq;var n=common.format;var i=""+'<div class="'+tpl+'-info #{infoCn}" data-index="#{index}">'+'<div class="'+tpl+'-hrow">'+'<span class="'+tpl+'-hrow-index c-index c-index-hot#{addIndex}">'+"#{addIndex}"+"</span>"+'<div class="'+tpl+'-hrow-title c-gap-left-small">'+'<a href="#{lpUrl}" target="_blank">#{title}</a>'+"</div>"+'<div class="'+tpl+'-hrow-price">'+"<label>参考报价：</label>"+"<span>&yen;#{price}起</span>"+"</div>"+"</div>"+'<div class="'+tpl+'-info-desc">'+'<div class="'+tpl+'-info-desc-left">'+'<a class="OP_LOG_OTHERS" '+'href="#{lpUrl}" '+'target="_blank" '+'title="#{titleAll}" '+'tn="#{tn}" '+"data-click=\"{'fm':'alop'}\""+">"+'<img src="#{logoUrl}" '+'alt="#{titleAll}" '+'width="56" '+'height="56"'+"/>"+"</a>"+"</div>"+'<div class="'+tpl+'-info-desc-right c-gap-left-small">'+"<label>优惠：</label>"+"<span>#{bonus}</span>"+"<label>特色：</label>"+"<span>#{feature}</span>"+"</div>"+'<div class="'+tpl+'-info-items">#{labelCon}</div>'+'<div class="'+tpl+'-info-oprz c-gap-top-small">'+'<a href="#{lpUrl}" '+'class="c-btn c-btn-primary c-btn-mini" '+'target="_blank" tn="#{tn}"'+">获取精确报价</a>"+"</div>"+"</div>"+"</div>"+'<div class="OP_LOG_OTHERS '+tpl+'-row #{rowCn}" '+'data-index="#{index}" '+"data-click=\"{'fm':'beha'}\""+">"+'<span class="'+tpl+'-row-index c-index c-index-hot#{addIndex}">'+"#{addIndex}"+"</span>"+'<div class="'+tpl+'-row-title c-gap-left-small">'+'<a href="#{lpUrl}" '+'target="_blank" '+'title="#{titleAll}" '+'tn="#{tn}" '+"data-click=\"{'fm': 'alop'}\""+">#{title}</a>"+"</div>"+'<div class="'+tpl+'-row-price">'+'<label class="'+tpl+'-row-label">参考报价：</label>'+'<span class="'+tpl+'-row-label">&yen;#{price}起</span>'+"</div>"+'<span class="c-icon c-icon-chevron-bottom '+tpl+'-row-icon">'+"</span>"+"</div>";var r=""+'<span class="#{unselectCn}">'+"<label>•</label>"+"<i>#{text}</i>"+"</span>";var a=function(t,n){var i=e("result");var r=$(i).children();var a=r.length;var l=null;if("show"===t){for(var s=0;s<a;s++){var c=r[s];$(c).css("visibility","hidden")}var o=setTimeout(function(){$(r[0]).css("visibility","visible");d()},50);var v=1;var d=function(){var t=r[v];$(t).css("visibility","visible");if(v<a){l=setTimeout(d,20);v++}else{clearTimeout(l);clearTimeout(o);n?n():"";return}}}else if("hide"===t){var v=a-1;var u=function(){var t=r[v];$(t).css("visibility","hidden");if(v>0){l=setTimeout(u,20);v--}else{clearTimeout(l);n?n():"";return}};u()}};var l=function(t){var r=t.list;var l=[];cardAnti.setTimesign(t.signTime);for(var c=0,o=r.length;c<o;c++){var v=r[c];l.push(n(i,{infoCn:c!==0?tpl+"-info-hide":"",rowCn:c===0?tpl+"-row-hide":"",index:c,bonus:v.bonus,feature:v.feature,addIndex:c+1,lpUrl:v.lpUrl,title:v.title,titleAll:v.titleAll,logoUrl:v.logoUrl,labelCon:s(v.content),tn:extData["tn"],price:v.price}))}a("hide",function(){e("result").innerHTML=l.join("");logic.renderInfo($(e("result")).children().first());logic.bindEvent();a("show")})};var s=function(t){var e=[];for(var i=0,a=t.length;i<a;i++){var l=t[i];e.push(n(r,{unselectCn:l.status==0?tpl+"-unselect":"",text:l.text}))}return e.join("")};var c=function(t){var n="";t=t?t:"数据异常，请稍候再试～";n='<div class="ecl-fn-car-insurance-error">'+t+"</div>";e("result").innerHTML=n};var o=function(){html.length=0;html=[]};return{render:l,renderError:c,clear:o}}(this);var logic=function(){var t=common.q;var e=common.qq;var i=common.format;var n=common.getAttr;var r=common.parseJSON;var a=true;var l=0;var module=function(){var t="http://s1.bdstatic.com/r/www/cache/biz/ecom/";require.config({paths:{"zxui/ui":t+"zxui/20131210/ui/",CitySelect:t+"ui/20140115/City"}});require(["CitySelect"],function(t){citySelect=new t({main:""+tpl+"-city",prefix:""+tpl+"-ui-city",data:r(CAR_INSURANCE_DATA.cityList)})});c();o()};var s=function(t,i){while(t!=e("")){if(t===i){return true}else{t=t.parentNode}}return false};var c=function(){$(e("result")).on("click",function(e){var i=t(tpl+"-row");e=e||window.event;var r=e.target||e.srcElement;if(r.className&&r.className.indexOf(tpl+"-row")>-1){for(var a=0,c=i.length;a<c;a++){var o=i[a];if(s(r,o)){l=parseInt(n(o,"data-index"));u()}}}})};var o=function(){function t(){var t={city:citySelect.getValue(),carPrice:e("carPrice").value,tabValue:tabValue,t:(new Date).getTime()};var i=CAR_INSURANCE_DATA.GET_TPL_LIST_URL;t=common.mix(extData,t);i+=(i.indexOf("?")>-1?"&":"?")+$.param(t);if(a){common.request(i,function(t){if(0===t.status){t=t.data;list.render(t);e("title-link").href=t.mpUrl}else{list.renderError(t.statusInfo)}},function(){list.renderError()})}}$(e("search-btn")).on("click",t);$(e("carPrice")).on("keyup",function(t){var e=/^((([1-9]{1}\d*)|([0]{1}))(\.(\d){1,2})?)?$/gi;if(!e.test(this.value)){d("请输入整数或者保留2位的小数");a=false}else{if(parseFloat(this.value)>500){d("输入的最大值为500万");a=false}else if(parseInt(this.value,10)<1){d("输入的最小值为1万");a=false}else if(this.value===""){d("输入的值不能为空");a=false}else{v();a=true}}})};var d=function(t){e("tips").innerHTML=t+"<span>▼<span>▼</span></span>";$(e("tips")).css("display","block");$(e("carPrice")).css("border","1px solid red")};var v=function(){$(e("tips")).css("display","none");$(e("carPrice")).css({borderTop:"1px solid #999",borderLeft:"1px solid #999",borderRight:"1px solid #d7d7d7",borderBottom:"1px solid #d7d7d7"})};var u=function(){var e=t(tpl+"-info");for(var i=0,r=e.length;i<r;i++){var a=e[i];var s=n(a,"data-index");if(s==l){$(a).css("display","block");$(a.nextSibling).css("display","none")}else{$(a).css("display","none");$(a.nextSibling).css("display","block")}}};return{module:module,renderInfo:u,bindEvent:c}}();var Anti=function(e){var t="EC_ZHIXIN";var n=0;var i=0,r,a,l,s,o,c,v,f,u,d,p,m;a=l=s=o=c=v=f=u=d=p=m=0;function h(t){var n=window.event||t;m=n.target||n.srcElement;while(m&&m.tagName!="A"){m=m.parentNode;if(m===e){return false}}u=(new Date).getTime();a=9999;l=n.clientX;s=n.clientY;if(!d){v=0}else{v=u-d}if(w()){x()}}function b(){p=(new Date).getTime();a=p-u;if(w()){x()}}function g(e){var t=window.event||e;i+=1;if(!o){o=t.clientX}if(!c){c=t.clientY}d=(new Date).getTime()}function w(){r=0;f=/\?url\=([^\.]+)\./.exec(m.href);if(f){for(var e=0;e<i*n%99+9;++e){r+=f[1].charCodeAt(a*e%f[1].length)}return true}return false}function x(){var e="&ck="+[r,i,a,l,s,o,c,v].join(".");if(m.href){var t=m.href;if(t.indexOf("&ck=")==-1){m.href+=e}else{m.href=t.replace(/&ck=[\w.]*/,e)}}}var A=0;var S={};function T(e,n,i){for(var r in n){S[++A]=i[r];e[t+r]=A;if(window.attachEvent){e.attachEvent("on"+n[r],i[r])}else{e.addEventListener(n[r],i[r],false)}}}var y={};function C(t,n){for(var i=0,r;r=t[i];i++){if(window.attachEvent){e.attachEvent("on"+r,n[i])}else if(window.addEventListener){e.addEventListener(r,n[i],false)}else{e["on"+r]=n[i]}y[r]=n[i]}}function _(t){for(var n=0,i;i=t[n];n++){if(window.detachEvent){e.detachEvent("on"+i,y[i])}else if(window.addEventListener){e.removeEventListener(i,y[i],false)}else{e["on"+i]=function(){}}}}function E(e,n){for(var i in n){var r=e[t+i];var a=S[r];if(a){if(window.detachEvent){e.detachEvent("on"+n[i],a)}else{e.removeEventListener(n[i],a)}}S[r]=null}}function $(e,t){var n=[];var i=t.getElementsByTagName("A");var r=" "+e+" ";for(var a=0,l;l=i[a];a++){if(l.className&&(" "+l.className+" ").indexOf(r)>=0){n.push(l)}}return n}return{getAntiTag:function(){return t},setTimesign:function(e){n=e},bind:function(){C(["mouseover","mousedown","mouseup"],[g,h,b])},unbind:function(){_(["mouseover","mousedown","mouseup"])}}};var cardAnti = new Anti($('.' + tpl)[0]);
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