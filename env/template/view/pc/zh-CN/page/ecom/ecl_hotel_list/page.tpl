{%extends 'base_div.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecl-hotel-list-container{width:600px}.ecl-hotel-list-container h3{font-weight:400;font-size:medium}.ecl-hotel-list-virtual-text{color:#999}.ecl-hotel-list-hidden-url{display:none}.ecl-hotel-list-error{padding:10px;font-size:12px}.ecl-hotel-list-query{background:#fdfdfd;padding:9px;font-size:12px;border:1px solid #ededed;border-bottom:0;margin-top:10px}.ecl-hotel-list-query input{border:0;outline:0;height:24px;line-height:24px;float:left;font-size:12px;margin-left:6px}.ecl-hotel-list-query button{background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/20130708/img/button_and_layer.png") no-repeat 0 0;color:#fff;border:0;cursor:pointer;height:28px;width:83px;text-align:center;text-indent:-9999px;float:right}
.ecl-hotel-list-city,.ecl-hotel-list-keyword{float:left;height:24px;line-height:24px}.ecl-hotel-list-city span,.ecl-hotel-list-keyword span{float:left;margin-right:8px;margin-top:2px}.ecl-hotel-list-city input{width:82px}.ecl-hotel-list-keyword input{width:272px}.ecl-hotel-list-keyword-sug-main{position:absolute;zoom:1;left:-10000px;z-index:10;margin-left:-1px;margin-top:4px;width:281px;_width:286px}.ecl-hotel-list-keyword-sug-main ul{border:#d0d0d0 solid 1px;background:#fff;line-height:20px;color:#414141;cursor:pointer;font-size:12px}
.ecl-hotel-list-keyword-sug-current{background-color:#36c;color:#fff}.ecl-hotel-list-keyword-sug li{padding:2px 5px;white-space:nowrap;width:270px;_width:275px;overflow:hidden;line-height:24px}.ecl-hotel-list-keyword-sug-append,.ecl-hotel-list-keyword-sug-prepend{display:none}.ecl-hotel-list-input{float:left;border:1px solid #b0b0b0;margin-right:16px;_margin-right:6px;background:#fff}.ecl-hotel-list-input b{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/icon_sprites.gif) no-repeat 0 -19px;display:block;height:8px;width:10px;cursor:pointer;float:left;margin-top:8px;margin-right:6px;_margin-right:2px}
.ecl-hotel-list-hotcity{position:absolute;left:-9999px;top:-9999px;border:1px solid #d0d0d0;color:#666;background:#fff;width:315px;z-index:2;*zoom:1}.ecl-hotel-list-hotcity h4{padding:0 5px;border-bottom:1px dotted #d0d0d0;background:#fff;line-height:21px;font-size:12px;margin:0;font-weight:400}.ecl-hotel-list-hotcity ul{padding:6px 0;*zoom:1}.ecl-hotel-list-hotcity ul:before,.ecl-hotel-list-hotcity ul:after{content:"";display:table}.ecl-hotel-list-hotcity ul:after{clear:both}
.ecl-hotel-list-hotcity li{float:left;width:20%;line-height:20px}.ecl-hotel-list-hotcity a{display:block;text-align:center;text-decoration:none}.ecl-hotel-list-hotcity a:visited{color:#00c}.ecl-hotel-list-hotcity a:link{color:#00c}.ecl-hotel-list-hotcity a:hover{color:#ff6c00;text-decoration:underline}.ecl-hotel-list-hotcity a:active{color:#ff6c00}.ecl-hotel-list-hotcity span{position:absolute;top:6px;right:1px;background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/hotel_btn.png") 0 -25px no-repeat;width:9px;height:9px;display:block;cursor:pointer}
.ecl-hotel-list-city-sug{position:absolute;top:-9999px;left:-9999px;background:#fff;list-style:none;border:1px solid #ababab;width:12em;z-index:10}.ecl-hotel-list-city-sug li{padding:2px 0 2px 6px;padding-right:5px}.ecl-hotel-list-sug-active{color:#fff;background:#36c;cursor:pointer}.ecl-hotel-list-hotels{background:#fdfdfd;border:1px solid #ededed;border-right:0}.ecl-hotel-list-hotels a{display:block;float:left;font-size:12px;text-decoration:none;padding:9px 10px 9px 9px;border-right:1px solid #ededed;width:180px}
.ecl-hotel-list-hotels a.ecl-hotel-list-hotel2{padding-right:9px}.ecl-hotel-list-hotels a:hover{background:#f4f8fd}.ecl-hotel-list-hotels a:hover strong{text-decoration:underline}.ecl-hotel-list-hotels em{color:#ff6c00;text-decoration:none}.ecl-hotel-list-hotels strong{font-size:14px;font-weight:400;color:#009}.ecl-hotel-list-hotels img{width:180px;height:124px}.ecl-hotel-list-img{position:relative}.ecl-hotel-list-img span{font-family:"微软雅黑","Microsoft Yahei","Helvetica Neue",Helvetica,Arial;display:inline-block;position:absolute;top:-5px;right:4px;background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/20130708/img/button_and_layer.png") 0 -30px no-repeat;padding:5px 12px 8px 6px;width:2em}
.ecl-hotel-list-hotel0 span{color:#00a0e9}.ecl-hotel-list-hotel1 span{color:#eb6100}.ecl-hotel-list-hotel2 span{color:#ae5da1}.ecl-hotel-list-hotel-intro{margin-top:6px}.ecl-hotel-list-hotel-price{position:relative;margin-top:8px}.ecl-hotel-list-hotel-price b{margin-right:3px}.ecl-hotel-list-hotel-price span{color:#868686;float:left}.ecl-hotel-list-hotel-price span b{font-weight:600}.ecl-hotel-list-hotel-price em{float:right}.ecl-hotel-list-hotel-price em b{font-size:14px}.ecl-hotel-list-locs{padding:9px;height:20px;border:1px solid #ededed;border-bottom:0;font-size:12px;background:#fdfdfd}
.ecl-hotel-list-locs h5{padding:0;margin:0;line-height:20px;font-weight:400;margin-right:10px;float:left;font-size:12px}.ecl-hotel-list-locs ul{float:left}.ecl-hotel-list-locs li{display:inline;float:left;margin-right:20px;line-height:20px}.ecl-hotel-list-locs li a{color:#03c;text-decoration:none}.ecl-hotel-list-locs li a:hover{text-decoration:underline}.ecl-hotel-list-locs li.ecl-hotel-list-disabled a{color:#999;cursor:default}.ecl-hotel-list-locs li.ecl-hotel-list-disabled a:hover{text-decoration:none}.ecl-hotel-list-hide{display:none}
.ecl-hotel-list-statics{width:100%;height:100%;background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/20130708/img/static_bg.png") #fff repeat-x;*zoom:1;border-right:1px solid #ededed;padding:10px 0 9px;font-family:"微软雅黑","Microsoft Yahei","Helvetica Neue",Helvetica,Arial;cursor:pointer}.ecl-hotel-list-statics:before,.ecl-hotel-list-statics:after{content:"";display:table}.ecl-hotel-list-statics:after{clear:both}.ecl-hotel-list-statics h4{margin:0;font-size:14px;font-weight:400;color:#6b9bd6}
.ecl-hotel-list-statics p{font-size:12px;height:24px;line-height:30px;color:#999}.ecl-hotel-list-statics em{color:#ff9124}.ecl-hotel-list-static{float:left;width:198px;border-left:1px solid #e5e5e5;text-indent:14px}.ecl-hotel-list-static1{border-left:none}.ecl-hotel-list-ui-city{width:360px;position:absolute;z-index:2;border:1px solid #ddd;background-color:#fff;padding:5px;font-size:12px;color:#555;left:-9999px}.ecl-hotel-list-ui-city a{text-decoration:none}.ecl-hotel-list-ui-city .ecl-hotel-list-ui-city-labels,.ecl-hotel-list-ui-city .ecl-hotel-list-ui-city-panels{list-style:none}
.ecl-hotel-list-ui-city .ecl-hotel-list-ui-city-close{color:#b4b4b4;font:bold 12px/1.2 'Comic Sans MS';padding:0 3px;position:absolute;right:3px;top:8px}.ecl-hotel-list-ui-city .ecl-hotel-list-ui-city-labels{border-bottom:1px solid #ddd;padding:0}.ecl-hotel-list-ui-city .ecl-hotel-list-ui-city-labels li{border:1px solid #ddd;background-color:#fff;float:left;padding:3px;margin-right:5px;margin-bottom:-1px;cursor:pointer;color:#0069ca;line-height:16px}.ecl-hotel-list-ui-city .ecl-hotel-list-ui-city-labels .ecl-hotel-list-ui-city-active{background-color:#e8edf1}
.ecl-hotel-list-ui-city .ecl-hotel-list-ui-city-panels li{display:none;float:left;line-height:18px}.ecl-hotel-list-ui-city .ecl-hotel-list-ui-city-panels .ecl-hotel-list-ui-city-active{display:block}.ecl-hotel-list-ui-city .ecl-hotel-list-ui-city-panels a{color:#555;float:left;margin-right:20px;line-height:30px;text-align:center;*display:block;text-decoration:none;white-space:nowrap}.ecl-hotel-list-ui-city .ecl-hotel-list-ui-city-panels a:hover{color:#ff6c00}
</style>
{%*点击统计*%} 
{%$sessionid=$extData.sessionID%}
{%$subqid=$extData.subqid%}
{%$sid=$extData.sid%}
{%$pssid=$extData.pssid%}


<div class="ecl-hotel-list-container" data-click='{"vs_hotel_sessionid":"{%$sessionid|escape:"html"%}","vs_hotel_subqid":"{%$subqid|escape:"html"%}","vs_hotel_sid":"{%$sid|escape:"html"%}"}'>
    <h3 class="ecl-hotel-list-title">
        <a target="_blank" href="{%$tplData.mainurl|escape:'html'%}">
            <em>{%$extData.originQuery|escape:'html'%}</em>({%$tplData.count|escape:'html'%}家酒店)&nbsp;&nbsp;全网特惠酒店预订&nbsp;&nbsp;去哪儿&nbsp;携程&nbsp;艺龙等提供
        </a>
    </h3>

    <form class="ecl-hotel-list-query c-clearfix">
        <div class="ecl-hotel-list-city">
            <span>城市</span>
            <div class="ecl-hotel-list-input">
                <input class="ecl-hotel-list-city-input" autocomplete="off" type="text" maxlength="10" value="{%if $tplData.curcity%}{%$tplData.curcity|escape:'html'%}{%else%}{%if $tplData.ipcity%}{%$tplData.ipcity|escape:'html'%}{%else%}北京{%/if%}{%/if%}" />
                <b class="ecl-hotel-list-city-trigger OP_LOG_BTN" title="选择热门城市"></b>
                <div class="ecl-hotel-list-hotcity" data-click="{'fm':'beha'}">
                    
                    <h4>Top 20热门城市 (直接输入可搜索{%$tplData.citycount|escape:'html'%}个目的地)</h4>
                    <ul>
                        {%foreach $tplData.hotcity as $item%}
                        <li><a data-id="{%$item['id']|escape:'html'%}" href="###">{%$item['name']|escape:'html'%}</a></li>
                        {%/foreach%}
                    </ul>
                    <span>&nbsp;</span>
                </div>
                <ul class="ecl-hotel-list-city-sug" ></ul>
            </div>
        </div>
        <div class="ecl-hotel-list-keyword">
            <span>关键词</span>
            <div class="ecl-hotel-list-input">
               <input  autocomplete="off" class="ecl-hotel-list-keyword-input" type="text" maxlength="60" value="{%$tplData.keyword|escape:'html'%}" data-placeholder="输入位置、酒店名称或品牌" />
               <ul class="ecl-hotel-list-keyword-sug"></ul>
            </div>
        </div>
        <button class="OP_LOG_BTN" type="button">快速查询</button><a href="{%$tplData.mainurl|escape:'html'%}" target="_blank" class="ecl-hotel-list-hidden-url"></a>
    </form>

    <div class="ecl-hotel-list-locs {%if count($tplData.locLinks) == 0%}ecl-hotel-list-hide{%/if%}"> 
        <h5>按位置查找</h5>
        <ul>
            {%foreach $tplData.locLinks as $link%}
            <li class="{%if $link.status==1%}ecl-hotel-list-disabled{%/if%}"><a title="{%$link.title|escape:'html'%}" target="_blank" href="{%$link.url|escape:'html'%}">{%$link.title|escape:'html'%}</a></li>
            {%/foreach%}
        </ul>
    </div>

    {%*1 代表 能正常渲染出三张不同的酒店卡片*%}
    {%if $tplData.recommend.status eq 1%}
    <div class="ecl-hotel-list-hotels c-clearfix">
        {%foreach $tplData.recommend.data as $hotel%}<a class="ecl-hotel-list-hotel{%$hotel@index%}" target="_blank" href="{%$hotel.url|escape:'html'%}">
            <p class="ecl-hotel-list-img">
                <img width="188" height="124" src="{%$hotel.img|escape:'html'%}"/>
                <span class="ecl-hotel-list-img-tag">{%$hotel.tag|escape:'html'%}</span>
            </p>
            <p class="ecl-hotel-list-hotel-intro"><strong>{%$hotel.intro|escape:'html'%}</strong></p>
            <p class="ecl-hotel-list-hotel-price c-clearfix">
                <span><b>{%$hotel.count|escape:'html'%}</b>家酒店</span>
                {%if $hotel.tag neq "最佳口碑"%}
                <em><b>&yen;{%$hotel.price|escape:'html'%}</b>起</em>
                {%else%}
                <em><b>{%$hotel.price|escape:'html'%}</b>条点评</em>
                {%/if%}
            </p>
        </a>{%/foreach%}
    </div>
    {%elseif $tplData.recommend.status eq 0%}
    <div class="ecl-hotel-list-hotels c-clearfix">
        <div class="ecl-hotel-list-statics OP_LOG_BTN">
           
            <div class="ecl-hotel-list-static ecl-hotel-list-static1">
                <h4>全网酒店</h4>
                <p>全国<em>2659</em>个市县&nbsp;,&nbsp;<em>88214</em>家酒店</p>
            </div>
            <div class="ecl-hotel-list-static ecl-hotel-list-static2">
                <h4>低价之选</h4>
                <p><em>210</em>家网站价格比较</p>
            </div>
            <div class="ecl-hotel-list-static ecl-hotel-list-static3">
                <h4>预定保障</h4>
                <p>享百度权益<em>保障</em>&nbsp;,&nbsp;安心预定</p>
            </div>
        </div>
    </div>
    {%else%}
    <div class="ecl-hotel-list-hotels c-clearfix">
        未能检测到您搜索的酒店，请稍候重试
    </div>
    {%/if%}

</div>



<script data-compress="off">
A.setup("ZHIXIN_HOTEL_LEFT", {
    ORIGIN_QUERY: "{%$extData.originQuery|escape:'html'%}",
    QUERY_CITY: "{%if $tplData.curcity%}{%$tplData.curcity|escape:'html'%}{%else%}{%if $tplData.ipcity%}{%$tplData.ipcity|escape:'html'%}{%else%}北京{%/if%}{%/if%}",
    CITYID: +'{%$tplData.curcityid|escape:"html"%}',
    IP_CITY: "{%$tplData.ipcity|escape:'html'%}",
    IP_CITYID: +"{%$tplData.ipcityid|escape:'html'%}",
    KEYWORD: '{%$tplData.keyword|escape:"html"%}',
    UPDATE_QUEUE: '{%$tplData.updateQueue|escape:"html"%}',
    PRICE_QUEUE: '{%$tplData.priceQueue|escape:"html"%}',
    URL_QUERY: '/ecomui/hotel?controller=Bws&action=getFirstScreen',
    URL_CITY: '/ecomui/hotel?controller=Bws&action=tip',
    URL_DETAIL: '/ecomui/hotel?controller=Bws&action=location',
    URL_PRICE: '/ecomui/hotel?controller=Bws&action=updatePrice',
    URL_LOC: '/ecomui/hotel?controller=Bws&action=around',
    SESSION_ID: '{%$sessionid|escape:"javascript"%}',
    STATS_SUBQID: '{%$subqid|escape:"javascript"%}',
    STATS_SID: '{%$sid|escape:"javascript"%}',
    STATS_PSSID: '{%$pssid|escape:"javascript"%}'   
});
</script>

<script type="text/javascript">
/**
 * 
 * @file 知心酒店左侧模板处理逻辑
 * @author zhuyuwei
 */
A.init( function() {
    // 如果使用tangram，需要这样声明
    var T = A.baidu;
    // this对象指向当前卡片
    var card = this;

    // AMD加载的config配置路径
    require.config({
        paths : {
            // 'ecom/ui': 'http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/20130528/js/'
            'ecom/ui': 'ecom/ui/20130622'
        }
    });


    var hotelData=card.data.ZHIXIN_HOTEL_LEFT,common=function(t){var n,e="ecl-hotel-list-",r=/^((http.?:)\/\/([^:\/\s]+)(:\d+)*)(\/[^?#\s]*)(\?[^#]*)?(#\S*)?/,o=[],a={cityid:hotelData.CITYID,city:hotelData.QUERY_CITY},s=hotelData.STATS_PSSID,u=hotelData.SESSION_ID,i=hotelData.ORIGIN_QUERY,c={},f={cityid:1},l=T.browser.ie;return n={getClass:function(t){return e+t},getTags:function(t,n){return t?t.getElementsByTagName(n)||[]:[]},addIniter:function(t){return o.push(t),n},init:function(){for(var n,e=0;n=o[e++];)n.apply(t)
},request:function(t,n,e,r){r=r||function(){},n.sessionID=u,n.pssid=s,n.originQuery=i,t+=(t.indexOf("?")>-1?"&":"?")+T.url.jsonToQuery(n,function(t){return/[^\x00-\xFF]/.test(t)?encodeURIComponent(t):t}),T.ajax.request(t,{onsuccess:function(t,n){var o={status:-1,statusInfo:t.statusText};try{o=T.json.parse(n)}catch(a){return r(-1,o),void 0}return n?(e&&e(o),void 0):(r(-1,o),void 0)},onfailure:function(t){var n={status:t.status,statusInfo:t.statusText};r(t.status,n)}})},get:function(t){return a[t]},set:function(t,e){if(f[t]&&a[t]==e)return n;
a[t]=e;var r=c[t];if(r&&r.length)for(var o,s=0;o=r[s++];)o["on"+t+"change"](e);return n},connect:function(t,n){c[t]=c[t]||[],c[t].push(n)},parseUrl:function(t){for(var n,e=t.match(r),o=e[6].substr(1).split("&"),a={},s=0;n=o[s++];)n=n.split("="),a[n[0]]=n[1];return{path:e[1]+e[5],search:a}},joinUrl:function(t){var n="?",e=t.search;return n+=T.url.jsonToQuery(e,function(t){return/[^\x00-\xFF]/.test(t)?encodeURIComponent(t):t}),t.path+n},getLayerOffset:function(t){var n=T.dom.getPosition(t.parentNode);return l&&6===l&&(n.top=n.top-5),n
}}}(card);
    var hotelKeyword=function(t){T.array.indexOf||(T.array.indexOf=function(t,n){for(var e=-1,o=0,r=t.length;r>o;o++)if(t[o]===n){e=o;break}return e});var n=T.addClass,e=T.removeClass;T.show,T.hide;var o=common.getClass,r=o("virtual-text"),u=t.qq(o("keyword-input")),i="ecomui/hotel?controller=suggest&action=tip",a={};t.qq(o("keyword-sug"));var c,s,l=function(t){var n=this,e=common.get("cityid"),o=a[e]=a[key]||{};if(!t.length)return!1;if("输入位置、酒店名称或品牌"===t)return!1;if(o[t])return n.show(t,o[t]),!1;var r=[];common.request(i,{q:t,box:"hotel",con:"city",convalue:e},function(e){if(e&&!e.status){if(e.q!==t)return!1;
T.each(e.data,function(t){r.push(t)}),o[t]=r,n.show(t,r)}else n.hide()})};return T.browser.ie,c={bindSuggestion:function(){require(["ecom/ui/suggestion"],function(t){s=new t({skin:o("keyword-sug"),getData:l,view:function(t){return t.left=t.left-7,t},onpick:function(t){common.set("keyword",t.data.item.value)},onhide:function(){}}),s.render(u)})},openVirtual:function(){n(u,common.getClass("virtual-text")),u.value=u.getAttribute("data-placeholder")},closeVirtual:function(){u.value===u.getAttribute("data-placeholder")&&(u.value=""),e(u,r)
},getInput:function(){return u},getSug:function(){return s},oncityidchange:function(){u.value="",c.openVirtual(),common.set("keyword","")}}}(card);common.addIniter(function(){var t=hotelKeyword,n=t.getInput();T.on(n,"blur",function(){var n=this,e=n.value;e||t.openVirtual(),common.set("keyword",e)}),T.on(document,"click",function(e){var o=e.target||e.srcElement,r=t.getSug();return T.dom.contains(n.parentNode,o)?!1:(r&&r.hide(),void 0)}),T.on(n,"focus",function(){return t.closeVirtual(),!1}),t.bindSuggestion(),n.value||t.openVirtual(),common.connect("cityid",t)
});
    var hotelCity=function(t){function e(t){var e=t.s.split("|")[0],n=e.indexOf("-");return n>-1&&(e=e.slice(0,n)),e}var n,r="/ecomui/hotel?controller=Bws&action=tip",o="/ecomui/hotel?controller=Bws&action=getFirstScreen",a='<li class="#{active}" data-city="#{city}" data-index="#{index}" data-id="#{id}">#{name}</li>',i={},u=common.getClass,c=t.qq(u("city-input")),s=t.qq(u("hotcity")),l=t.qq(u("city-sug")),d=t.qq(u("city-trigger")),g=T.string.format,f={},m=common.getLayerOffset(c),v=m.top+25+"px",y=m.left+"px";return n={getSuggestion:function(t){if(!t)return n.hideLayer(l),!1;
if(common.get("cityid"),i[t])n.renderSuggestion(t,i[t]);else{var e=+new Date;common.request(r,{city:t,t:e},function(e){i[t]=e.data,n.renderSuggestion(t,e.data)},function(){n.hideLayer(l)})}},renderSuggestion:function(t,r){t=t.replace("\\","\\\\");var o=new RegExp("("+t+")","i");if(r.constructor!==Array)return n.hideLayer(l),!1;f={};for(var i,c,s=[],d=[],m="",v=0;c=r[v];v++)d=c.s.split("|"),i=d[0]+"("+d[1]+")",i=i.replace(o,"<em>$1</em>"),m=v?"":u("sug-active"),f[d[0]]=1,s.push(g(a,{id:c.id,name:i,active:m,city:e(c),index:v}));
l.innerHTML=s.length?s.join(""):'<li class="'+u("empty-sug")+'">'+"抱歉，没有查到与"+t+"相匹配的城市"+"</li>",n.showLayer(l)},getInput:function(){return c},getHotLayer:function(){return s},getSuggestionLayer:function(){return l},getTrigger:function(){return d},getCurCities:function(){return f},oncityidchange:function(t){common.request(o,{cityid:t,t:+new Date},function(t){common.set("hoteldata",t.data),common.set("status",t.status)})},showLayer:function(t){t.style.top=v,t.style.left=y},hideLayer:function(t){t.style.top="-9999px",t.style.left="-9999px"
}}}(card);common.addIniter(function(){var t=hotelCity,e=t.getInput(),n=t.getTrigger(),r=T.addClass,o=T.removeClass,a=common.getClass("sug-active"),i=t.getSuggestionLayer(),u=common.getClass("empty-sug");T.on(i,"mouseout",function(t){var e=t.target||t.srcElement;if(T.dom.hasClass(e,u))return!1;var n=t.relatedTarget||t.toElement,i=card.qq(a);"LI"===n.tagName&&(o(e,a),i&&i!==e&&o(i,a),r(n,a))}),T.on(i,"click",function(n){var r=n.target||n.srcElement;"EM"===r.tagName&&(r=r.parentNode),"LI"===r.tagName&&(e.value=r.getAttribute("data-city"),common.set("cityid",r.getAttribute("data-id")),t.hideLayer(i))
});var c=function(t,e){var n=parseInt(t.getAttribute("data-index"),10),r=i.getElementsByTagName("li"),o=r.length;return"up"===e?0===n?r[o-1]:r[n-1]:n===o-1?r[0]:r[n+1]};T.on(e,"keyup",function(n){var u=n.keyCode,s=this;t.hideLayer(l);var d=card.qq(a),g=null;switch(u){case 38:d&&(o(d,a),g=c(d,"up"),r(g,a),e.value=g.getAttribute("data-city"));break;case 40:d&&(o(d,a),g=c(d,"down"),r(g,a),e.value=g.getAttribute("data-city"));break;case 13:d&&(e.value=d.getAttribute("data-city"),common.set("cityid",d.getAttribute("data-id")),t.hideLayer(i));
break;default:t.getSuggestion(s.value)}return n.stopPropagation&&n.stopPropagation(),n.preventDefault&&n.preventDefault(),n.cancelBuble=!0,!1}),T.on(e,"keydown",function(t){var e=t.keyCode;13==e&&(t.stopPropagation&&t.stopPropagation(),t.returnValue=!1)});var s=common.get("city");T.on(e,"focus",function(){var e=this;s=e.value,t.showLayer(l),e.select()}),T.on(e,"mouseup",function(t){t.preventDefault&&t.preventDefault()}),T.on(e,"blur",function(){var e=this,n=e.value,r=t.getCurCities(),o=card.qq(common.getClass("sug-active"));
n&&r[n]||(o?(e.value=o.getAttribute("data-city"),common.set("cityid",o.getAttribute("data-id"))):e.value=s)});var l=t.getHotLayer();T.on(n,"click",function(){var e=l.style.top;e&&"-9999px"!==e?t.hideLayer(l):t.showLayer(l)}),T.on(document,"click",function(r){var o=r.target||r.srcElement;return T.dom.contains(l,o)||o===n||o===e?!1:(t.hideLayer(l),void 0)}),T.on(document,"click",function(n){var r=n.target||n.srcElement;return T.dom.contains(i,r)||r===e?!1:(t.hideLayer(i),void 0)}),T.on(l,"click",function(n){n.preventDefault&&n.preventDefault(),n.returnValue=!1;
var r=n.target||n.srcElement;"SPAN"===r.tagName?t.hideLayer(l):"A"===r.tagName&&(e.value=r.innerHTML,common.set("cityid",r.getAttribute("data-id")),t.hideLayer(l))}),common.connect("cityid",t)});
    var hotelQuery=function(t){var e,n=common.getTags(t.qq(common.getClass("title")),"A"),o=common.parseUrl(n[0].href),r=t.qq(common.getClass("hidden-url")),i=t.qq(common.getClass("query"));return e={buildUrl:function(){var t=o.search;return t.keyword=common.get("keyword")||"",t.city=common.get("cityid")||"",r.href=common.joinUrl(o),e},submit:function(){return r.click(),e},getForm:function(){return i}}}(card);common.addIniter(function(){var t=hotelQuery.getForm();t.onsubmit=function(){return!1};var e=t.getElementsByTagName("button");
e=e[0],T.on(e,"click",function(){hotelQuery.buildUrl().submit()}),T.on(e,"mouseover",function(){e.style["background-position"]="-87px 0"}),T.on(e,"focus",function(){e.style["background-position"]="-87px 0"}),T.on(e,"mouseout",function(){e.style["background-position"]="0 0"}),T.on(e,"mousedown",function(){e.style["background-position"]="-173px 0"})});
    var TPL_LOC_LINK='<li class="#{styles}"><a title="#{title}" target="_blank" href="#{url}">#{title}</a></li>',hotelLoc=function(t){function e(e){for(var n=t.qq(o("locs")),r=common.getTags(n,"ul")[0],a=[],i=0,u=e.length;u>i;i++){var c=T.extend({},e[i]);c.styles=c.status?o("disabled"):"",a[i]=T.format(TPL_LOC_LINK,c)}a=a.join(""),r.innerHTML=a,T[a?"removeClass":"addClass"](n,o("hide"))}hotelData.URL_LOC;var n={},o=common.getClass;return n.render=e,n}(card);
    var hotelList=function(t){var e,n='<a href="#{url}" target="_blank" class="ecl-hotel-list-hotel#{index}"><p class="ecl-hotel-list-img"><img width="188" height="124" src="#{img}"/><span>#{tag}</span></p><p class="ecl-hotel-list-hotel-intro"><strong>#{intro}</strong></p><p class="ecl-hotel-list-hotel-price c-clearfix"><span><b>#{count}</b>家酒店</span>#{priceHtml}</p></a>',o='<div class="ecl-hotel-list-static ecl-hotel-list-static#{index}"><h4>#{title}</h4><p>#{desc}</p></div>',r=common.getClass,i=t.qq(r("hotels")),a=T.string.format;
return e={onstatuschange:function(t){var n=common.get("hoteldata");1==t?(e.renderHotelList(n.recommend),hotelLoc.render(n.around.locLinks)):0==t?(e.renderStaticList(n.recommend),hotelLoc.render(n.around.locLinks)):e.renderErrorList(n)},renderHotelList:function(t){for(var e,o=[],r=0;(e=t[r])&&!(r>3);r++)e.index=r,e.priceHtml="最佳口碑"!==e.tag?"<em><b>&yen;"+e.price+"</b>起</em>":"<em><b>"+e.price+"</b>条评论</em>",o.push(a(n,e));i.innerHTML=o.join("")},renderStaticList:function(t){for(var e,n=['<div class="ecl-hotel-list-statics OP_LOG_BTN">'],r=0;(e=t[r++])&&!(r>3);)e.index=r,n.push(a(o,e));
n.push("</div>"),i.innerHTML=n.join("")},renderErrorList:function(){i.innerHTML='<p class="ecl-hotel-list-error">数据请求出错</p>'},getContainer:function(){return i},onkeywordchange:function(){}}}(card);common.addIniter(function(){var t=hotelList.getContainer(),e=T.dom.hasClass,n=function(n,o){do{if(!n)return!1;if(n.className||(n.className=""),e(n,o))return n;if(n===t)return!1;n=n.parentNode}while(n)};T.on(hotelList.getContainer(),"click",function(t){var e=n(t.target||t.srcElement,common.getClass("statics"));e&&hotelQuery.buildUrl().submit()
}),common.connect("status",hotelList),common.connect("keyword",hotelList)});

    common.init();
});
</script>

{%/block%}
