{%extends 'base_div.tpl'%}

{%block name='content'%}

<style type="text/css">
    .ecl-tg-hidden{display:none}.ecl-tg-clear{zoom:1}.ecl-tg-clear:after{display:block;content:"";visibility:hidden;font-size:0;clear:both}.ecl-tg-hotel-and-travel{position:relative;font-size:12px;font-family:arial;width:545px}.ecl-tg-hotel-and-travel ul{margin:0;padding:0}.ecl-tg-hotel-and-travel li{list-style:none}.ecl-tg-hotel-and-travel .ecl-tg-title{height:24px;margin:0;padding:4px 0 0;line-height:1;font-size:16px;color:#00c;font-weight:normal;text-decoration:underline}.ecl-tg-hotel-and-travel .ecl-tg-title em{color:#c00;font-style:normal;text-decoration:underline}
.ecl-tg-hotel-and-travel .ecl-tg-body{padding-top:11px;padding-left:11px;border:1px solid #e3e3e3;width:528px;zoom:1}.ecl-tg-hotel-and-travel .ecl-tg-body form{position:relative;height:26px}.ecl-tg-hotel-and-travel .ecl-tg-body form .ecl-tg-form-label{line-height:26px;font-size:14px;color:#000;text-decoration:none}.ecl-tg-hotel-and-travel .ecl-tg-body form label{position:absolute;height:26px;line-height:26px;z-index:1;left:168px;top:0;color:#b0b0b0;-moz-user-select:none;user-select:none;font-family:"宋体"}
.ecl-tg-hotel-and-travel .ecl-tg-body form .ecl-tg-search-keyword{position:absolute;left:160px;top:0;width:247px;height:24px;*line-height:24px;_line-height:24px;padding:0 0 0 7px;margin:0;border-top:1px solid #999;border-left:1px solid #999;border-bottom:1px solid #d8d8d8;border-right:1px solid #d8d8d8;outline:0;box-sizing:content-box;-moz-box-sizing:content-box;font-size:12px}.ecl-tg-hotel-and-travel .ecl-tg-body form .ecl-tg-search-submit{position:absolute;left:426px;top:0;height:26px;width:91px;padding:0;margin:0;border:0;background:#388bff;color:#fff;cursor:pointer;font-family:"宋体"}
.ecl-tg-hotel-and-travel .ecl-tg-body ul{margin:11px 0 0 0;padding:0;zoom:1}.ecl-tg-hotel-and-travel .ecl-tg-body ul li{list-style:none;float:left;padding:0 11px 11px 0;width:121px}.ecl-tg-hotel-and-travel .ecl-tg-body ul li a{position:relative;display:block;cursor:pointer;text-decoration:none;zoom:1}.ecl-tg-hotel-and-travel .ecl-tg-body ul li img{display:block;height:91px;width:121px;border:0}.ecl-tg-hotel-and-travel .ecl-tg-body ul li span{position:absolute;top:75px;left:0;height:16px;width:121px;line-height:16px;background:rgba(0,0,0,0.7);*background:#000;_background:#000;filter:alpha(opacity=70);color:#fff;white-space:nowrap;text-overflow:ellipsis;text-align:center;overflow:hidden}
.ecl-tg-hotel-and-travel .ecl-tg-body ul li em{display:block;padding:10px 0 8px;height:12px;color:#ff7b14;font-style:normal;text-decoration:none}.ecl-tg-hotel-and-travel .ecl-tg-body ul li em:hover{text-decoration:underline}.ecl-tg-hotel-and-travel .ecl-tg-body ul li i{display:block;height:12px;color:#666;font-style:normal}.ecl-tg-hotel-and-travel .ecl-tg-body ul li i:hover{text-decoration:underline}.ecl-tg-hotel-and-travel .ecl-tg-body ul:after{content:'';display:table;clear:both;visibility:hidden}
.ecl-tg-hotel-and-travel .ecl-tg-see-all{line-height:30px;text-decoration:none;color:#00c}.ecl-tg-hotel-and-travel .ecl-tg-see-all em{font-style:normal;color:#c00;text-decoration:none}.ecl-tg-hotel-and-travel .ecl-tg-see-all:hover{text-decoration:underline}.ecl-tg-hotel-and-travel .ecl-tg-see-all:hover em{text-decoration:underline}.ecl-tg-hotel-and-travel .ecl-tg-mid-page{text-decoration:none;color:#008000;cursor:pointer}.ecl-tg-city{position:absolute;left:69px;top:0;height:24px;width:79px;border-top:1px solid #999;border-left:1px solid #999;border-bottom:1px solid #d8d8d8;border-right:1px solid #d8d8d8;background:#fbfbfb;cursor:pointer}
.ecl-tg-city .ecl-tg-city-on{width:56px;height:24px;line-height:24px;text-align:center;background:#fff;font-family:"宋体",simsun}.ecl-tg-city .ecl-tg-city-btn{position:absolute;top:0;right:0;width:22px;height:24px;border-left:1px solid #d8d8d8;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tuan-2.gif') no-repeat -282px 0}.ecl-tg-city-overlay{display:none;position:absolute;top:65px;left:81px;width:335px;padding:7px 0 7px 10px;border:1px solid #e6e6e6;background-color:#fff;z-index:2}.ecl-tg-city-overlay .ecl-tg-city-tab{line-height:18px;border-bottom:1px solid #39f;font-family:"宋体",SimSun;margin-right:10px}
.ecl-tg-city-overlay .ecl-tg-city-tab li{float:left;height:18px;padding:0 5px;margin-right:10px;cursor:pointer}.ecl-tg-city-overlay .ecl-tg-city-tab-active{background:#39f;color:#fff}.ecl-tg-city-overlay .ecl-tg-city-items{position:relative;top:-5px;line-height:1;_line-height:normal;font-family:"宋体",simsun}.ecl-tg-city-overlay .ecl-tg-city-item-active{text-decoration:underline!important}.ecl-tg-city-overlay .ecl-tg-city-items li{float:left;margin-top:15px;margin-right:15px;white-space:nowrap;cursor:pointer;font-family:"宋体",simsun}
.ecl-tg-city-overlay .ecl-tg-city-items li:hover{text-decoration:underline}
</style>

<script>
    var _tuanCityData = {%json_encode($tplData.city)%};
</script>
<div class="ecl-tg-hotel-and-travel" id="ecl-tg-hotel-and-travel">
    <h4 class="ecl-tg-title"><a href="{%$tplData.title_url|escape:'html'%}" target="_blank" data-click="{rsv_click_type:'title'}">{%$tplData.title%}</a></h4>
    <div class="ecl-tg-body">
        <form action="{%$tplData.search_url%}" target="_blank" method="POST">
            <span class="ecl-tg-form-label" unselectable="on" onselectstart="return false;">{%$tplData.location_label|escape:'html'%}</span>
            <label for="ecl-tg-search-keyword" id="ecl-tg-search-keyword-label">{%$tplData.input_tips|escape:'html'%}&nbsp;</label>
            <input id="ecl-tg-search-keyword" class="ecl-tg-search-keyword" type="text" name="key">
            <input type="hidden" id="ecl-tg-search-city" name="cityid" value="{%$tplData.city.current.id|escape:'html'%}">
            <input type="submit" value="查询" class="ecl-tg-search-submit OP_LOG_BTN" data-click="{rsv_click_type:'search'}">
            <div class="ecl-tg-city" id="ecl-tg-city" unselectable="on" onselectstart="return false;">
                <div id="ecl-tg-city-on" class="ecl-tg-city-on" unselectable="on" onselectstart="return false;" data-id="{%$tplData.city.current.id|escape:'html'%}">{%$tplData.city.current.text|escape:'html'%}</div>
                <div class="ecl-tg-city-btn OP_LOG_BTN" id="ecl-tg-city-btn" data-click="{fm:'beha',rsv_click_type:'city_btn'}"></div>
            </div>
        </form>
        <ul>
            {%foreach $tplData.list as $item%}
                <li><a href="{%$item.url|escape:'html'%}" data-click="{rsv_click_type:'list'}" target="_blank"><img src="{%$item.img|escape:'html'%}" width="121" height="91"><span>{%$item.title|escape:'html'%}</span><em class="ecl-tg-em-price">{%$item.price|escape:'html'%}</em><i class="ecl-tg-i-total">{%$item.total|escape:'html'%}条团购信息</i></a></li>
            {%/foreach%}
        </ul>
    </div>
    <div class="ecl-tg-city-overlay ecl-tg-hidden" id="ecl-tg-city-overlay" data-click="{fm:'beha',rsv_click_type:'city_picker'}">
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
    <div class="ecl-tg-footer">
        <div>
            <a class="ecl-tg-see-all" href="{%$tplData.footer.url|escape:'html'%}" target="_blank" data-click="{rsv_click_type:'see_more'}">{%$tplData.footer.title%}&gt;&gt;</a>
        </div>
        <a class="ecl-tg-mid-page" href="{%$tplData.footer.tuanbai|escape:'html'%}" target="_blank" data-click="{rsv_click_type:'mid_page'}">tuan.baidu.com</a>
    </div>
</div>


<script type="text/javascript">
    A.init(function(){var t=function(t){for(var e=[],i=[],a=t.hot,d=t.all,c=0;c<a.length;c++)e.push('<li data-group="RM" class="OP_LOG_BTN ecl-tg-city-item" data-id="'+a[c].id+'" data-click="{rsv_click_value:'+a[c].id+'}">'+a[c].text+"</li>");document.getElementById("ecl-tg-city-items").innerHTML=e.join("");for(var n=0;n<d.length;n++)for(var o=d[n].text,u=0;u<d[n].subcity.length;u++){var l=d[n].subcity[u];i.push('<li data-group="'+o+'" data-id="'+l.id+'" data-click="{rsv_click_value:'+l.id+'}" class="ecl-tg-city-item ecl-tg-hidden OP_LOG_BTN">'+l.text+"</li>")
}document.getElementById("ecl-tg-city-items").innerHTML+=i.join("")};t(_tuanCityData),""!=baidu.g("ecl-tg-search-keyword").value&&baidu.addClass("ecl-tg-search-keyword-label","ecl-tg-hidden"),baidu.event.on("ecl-tg-search-keyword","focus",function(){baidu.addClass("ecl-tg-search-keyword-label","ecl-tg-hidden")}),baidu.event.on("ecl-tg-search-keyword","blur",function(){""==baidu.g("ecl-tg-search-keyword").value&&baidu.removeClass("ecl-tg-search-keyword-label","ecl-tg-hidden")});var e=function(){baidu.dom.setStyle("ecl-tg-city-overlay","display","block"),baidu.dom.setAttr("ecl-tg-city-btn","expand","1")
},i=function(){baidu.dom.setStyle("ecl-tg-city-overlay","display","none"),baidu.dom.setAttr("ecl-tg-city-btn","expand","0")},a=function(){"1"==baidu.dom.getAttr("ecl-tg-city-btn","expand")?i():e()};baidu.event.on("ecl-tg-city","click",a),baidu.event.on(document,"click",function(t){var e=baidu.event.getTarget(t);"ecl-tg-city-on"==e.id||"ecl-tg-city-btn"==e.id||baidu.dom.contains("ecl-tg-city-overlay",e)||i()}),baidu.event.on("ecl-tg-city-items","click",function(t){var e=baidu.event.getTarget(t);"li"==e.tagName.toLowerCase()&&(baidu.array.each(baidu.dom.q("ecl-tg-city-item-active","ecl-tg-city-items"),function(t){baidu.dom.removeClass(t,"ecl-tg-city-item-active")
}),baidu.dom.addClass(e,"ecl-tg-city-item-active"),i(),baidu.dom.g("ecl-tg-city-on").innerHTML=e.innerHTML,baidu.g("ecl-tg-search-city").value=baidu.dom.getAttr(e,"data-id"))}),baidu.event.on("ecl-tg-city-tab","click",function(t){var e=baidu.event.getTarget(t);if("li"==e.tagName.toLowerCase()){baidu.dom.removeClass(baidu.dom.q("ecl-tg-city-tab-active","ecl-tg-city-tab")[0],"ecl-tg-city-tab-active"),baidu.dom.addClass(e,"ecl-tg-city-tab-active");var i="热门"==baidu.string.trim(e.innerHTML)?["RM"]:e.innerHTML.split(""),a=baidu.dom.q("ecl-tg-city-item","ecl-tg-city-items");
baidu.array.each(a,function(t){baidu.dom.addClass(t,"ecl-tg-hidden")}),baidu.array.each(a,function(t){for(var e=baidu.dom.getAttr(t,"data-group"),a=0;a<i.length;a++)if(i[a].toLowerCase()==e.toLowerCase()){baidu.dom.removeClass(t,"ecl-tg-hidden");break}})}}),/msie 6/i.test(window.navigator.userAgent)&&(baidu.array.each(baidu.dom.q("ecl-tg-em-price"),function(t){baidu.event.on(t,"mouseover",function(){baidu.dom.setStyle(t,"text-decoration","underline")}),baidu.event.on(t,"mouseout",function(){baidu.dom.setStyle(t,"text-decoration","none")
})}),baidu.array.each(baidu.dom.q("ecl-tg-i-total"),function(t){baidu.event.on(t,"mouseover",function(){baidu.dom.setStyle(t,"text-decoration","underline")}),baidu.event.on(t,"mouseout",function(){baidu.dom.setStyle(t,"text-decoration","none")})}),baidu.array.each(baidu.dom.q("ecl-tg-city-item"),function(t){baidu.event.on(t,"mouseover",function(){baidu.dom.setStyle(t,"text-decoration","underline")}),baidu.event.on(t,"mouseout",function(){baidu.dom.setStyle(t,"text-decoration","none")})}))});
</script>

{%/block%}