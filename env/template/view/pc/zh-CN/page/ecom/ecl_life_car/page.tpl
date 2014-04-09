{%extends 'c_base.tpl'%}
{%block name='content'%}

<style>
.ecl-life-car{width:538px;font-size:13px}.ecl-life-car h4,.ecl-life-car h5,.ecl-life-car h6,.ecl-life-car h7{margin:0;padding:0;font-weight:400}.ecl-life-car strong,.ecl-life-car i{font-size:inherit;font-weight:400;font-style:normal}.ecl-life-car a{outline:0}.ecl-life-car a:link{color:#00c}.ecl-life-car .ecl-life-car-title{font-size:16px}.ecl-life-car .ecl-life-car-main{border:1px solid #e3e3e3;padding:15px 9px 0;margin:7px 0 8px;-moz-box-shadow:1px 1px 3px #eee;-webkit-box-shadow:1px 1px 3px #eee;box-shadow:1px 1px 3px #eee}
.ecl-life-car .ecl-life-car-main a{text-decoration:none}.ecl-life-car form{margin-bottom:15px;height:26px;line-height:26px}.ecl-life-car .ecl-life-car-filter{float:left}.ecl-life-car .ecl-life-car-filter h5{width:30px;margin-right:10px;float:left;font-size:14px;font-weight:bold;color:#3c3c3c}.ecl-life-car .ecl-life-car-filter div{border-width:1px;border-style:solid;border-color:#999 #dadada #d8d8d8 #999;float:left;width:138px;height:24px;line-height:24px;cursor:pointer}.ecl-life-car .ecl-life-car-filter div span{float:left;padding-left:7px;color:#333}
.ecl-life-car .ecl-life-car-filter div b{float:right;width:23px;height:24px;border-left:1px solid #dadada;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/edu/img/city-triangle.png) no-repeat center center}.ecl-life-car .ecl-life-car-filter ul{width:312px;border:1px solid #BBB;padding:6px 12px;*padding-bottom:12px;_padding-bottom:6px;background:#FFF;position:absolute;left:-99999px}.ecl-life-car .ecl-life-car-filter ul li{display:inline-block;*display:inline;*zoom:1;float:left;width:78px;margin:6px 0;overflow:hidden;text-overflow:ellipsis;-o-text-overflow:ellipsis;white-space:nowrap}
.ecl-life-car .ecl-life-car-filter ul li a{float:left;height:16px;line-height:16px;padding:0 7px;color:#00c}.ecl-life-car .ecl-life-car-filter ul li a:link{color:#00c;text-decoration:none}.ecl-life-car .ecl-life-car-filter ul li a:hover{text-decoration:underline}.ecl-life-car .ecl-life-car-filter ul .ecl-life-car-filter-current a,.ecl-life-car .ecl-life-car-filter ul .ecl-life-car-filter-current a:link,.ecl-life-car .ecl-life-car-filter ul .ecl-life-car-filter-current a:hover{background:#349bfb;color:#FFF;text-decoration:none}
.ecl-life-car .ecl-life-car-filter-price{margin-left:15px;margin-right:10px}.ecl-life-car .ecl-life-car-filter-price div{width:179px}.ecl-life-car .ecl-life-car-query{display:block;border:0;margin:0;padding:0;width:91px;height:26px;float:left;background:#3CF;cursor:pointer;color:#FFF;font-size:14px;text-indent:-99999px;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/life/car/car_sprites.gif) no-repeat}.ecl-life-car .ecl-life-car-query:hover,.ecl-life-car .ecl-life-car-query.ecl-life-car-hover{background-position:-200px 0;-moz-box-shadow:1px 1px 2px #b1b1b1;-webkit-box-shadow:1px 1px 2px #b1b1b1;box-shadow:1px 1px 2px #b1b1b1}
.ecl-life-car .ecl-life-car-query:active,.ecl-life-car .ecl-life-car-query.ecl-life-car-press{background-position:-100px 0}.ecl-life-car .ecl-life-car-list{zoom:1}.ecl-life-car .ecl-life-car-list:after{content:' ';display:block;clear:both;font-size:0;height:0}.ecl-life-car .ecl-life-car-list li{float:left;margin-right:11px;width:121px;height:150px}.ecl-life-car .ecl-life-car-list li.ecl-life-car-last{margin-right:0}.ecl-life-car .ecl-life-car-list li .ecl-life-car-list-img{position:relative;width:121px;height:91px;overflow:hidden}
.ecl-life-car .ecl-life-car-list li .ecl-life-car-list-img a{display:block}.ecl-life-car .ecl-life-car-list li .ecl-life-car-list-img img{display:block;width:121px;height:91px}.ecl-life-car .ecl-life-car-list li .ecl-life-car-list-mask{position:absolute;bottom:0;left:0;height:16px;width:121px}.ecl-life-car .ecl-life-car-list li .ecl-life-car-list-mask strong,.ecl-life-car .ecl-life-car-list li .ecl-life-car-list-mask a{display:block;position:absolute}.ecl-life-car .ecl-life-car-list li .ecl-life-car-list-mask strong{width:121px;height:16px;background:#000;opacity:.7;filter:alpha(opacity=70)}
.ecl-life-car .ecl-life-car-list li .ecl-life-car-list-mask a{width:121px;height:16px;text-decoration:none;color:#FFF;text-align:center;line-height:16px;font-size:13px}.ecl-life-car .ecl-life-car-list li h5 a{display:block;padding:10px 0 4px;color:#00c;font-size:13px}.ecl-life-car .ecl-life-car-list li p a{display:block;padding-bottom:13px;_padding-bottom:10px;color:#666}.ecl-life-car h6,.ecl-life-car .ecl-life-car-domain{margin-left:2px;font-size:13px}.ecl-life-car .ecl-life-car-domain{color:#008000}.ecl-life-car h6{margin-bottom:5px}
.ecl-life-car h6 a{color:#00c;text-decoration:none}.ecl-life-car h6 a em{color:#c00;text-decoration:none}.ecl-life-car h6 a:hover{text-decoration:underline}.ecl-life-car h6 a:hover em{text-decoration:underline}
</style>

{%strip%}
{%$subqid=$extData.subqid%}
{%$sid=$extData.sid%}

<div class="ecl-life-car">
    {%block name="title"%}
    <h4 class="ecl-life-car-title">
        <a target="_blank" href="{%$tplData.mainUrl%}">
            {%foreach $tplData.customTitle as $t%}
            {%if $t eq "[em]"%}<em>
            {%else if $t eq "[/em]"%}</em>
            {%else%}{%$t|escape:'html'%}
            {%/if%}
            {%/foreach%}
        </a>
    </h4>
    {%/block%}
    <div class="ecl-life-car-main">
        <form action="{%$tplData.mainUrl%}" onsubmit="return false;">
            <div class="ecl-life-car-filter ecl-life-car-filter-style" data-filter="style" data-click="{fm:'beha'}">
                <h5>类型</h5>
                <div class="OP_LOG_OTHERS"><span>不限</span><b></b></div>

                <ul class="ecl-life-car-hide-layer">
                    <li class="ecl-life-car-filter-current"><a href="#" data-value="" data-filter="style">不限</a></li>
                    {%foreach $tplData.filter.style as $filter%}
                    <li><a href="#" data-value="{%$filter.value|escape:'html'%}" data-filter="style">{%$filter.name|escape:'html'%}</a></li>
                    {%/foreach%}
                </ul>

            </div>
            <div class="ecl-life-car-filter ecl-life-car-filter-price" data-filter="price" data-click="{fm:'beha'}">
                <h5>价格</h5>
                <div class="OP_LOG_OTHERS"><span>不限</span><b></b></div>

                <ul class="ecl-life-car-hide-layer">
                    <li class="ecl-life-car-filter-current"><a href="#" data-filter="price" data-value="">不限</a></li>
                    {%foreach $tplData.filter.price as $filter%}
                    <li><a href="#" data-value="{%$filter.value|escape:'html'%}" data-filter="price">{%$filter.name|escape:'html'%}</a></li>
                    {%/foreach%}
                </ul>
            </div>
            <a class="ecl-life-car-query OP_LOG_BTN" target="_blank" href="{%$tplData.mainUrl%}">快速找车</a>
        </form>
        <ul class="ecl-life-car-list">
            {%foreach $tplData.list as $item%}
            <li {%if $item@iteration is div by 4%}class="ecl-life-car-last"{%/if%}>
                <div class="ecl-life-car-list-img">
                    <a target="_blank" href="{%$item.url|escape:'html'%}"><img src="{%$item.imgSrc|escape:'html'%}" /></a>
                    <div class="ecl-life-car-list-mask">
                        <strong></strong>
                        <a target="_blank" href="{%$item.url|escape:'html'%}">{%$item.title|escape:'html'%}</a>
                    </div>
                </div>
                <h5><a target="_blank" href="{%$item.url|escape:'html'%}">{%$item.slogan|escape:'html'%}</a></h5>
                <p><a target="_blank" href="{%$item.url|escape:'html'%}">车源数：{%$item.count|escape:'html'%}辆</a></p>
            </li>
            {%/foreach%}
        </ul>
    </div>
    <h6><a target="_blank" href="{%$tplData.mainUrl%}">{%$tplData.moreInfoTitle|highlight:0%}</a></h6>
    <p class="g ecl-life-car-domain">{%$tplData.domain%}</p>
</div>
{%/strip%}

<script data-compress="off">
A.setup('LIFE_USED_CAR_DATA', {
    SERVER_TIME: '{%$tplData.serverTime|escape:"javascript"%}',
    ORIGIN_QUERY: "{%$extData.originquery|escape:'html'%}",
    SESSION_ID: '{%$extData.sessionid|escape:"javascript"%}',
    STATS_SUBQID: '{%$subqid|escape:"javascript"%}',
    STATS_SID: '{%$sid|escape:"javascript"%}',
    STATS_PSSID: '{%$extData.pssid|escape:"javascript"%}'
});
</script>
<script>
A.init(function() {
    var card = this;
    var tplprefix = 'ecl-life-car';
    card.ready(function() {
        function getClass(e){return e?tplprefix+"-"+e:tplprefix}var TPLDATA=card.data.LIFE_USED_CAR_DATA,common=function(){function e(e,t){return e?e.getElementsByTagName(t)||[]:[]}var t={},a=[];return t.addIniter=function(e){a.push(e)},t.init=function(){for(var e=0,t=a.length;t>e;e++){var n=a[e];"function"==typeof n&&n()}},t.queryByClass=function(e){return e=getClass(e),card.qq(e)},t.getTags=e,t.showLayer=function(e,t,a){var n=t.offsetHeight,s=t.offsetWidth,r=$(t).offset(),o={};o.top=r.top+n+1,a&&"left"!=a?"right"==a&&(o.left=r.left+s-e.offsetWidth):o.left=r.left,e.style.left=o.left+"px",e.style.top=o.top+"px",e.style.zIndex=5,$(e).removeClass(getClass("hide-layer"))
},t.hideLayer=function(e){$(e).addClass(getClass("hide-layer")),e.style.left="-10000px",e.style.zIndex=""},t.toggleLayer=function(e,a,n){var s="hideLayer";$(e).hasClass(getClass("hide-layer"))&&(s="showLayer"),t[s](e,a,n)},t}(),filter=function(){function e(e){var t=common.queryByClass("filter-"+e),n=r(t,"div")[0],s=$(n).next().get(0);u[e]=t,c[e]=r($(t).find("."+d).get(0),"a")[0],$(document).on("click",function(t){var r=t.target;r==n||r.parentNode==n?common.toggleLayer(s,n):a(e)})}function t(){$(o).on("click",function(e){new Date;
var t=e.target;if(t.getAttribute("data-filter")&&"A"==t.tagName){e.preventDefault();var s=t.getAttribute("data-filter"),r=t.getAttribute("data-value");if(c[s]!==t){a(s),$(t.parentNode).addClass(d),$(c[s].parentNode).removeClass(d),c[s]=t,f[s]=r,n(s,$(t).text());var o=l+(l.indexOf("?")>-1?"&":"?")+$.param(f);i.setAttribute("href",o)}}})}function a(e){var t=u[e];if(t){var a=r(t,"ul")[0];common.hideLayer(a)}}function n(e,t){var a=u[e],n=r(r(a,"div")[0],"span")[0];n.innerHTML=t}function s(){$(i).on("mouseover",function(){$(this).addClass(getClass("hover"))
}),$(i).on("mouseout",function(){$(this).removeClass(getClass("hover")),$(this).removeClass(getClass("press"))}),$(i).on("mousedown",function(){$(this).addClass(getClass("press"))}),$(i).on("mouseup",function(){$(this).removeClass(getClass("press"))})}var r=common.getTags,o=r(common.queryByClass("main"),"form")[0];card.q(getClass("filter"));var i=common.queryByClass("query"),l=i.getAttribute("href"),f={style:"",price:""},u={},c={};common.addIniter(function(){e("style"),e("price"),t(),s()});var d=getClass("filter-current")
}();common.init();
    });
    this.dispose = function() {
    };
});
</script>
{%/block%}