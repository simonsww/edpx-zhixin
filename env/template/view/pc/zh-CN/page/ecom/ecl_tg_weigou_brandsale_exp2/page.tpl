{%extends 'c_base.tpl'%}
{%block name="title"%}{%/block%}
{%block name="foot"%}{%/block%}
{%block name='content'%}
<style type="text/css">
.ecl-tg-brand{position:relative;padding:5px 10px 0 0;font-size:13px;font-family:arial}.ecl-tg-brand .brand-title{height:30px;margin:0;font-family:simsum,"宋体",'Arial','Sans';font-size:medium;color:#00C;font-weight:normal;line-height:1.54;position:relative;top:1px\9\0;*top:-1px}.ecl-tg-brand .brand-detail{margin:0 0 10px 0;height:auto;width:536px;overflow:hidden;position:relative;border:1px solid #e4e4e4;-moz-box-shadow:1px 2px 3px #e2e2e2;-webkit-box-shadow:1px 2px 3px #e2e2e2;-o-box-shadow:1px 2px 3px #e2e2e2;-icab-box-shadow:1px 2px 3px #e2e2e2;-khtml-box-shadow:1px 2px 3px #e2e2e2;background:#FFF;filter:progid:DXImageTransform.Microsoft.Shadow(Strength=3,Direction=135,Color="#E2E2E2")\9;-ms-box-shadow:1px 2px 3px #e2e2e2;box-shadow:1px 2px 3px #e2e2e2}
.ecl-tg-brand .brand-detail em{text-decoration:none}.ecl-tg-brand .brand-detail .item{border-bottom:1px solid #e3e3e3;margin:0 9px}.ecl-tg-brand .brand-detail .item .link{display:none;cursor:pointer;overflow:hidden;padding:10px 0 0 0;text-decoration:none;zoom:1}.ecl-tg-brand .brand-detail .item .link .detail-pic{position:relative;top:-5px;height:100px;width:120px;float:left;line-height:100px;display:table-cell;vertical-align:middle;text-align:center;*display:block;*font-size:100px;*font-family:Arial}.ecl-tg-brand .brand-detail .item .link .detail-pic img{vertical-align:middle;width:120px}
.ecl-tg-brand .brand-detail .item .link .detail-info{position:relative;left:11px;float:left;width:395px}.ecl-tg-brand .brand-detail .item .link .detail-info .info-title{font-size:18px;font-family:"Microsoft YaHei","微软雅黑","Microsoft JhengHei";font-weight:500;color:#333;line-height:21px;height:24px}.ecl-tg-brand .brand-detail .item .link .detail-info .info-title .wd{position:relative;color:#666;font-family:simsum,"宋体",'Arial','Sans';top:-2px;left:10px;text-decoration:none}
.ecl-tg-brand .brand-detail .item .link .detail-info .info-title .title-em{font-family:simsum,"宋体",'Arial','Sans';font-size:13px;display:inline-block;position:relative;top:-1px;left:9px;height:12px;padding:0 0 0 9px;border-left:1px solid #666;line-height:1;color:#666}.ecl-tg-brand .brand-detail .item .link .detail-info .info-desc{color:#333;font-family:simsum,"宋体",'Arial','Sans';margin-bottom:17px;height:30px;overflow:hidden;margin:0;position:relative;line-height:1.25}
.ecl-tg-brand .brand-detail .item .link .detail-info .info-desc .desc{display:inline-block;padding:0 0 0 13px}.ecl-tg-brand .brand-detail .item .link .detail-info .info-purchase{padding:0;outline:0;position:relative;height:38px}.ecl-tg-brand .brand-detail .item .link .detail-info .info-purchase .purchase-btn{display:inline-block;width:102px;height:34px;line-height:1000px;overflow:hidden;background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tg-brand-resource3.png") -4px -1px;position:absolute;z-index:1;top:5px;left:1px}.ecl-tg-brand .brand-detail .item .link .detail-info .info-purchase .purchase-btn:hover{background-position:-4px -34px}
.ecl-tg-brand .brand-detail .item .link .detail-info .info-purchase .purchase-btn:active{background-position:-4px -67px}.ecl-tg-brand .brand-detail .item .link .detail-info .info-purchase .info-extra{position:absolute;left:108px;top:6px}.ecl-tg-brand .brand-detail .item .link .detail-info .info-extra{float:left;clear:both;height:28px;padding-left:19px;line-height:30px;color:#6fba2b;width:200px;margin-bottom:3px;background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/game/ecl-game-download-button.png") 0 -111px no-repeat}.ecl-tg-brand .brand-detail .item .outline{display:block;height:auto;zoom:1;clear:both;position:relative;cursor:pointer;background:#fefefe}
.ecl-tg-brand .brand-detail .item .outline .title{text-decoration:none;line-height:36px;display:block;width:180px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;height:36px}.ecl-tg-brand .brand-detail .item .outline .source{position:absolute;top:11px;line-height:1.2;left:192px}.ecl-tg-brand .brand-detail .item .outline .time{position:absolute;right:2px;top:11px;line-height:1.2}.ecl-tg-brand .brand-detail .item .outline .discut{position:absolute;top:1px;line-height:20px;left:286px}.ecl-tg-brand .brand-detail .item .outline .discut em{padding-left:4px}
.ecl-tg-brand .brand-detail .item .discut{display:inline-block;padding:7px 0 0 2px}.ecl-tg-brand .brand-detail .item .discut em{font-size:16px;font-family:Arial;color:#ff8901;font-weight:bold;margin-right:4px}.ecl-tg-brand .brand-detail .item .time{display:inline-block;padding:0 0 0 21px;margin-left:10px;color:#666;background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/tuangou/ecl-tg-brand-resource3.png") -107px -4px no-repeat}.ecl-tg-brand .brand-detail .current .link{display:block}.ecl-tg-brand .brand-detail .current .outline{display:none}.ecl-tg-brand .brand-recommend{color:#666;font-family:simsum,"宋体",'Arial','Sans';left:-1px;position:relative;*top:-2px}
.ecl-tg-brand .brand-recommend a{color:#0000d5;display:inline-block;margin:0 8px 0 3px}.ecl-tg-brand .brand-showurl{color:#008000;margin:6px 0 0 1px}
</style>
{%strip%}
<div class="ecl-tg-brand">
    <h3 class="brand-title">
        <a target="_blank" data-click="{rsv_click_type:'title', 'fm': 'alop', 'rsv_click_value': '{%$tplData.list[0]['mid']%}'}" href="{%$tplData.title_info.url%}">{%$tplData.title_info.title%}</a>
    </h3>
    <div class="brand-detail" id="ecl-tg-brand-list">
        {%foreach item=item from=$tplData.list%}
        <div class="item{%if $item@first%} current{%/if%}" data-click="{'fm':'alop',rsv_click_type:'item_link','rsv_click_value':'{%$item['mid']%}','rsv_click_index':'{%$item@index%}'}" {%if $item@last%} style="border:none"{%/if%}>
            <a class="link EC_ZHIXIN" href="{%$item['url']%}" hidefocus="true" target="_blank">
                <div class="detail-pic"><img src="{%$item['brandlogo']|escape:'html'%}" align="absmiddle"></div>
                <div class="detail-info">
                    <div class="info-title" title="{%$item['title']|escape:'html'%}">
                        {%$item['title']|limitlen:30:"..."%}<span class="title-em">{%$item['source']%}</span>
                    </div>
                    <div class="info-desc">
                        <span class="discut">{%$item['rebate']%}</span>
                        <span class="desc">{%$item['promotion']%}</span>
                        <span class="time">剩余 {%$item['left_day']%} 天</span>
                    </div>
                    <div class="info-purchase">
                        <span data-click="{rsv_click_type:'items_button'}" hidefocus="true" target="_blank" class="purchase-btn">立即抢购</span>
                        {%if $tplData.q_title && $item.isCom == "1"%}
                            <div class="info-extra">{%$tplData.q_title%}</div>
                        {%/if%}
                    </div>
                </div>
            </a>
            <div class="outline OP_LOG_BTN" data-click="{fm:'beha', rsv_click_type: 'outline'}">
                <a class="title" href="{%$item['url']%}" data-click="{fm:'alop',rsv_click_type:'item_link'}" hidefocus="true" target="_blank">{%$item['title']%}</a>
                <span class="source">[{%$item['source']%}]</span>
                <span class="discut">{%$item['rebate']%}</span>
                <span class="time">剩余 {%$item['left_day']%} 天</span>
            </div>
        </div>
        {%/foreach%}
    </div>
    <div class="brand-recommend">
        {%if !$tplData.noRecommend && count($tplData.recommend_list) > 0%}
            <span>相关推荐：</span>
            {%foreach $tplData.recommend_list as $item%}
            <a href="{%$item.href|escape:'html'%}" data-click="{rsv_click_type:'{%if !$item@last%}recommend{%else%}see_more{%/if%}', 'rsv_click_value': '{%$item.text|urlencode%}', 'rsv_click_index': {%$item@index%}, 'fm': 'alop'}" target="_blank">{%$item.text|escape:'html'%}</a>
            {%/foreach%}
        {%else%}
            <a target="_blank" data-click="{rsv_click_type:'more', 'fm': 'alop', 'rsv_click_value': '{%$tplData.list[0]['mid']%}'}" href="{%$tplData.title_info.url%}">{%if $tplData.recommendWord%}{%$tplData.recommendWord%}{%else%}更多品牌特卖>>{%/if%}</a>
        {%/if%}
    </div> 
    <p class="brand-showurl">{%if $tplData.showurl%}{%$tplData.showurl%}{%else%}temai.baidu.com{%/if%}</p>
</div>
{%/strip%}
<script>
A.setup("G_ZX_TUANGOU_BRANDSALE_ANTI",(function (d){var Anti=function(e){function n(e){var n=window.event||e;for(N=n.target||n.srcElement;N&&"A"!=N.tagName;)N=N.parentNode;w=(new Date).getTime(),v=9999,h=n.clientX,m=n.clientY,l=E?w-E:0,i()&&o()}function t(){p=(new Date).getTime(),v=p-w,i()&&o()}function r(e){var n=window.event||e;k+=1,s||(s=n.clientX),d||(d=n.clientY),E=(new Date).getTime()}function i(){if(u=0,g=/zhixin.php\?url\=([^\.]+)\./.exec(N.href)){for(var e=0;k*A%99+9>e;++e)u+=g[1].charCodeAt(v*e%g[1].length);return!0}return!1}function o(){var e="&ck="+[u,k,v,h,m,s,d,l].join(".");
if(N.href){var n=N.href;-1==n.indexOf("&ck=")?N.href+=e:N.href=n.replace(/&ck=[\w.]*/,e)}}function a(e,n,t){for(var r in n)X[++D]=t[r],e[T+r]=D,window.attachEvent?e.attachEvent("on"+n[r],t[r]):e.addEventListener(n[r],t[r],!1)}function c(e,n){for(var t in n){var r=e[T+t],i=X[r];i&&(window.detachEvent?e.detachEvent("on"+n[t],i):e.removeEventListener(n[t],i)),X[r]=null}}function f(e,n){for(var t,r=[],i=n.getElementsByTagName("A"),o=" "+e+" ",a=0;t=i[a];a++)t.className&&(" "+t.className+" ").indexOf(o)>=0&&r.push(t);
return r}var u,v,h,m,s,d,l,g,w,E,p,N,T="EC_ZHIXIN",A=0,x=0,k=0;v=h=m=s=d=l=g=w=E=p=N=0;var D=0,X={};return{getAntiTag:function(){return T},setTimesign:function(e){A=e},bind:function(){for(var i=f(T,e),o=0,c=i.length;c>o;o++)a(i[o],["mouseover","mousedown","mouseup"],[r,n,t]);i.length&&(x=1)},unbind:function(){if(x){for(var n=f(T,e),t=0,r=n.length;r>t;t++)c(n[t],["mouseover","mousedown","mouseup"]);x=0}}}};var a=new Anti(d.getElementById('ecl-tg-brand-list'));a.setTimesign('{%$tplData.time_sign%}');a.bind();return a;})(document));
</script>
<script type="text/javascript">
A.init(function(){$(".ecl-tg-brand .outline").mouseenter(function(){var n=this;$(n).parents(".brand-detail").find(".current").removeClass("current"),$(n).parent().addClass("current")}),this.dispose=function(){}});
</script>
{%/block%}