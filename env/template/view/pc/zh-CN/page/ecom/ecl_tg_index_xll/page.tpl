{%extends 'base_div.tpl'%}

{%block name='content'%}

<style type="text/css">
    .ecl-tg{position:relative;width:536px;font-size:13px;font-family:arial}.ecl-tg-hidden{display:none}.ecl-tg-title{height:24px;margin:0;padding:4px 0 0;line-height:1;font-size:16px;color:#00c;font-weight:normal;text-decoration:underline}.ecl-tg-title em{color:#c00;font-style:normal;text-decoration:underline}.ecl-tg-city{position:absolute;top:0;right:0;height:18px;padding-right:23px;border:1px solid #999;border-right-color:#d9d9d9;border-bottom-color:#d9d9d9}.ecl-tg-city-on{padding:0 8px;line-height:18px;font-size:12px;color:#333;cursor:pointer;-moz-user-select:none;user-select:none}
.ecl-tg-city-btn{position:absolute;right:0;top:0;width:22px;height:18px;border-left:1px solid #d9d9d9;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -282px -2px;cursor:pointer}.ecl-tg-city-overlay{display:none;position:absolute;top:19px;right:0;width:330px;padding:4px 9px;border:1px solid #e6e6e6;background-color:#fff;z-index:20}.ecl-tg-city-tab{line-height:20px;border-bottom:1px solid #7eb7fc;font-family:"宋体",SimSun}.ecl-tg-city-items{line-height:20px}.ecl-tg-city-tab li,.ecl-tg-city-items li{float:left;height:20px;padding:0 10px;*padding-right:8px;border-top-left-radius:2px;border-top-right-radius:2px;cursor:pointer}
.ecl-tg-city-tab-active{background:#7eb7fc}.ecl-tg-city-item-active{background:#f5f5f5}.ecl-tg-city-items li{margin-top:10px;white-space:nowrap}.ecl-tg-content-area{width:534px;border:1px solid #e3e3e3;padding-top:10px;box-shadow:2px 2px 3px #ededed}.ecl-tg-filter-label{position:absolute;top:0;left:11px;font-weight:bold;color:#666}.ecl-tg-filter{position:relative;line-height:28px;padding-left:58px;color:#d8d8d8}.ecl-tg-clear{zoom:1}.ecl-tg-clear:after{display:block;content:"";visibility:hidden;font-size:0;clear:both}
.ecl-tg-filter ul{display:block;margin:0;padding:0}.ecl-tg-filter ul li{float:left;padding-right:18px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat right 6px;list-style:none}.ecl-tg-filter ul li.ecl-tg-filter-last{padding-right:0;background:0}.ecl-tg-filter a{padding:4px 5px;font-size:12px;text-decoration:none;cursor:pointer;vertical-align:baseline;background-color:#fff;white-space:nowrap;color:#00c}.ecl-tg-filter a.ecl-tg-filter-active{background-color:#3b8bff;color:#fff}.ecl-tg-filter a.ecl-tg-filter-disable{color:#ccc;cursor:default}
.ecl-tg-location-filter{position:relative;-moz-user-select:none;user-select:none}.ecl-tg-price-filter{-moz-user-select:none;user-select:none}.ecl-tg-location-filter .ecl-tg-filter{height:28px;overflow:hidden;padding-right:60px;zoom:1}.ecl-tg-price-filter .ecl-tg-filter{zoom:1}.ecl-tg-location-btn{position:absolute;top:5px;right:0;height:19px;line-height:19px;width:48px;padding-left:3px;text-align:left;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -200px -112px;cursor:pointer}.ecl-tg-location-btn-hover{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -200px -72px}
.ecl-tg-location-btn-expand{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -200px -132px}.ecl-tg-location-btn-expand-hover{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -200px -92px}.ecl-tg-table-area{padding-top:10px;_width:536px;_overflow:hidden}.ecl-tg-table{position:relative;left:11px;border:0;border-collapse:collapse}.ecl-tg-table td{border:0;padding:0 10px 15px 0;line-height:normal;font-size:13px}.ecl-tg-i{position:relative;width:121px;height:140px}.ecl-tg-i .ecl-tg-i-link{position:absolute;bottom:3px;left:0;width:121px;height:22px;cursor:pointer;z-index:1;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat 0 -220px}
.ecl-tg-i .ecl-tg-i-desc{padding-top:6px;line-height:19px;height:35px;overflow:hidden;color:#333}.ecl-tg-i .ecl-tg-desc-link{color:#666;text-decoration:none}.ecl-tg-i .ecl-tg-desc-link:hover{color:#666;text-decoration:underline}.ecl-tg-i .ecl-tg-price-ct{padding-top:5px}.ecl-tg-i .ecl-tg-price{color:#ff7b13}.ecl-tg-i .ecl-tg-origin-price{text-decoration:line-through;color:#666}.ecl-tg-i .ecl-tg-img-ct{position:relative;width:121px;height:80px;overflow:hidden}.ecl-tg-i .ecl-tg-mask{display:block;position:absolute;z-index:5;top:64px;left:0;width:121px;height:80px;background:rgba(0,0,0,0.65);filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr='#a5000000',EndColorStr='#a5000000')}
.ecl-tg-i .ecl-tg-mask .ecl-tg-mask-link{display:block;position:absolute;width:121px;height:80px;top:0;left:0;z-index:10;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat 0 -220px}.ecl-tg-i .ecl-tg-mask .ecl-tg-i-area{width:119px;padding:0 0 3px 2px;line-height:16px;height:30px;overflow:hidden;color:#fff}.ecl-tg-i .ecl-tg-mask .ecl-tg-purchased{padding-left:2px;color:#fff;line-height:16px}.ecl-tg-i .ecl-tg-mask .ecl-tg-purchased i{font-style:normal;color:#fff}.ecl-tg-i .ecl-tg-mask .ecl-tg-go{position:absolute;width:113px;height:26px;left:4px;bottom:4px;z-index:15;text-align:center;color:#fff;text-decoration:none;line-height:26px;background:#00baff url('http://tuan.baidu.com/event/zhixin/ecl_tg.gif') no-repeat -2px 0}
.ecl-tg-i .ecl-tg-mask .ecl-tg-go:hover{background:url('http://tuan.baidu.com/event/zhixin/ecl_tg.gif') no-repeat -2px -27px}.ecl-tg-i .ecl-tg-mask .ecl-tg-go:active{background:url('http://tuan.baidu.com/event/zhixin/ecl_tg.gif') no-repeat -2px -54px}:root .ecl-tg-i .ecl-tg-mask{filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr='#00000000',EndColorStr='#00000000')}.ecl-tg-see-more{line-height:32px;text-align:center;border-top:1px solid #e3e3e3;width:516px;margin:0 auto}
.ecl-tg-see-more a{color:#666;text-decoration:none}.ecl-tg-see-more a:hover{text-decoration:underline}.ecl-tg-loading{height:353px;background:#fff;text-align:center}.ecl-tg-loading span{position:relative;top:200px}.ecl-tg-pc{padding-top:8px}.ecl-tg-pc .ecl-tg-pc-link{color:#008000;text-decoration:none}.ecl-tg-pc .ecl-tg-pc-link:hover{color:#008000;text-decoration:underline}
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
    <div class="ecl-tg-content-area">
        <div class="ecl-tg-location-filter" id="ecl-tg-location-filter-ct" unselectable="on" onselectstart="return false;">
            <div class="ecl-tg-filter" id="ecl-tg-location-filter" data-click="{rsv_click_type:'location',fm:'beha'}" style="{%if $tplData.location_expand == 1%}height: auto;{%/if%}" {%if $tplData.location_expand == 1%}expand="1"{%/if%}>
                <span class="ecl-tg-filter-label">{%$tplData.location_label|escape:'html'%}：</span>
                {%$locationChecked = 0%}
                <ul class="ecl-tg-clear">
                    {%foreach $tplData.location as $location%}
                        {%if $location@index < 6%}
                            <li class="{%if $location@index == 5 || $location@last%}ecl-tg-filter-last{%/if%}"><a href="#" hidefocus="true" class="{%if $location@index == 0%}ecl-tg-filter-all{%/if%} {%if $location.checked%}ecl-tg-filter-active{%/if%} " data-id="{%$location.id|escape:'html'%}" data-click="rsv_click_value:'{%$location.id|escape:'html'%}'}">{%$location.text|escape:'html'%}</a></li>
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
                                <li class="{%if $location@last%}ecl-tg-filter-last{%/if%}"><a href="#" hidefocus="true" data-id="{%$location.id|escape:'html'%}" data-click="{rsv_click_value:'{%$location.id|escape:'html'%}'}">{%$location.text|escape:'html'%}</a></li>
                            {%/if%}
                            {%if $location.checked%}
                                {%$locationChecked = $location.id%}
                            {%/if%}
                        {%/foreach%}
                    </ul>
                {%/if%}
            </div>
            <div class="ecl-tg-location-btn {%if $tplData.location_expand == 1%}ecl-tg-location-btn-expand{%/if%} OP_LOG_BTN" id="ecl-tg-location-btn" data-checked="{%$locationChecked|escape:'html'%}" data-click="{rsv_click_type:'location_more',fm:'beha'}" {%if count($tplData.location) <= 6%}style="display: none;"{%/if%}>{%if $tplData.location_expand == 1%}收起{%else%}更多{%/if%}</div>
        </div>
        <div class="ecl-tg-price-filter" id="ecl-tg-price-filter-ct" unselectable="on" onselectstart="return false;">
            <div class="ecl-tg-filter" id="ecl-tg-price-filter" data-click="{rsv_click_type:'price',fm:'beha'}">
                <span class="ecl-tg-filter-label">价格：</span>
                <ul class="ecl-tg-clear">
                    {%foreach $tplData.price as $price%}
                        <li class="{%if $price@last%}ecl-tg-filter-last{%/if%}"><a href="#" hidefocus="true" class="{%if $price@index == 0%}ecl-tg-filter-all{%/if%} {%if $price.checked%}ecl-tg-filter-active{%/if%} {%if $price.disable%}ecl-tg-filter-disable{%/if%}" data-id="{%$price.id|escape:'html'%}" data-click="{rsv_click_value:'{%$price.id|escape:'html'%}'}">{%$price.text|escape:'html'%}</a></li>
                    {%/foreach%}
                </ul>
            </div>
        </div>
        <div id="ecl-tg-table" data-click="{rsv_click_type:'list'}" class="ecl-tg-table-area">
            <table class="ecl-tg-table">
            {%for $i = 0 to 1%}
                <tr>
                {%for $j = 0 to 3%}
                    <td>
                    {%$cur_index = $i * 3 + $j%}
                    {%if $cur_index < count($tplData.list)%}
                        {%$item = $tplData.list[$cur_index]%}
                        <div class="ecl-tg-i">
                            <div class="ecl-tg-img-ct">
                                <img src="{%$item.img|escape:'html'%}" width="121" height="80">
                                    
                                <div class="ecl-tg-mask">
                                    <a href="{%$item.url%}" target="_blank" 
                                        data-click="{rsv_click_value:'{%$cur_index%}'}"
                                        class="ecl-tg-mask-link">
                                    </a>
                                    <div class="ecl-tg-purchased"><i>{%$item.purchased|escape:'html'%}</i>人已团</div>
                                    {%if strlen(trim($item.area)) > 0%}
                                        <div class="ecl-tg-i-area">{%$item.area|escape:'html'%}</div>
                                    {%/if%}
                                    <a href="{%$item.url%}" target="_blank" 
                                        class="ecl-tg-go">
                                        去看看
                                    </a>
                                </div>
                            </div>
                            <div class="ecl-tg-i-desc">
                                <a href="{%$item.url%}" target="_blank"
                                    class="ecl-tg-desc-link"
                                    title="{%$item.description|escape:'html'%}"
                                    data-click="{rsv_click_value:'{%$cur_index%}'}">
                                    {%$item.description|escape:'html'%}
                                </a>
                            </div>
                            <div class="ecl-tg-price-ct">
                                <span class="ecl-tg-price">￥{%$item.price|escape:'html'%}</span>
                                <span class="ecl-tg-origin-price">{%$item.original_price|escape:'html'%}</span>
                            </div>

                            <a href="{%$item.url%}" target="_blank" class="ecl-tg-i-link" title="{%$item.description|escape:'html'%}" hidefocus="true" data-click="{rsv_click_value:'{%$cur_index%}'}"></a>

                                
                        </div>
                    {%/if%}
                    </td>
                {%/for%}
                </tr>
            {%/for%}
            </table>
        </div>
        <div class="ecl-tg-see-more" id="ecl-tg-see-more"><a id="ecl-tg-see-more-link" href="{%$tplData.title_url%}" target="_blank" data-click="{rsv_click_type:'see_more'}">查看更多团购信息&gt;&gt;</a><span></span>
        </div>
        <div class="ecl-tg-loading ecl-tg-hidden" id="ecl-tg-loading">
            <span id="ecl-tg-loading-text">加载中...</span>
        </div>
    </div>
    <div class="ecl-tg-pc">
        <a href="{%$tplData.tuanbai%}" target="_blank" 
            class="ecl-tg-pc-link"
            id="EclTgPcLink">tuan.baidu.com</a>
    </div>
</div>

<script type="text/javascript">
    A.init(function(){var ajaxUrl=baidu.dom.getAttr("ecl-tg-index","data-ajax"),midPageStat={cityid:0,zoneid:0,priceid:0},currentStat={cid:0,lid:0,pid:0};midPageStat.cityid=currentStat.cid=baidu.dom.getAttr("ecl-tg-city-on","data-id"),midPageStat.zoneid=currentStat.lid=baidu.dom.getAttr("ecl-tg-location-btn","data-checked");var expandCityPicker=function(){baidu.dom.setStyle("ecl-tg-city-overlay","display","block"),baidu.dom.setAttr("ecl-tg-city-btn","expand","1")},collapseCityPicker=function(){baidu.dom.setStyle("ecl-tg-city-overlay","display","none"),baidu.dom.setAttr("ecl-tg-city-btn","expand","0")
},formatcityPicker=function(t){for(var e=[],a=[],i=t.hot,l=t.all,c=0;c<i.length;c++)e.push('<li data-group="RM" class="OP_LOG_BTN ecl-tg-city-item" data-id="'+i[c].id+'" data-click="{rsv_click_value:'+i[c].id+'}">'+i[c].text+"</li>");document.getElementById("ecl-tg-city-items").innerHTML=e.join("");for(var d=0;d<l.length;d++)for(var n=l[d].text,o=0;o<l[d].subcity.length;o++){var r=l[d].subcity[o];a.push('<li data-group="'+n+'" data-id="'+r.id+'" data-click="{rsv_click_value:'+r.id+'}" class="ecl-tg-city-item ecl-tg-hidden OP_LOG_BTN">'+r.text+"</li>")
}document.getElementById("ecl-tg-city-items").innerHTML+=a.join("")},table=function(t){for(var e,a,i=['<table class="ecl-tg-table">'],l=0;2>l;l++){i.push("<tr>");for(var c=0;4>c;c++)i.push("<td>"),a=3*l+c,a<t.length&&(e=t[a],i.push('<div class="ecl-tg-i">'),i.push('    <div class="ecl-tg-img-ct">'),i.push('        <img src="'+e.img+'" width="121" height="80"></a>'),i.push('        <div class="ecl-tg-mask">'),i.push('            <a href="'+e.url+'" target="_blank" data-click="{rsv_click_value:\''+a+'\'}" class="ecl-tg-mask-link"></a>'),i.push('            <div class="ecl-tg-purchased"><i>'+e.purchased+"</i>人已团</div>"),e.area&&baidu.string.trim(e.area).length>0&&i.push('        <div class="ecl-tg-i-area">'+e.area+"</div>"),i.push('            <a href="'+e.url+'" target="_blank" data-click="{rsv_click_value:\''+a+'\'}" class="ecl-tg-go">去看看</a>'),i.push("        </div>"),i.push("    </div>"),i.push('    <div class="ecl-tg-i-desc">'),i.push('        <a href="'+e.url+'" target="_blank" data-click="{rsv_click_value:\''+a+'\'}" class="ecl-tg-desc-link" title="'+e.description+'">'+e.description+"</a>"),i.push("    </div>"),i.push('    <div class="ecl-tg-price-ct"><span class="ecl-tg-price">￥'+e.price+'</span>&nbsp;<span class="ecl-tg-origin-price">'+e.original_price+"</span></div>"),i.push('   <a href="'+e.url+'" target="_blank" data-click="{rsv_click_value:\''+a+'\'}" class="ecl-tg-i-link" title="'+e.description+'" hidefocus="true"></a>'),i.push("</div>")),i.push("</td>");
i.push("</tr>")}return i.push("</table>"),i.join("")},locationHtml=function(t,e){e=e||"区域";var a=['<span class="ecl-tg-filter-label">'+e+"：</span>"];a.push('<ul class="ecl-tg-clear">');for(var i=0;i<t.length;i++){var l=t[i];6>i&&a.push('<li class="'+(5==i||i==t.length-1?"ecl-tg-filter-last":"")+'"><a href="#" hidefocus="true" class="'+(0==i?" ecl-tg-filter-all ":"")+(l.checked?" ecl-tg-filter-active ":"")+'" data-id="'+l.id+'" data-click="{rsv_click_value:\''+l.id+"'}\">"+l.text+"</a></li>")}if(a.push("</ul>"),t.length>=6){for(a.push('<ul class="ecl-tg-clear">'),i=0;i<t.length;i++)l=t[i],i>=6&&a.push('<li class="'+(i==t.length-1?"ecl-tg-filter-last":"")+'"><a href="#" hidefocus="true" class="'+(l.checked?" ecl-tg-filter-active ":"")+'" data-id="'+l.id+'" data-click="{rsv_click_value:\''+l.id+"'}\">"+l.text+"</a></li>");
a.push("</ul>")}return a.join("")},priceHtml=function(t){for(var e=['<span class="ecl-tg-filter-label">价格：</span><ul class="ecl-tg-clear">'],a=0;a<t.length;a++){var i=t[a];e.push('<li class="'+(a==t.length-1?"ecl-tg-filter-last":"")+'"><a href="#" hidefocus="true" class="'+(0==a?" ecl-tg-filter-all ":"")+(i.checked?" ecl-tg-filter-active ":"")+(i.disable?"ecl-tg-filter-disable":"")+'" data-id="'+i.id+'" data-click="{rsv_click_value:\''+i.id+"'}\">"+i.text+"</a></li>")}return e.push("</ul>"),e.join("")},showLoading=function(t,e){baidu.dom[t?"addClass":"removeClass"]("ecl-tg-table","ecl-tg-hidden"),baidu.dom[t?"addClass":"removeClass"]("ecl-tg-see-more","ecl-tg-hidden"),baidu.dom[t?"removeClass":"addClass"]("ecl-tg-loading","ecl-tg-hidden"),document.getElementById("ecl-tg-loading-text").innerHTML=e?e:"加载中..."
},reload=function(callback){showLoading(!0),baidu.ajax.get(ajaxUrl+"&"+baidu.url.jsonToQuery(currentStat)+"&tg="+(new Date).getTime(),function(xhr,response){var data=eval("("+response+")");if(data.list&&data.list.length&&data.list.length>0){document.getElementById("ecl-tg-table").innerHTML=table(data.list),bindContainerEvents();var oriHref=baidu.dom.getAttr("ecl-tg-title","data-href");baidu.dom.setAttr("ecl-tg-title","href",oriHref+"&cityid="+midPageStat.cityid),baidu.dom.setAttr("ecl-tg-see-more-link","href",oriHref+"&"+baidu.url.jsonToQuery(midPageStat)),showLoading(!1)
}else showLoading(!0,"抱歉，没有找到满足条件的团购。您可以尝试更改筛选条件。");document.getElementById("ecl-tg-location-filter").innerHTML=locationHtml(data.location,data.location_label),baidu.dom.setStyle("ecl-tg-location-btn","display",data.location.length>6?"block":"none"),baidu.dom.setStyle("ecl-tg-location-filter-ct","display",data.location.length>0?"block":"none"),document.getElementById("ecl-tg-price-filter").innerHTML=priceHtml(data.price),baidu.dom.setStyle("ecl-tg-price-filter-ct","display",data.price.length>0?"block":"none"),"function"==typeof callback&&callback()
})},onExpandCity=function(){"1"==baidu.dom.getAttr("ecl-tg-city-btn","expand")?collapseCityPicker():expandCityPicker()},bindContainerEvents=function(){baidu.array.each(baidu.dom.q("ecl-tg-img-ct"),function(t){var e,a=baidu.dom.q("ecl-tg-mask",t)[0],i=parseInt(baidu.getStyle(a,"top"),10);baidu.event.on(t,"mouseenter",function(){var t=parseInt(baidu.getStyle(a,"top"),10),i=0,l=30,c=300,d=parseInt((t-i)*l/c,10),n=function(){var t=parseInt(baidu.getStyle(a,"top"),10);if(!(i>=t)){var c=t-d;c=i>c?i:c,a.style.top=c+"px",e=setTimeout(n,l)
}};n()}),baidu.event.on(t,"mouseleave",function(){clearTimeout(e),a.style.top=i+"px"})})},bindEvents=function(){baidu.event.on("ecl-tg-location-btn","click",function(t){var e=baidu.event.getTarget(t);"1"==baidu.dom.getAttr("ecl-tg-location-filter","expand")?(baidu.dom.setStyle("ecl-tg-location-filter","height","28px"),baidu.dom.removeClass("ecl-tg-location-btn","ecl-tg-location-btn-expand ecl-tg-location-btn-expand-hover"),baidu.dom.setAttr("ecl-tg-location-filter","expand","0"),e.innerHTML="更多"):(baidu.dom.setStyle("ecl-tg-location-filter","height","auto"),baidu.dom.addClass("ecl-tg-location-btn","ecl-tg-location-btn-expand ecl-tg-location-btn-expand-hover"),baidu.dom.setAttr("ecl-tg-location-filter","expand","1"),e.innerHTML="收起")
}),baidu.event.on("ecl-tg-location-btn","mouseover",function(){"1"==baidu.dom.getAttr("ecl-tg-location-filter","expand")?baidu.dom.addClass("ecl-tg-location-btn","ecl-tg-location-btn-expand-hover"):baidu.dom.addClass("ecl-tg-location-btn","ecl-tg-location-btn-hover")}),baidu.event.on("ecl-tg-location-btn","mouseout",function(){"1"==baidu.dom.getAttr("ecl-tg-location-filter","expand")?baidu.dom.removeClass("ecl-tg-location-btn","ecl-tg-location-btn-expand-hover"):baidu.dom.removeClass("ecl-tg-location-btn","ecl-tg-location-btn-hover")
}),baidu.event.on("ecl-tg-city-btn","click",onExpandCity),baidu.event.on("ecl-tg-city-on","click",onExpandCity),baidu.event.on(document,"click",function(t){var e=baidu.event.getTarget(t);"ecl-tg-city-on"==e.id||"ecl-tg-city-btn"==e.id||baidu.dom.contains("ecl-tg-city-overlay",e)||collapseCityPicker()}),baidu.event.on("ecl-tg-city-items","click",function(t){var e=baidu.event.getTarget(t);if("li"==e.tagName.toLowerCase()&&(baidu.array.each(baidu.dom.q("ecl-tg-city-item-active","ecl-tg-city-items"),function(t){baidu.dom.removeClass(t,"ecl-tg-city-item-active")
}),baidu.dom.addClass(e,"ecl-tg-city-item-active"),collapseCityPicker(),baidu.dom.g("ecl-tg-city-on").innerHTML=e.innerHTML,currentStat.cid!=baidu.dom.getAttr(e,"data-id"))){midPageStat.cityid=currentStat.cid=baidu.dom.getAttr(e,"data-id"),midPageStat.zoneid=currentStat.lid=0,midPageStat.priceid=currentStat.pid=0;var a=baidu.getAttr("EclTgPcLink","href");a&&a.indexOf("cityid")>-1&&(a=a.replace(/(cityid=)\d*/,"$1"+currentStat.cid),baidu.setAttr("EclTgPcLink","href",a)),reload()}}),baidu.event.on("ecl-tg-city-tab","click",function(t){var e=baidu.event.getTarget(t);
if("li"==e.tagName.toLowerCase()){baidu.dom.removeClass(baidu.dom.q("ecl-tg-city-tab-active","ecl-tg-city-tab")[0],"ecl-tg-city-tab-active"),baidu.dom.addClass(e,"ecl-tg-city-tab-active");var a="热门"==baidu.string.trim(e.innerHTML)?["RM"]:e.innerHTML.split(""),i=baidu.dom.q("ecl-tg-city-item","ecl-tg-city-items");baidu.array.each(i,function(t){baidu.dom.addClass(t,"ecl-tg-hidden")}),baidu.array.each(i,function(t){for(var e=baidu.dom.getAttr(t,"data-group"),i=0;i<a.length;i++)if(a[i].toLowerCase()==e.toLowerCase()){baidu.dom.removeClass(t,"ecl-tg-hidden");
break}})}}),baidu.event.on("ecl-tg-location-filter","click",function(t){var e=baidu.event.getTarget(t);"a"==e.tagName.toLowerCase()&&(baidu.event.preventDefault(t),baidu.array.each(baidu.dom.q("ecl-tg-filter-active","ecl-tg-location-filter"),function(t){baidu.dom.removeClass(t,"ecl-tg-filter-active")}),baidu.dom.addClass(e,"ecl-tg-filter-active"),midPageStat.zoneid=currentStat.lid=baidu.dom.getAttr(e,"data-id"),reload())}),baidu.event.on("ecl-tg-price-filter","click",function(t){var e=baidu.event.getTarget(t);
baidu.event.preventDefault(t),"a"!=e.tagName.toLowerCase()||baidu.dom.hasClass(e,"ecl-tg-filter-disable")||(baidu.array.each(baidu.dom.q("ecl-tg-filter-active","ecl-tg-price-filter"),function(t){baidu.dom.removeClass(t,"ecl-tg-filter-active")}),baidu.dom.addClass(e,"ecl-tg-filter-active"),midPageStat.priceid=currentStat.pid=baidu.dom.getAttr(e,"data-id"),reload())})};formatcityPicker(_tuanCityData),bindEvents(),bindContainerEvents()});
</script>

{%/block%}