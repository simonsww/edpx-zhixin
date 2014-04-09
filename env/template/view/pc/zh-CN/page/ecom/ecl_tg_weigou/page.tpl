{%extends 'c_base.tpl'%}
{%block name="title"%}{%/block%}
{%block name="foot"%}{%/block%}
{%block name='content'%}
<style type="text/css">
    .ecl-tg{position:relative;width:600px;font-size:12px;font-family:arial}.ecl-tg-hidden{display:none}.ecl-tg-title{height:24px;margin:0;padding:4px 0 0;line-height:1;font-size:16px;color:#00c;font-weight:normal;text-decoration:underline}.ecl-tg-title em{color:#c00;font-style:normal;text-decoration:underline}.ecl-tg-city{position:absolute;top:0;right:0;height:24px;padding-right:23px;border:1px solid #999;border-right-color:#d9d9d9;border-bottom-color:#d9d9d9}.ecl-tg-city-on{padding:0 8px;line-height:24px;font-size:13px;color:#333;cursor:pointer;-moz-user-select:none;user-select:none}
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
<div class="ecl-tg" id="ecl-tg-index" data-ajax="{%$tplData.ajax_url%}">
    <h4 class="ecl-tg-title"><a id="ecl-tg-title" href="{%$tplData.title_url%}" target="_blank" data-href="{%$tplData.title_url%}" data-click="{rsv_click_type:'title'}">{%$tplData.title%}</a></h4>
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
    A.init(function(){var ajaxUrl=baidu.dom.getAttr("ecl-tg-index","data-ajax"),midPageStat={cityid:0,zoneid:0,priceid:0},currentStat={cid:0,lid:0,pid:0},table=function(e){for(var t,a=['<table class="ecl-tg-table">'],i=0;2>i;i++){a.push("<tr>");for(var l=0;3>l;l++)a.push("<td>"),3*i+l<e.length&&(t=e[3*i+l],a.push('<div class="ecl-tg-i">'),a.push('    <div class="ecl-tg-img-ct">'),a.push('        <a href="'+t.url+'" target="_blank" data-click="{rsv_click_value:\''+(3*i+l)+'\'}"><img src="'+t.img+'" width="186" height="117"></a>'),t.area&&baidu.string.trim(t.area).length>0&&a.push('        <div class="ecl-tg-i-area">'+t.area+"</div>"),a.push("    </div>"),a.push('    <div class="ecl-tg-i-desc" title="'+t.description+'">'+t.description+"</div>"),a.push('    <div class="ecl-tg-purchased"><i>'+t.purchased+"</i>人已团</div>"),a.push('    <div class="ecl-tg-price-ct"><span class="ecl-tg-price">'+t.price+'</span><span class="ecl-tg-origin-price">'+t.original_price+"</span></div>"),a.push('    <div class="ecl-tg-go">&nbsp;去看看&nbsp;</div>'),a.push('    <a href="'+t.url+'" target="_blank" data-click="{rsv_click_value:\''+(3*i+l)+'\'}" class="ecl-tg-i-link" title="'+t.description+'" hidefocus="true"></a>'),a.push("</div>")),a.push("</td>");
a.push("</tr>")}return a.push("</table>"),a.join("")},priceHtml=function(e){for(var t=['<span class="ecl-tg-filter-label">价格：&nbsp;</span><ul class="ecl-tg-clear">'],a=0;a<e.length;a++){var i=e[a];t.push('<li class="'+(a==e.length-1?"ecl-tg-filter-last":"")+'"><a href="#" hidefocus="true" class="'+(0==a?" ecl-tg-filter-all ":"")+(i.checked?" ecl-tg-filter-active ":"")+(i.disable?"ecl-tg-filter-disable":"")+'" data-id="'+i.id+'" data-click="{rsv_click_value:\''+i.id+"'}\">&nbsp;"+i.text+"&nbsp;</a></li>")}return t.push("</ul>"),t.join("")
},showLoading=function(e,t){baidu.dom[e?"addClass":"removeClass"]("ecl-tg-table","ecl-tg-hidden"),baidu.dom[e?"addClass":"removeClass"]("ecl-tg-see-more","ecl-tg-hidden"),baidu.dom[e?"removeClass":"addClass"]("ecl-tg-loading","ecl-tg-hidden"),document.getElementById("ecl-tg-loading-text").innerHTML=t?t:"加载中..."},reload=function(callback){showLoading(!0),baidu.ajax.get(ajaxUrl+"&"+baidu.url.jsonToQuery(currentStat)+"&tg="+(new Date).getTime(),function(xhr,response){var data=eval("("+response+")");if(data.list&&data.list.length&&data.list.length>0){document.getElementById("ecl-tg-table").innerHTML=table(data.list);
var oriHref=baidu.dom.getAttr("ecl-tg-title","data-href");baidu.dom.setAttr("ecl-tg-title","href",oriHref+"&cityid="+midPageStat.cityid),baidu.dom.setAttr("ecl-tg-see-more-link","href",oriHref+"&"+baidu.url.jsonToQuery(midPageStat)),showLoading(!1)}else showLoading(!0,"抱歉，没有找到满足条件的团购。您可以尝试更改筛选条件。");document.getElementById("ecl-tg-price-filter").innerHTML=priceHtml(data.price),baidu.dom.setStyle("ecl-tg-price-filter-ct","display",data.price.length>0?"block":"none"),"function"==typeof callback&&callback()})};/msie 6/i.test(window.navigator.userAgent)&&baidu.array.each(baidu.dom.q("ecl-tg-img-ct"),function(e){baidu.dom.q("ecl-tg-i-area",e).length>0&&(baidu.event.on(e,"mouseenter",function(){baidu.dom.setStyle(baidu.dom.q("ecl-tg-i-area",e)[0],"display","block")
}),baidu.event.on(e,"mouseleave",function(){baidu.dom.setStyle(baidu.dom.q("ecl-tg-i-area",e)[0],"display","none")}))}),baidu.event.on("ecl-tg-price-filter","click",function(e){var t=baidu.event.getTarget(e);baidu.event.preventDefault(e),"a"!=t.tagName.toLowerCase()||baidu.dom.hasClass(t,"ecl-tg-filter-disable")||(baidu.array.each(baidu.dom.q("ecl-tg-filter-active","ecl-tg-price-filter"),function(e){baidu.dom.removeClass(e,"ecl-tg-filter-active")}),baidu.dom.addClass(t,"ecl-tg-filter-active"),midPageStat.priceid=currentStat.pid=baidu.dom.getAttr(t,"data-id"),reload())
})});
</script>
{%/block%}