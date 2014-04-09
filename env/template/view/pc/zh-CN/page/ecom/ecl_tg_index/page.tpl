{%extends 'base_div.tpl'%}

{%block name='content'%}

<style type="text/css">
    .ecl-tg{position:relative;width:600px;font-size:12px;font-family:arial}.ecl-tg-hidden{display:none}.ecl-tg-title{height:32px;margin:0;padding:4px 0 0;line-height:1;font-size:16px;color:#00c;font-weight:normal;text-decoration:underline}.ecl-tg-title em{color:#c00;font-style:normal;text-decoration:underline}.ecl-tg-city{position:absolute;top:0;right:0;height:24px;padding-right:23px;border:1px solid #999;border-right-color:#d9d9d9;border-bottom-color:#d9d9d9}.ecl-tg-city-on{padding:0 8px;line-height:24px;font-size:13px;color:#333;cursor:pointer;-moz-user-select:none;user-select:none}
.ecl-tg-city-btn{position:absolute;right:0;top:0;width:22px;height:24px;border-left:1px solid #d9d9d9;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -282px 0;cursor:pointer}.ecl-tg-city-overlay{display:none;position:absolute;top:25px;right:0;width:330px;padding:4px 9px;border:1px solid #e6e6e6;background-color:#fff;z-index:2}.ecl-tg-city-tab{line-height:20px;border-bottom:1px solid #7eb7fc;font-family:"宋体",SimSun}.ecl-tg-city-items{line-height:20px}.ecl-tg-city-tab li,.ecl-tg-city-items li{float:left;height:20px;padding:0 10px;border-top-left-radius:2px;border-top-right-radius:2px;cursor:pointer}
.ecl-tg-city-tab-active{background:#7eb7fc}.ecl-tg-city-item-active{background:#f5f5f5}.ecl-tg-city-items li{margin-top:10px;white-space:nowrap}.ecl-tg-filter-label{position:absolute;top:0;left:0;font-weight:bold;color:#000}.ecl-tg-filter{position:relative;line-height:28px;padding-left:50px;color:#d8d8d8}.ecl-tg-clear{zoom:1}.ecl-tg-clear:after{display:block;content:"";visibility:hidden;font-size:0;clear:both}.ecl-tg-filter ul{display:block;margin:0;padding:0}.ecl-tg-filter ul li{float:left;padding-right:15px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat right 5px;list-style:none}
.ecl-tg-filter ul li.ecl-tg-filter-last{padding-right:0;background:0}.ecl-tg-filter a{padding:0 8px;font-size:12px;text-decoration:none;cursor:pointer;vertical-align:baseline;background-color:#fff;white-space:nowrap;color:#00c}:root .ecl-tg-filter a{padding:1px 8px}.ecl-tg-filter a.ecl-tg-filter-all{padding-left:13px;padding-right:13px}.ecl-tg-filter a.ecl-tg-filter-active{background-color:#00baff;color:#fff}.ecl-tg-filter a.ecl-tg-filter-disable{color:#ccc;cursor:default}.ecl-tg-location-filter{position:relative;-moz-user-select:none;user-select:none}
.ecl-tg-price-filter{margin-bottom:3px;-moz-user-select:none;user-select:none}.ecl-tg-location-filter .ecl-tg-filter{height:28px;overflow:hidden;padding-right:60px;zoom:1}.ecl-tg-price-filter .ecl-tg-filter{zoom:1}.ecl-tg-location-btn{position:absolute;top:5px;right:0;height:19px;line-height:19px;width:41px;padding-left:6px;text-align:left;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -200px -112px;cursor:pointer}.ecl-tg-location-btn-hover{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -200px -72px}
.ecl-tg-location-btn-expand{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -200px -132px}.ecl-tg-location-btn-expand-hover{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -200px -92px}#ecl-tg-table{padding-top:17px;border-top:1px solid #ebebeb;_width:600px;_overflow:hidden}.ecl-tg-table{position:relative;left:-3px;border:0;border-collapse:collapse}.ecl-tg-table td{border:0;padding:0 15px 15px 0;line-height:normal}.ecl-tg-i{position:relative;width:186px;height:210px;padding:3px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat}
.ecl-tg-i-link{position:absolute;bottom:3px;left:3px;width:186px;height:93px;cursor:pointer;z-index:1;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat 0 -220px}.ecl-tg-i-src{position:absolute;top:3px;left:3px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-src-bg.png') right 0!important;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-src-bg.gif') right 0;color:#fff;vertical-align:baseline;line-height:1;padding:2px;z-index:1}.ecl-tg-i-desc{padding:3px 6px;height:35px;line-height:18px;overflow:hidden;color:#333}
.ecl-tg-purchased{padding:8px 6px 0;text-align:right;color:#888}.ecl-tg-purchased i{font-style:normal;color:#f80}.ecl-tg-go{position:absolute;bottom:9px;right:9px;width:71px;height:18px;text-align:center;background:#00baff;color:#fff;text-decoration:none;line-height:18px}.ecl-tg-price-ct{position:absolute;bottom:6px;left:9px}.ecl-tg-price{padding-left:14px;font-size:23px;height:18px;color:#ff9226;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -216px 8px}.ecl-tg-origin-price{position:relative;left:3px;top:-2px;font-size:13px;text-decoration:line-through;color:#888}
.ecl-tg-img-ct{position:relative;width:186px;height:117px;overflow:hidden}.ecl-tg-i-area{display:none;position:absolute;bottom:0!important;bottom:-1px;left:0;width:174px;padding:3px 6px;line-height:16px;background-color:#000;color:#fff}.ecl-tg-img-ct:hover .ecl-tg-i-area{display:block}.ecl-tg-see-more{line-height:28px;text-align:center;border:1px solid #ebebeb;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') repeat-x 0 bottom}.ecl-tg-see-more a{color:#666;text-decoration:none}.ecl-tg-see-more a:hover{text-decoration:underline}
.ecl-tg-loading{border-top:1px solid #ebebeb;height:509px;background:#fff;text-align:center}.ecl-tg-loading span{position:relative;top:200px}
</style>

<script>
    var _tuanCityData = {%json_encode($tplData.city)%};
</script>
<div class="ecl-tg" id="ecl-tg-index" data-ajax="{%$tplData.ajax_url%}">
    <h4 class="ecl-tg-title"><a id="ecl-tg-title" href="{%$tplData.title_url%}" target="_blank" data-href="{%$tplData.title_url%}" data-click="{rsv_click_type:'title'}">{%$tplData.title%}</a></h4>
    <div class="ecl-tg-city">
        <div id="ecl-tg-city-on" class="ecl-tg-city-on" unselectable="on" onselectstart="return false;" data-id="{%$tplData.city.current.id%}">{%$tplData.city.current.text%}</div>
        <div class="ecl-tg-city-btn OP_LOG_BTN" id="ecl-tg-city-btn" data-click="{fm:'beha',rsv_click_type:'city_btn'}"></div>
    </div>
    <div class="ecl-tg-city-overlay" id="ecl-tg-city-overlay" data-click="{fm:'beha',rsv_click_type:'city_picker'}">
        <ul class="ecl-tg-city-tab ecl-tg-clear" id="ecl-tg-city-tab">
            <li class="ecl-tg-city-tab-active OP_LOG_BTN" data-click="{rsv_click_value:'rm'}">热门</li>
            <li class="OP_LOG_BTN" data-click="{rsv_click_value:'a'}">ABCDE</li>
            <li class="OP_LOG_BTN" data-click="{rsv_click_value:'f'}">FGHIJ</li>
            <li class="OP_LOG_BTN" data-click="{rsv_click_value:'k'}">KLMNO</li>
            <li class="OP_LOG_BTN" data-click="{rsv_click_value:'p'}">PQRST</li>
            <li class="OP_LOG_BTN" data-click="{rsv_click_value:'u'}">UVWXYZ</li>
        </ul>
        <ul class="ecl-tg-city-items ecl-tg-clear" id="ecl-tg-city-items">

        </ul>
    </div>
    <div class="ecl-tg-location-filter" id="ecl-tg-location-filter-ct" unselectable="on" onselectstart="return false;">
        <div class="ecl-tg-filter" id="ecl-tg-location-filter" data-click="{rsv_click_type:'location',fm:'beha'}" style="{%if $tplData.location_expand == 1%}height: auto;{%/if%}" {%if $tplData.location_expand == 1%}expand="1"{%/if%}>
            <span class="ecl-tg-filter-label">{%$tplData.location_label|escape:'html'%}：&nbsp;</span>
            {%$locationChecked = 0%}
            <ul class="ecl-tg-clear">
                {%foreach $tplData.location as $location%}
                    {%if $location@index < 6%}
                        <li class="{%if $location@index == 5 || $location@last%}ecl-tg-filter-last{%/if%}"><a href="#" hidefocus="true" class="{%if $location@index == 0%}ecl-tg-filter-all{%/if%} {%if $location.checked%}ecl-tg-filter-active{%/if%} " data-id="{%$location.id|escape:'html'%}" data-click="rsv_click_value:'{%$location.id|escape:'html'%}'}">&nbsp;{%$location.text|escape:'html'%}&nbsp;</a></li>
                    {%/if%}
                    {%if $location.checked%}
                        {%$locationChecked = $location.id%}
                    {%/if%}
                {%/foreach%}
            </ul>
            {%if count($tplData.location) >= 6%}
                <ul class="ecl-tg-clear">
                    {%foreach $tplData.location as $location%}
                        {%if $location@index >= 6%}
                            <li class="{%if $location@last%}ecl-tg-filter-last{%/if%}"><a href="#" hidefocus="true" data-id="{%$location.id|escape:'html'%}" data-click="{rsv_click_value:'{%$location.id|escape:'html'%}'}">&nbsp;{%$location.text|escape:'html'%}&nbsp;</a></li>
                        {%/if%}
                        {%if $location.checked%}
                            {%$locationChecked = $location.id%}
                        {%/if%}
                    {%/foreach%}
                </ul>
            {%/if%}
        </div>
        <div class="ecl-tg-location-btn {%if $tplData.location_expand == 1%}ecl-tg-location-btn-expand{%/if%} OP_LOG_BTN" id="ecl-tg-location-btn" data-checked="{%$locationChecked|escape:'html'%}" data-click="{rsv_click_type:'location_more',fm:'beha'}" {%if count($tplData.location) <= 6%}style="display: none;"{%/if%}>{%if $tplData.location_expand == 1%}收起{%else%}更多{%/if%}&nbsp;</div>
    </div>
    <div class="ecl-tg-price-filter" id="ecl-tg-price-filter-ct" unselectable="on" onselectstart="return false;">
        <div class="ecl-tg-filter" id="ecl-tg-price-filter" data-click="{rsv_click_type:'price',fm:'beha'}">
            <span class="ecl-tg-filter-label">价格：&nbsp;</span>
            <ul class="ecl-tg-clear">
                {%foreach $tplData.price as $price%}
                    <li class="{%if $price@last%}ecl-tg-filter-last{%/if%}"><a href="#" hidefocus="true" class="{%if $price@index == 0%}ecl-tg-filter-all{%/if%} {%if $price.checked%}ecl-tg-filter-active{%/if%} {%if $price.disable%}ecl-tg-filter-disable{%/if%}" data-id="{%$price.id|escape:'html'%}" data-click="{rsv_click_value:'{%$price.id|escape:'html'%}'}">&nbsp;{%$price.text|escape:'html'%}&nbsp;</a></li>
                {%/foreach%}
            </ul>
        </div>
    </div>
    <div id="ecl-tg-table" data-click="{rsv_click_type:'list'}">
        <table class="ecl-tg-table">
            {%for $i = 0 to 1%}
                <tr>
                    {%for $j = 0 to 2%}
                        <td>
                            {%if ($i * 3 + $j) < count($tplData.list)%}
                                {%$item = $tplData.list[$i * 3 + $j]%}
                                <div class="ecl-tg-i">
                                    {%*<div class="ecl-tg-i-src">{%$item.source|escape:'html'%}&nbsp;&nbsp;&nbsp;</div>*%}
                                    <div class="ecl-tg-img-ct">
                                        <a href="{%$item.url%}" target="_blank" data-click="{rsv_click_value:'{%$i * 3 + $j%}'}"><img src="{%$item.img|escape:'html'%}" width="186" height="117"></a>
                                        {%if strlen(trim($item.area)) > 0%}
                                            <div class="ecl-tg-i-area">{%$item.area|escape:'html'%}</div>
                                        {%/if%}
                                    </div>
                                    <div class="ecl-tg-i-desc">{%$item.description|escape:'html'%}</div>
                                    <div class="ecl-tg-purchased"><i>{%$item.purchased|escape:'html'%}</i>人已团</div>
                                    <div class="ecl-tg-price-ct"><span class="ecl-tg-price">{%$item.price|escape:'html'%}</span><span class="ecl-tg-origin-price">{%$item.original_price|escape:'html'%}</span></div>
                                    <div class="ecl-tg-go">&nbsp;去看看&nbsp;</div>
                                    <a href="{%$item.url%}" target="_blank" class="ecl-tg-i-link" title="{%$item.description|escape:'html'%}" hidefocus="true" data-click="{rsv_click_value:'{%$i * 3 + $j%}'}"></a>
                                </div>
                            {%/if%}
                        </td>
                    {%/for%}
                </tr>
            {%/for%}
        </table>
    </div>
    <div class="ecl-tg-see-more" id="ecl-tg-see-more"><a id="ecl-tg-see-more-link" href="{%$tplData.title_url%}" target="_blank" data-click="{rsv_click_type:'see_more'}">查看更多团购信息&gt;&gt;</a><span></span></div>
    <div class="ecl-tg-loading ecl-tg-hidden" id="ecl-tg-loading">
        <span id="ecl-tg-loading-text">加载中...</span>
    </div>
</div>



<script type="text/javascript">
    A.init(function(){var ajaxUrl=baidu.dom.getAttr("ecl-tg-index","data-ajax"),midPageStat={cityid:0,zoneid:0,priceid:0},currentStat={cid:0,lid:0,pid:0};midPageStat.cityid=currentStat.cid=baidu.dom.getAttr("ecl-tg-city-on","data-id"),midPageStat.zoneid=currentStat.lid=baidu.dom.getAttr("ecl-tg-location-btn","data-checked");var expandCityPicker=function(){baidu.dom.setStyle("ecl-tg-city-overlay","display","block"),baidu.dom.setAttr("ecl-tg-city-btn","expand","1")},collapseCityPicker=function(){baidu.dom.setStyle("ecl-tg-city-overlay","display","none"),baidu.dom.setAttr("ecl-tg-city-btn","expand","0")
},formatcityPicker=function(t){for(var e=[],a=[],i=t.hot,l=t.all,c=0;c<i.length;c++)e.push('<li data-group="RM" class="OP_LOG_BTN ecl-tg-city-item" data-id="'+i[c].id+'" data-click="{rsv_click_value:'+i[c].id+'}">'+i[c].text+"</li>");document.getElementById("ecl-tg-city-items").innerHTML=e.join("");for(var d=0;d<l.length;d++)for(var n=l[d].text,o=0;o<l[d].subcity.length;o++){var r=l[d].subcity[o];a.push('<li data-group="'+n+'" data-id="'+r.id+'" data-click="{rsv_click_value:'+r.id+'}" class="ecl-tg-city-item ecl-tg-hidden OP_LOG_BTN">'+r.text+"</li>")
}document.getElementById("ecl-tg-city-items").innerHTML+=a.join("")};formatcityPicker(_tuanCityData);var table=function(t){for(var e,a=['<table class="ecl-tg-table">'],i=0;2>i;i++){a.push("<tr>");for(var l=0;3>l;l++)a.push("<td>"),3*i+l<t.length&&(e=t[3*i+l],a.push('<div class="ecl-tg-i">'),a.push('    <div class="ecl-tg-img-ct">'),a.push('        <a href="'+e.url+'" target="_blank" data-click="{rsv_click_value:\''+(3*i+l)+'\'}"><img src="'+e.img+'" width="186" height="117"></a>'),e.area&&baidu.string.trim(e.area).length>0&&a.push('        <div class="ecl-tg-i-area">'+e.area+"</div>"),a.push("    </div>"),a.push('    <div class="ecl-tg-i-desc" title="'+e.description+'">'+e.description+"</div>"),a.push('    <div class="ecl-tg-purchased"><i>'+e.purchased+"</i>人已团</div>"),a.push('    <div class="ecl-tg-price-ct"><span class="ecl-tg-price">'+e.price+'</span><span class="ecl-tg-origin-price">'+e.original_price+"</span></div>"),a.push('    <div class="ecl-tg-go">&nbsp;去看看&nbsp;</div>'),a.push('    <a href="'+e.url+'" target="_blank" data-click="{rsv_click_value:\''+(3*i+l)+'\'}" class="ecl-tg-i-link" title="'+e.description+'" hidefocus="true"></a>'),a.push("</div>")),a.push("</td>");
a.push("</tr>")}return a.push("</table>"),a.join("")},locationHtml=function(t,e){e=e||"区域";var a=['<span class="ecl-tg-filter-label">'+e+"：&nbsp;</span>"];a.push('<ul class="ecl-tg-clear">');for(var i=0;i<t.length;i++){var l=t[i];6>i&&a.push('<li class="'+(5==i||i==t.length-1?"ecl-tg-filter-last":"")+'"><a href="#" hidefocus="true" class="'+(0==i?" ecl-tg-filter-all ":"")+(l.checked?" ecl-tg-filter-active ":"")+'" data-id="'+l.id+'" data-click="{rsv_click_value:\''+l.id+"'}\">&nbsp;"+l.text+"&nbsp;</a></li>")
}if(a.push("</ul>"),t.length>=6){for(a.push('<ul class="ecl-tg-clear">'),i=0;i<t.length;i++)l=t[i],i>=6&&a.push('<li class="'+(i==t.length-1?"ecl-tg-filter-last":"")+'"><a href="#" hidefocus="true" class="'+(l.checked?" ecl-tg-filter-active ":"")+'" data-id="'+l.id+'" data-click="{rsv_click_value:\''+l.id+"'}\">&nbsp;"+l.text+"&nbsp;</a></li>");a.push("</ul>")}return a.join("")},priceHtml=function(t){for(var e=['<span class="ecl-tg-filter-label">价格：&nbsp;</span><ul class="ecl-tg-clear">'],a=0;a<t.length;a++){var i=t[a];
e.push('<li class="'+(a==t.length-1?"ecl-tg-filter-last":"")+'"><a href="#" hidefocus="true" class="'+(0==a?" ecl-tg-filter-all ":"")+(i.checked?" ecl-tg-filter-active ":"")+(i.disable?"ecl-tg-filter-disable":"")+'" data-id="'+i.id+'" data-click="{rsv_click_value:\''+i.id+"'}\">&nbsp;"+i.text+"&nbsp;</a></li>")}return e.push("</ul>"),e.join("")},showLoading=function(t,e){baidu.dom[t?"addClass":"removeClass"]("ecl-tg-table","ecl-tg-hidden"),baidu.dom[t?"addClass":"removeClass"]("ecl-tg-see-more","ecl-tg-hidden"),baidu.dom[t?"removeClass":"addClass"]("ecl-tg-loading","ecl-tg-hidden"),document.getElementById("ecl-tg-loading-text").innerHTML=e?e:"加载中..."
},reload=function(callback){showLoading(!0),baidu.ajax.get(ajaxUrl+"&"+baidu.url.jsonToQuery(currentStat)+"&tg="+(new Date).getTime(),function(xhr,response){var data=eval("("+response+")");if(data.list&&data.list.length&&data.list.length>0){document.getElementById("ecl-tg-table").innerHTML=table(data.list);var oriHref=baidu.dom.getAttr("ecl-tg-title","data-href");baidu.dom.setAttr("ecl-tg-title","href",oriHref+"&cityid="+midPageStat.cityid),baidu.dom.setAttr("ecl-tg-see-more-link","href",oriHref+"&"+baidu.url.jsonToQuery(midPageStat)),showLoading(!1)
}else showLoading(!0,"抱歉，没有找到满足条件的团购。您可以尝试更改筛选条件。");document.getElementById("ecl-tg-location-filter").innerHTML=locationHtml(data.location,data.location_label),baidu.dom.setStyle("ecl-tg-location-btn","display",data.location.length>6?"block":"none"),baidu.dom.setStyle("ecl-tg-location-filter-ct","display",data.location.length>0?"block":"none"),document.getElementById("ecl-tg-price-filter").innerHTML=priceHtml(data.price),baidu.dom.setStyle("ecl-tg-price-filter-ct","display",data.price.length>0?"block":"none"),"function"==typeof callback&&callback()
})};baidu.event.on("ecl-tg-location-btn","click",function(t){var e=baidu.event.getTarget(t);"1"==baidu.dom.getAttr("ecl-tg-location-filter","expand")?(baidu.dom.setStyle("ecl-tg-location-filter","height","28px"),baidu.dom.removeClass("ecl-tg-location-btn","ecl-tg-location-btn-expand ecl-tg-location-btn-expand-hover"),baidu.dom.setAttr("ecl-tg-location-filter","expand","0"),e.innerHTML="更多"):(baidu.dom.setStyle("ecl-tg-location-filter","height","auto"),baidu.dom.addClass("ecl-tg-location-btn","ecl-tg-location-btn-expand ecl-tg-location-btn-expand-hover"),baidu.dom.setAttr("ecl-tg-location-filter","expand","1"),e.innerHTML="收起")
}),baidu.event.on("ecl-tg-location-btn","mouseover",function(){"1"==baidu.dom.getAttr("ecl-tg-location-filter","expand")?baidu.dom.addClass("ecl-tg-location-btn","ecl-tg-location-btn-expand-hover"):baidu.dom.addClass("ecl-tg-location-btn","ecl-tg-location-btn-hover")}),baidu.event.on("ecl-tg-location-btn","mouseout",function(){"1"==baidu.dom.getAttr("ecl-tg-location-filter","expand")?baidu.dom.removeClass("ecl-tg-location-btn","ecl-tg-location-btn-expand-hover"):baidu.dom.removeClass("ecl-tg-location-btn","ecl-tg-location-btn-hover")
}),/msie 6/i.test(window.navigator.userAgent)&&baidu.array.each(baidu.dom.q("ecl-tg-img-ct"),function(t){baidu.dom.q("ecl-tg-i-area",t).length>0&&(baidu.event.on(t,"mouseenter",function(){baidu.dom.setStyle(baidu.dom.q("ecl-tg-i-area",t)[0],"display","block")}),baidu.event.on(t,"mouseleave",function(){baidu.dom.setStyle(baidu.dom.q("ecl-tg-i-area",t)[0],"display","none")}))});var onExpandCity=function(){"1"==baidu.dom.getAttr("ecl-tg-city-btn","expand")?collapseCityPicker():expandCityPicker()};baidu.event.on("ecl-tg-city-btn","click",onExpandCity),baidu.event.on("ecl-tg-city-on","click",onExpandCity),baidu.event.on(document,"click",function(t){var e=baidu.event.getTarget(t);
"ecl-tg-city-on"==e.id||"ecl-tg-city-btn"==e.id||baidu.dom.contains("ecl-tg-city-overlay",e)||collapseCityPicker()}),baidu.event.on("ecl-tg-city-items","click",function(t){var e=baidu.event.getTarget(t);"li"==e.tagName.toLowerCase()&&(baidu.array.each(baidu.dom.q("ecl-tg-city-item-active","ecl-tg-city-items"),function(t){baidu.dom.removeClass(t,"ecl-tg-city-item-active")}),baidu.dom.addClass(e,"ecl-tg-city-item-active"),collapseCityPicker(),baidu.dom.g("ecl-tg-city-on").innerHTML=e.innerHTML,currentStat.cid!=baidu.dom.getAttr(e,"data-id")&&(midPageStat.cityid=currentStat.cid=baidu.dom.getAttr(e,"data-id"),midPageStat.zoneid=currentStat.lid=0,midPageStat.priceid=currentStat.pid=0,reload()))
}),baidu.event.on("ecl-tg-city-tab","click",function(t){var e=baidu.event.getTarget(t);if("li"==e.tagName.toLowerCase()){baidu.dom.removeClass(baidu.dom.q("ecl-tg-city-tab-active","ecl-tg-city-tab")[0],"ecl-tg-city-tab-active"),baidu.dom.addClass(e,"ecl-tg-city-tab-active");var a="热门"==baidu.string.trim(e.innerHTML)?["RM"]:e.innerHTML.split(""),i=baidu.dom.q("ecl-tg-city-item","ecl-tg-city-items");baidu.array.each(i,function(t){baidu.dom.addClass(t,"ecl-tg-hidden")}),baidu.array.each(i,function(t){for(var e=baidu.dom.getAttr(t,"data-group"),i=0;i<a.length;i++)if(a[i].toLowerCase()==e.toLowerCase()){baidu.dom.removeClass(t,"ecl-tg-hidden");
break}})}}),baidu.event.on("ecl-tg-location-filter","click",function(t){var e=baidu.event.getTarget(t);"a"==e.tagName.toLowerCase()&&(baidu.event.preventDefault(t),baidu.array.each(baidu.dom.q("ecl-tg-filter-active","ecl-tg-location-filter"),function(t){baidu.dom.removeClass(t,"ecl-tg-filter-active")}),baidu.dom.addClass(e,"ecl-tg-filter-active"),midPageStat.zoneid=currentStat.lid=baidu.dom.getAttr(e,"data-id"),reload())}),baidu.event.on("ecl-tg-price-filter","click",function(t){var e=baidu.event.getTarget(t);
baidu.event.preventDefault(t),"a"!=e.tagName.toLowerCase()||baidu.dom.hasClass(e,"ecl-tg-filter-disable")||(baidu.array.each(baidu.dom.q("ecl-tg-filter-active","ecl-tg-price-filter"),function(t){baidu.dom.removeClass(t,"ecl-tg-filter-active")}),baidu.dom.addClass(e,"ecl-tg-filter-active"),midPageStat.priceid=currentStat.pid=baidu.dom.getAttr(e,"data-id"),reload())})});
</script>

{%/block%}