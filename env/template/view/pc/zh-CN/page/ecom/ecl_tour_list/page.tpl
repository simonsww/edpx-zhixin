{%extends 'base_div.tpl'%}

{%block name='content'%}
<style type="text/css">
.ecl-tour-list-ui-city{width:360px;position:absolute;z-index:1000;border:1px solid #ddd;background-color:#fff;padding:5px;font-size:12px;color:#555;left:-9999px}.ecl-tour-list-ui-city a{text-decoration:none}.ecl-tour-list-ui-city .ecl-tour-list-ui-city-labels,.ecl-tour-list-ui-city .ecl-tour-list-ui-city-panels{list-style:none}.ecl-tour-list-ui-city .ecl-tour-list-ui-city-close{color:#b4b4b4;font:bold 12px/1.2 'Comic Sans MS';padding:0 3px;position:absolute;right:3px;top:8px}.ecl-tour-list-ui-city .ecl-tour-list-ui-city-labels{border-bottom:1px solid #ddd}
.ecl-tour-list-ui-city .ecl-tour-list-ui-city-labels li{border:1px solid #ddd;background-color:#fff;float:left;padding:3px 5px;margin-right:10px;margin-bottom:-1px;cursor:pointer;color:#0069ca;line-height:16px}.ecl-tour-list-ui-city .ecl-tour-list-ui-city-labels .ecl-tour-list-ui-city-active{background-color:#e8edf1}.ecl-tour-list-ui-city .ecl-tour-list-ui-city-panels li{display:none;float:left;line-height:18px}.ecl-tour-list-ui-city .ecl-tour-list-ui-city-panels .ecl-tour-list-ui-city-active{display:block}
.ecl-tour-list-ui-city .ecl-tour-list-ui-city-panels a{color:#555;width:70px;display:inline-block;float:left;padding:5px 0;text-align:center;text-decoration:none}.ecl-tour-list-ui-pager{display:inline-block;text-align:center;zoom:1}.ecl-tour-list-ui-pager a{display:inline-block;_display:inline;border:1px solid #d5d5d5;background:#fdfdfd;overflow:hidden;*zoom:1;padding:2px 5px;margin:0 1px;color:#00c;text-decoration:none;font:normal 12px Arial,Helvetica,sans-serif;text-align:center;vertical-align:middle}.ecl-tour-list-ui-pager a:hover{background-color:#eff4fa}
.ecl-tour-list-ui-pager a.ecl-tour-list-ui-pager-ellipsis{border:0 none;color:#333}.ecl-tour-list-ui-pager .ecl-tour-list-ui-pager-current{border:0 none;color:#333;cursor:default}.ecl-tour-list-ui-pager a em{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/icon_sprites.gif) no-repeat;padding:0 4px;background-position:-36px -11px;*background-position:-36px -10px;line-height:14px;*line-height:15px;text-decoration:none}.ecl-tour-list-ui-pager a.ecl-tour-list-ui-pager-current:hover,.ecl-tour-list-ui-pager a.ecl-tour-list-ui-pager-ellipsis:hover,.ecl-tour-list-ui-pager a.ecl-tour-list-ui-pager-disabled:hover{background:0}
.ecl-tour-list-ui-pager a em.ecl-tour-list-ui-pager-icon-r{background-position:-48px -11px;*background-position:-48px -10px}.ecl-tour-list-ui-pager a.ecl-tour-list-ui-pager-disabled{color:#999;cursor:default;display:none}.ecl-tour-list-main{width:600px;font-size:12px}.ecl-tour-list-main h4.ecl-tour-list-mu{margin:0 0 10px;padding:0;font-size:16px;font-weight:normal;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.ecl-tour-list-main h4.ecl-tour-list-mu a{text-decoration:underline}.ecl-tour-list-main h4.ecl-tour-list-mu a em{text-decoration:underline}
.ecl-tour-list-main strong{font-size:inherit;font-weight:normal}.ecl-tour-list-main h4,.ecl-tour-list-main h5{margin:0;padding:0;font-weight:normal;line-height:inherit;font-size:inherit}.ecl-tour-list-main h6{margin-top:10px;font-size:12px;font-weight:400}.ecl-tour-list-main h6 a{text-decoration:underline;color:#77c}.ecl-tour-list-main h6 a b{font-weight:normal;font-style:normal;font-family:simsun}.ecl-tour-list-border{border:1px solid #f6f6f6}.ecl-tour-list-empty-value{color:#bababa}.ecl-tour-list-hide,.ecl-tour-list-cond-hide{display:none!important}
.ecl-tour-list-query{height:26px;line-height:26px;padding:9px 0 9px 9px;margin-bottom:0;background:#fdfdfd}.ecl-tour-list-item{float:left;padding-right:20px}.ecl-tour-list-item h5{float:left;margin-right:10px}.ecl-tour-list-item b{width:17px;height:17px;margin-top:3px;float:left;cursor:pointer}.ecl-tour-list-item-last{padding-right:10px}.ecl-tour-list-input{float:left;border:1px solid #b5b5b5;background:#FFF}.ecl-tour-list-input input{float:left;padding-left:5px;height:24px;line-height:24px;border:0;outline:0;font-size:12px}
.ecl-tour-list-departure-wrap{float:left;height:24px;line-height:24px;width:86px;*width:80px;border:1px solid #d8d8d8;border-top-color:#999;border-left-color:#b2b2b2;background:#fff;cursor:pointer}.ecl-tour-list-departure-wrap span{float:left;padding-left:6px;width:58px;*width:52px;height:24px;line-height:24px}.ecl-tour-list-departure-wrap i{float:left;color:#bfbfbf;font-style:normal;border-left:1px solid #d9d9d9;width:18px;height:24px;line-height:24px;text-indent:-9999px;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/edu/img/city-triangle.png) no-repeat center center}
.ecl-tour-list-input b{border:0;background:0;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/hotel_btn.png) 0 0 no-repeat;overflow:hidden}.ecl-tour-list-dist{width:285px}.ecl-tour-list-dist input{width:265px;*width:259px}.ecl-tour-list-dist .ecl-tour-list-layer{width:285px}.ecl-tour-list-dist .ecl-tour-list-layer li{padding:5px;list-style:outside none}.ecl-tour-list-dist .ecl-tour-list-layer .ecl-tour-list-li{border-top:1px dotted #d0d0d0}.ecl-tour-list-dist .ecl-tour-list-layer strong{margin:0;color:#333;font-size:13px;font-weight:bold}
.ecl-tour-list-dist .ecl-tour-list-layer a{color:#666;margin-right:20px;display:inline-block;cursor:pointer;text-decoration:none}.ecl-tour-list-dist .ecl-tour-list-layer a:hover{color:#ff6c00}.ecl-tour-list-ui-city-panels a{color:#666}.ecl-tour-list-ui-city-panels a:hover{color:#ff6c00}.ecl-tour-list-submit{float:left;margin:0;border:0;padding:0;width:82px;line-height:26px;height:26px;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/button_sprites.png) no-repeat;overflow:hidden;text-align:center;text-decoration:none;color:#000;cursor:pointer;-moz-user-select:none;-webkit-user-select:none;-ms-user-select:none;-khtml-user-select:none;user-select:none}
.ecl-tour-list-submit.ecl-tour-list-submit-hover{background-position:-84px 0}.ecl-tour-list-submit.ecl-tour-list-submit-press{background-position:-168px 0}.ecl-tour-list-layer{position:absolute;zoom:1;left:-10000px;margin-left:-1px;border:#d0d0d0 solid 1px;background:#fff;z-index:10;color:#666;line-height:20px}.ecl-tour-list-layer ul{padding:6px 0}.ecl-tour-list-layer li span{cursor:pointer}.ecl-tour-list-filter-form{position:relative}.ecl-tour-list-filter-form h6{position:absolute;z-index:5;width:70px;height:16px;right:2px;top:0;margin-top:3px;line-height:16px;cursor:pointer;color:#00c}
.ecl-tour-list-filter-form h6 b{display:inline-block;vertical-align:top;width:10px;height:10px;margin-left:4px;overflow:hidden;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/icon_sprites.gif) no-repeat;background-position:0 0;padding:0 1px}.ecl-tour-list-filter-form h6.ecl-tour-list-expanded b{background-position:-24px 0}.ecl-tour-list-filter-form div{padding-left:9px;line-height:20px;width:589px;height:21px;padding-bottom:9px;background:#fdfdfd;position:relative}.ecl-tour-list-filter-form div h5{float:left;width:65px;margin-top:1px;font-weight:bold;font-size:12px}
.ecl-tour-list-filter-form div p{width:500px;float:left}.ecl-tour-list-filter-form div p span{float:left;margin:5px 5px 0;width:1px;height:12px;line-height:12px;background:#d8d8d8;text-indent:-99999px}.ecl-tour-list-filter-form div label{float:left;line-height:16px;margin:2px 0 0;padding:0 3px;border-radius:1px;text-align:center;cursor:pointer;background:0;color:#00c;border:1px solid #fdfdfd}.ecl-tour-list-filter-form div label:hover,.ecl-tour-list-filter-form div label.ecl-tour-list-hover{text-decoration:underline}
.ecl-tour-list-filter-form div label input{display:none}.ecl-tour-list-filter-form div label.ecl-tour-list-checked{background:#67a5eb;border-color:#418ce5;color:#FFF;text-decoration:none}.ecl-tour-list-filter-form div label.ecl-tour-list-disabled{cursor:default;background:0;border-color:#fdfdfd;color:#666;text-decoration:none}.ecl-tour-list-content{border-top:1px solid #f5f5f5;padding:1px 9px 0;color:#333}.ecl-tour-list-content a{text-decoration:none}.ecl-tour-list-content a:hover{text-decoration:underline}
.ecl-tour-list-content-more{border-top:0;padding-top:0}.ecl-tour-list-content-trigger{height:28px;line-height:28px;border:1px solid #ebebeb;background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/button_sprites.png) 0 -100px repeat-x;color:#666;text-align:center;cursor:pointer;margin-top:-2px;*margin-top:-5px}.ecl-tour-list-content-trigger b{background:url(http://s1.bdstatic.com/r/www/cache/biz/ecom/hotel/img/icon_sprites.gif) no-repeat;background-position:2px 1px;padding:0 4px;margin-left:7px}
.ecl-tour-list-content li{height:89px;padding-top:10px;border-bottom:1px solid #f5f5f5;overflow:hidden}.ecl-tour-list-content li.last{border-bottom:0;margin-bottom:0}.ecl-tour-list-content li.ecl-tour-list-nodata{border:0 none;height:auto;padding:25px 0;text-align:center}.ecl-tour-list-img,.ecl-tour-list-intro,.ecl-tour-list-price{float:left}.ecl-tour-list-img{width:105px;height:75px;position:relative;margin-right:10px}.ecl-tour-list-img a{display:block}.ecl-tour-list-img b{position:absolute;top:0;left:0;display:block;width:103px;height:73px;border:1px solid #000;opacity:.1;filter:alpha(opacity=10)}
.ecl-tour-list-img i{display:block;width:100%;height:20px;background:#000;position:absolute;z-index:9;bottom:0;left:0;opacity:.5;filter:alpha(opacity=50)}.ecl-tour-list-img h6{margin:0;padding:0;position:absolute;z-index:10;bottom:0;_bottom:-1px;left:0;width:100%;height:20px}.ecl-tour-list-img h6 a{display:block;padding-left:10px;width:100%;height:20px;line-height:20px;color:#fff;text-decoration:none;font-size:12px;font-weight:normal}.ecl-tour-list-img h6 a:hover{text-decoration:none}.ecl-tour-list-img a,.ecl-tour-list-img img{width:105px;height:75px;border:0}
.ecl-tour-list-intro{width:380px;font-size:13px}.ecl-tour-list-intro h5{margin:0;padding:0;margin-bottom:2px;line-height:18px;font-weight:normal;font-size:14px;width:26em}.ecl-tour-list-intro h5 a{text-decoration:none;color:#00c;word-wrap:break-word;word-break:break-all}.ecl-tour-list-intro h5 a:hover{text-decoration:underline}.ecl-tour-list-intro h5 a:hover em{text-decoration:underline}.ecl-tour-list-intro h5 a em{text-decoration:none}.ecl-tour-list-intro h5 i{white-space:nowrap;font-style:normal;font-size:12px;color:#666}
.ecl-tour-list-intro p{height:20px;overflow:hidden;line-height:20px;word-wrap:break-word;word-break:break-all;color:#333}.ecl-tour-list-intro p span{color:#666}.ecl-tour-list-price{width:83px;padding-right:0;margin-top:10px}.ecl-tour-list-price em{display:block;margin-right:10px;text-align:right;font-weight:bold;color:#ff6c00;font-size:13px}.ecl-tour-list-link{margin-left:16px;margin-top:12px;overflow:hidden;display:block;width:66px;height:24px;line-height:24px;color:#666;text-align:center;color:#FFF;background:#3da1fd url("http://s1.bdstatic.com/r/www/cache/biz/ecom/airticket/agency.gif") 0 -50px no-repeat}
.ecl-tour-list-link:hover{text-decoration:none!important}.ecl-tour-list-pg{background:#fff;padding-bottom:10px;text-align:center}.ecl-tour-list-sug-main{position:absolute;zoom:1;left:-10000px;z-index:10;margin-left:-1px;margin-top:4px}.ecl-tour-list-sug-main ul{border:#d0d0d0 solid 1px;background:#fff;line-height:20px;color:#414141;cursor:pointer;font-size:12px;width:285px}.ecl-tour-list-sug-current{background-color:#36c;color:#fff}.ecl-tour-list-sug li{padding:0 5px;white-space:nowrap;width:275px;overflow:hidden}
.ecl-tour-list-sug-append,.ecl-tour-list-sug-prepend{display:none}.ecl-tour-list-ui-pager{margin-top:10px}
</style>

{%*点击统计*%} 
{%$sessionid=$extData.sessionID%}
{%$subqid=$extData.subqid%}
{%$sid=$extData.sid%}
{%$pssid=$extData.pssid%}
{%$type=$extData.type%}

{%if $tplData.from%}{%$departure = $tplData.from%}{%else%}{%$departure = '北京'%}{%/if%}

<div class="ecl-tour-list-main" data-click='{"tour_sessionid":"{%$sessionid|escape:"html"%}","tour_subqid":"{%$subqid|escape:"html"%}","tour_sid":"{%$sid|escape:"html"%}"}'>

<h4 class="ecl-tour-list-mu"><a title="{%$departure|escape:'html'%}到{%$tplData.to|escape:'html'%}旅游攻略 特色旅游线路  去哪儿提供" target="_blank" href="{%$tplData.mainUrl|escape:'html'%}" data-click="{'rsv_tour_opt':'title'}">{%$departure|escape:'html'%}到<em>{%$tplData.to|escape:'html'%}旅游</em>攻略&nbsp;&nbsp;特色旅游线路&nbsp;&nbsp;去哪儿提供</a></h4>

<div class="ecl-tour-list-border">

    <form class="ecl-tour-list-query ecl-tour-list-form" data-click="{'fm':'beha'}" onsubmit="return false;">
        <div class="ecl-tour-list-item">
            <h5>出发地</h5>
            <div class="ecl-tour-list-departure-wrap OP_LOG_BTN">
                <span>{%$departure|escape:'html'%}</span><i>▼</i>
            </div>
            <div class="ecl-tour-list-cities OP_LOG_OTHERS"></div>
        </div>
        <div class="ecl-tour-list-item ecl-tour-list-item-last">
            <h5>目的地</h5>
            <div class="ecl-tour-list-input ecl-tour-list-dist">
                <input autocomplete="off" type="text" maxlength="30" value="{%$tplData.to|escape:'html'%}" data-placeholder="请输入目的地" />
                <b data-query="dist" class="OP_LOG_BTN"></b>
                <div class="ecl-tour-list-layer ecl-tour-list-hide-layer">
                    {%foreach $tplData.destList as $destList%}
                        {%if !is_string($destList)%}
                        <li>
                            <strong>{%$destList['title']|escape:'html'%}</strong>
                            <p>
                                {%foreach $destList['list'] as $item%}
                                <a href="#">{%$item|escape:'html'%}</a>
                                {%/foreach%}
                            </p>
                        </li>
                        {%else%}
                            {%if $destList@first%}
                            <li>
                                <strong>热门搜索：</strong>
                                <p>
                            {%/if%}
                                <a href="#">{%$destList|escape:'html'%}</a>
                            {%if $destList@last%}
                                </p>
                            </li>
                            {%/if%}
                        {%/if%}
                    {%/foreach%}
                </div>
            </div>
        </div>
        <input type="submit" class="ecl-tour-list-submit OP_LOG_BTN" value="快速查询" data-click="{'rsv_tour_opt':'query'}" /> 
    </form>

    <form class="ecl-tour-list-filter-form" onsubmit="return false;" data-click="{'rsv_tour_opt':'filter','fm':'beha'}">
        <h6 class="OP_LOG_BTN">更多筛选<b></b></h6>
        <div data-filter="type">
            <h5>游玩方式:</h5>
            <p>
                <label class="OP_LOG_OTHERS ecl-tour-list-checked"><input type="radio" name="type" value="" />不限</label>
                {%foreach $tplData.filter['type'] as $item%}
                <span>|</span>
                <label class="OP_LOG_OTHERS {%if !$item['status']%} ecl-tour-list-disabled{%/if%}"><input type="radio" name="type" value="{%$item['value']|escape:'html'%}"  {%if !$item['status']%}disabled="disabled"{%/if%}/>{%$item['name']|escape:'html'%}</label>
                {%/foreach%}
            </p>
        </div>
        <div class="ecl-tour-list-hide" data-filter="day">
            <h5>行程天数:</h5>
            <p>
                <label class="OP_LOG_OTHERS ecl-tour-list-checked"><input type="radio" name="day" value="" />不限</label>
                {%foreach $tplData.filter['day'] as $item%}
                <span>|</span>
                <label class="OP_LOG_OTHERS {%if !$item['status']%} ecl-tour-list-disabled{%/if%}"><input type="radio" name="day" value="{%$item['value']|escape:'html'%}" {%if !$item['status']%}disabled="disabled"{%/if%} />{%$item['name']|escape:'html'%}</label>
                {%/foreach%}
            </p>
        </div>
        <div class="ecl-tour-list-hide" data-filter="price">
            <h5>价格区间:</h5>
            <p>
                <label class="OP_LOG_OTHERS ecl-tour-list-checked"><input type="radio" name="price" value="" />不限</label>
                {%foreach $tplData.filter['price'] as $item%}
                <span>|</span>
                <label class="OP_LOG_OTHERS {%if !$item['status']%} ecl-tour-list-disabled{%/if%}"><input type="radio" name="price" value="{%$item['value']|escape:'html'%}" {%if !$item['status']%}disabled="disabled"{%/if%} />{%$item['name']|escape:'html'%}</label>
                {%/foreach%}
            </p>
        </div>
    </form>


    {%$maxcount=count($tplData.list)%}
    <ul class="ecl-tour-list-content">
        {%foreach $tplData.list as $index=>$item%}
        <li class="{%if $index==$maxcount-1 %}last{%/if%}" data-click="{'tour_data':'id:{%$item['lineid']|escape:"html"%}','tour_optPos':'{%$index+1%}'}">
            <div class="ecl-tour-list-img">
                <a target="_blank" class="EC_ZHIXIN" href="{%$item['url_img']|escape:'html'%}" data-click="{'rsv_tour_opt':'list_img'}"><img width="105" height="75" src="{%$item['imgSrc']|escape:'html'%}" /><b></b></a>
                <i></i>
                <h6><a target="_blank" class="EC_ZHIXIN" href="{%$item['url_img']|escape:'html'%}" data-click="{'rsv_tour_opt':'list_img'}">{%$item['type']|escape:'html'%}</a></h6>
            </div>
            <div class="ecl-tour-list-intro">
                <h5>
                    <a target="_blank" class="EC_ZHIXIN" href="{%$item['url_text']|escape:'html'%}" data-click="{'rsv_tour_opt':'list_tit'}">{%$item['title']|escape:'html'|highlight:0%}</a> 
                    <i>{%$item['travelDesc']|escape:'html'%}</i>
                </h5>
                <p><span>出发日期：</span>{%$item['depDate']|escape:'html'%}</p>
                <p class="OP_LOG_OTHERS" data-click="{'rsv_tour_opt':'list_agency'}"><span>供应商：</span>{%$item['supplier']|escape:'html'%}</p>
            </div>
            <div class="ecl-tour-list-price">
                <em>{%if $item['line_price']%}¥{%$item['line_price']|escape:'html'%}起{%else%}暂无报价{%/if%}</em>
                <a target="_blank" class="ecl-tour-list-link EC_ZHIXIN" href="{%$item['url_button']|escape:'html'%}" data-click="{'rsv_tour_opt':'list_btn'}">查看详情</a>
            </div>
        </li>
        {%/foreach%}
    </ul>

    <div class="ecl-tour-list-pg{%if $tplData.totalPage<2%} ecl-tour-list-hide{%/if%}" data-click="{'fm':'beha'}">
        <div class="ecl-tour-list-ui-pager" data-click="{'rsv_tour_opt':'pager'}"></div>
    </div>
</div>

</div>
<script data-compress="off">
A.setup( 'ZHIXIN_TOUR_LEFT', {
    SIGN_TIME: '{%$tplData.signtime|escape:"html"%}',
    URL_GET_LIST: '/ecomui/travel?controller=Bws&action=index',
    URL_GET_DESTINATION: '/ecomui/travel?controller=Bws&action=city',
    URL_RECEIPT: '/ecomui/travel?controller=Bws&action=ajaxid',
    FROM: '{%if $tplData.from%}{%$tplData.from|escape:"html"%}{%else%}北京{%/if%}',
    TO: '{%$tplData.to|escape:"html"%}',
    FROM_ID: '{%$tplData.fromid|escape:"html"%}',
    PAGE: +'{%$tplData.page|escape:"html"%}',
    TOTAL_PAGE: +'{%$tplData.totalPage|escape:"html"%}',
    OPTIONS: '{%$tplData.filterString|escape:"js"%}',
    ORIGIN_QUERY: '{%$extData.OriginQuery|escape:"html"%}',
    SESSION_ID: '{%$sessionid|escape:"javascript"%}',
    STATS_SUBQID: '{%$subqid|escape:"javascript"%}',
    STATS_SID: '{%$sid|escape:"javascript"%}',
    STATS_PSSID: '{%$pssid|escape:"javascript"%}',
    TOKEN: '{%$tplData.token|escape:"html"%}'
} );
</script>

<script type="text/javascript">
A.init( function() {
    var T = A.baidu;
    var card = this;
    var TPLDATA = card.data.ZHIXIN_TOUR_LEFT;

    // AMD加载的config配置路径
    require.config({
        paths : {
            // 'ecom/ui': 'http://dev005.baidu.com:8888/ecomtpl-branch-fix/ecom_8-0-0_BRANCH/src/common/ui/20130522'
            'ecom/ui': 'ecom/ui/20130523-1'
            // 'ecom/ui/city': 'ecom/ui/20130522/city'
        }
    });
    var Anti=function(n){function e(e){var t=window.event||e;for(T=t.target||t.srcElement;T&&"A"!=T.tagName;)if(T=T.parentNode,T===n)return!1;E=(new Date).getTime(),f=9999,v=t.clientX,d=t.clientY,s=g?E-g:0,i()&&o()}function t(){l=(new Date).getTime(),f=l-E,i()&&o()}function r(n){var e=window.event||n;L+=1,w||(w=e.clientX),m||(m=e.clientY),g=(new Date).getTime()}function i(){if(u=0,h=/\?url\=([^\.]+)\./.exec(T.href)){for(var n=0;L*A%99+9>n;++n)u+=h[1].charCodeAt(f*n%h[1].length);return!0}return!1}function o(){var n="&ck="+[u,L,f,v,d,w,m,s].join(".");
if(T.href){var e=T.href;-1==e.indexOf("&ck=")?T.href+=n:T.href=e.replace(/&ck=[\w.]*/,n)}}function a(e,t){for(var r,i=0;r=e[i];i++)window.attachEvent?n.attachEvent("on"+r,t[i]):window.addEventListener?n.addEventListener(r,t[i],!1):n["on"+r]=t[i],k[r]=t[i]}function c(e){for(var t,r=0;t=e[r];r++)window.detachEvent?n.detachEvent("on"+t,k[t]):window.addEventListener?n.removeEventListener(t,k[t],!1):n["on"+t]=function(){}}var u,f,v,d,w,m,s,h,E,g,l,T,p="EC_ZHIXIN",A=0,L=0;f=v=d=w=m=s=h=E=g=l=T=0;var k={};return{getAntiTag:function(){return p
},setTimesign:function(n){A=n},bind:function(){a(["mouseover","mousedown","mouseup"],[r,e,t])},unbind:function(){c(["mouseover","mousedown","mouseup"])}}};

    var cardAnti = new Anti(card.qq('ecl-tour-list-content'));
    cardAnti.bind();
    cardAnti.setTimesign(TPLDATA.SIGN_TIME);

    var common=function(){function t(t,e){return t?t.getElementsByTagName(e)||[]:[]}function e(){this.events={}}function n(t,e){var n={};for(var r in t)n["tour_"+r]=t[r];var o=T.json.stringify(n).replace(/"/g,"'");return e?o:'data-click="'+o+'"'}var r={},o="ecl-tour-list";r.getClass=function(t){return t=t||"",o+"-"+t};var s=[];r.addIniter=function(t){s.push(t)},r.init=function(){for(var t=0,e=s.length;e>t;t++){var n=s[t];"function"==typeof n&&n()}},r.queryByClass=function(t){return t=common.getClass(t),card.q(t)[0]
},r.getTags=t,r.getInput=function(e){return t(common.queryByClass(e),"input")[0]},r.prev=function(t){for(t=t.previousSibling;t;){if(1==t.nodeType)return t;t=t.previousSibling}return t},r.last=function(t){for(var t=t.lastChild;t;){if(1==t.nodeType)return t;t=t.previousSibling}return t},r.request=function(t,e,n){e=e||new Function,n=n||new Function,T.ajax.request(t,{onsuccess:function(t,r){var o={status:-1,statusInfo:t.statusText};if(!r)return n(-1,o),void 0;try{o=T.json.parse(r)}catch(s){return n(-1,o),void 0}if(o.status)return n(o),void 0;
var i=o.data;e(i,o)},onfailure:function(t){var e={status:t.status,statusInfo:t.statusText};n(t.status,e)}})};var i=TPLDATA.serverTime;return r.now="undefined"==typeof i?new Date:new Date(i),r.showLayer=function(t,e,n){var o=e.offsetHeight,s=e.offsetWidth,i=T.dom.getPosition(e),a={};a.top=i.top+o+2,6==T.browser.ie&&(a.top-=7),n&&"left"!=n?"right"==n&&(a.left=i.left+s-t.offsetWidth):a.left=i.left,t.style.left=a.left+"px",t.style.top=a.top+"px",T.removeClass(t,r.getClass("hide-layer"))},r.hideLayer=function(t){T.addClass(t,r.getClass("hide-layer")),t.style.left="-10000px"
},r.toggleLayer=function(t,e,n){var o="hideLayer";T.dom.hasClass(t,r.getClass("hide-layer"))&&(o="showLayer"),r[o](t,e,n)},r.scrollToDom=function(t){t&&t.scrollIntoView()},r.afterDays=function(t,e){return new Date(t.getFullYear(),t.getMonth(),t.getDate()+e)},e.prototype={constructor:e,on:function(t,e){this.events[t]instanceof Array||(this.events[t]=[]),this.events[t].push(e)},un:function(t,e){for(var n=this.events[t],r=n instanceof Array&&n.length;r--;)n[r]===e&&n.splice(r,1)},fire:function(t,e){var n=this.events[t],r=this;
n instanceof Array&&T.each(n,function(t){"function"==typeof t&&t.call(r,e)})}},r.Observable=e,r.getStatsAttr=n,r}();common.addIniter(function(){common.request(""+TPLDATA.URL_RECEIPT+"&subqid="+TPLDATA.STATS_SUBQID+"&qid="+TPLDATA.SESSION_ID+"&token="+TPLDATA.TOKEN)});
    var CITY_MAP={"北京":"119","长沙":"891","常州":"620","成都":"708","重庆":"117","大连":"1150","福州":"679","广州":"1079","桂林":"1126","贵阳":"735","哈尔滨":"1137","杭州":"613","合肥":"692","济南":"649","昆明":"743","兰州":"1023","南昌":"632","南京":"617","南宁":"1128","宁波":"609","青岛":"650","三亚":"1097","上海":"110","沈阳":"1162","深圳":"1078","石家庄":"836","苏州":"619","太原":"799","天津":"122","温州":"611","武汉":"905","乌鲁木齐":"1049","无锡":"621","厦门":"683","香港":"127","张家界":"901","郑州":"925"};
    var tourQuery=function(){function e(){s=TPLDATA.FROM,c=TPLDATA.TO,departureId=TPLDATA.FROM_ID}function t(){var e=g("dist"),t=e.getAttribute("data-placeholder"),n=e.value;return n==t&&(n=""),c=n,{from:s,fromid:departureId,to:c}}function n(){var e=m("submit");T.on(e,"click",r),T.on(e,"mouseover",function(){T.addClass(this,d("submit-hover"))}),T.on(e,"mouseout",function(){T.removeClass(this,d("submit-hover")),T.removeClass(this,d("submit-press"))}),T.on(e,"mousedown",function(){T.addClass(this,d("submit-press"))
}),T.on(e,"mouseup",function(){T.removeClass(this,d("submit-press"))}),e=null}function o(){T.on(m("query"),"submit",r)}function r(){f&&clearTimeout(f),f=setTimeout(function(){l.fire("change",t())},200)}function i(){require(["ecom/ui/city"],function(e){var t=m("departure-wrap"),n={x:0,y:1};T.browser.ie<7&&(n.y=-5),v=new e({prefix:d("ui-city"),triggers:d("departure-wrap"),main:common.queryByClass("cities"),target:t,offset:n,onPick:function(e){s=e.value,departureId=CITY_MAP[s];var t=common.getTags(m("departure-wrap"),"span")[0];
t.innerHTML=s}}),v.fill(["热门|北京,天津,武汉,南京,郑州,上海,杭州,宁波,厦门,苏州,广州,深圳,昆明,长沙,重庆,成都,青岛,西安,无锡,常州","A-G|北京,长沙,常州,成都,重庆,大连,福州,广州,桂林,贵阳","H-L|哈尔滨,杭州,合肥,济南,昆明,兰州","M-T|南昌,南京,南宁,宁波,青岛,三亚,上海,沈阳,深圳,石家庄,苏州,太原,天津","W-Z|温州,武汉,乌鲁木齐,无锡,厦门,西安,香港,张家界,郑州"]),v.render()})}function u(){function e(e){""==e.value?(e.value=o,T.addClass(e,n)):T.removeClass(e,n)}var t=g("dist"),n=common.getClass("empty-value"),o=t.getAttribute("data-placeholder");t.onfocus=function(){var e=this,t=e.value;t==o?(e.value="",T.removeClass(e,n)):setTimeout(function(){e.select()
},1)},t.onblur=function(){e(this)};var r=t.getAttribute("maxlength");T.on(t,"keyup",function(){var e=this.value,t=function(e){return e.replace(/[^\x00-\xFF]/g,"aa").length},n=t(e);if(!(r>=n)){do e=e.substr(0,e.length-1);while(t(e)==r);this.value=e}}),b(t),T.on(document,"click",function(e){var t=T.event.getTarget(e),n=g("dist"),o=a(n),r=T.dom.next(o);t==o?common.toggleLayer(r,n):common.hideLayer(r)}),T.on(T.dom.next(a(t)),"click",function(e){var t=T.event.getTarget(e);"A"==t.tagName&&(T.event.preventDefault(e),T.removeClass(g("dist"),n),c=t.innerHTML,g("dist").value=c,g("dist").focus())
}),e(t),t=null}function a(e){return T.dom.next(e)}var s,c,l=new common.Observable,m=common.queryByClass;common.addIniter(function(){e(),i(),u(),n(),o()}),l.get=t;var f,v,d=common.getClass,g=common.getInput,h={},p=function(e,t){var n=t.replace(new RegExp(e,"i"),"<em>"+e+"</em>");return{content:n,value:t.replace(/\([^)]*\)/,"")}},y=function(e,t){var n=this;if(!e.length||e===c&&!h[e])return!1;if("请输入目的地"===e)return!1;if(!t&&(t=function(){}),h[e])return n.show(e,h[e]),!1;var o=TPLDATA.URL_GET_DESTINATION;o+=(o.indexOf("?")>-1?"&":"?")+"city=#{0}&t=#{1}",o=T.format(o,encodeURIComponent(e),+new Date);
var r=[],i=0;common.request(o,function(o){var u=o.city;if(u.length){if(e!==g("dist").value)return!1;T.each(u,function(t){r[i++]=p(e,t)}),t(o),h[e]=r,n.show(e,r)}else n.hide()},function(){t([])})},b=function(e){require(["ecom/ui/suggestion"],function(t){var n=new t({skin:d("sug"),getData:y,view:function(e){return e.left=e.left-1,e},onpick:function(e){c=e.data.item.value},onhide:function(){}});n.render(e),e=null})};return l}();
    var FILTER_OPTION_FIXED_TPL='<label class="OP_LOG_OTHERS #{styles}"><input type="radio" name="#{key}" value="" #{checked} />不限</label>',FILTER_OPTION_TPL='<span>|</span><label class="#{styles} OP_LOG_OTHERS"><input type="radio" name="#{key}" value="#{value}" #{disabled} #{checked} />#{name}</label>',HIDE_CLASS=common.getClass("hide"),tourFilter=function(){function e(e){var t=e.key,a=e.value[0];o[t]=a,tourFilter.fire("change",{data:r(),by:t})}function t(e,t,r){var a,i=e.getAttribute("data-filter"),n=common.last(e),s=[],o=t.length,l="";
r||(a=common.getClass("checked"),l=' checked="checked"'),s.push(T.format(FILTER_OPTION_FIXED_TPL,{key:i,styles:a,checked:l}));for(var c=0;o>c;c++)a=[],t[c].status||(a.push(common.getClass("disabled")),t[c].disabled=' disabled="disabled"'),t[c].value==r&&(a.push(common.getClass("checked")),t[c].checked=' checked="checked"'),t[c].styles=a.join(" "),t[c].key=i,s.push(T.format(FILTER_OPTION_TPL,t[c]));n.setAttribute("data-value",r||""),n.innerHTML=s.join("")}function r(){return{type:o.type||"",day:o.day||"",price:o.price||""}
}function a(){var e=common.getTags;return e(u("filter-form"),"h6")[0]}function i(){T.on(a(),"click",n)}function n(){var e="addClass",t="收起筛选<b></b>";g?(g=0,e="removeClass",t="更多筛选<b></b>"):g=1,T[e](a(),common.getClass("expanded")),a().innerHTML=t,s()}function s(){var e=common.getTags(u("filter-form"),"div");T.each(e,function(e,t){var r=g?"removeClass":"addClass";t>0?T[r](e,HIDE_CLASS):T.removeClass(e,HIDE_CLASS)})}var o,l,c=new common.Observable,u=common.queryByClass;common.addIniter(function(){o={type:"",day:"",price:""},require(["ecom/ui/filter"],function(t){l=new t({prefix:"ecl-tour-list-filter",disabledClass:common.getClass("disabled"),checkedClass:common.getClass("checked"),main:u("filter-form"),groups:"p",onChange:e}),l.render()
}),i(),T.on(u("filter-form"),"mouseover",function(e){var t=T.event.getTarget(e);"LABEL"==t.tagName&&T.addClass(t,common.getClass("hover"))}),T.on(u("filter-form"),"mouseout",function(e){var t=T.event.getTarget(e);"LABEL"==t.tagName&&T.removeClass(t,common.getClass("hover"))})}),c.render=function(e,a){e=e||{};var i=r();T.each(common.getTags(u("filter-form"),"div"),function(r){var n=r.getAttribute("data-filter"),s=e[n];s?(t(r,s,i[n]),T.removeClass(r,HIDE_CLASS)):!a&&T.addClass(r,HIDE_CLASS)}),s(),l.render()},c.get=r,c.reset=function(){o={type:"",day:"",price:""}
};var g,d=u("filter-form");return c.hide=function(){T.addClass(d,HIDE_CLASS)},c.show=function(){T.removeClass(d,HIDE_CLASS)},c}(),TOUR_LIST_ITEM_TPL='<li class="#{styles}" #{stats}><div class="ecl-tour-list-img"><a target="_blank" class="EC_ZHIXIN" href="#{url_img}" data-click="{\'rsv_tour_opt\':\'list_img\'}"><img width="105" height="75" src="#{imgSrc}" /><b></b></a><i></i><h6><a target="_blank"  class="EC_ZHIXIN" href="#{url_img}" data-click="{\'rsv_tour_opt\':\'list_img\'}">#{type}</a></h6></div><div class="ecl-tour-list-intro"><h5><a target="_blank" class="EC_ZHIXIN" href="#{url_text}" data-click="{\'rsv_tour_opt\':\'list_tit\'}">#{title}</a> <i>#{travelDesc}</i></h5><p><span>出发日期：</span>#{depDate}</p><p class="OP_LOG_OTHERS" data-click="{\'rsv_tour_opt\':\'list_agency\'}"><span>供应商：</span>#{supplier}</p></div><div class="ecl-tour-list-price"><em>#{line_price}</em><a target="_blank" class="ecl-tour-list-link EC_ZHIXIN" href="#{url_button}" data-click="{\'rsv_tour_opt\':\'list_btn\'}">查看详情</a></div></li>',tourList=function(){function e(){}function t(e){var t=[],r=e&&e.length||0;
if(r){for(var a,i=0;a=e[i];i++)a.line_price=a.line_price?"¥"+a.line_price+"起":"暂无报价",a.desc=a.desc?a.desc:"暂无介绍",a.stats=common.getStatsAttr({data:"id:"+a.lineid,optPos:i+1})||"",a.styles=[],i==r-1&&a.styles.push("last"),a.styles=a.styles.join(" "),t[i]=T.format(TOUR_LIST_ITEM_TPL,a);t=t.join("")}else t='<li class="ecl-tour-list-nodata">没有找到满足条件的旅游线路。您可以尝试更改搜索条件重新搜索！</li>';n("content").innerHTML=t;var s=n("content-more");s&&s.innerHTML&&(s.innerHTML="")}var r,a,i=new common.Observable,n=common.queryByClass;return common.addIniter(function(){a=0,require(["ecom/ui/pager"],function(e){r=new e({main:n("ui-pager"),page:TPLDATA.PAGE-1,total:TPLDATA.TOTAL_PAGE,prefix:common.getClass("ui-pager"),showAlways:0,lang:{prev:'<em class="ecl-tour-list-ui-pager-icon-l">&nbsp;</em>上一页',next:'下一页<em class="ecl-tour-list-ui-pager-icon-r">&nbsp;</em>',ellipsis:"..."}}),r.on("change",function(e){this.setPage(e.page),this.render(),i.fire("change",{page:e.page}),common.scrollToDom(n("mu"))
}),r.render()})}),i.trigger=e,i.render=t,i.get=function(){return{page:r&&r.getPage()||0}},i.setPager=function(e){if(r){r.setPage(e.page),r.total=e.totalPage,r.render();var t="addClass";e.totalPage>0&&(t="removeClass"),T[t](n("pg"),HIDE_CLASS)}},i}(),tourData=function(){function e(){0==a&&tourList.trigger(),a=1}var t={},r={};t.getStatsData=function(e){var t=T.extend({},r);return e&&"object"==typeof e&&(t=T.extend(t,e)),t};var a=0;t.request=function(t,a){e(),t.sessionID=TPLDATA.SESSION_ID,t.originQuery=TPLDATA.ORIGIN_QUERY,t.pssid=TPLDATA.STATS_PSSID,t.subqid=r.subqid,t.t=(new Date).getTime();
var i=TPLDATA.URL_GET_LIST;i+=(i.indexOf("?")>-1?"&":"?")+T.url.jsonToQuery(t,function(e){return/[^\x00-\xFF]/.test(e)?encodeURIComponent(e):e}),common.request(i,function(e){r=T.extend(r,e.stats||{}),r.page=e.page,T.dom.setAttr(common.queryByClass("main"),"data-click",common.getStatsAttr(r,!0)),a(0,{list:e.list,filter:e.filter,count:e.total,signtime:e.signtime,pager:{page:e.page-1,totalPage:e.totalPage}})},function(e){a(e,{})})};var i={};return common.addIniter(function(){i=tourQuery.get(),r={sessionid:TPLDATA.SESSION_ID,subqid:TPLDATA.STATS_SUBQID,sid:TPLDATA.STATS_SID}
}),t.mergeOption=function(e,t,r){i=T.extend(i,e);var a=T.extend({},i);if(t)for(var n in t){var s="filter"+n.charAt(0).toUpperCase()+n.substr(1);a[s]=t[n]}return a.page=r.page,a},t}();tourQuery.on("change",function(e){var t={type:"",price:"",day:""};tourFilter.reset();var r={page:1},a=tourData.mergeOption(e,t,r);tourData.request(a,function(e,t){e?(t={},t.list=[],t.pager={page:0,totalPage:0},t.filter={},tourFilter.hide()):tourFilter.render(t.filter),t.count>0?tourFilter.show():tourFilter.hide(),tourList.render(t.list),tourList.setPager(t.pager)
})}),tourFilter.on("change",function(e){var t={},r={page:1},a=tourData.mergeOption(t,e.data,r);a.byFilter=e.by,tourData.request(a,function(e,t){e&&(t={list:[],filter:{},pager:{page:0,totalPage:0}}),tourList.setPager(t.pager||{}),tourList.render(t.list||[]),tourFilter.render(t.filter||{},!0)})}),tourList.on("change",function(e){var t=tourFilter.get(),r={};e.page=e.page+1;var a=tourData.mergeOption(r,t,e);tourData.request(a,function(e,t){e&&(t={list:[],filter:{},page:0,totalPage:0}),tourList.render(t.list),setTimeout(function(){cardAnti.setTimesign(t.signtime)
},0)})});

	common.init();
});
</script>
{%/block%}
