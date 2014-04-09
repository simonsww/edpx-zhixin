{%extends 'c_right_base.tpl'%}

{%block name='content'%}
{%strip%}

<style>
{%fe_fn_c_css css='index'%}

.ecr-wealth-small{width:259px}.ecr-wealth-small h4{margin:0;padding:0;margin-bottom:10px;word-wrap:normal;white-space:nowrap;overflow:hidden}.ecr-wealth-small ul{font-size:13px;line-height:1.54}.ecr-wealth-small ul li{border-bottom:1px solid #f3f3f3;padding-top:6px;padding-bottom:6px;*vertical-align:middle}.ecr-wealth-small ul li .ecr-wealth-small-name{width:177px;float:left}.ecr-wealth-small ul li .ecr-wealth-small-name span{float:left;margin-top:3px}.ecr-wealth-small ul li .ecr-wealth-small-name p{*vertical-align:baseline;float:left;height:20px;width:158px;text-overflow:ellipsis;white-space:nowrap;overflow:hidden}
.ecr-wealth-small ul li .ecr-wealth-small-name a{text-decoration:none;white-space:nowrap;word-wrap:normal}.ecr-wealth-small ul li .ecr-wealth-small-name a:hover{text-decoration:underline}.ecr-wealth-small ul li .ecr-wealth-small-rate{width:82px;float:left;text-align:right}.ecr-wealth-small ul .ecr-wealth-small-list-head{padding:0;margin:0;line-height:27px;height:27px;font-weight:400;color:#666;white-space:nowrap;background-color:#fafafa;border-bottom:1px solid #f3f3f3}.ecr-wealth-small ul .ecr-wealth-small-list-head .ecr-wealth-small-name,.ecr-wealth-small ul .ecr-wealth-small-list-head .ecr-wealth-small-rate{line-height:27px;height:27px}
.ecr-wealth-small h5{margin:0;padding:0;margin-top:9px;font-size:13px;font-weight:400}
</style>

<div class="ecr-wealth-small">
    <h4 class="cr-title c-gap-bottom">{%$tplData.title|escape:'html'%}</h4>

    <ul>
        <li class="ecr-wealth-small-list-head">
            <div class="ecr-wealth-small-name">理财产品</div>
            <div class="ecr-wealth-small-rate">参考年收益</div>
        </li>
        {%foreach $tplData.list as $index=>$item%}
        <li class="c-row">
            <div class="ecr-wealth-small-name">
                <span class="c-index c-index-hot{%$index+1%} c-gap-icon-right-small">{%$index+1%}</span>
                <p><a target="_blank" href="{%$item.rawUrl|escape:'html'%}" title="{%$item.titleAll|escape:'html'%}">{%$item.title|escape:'html'%}</a></p>
            </div>
            <div class="ecr-wealth-small-rate"><span>
                {%if $item.expectedProfitRate eq ''%}
                    --
                {%else%}
                    {%$item.expectedProfitRate|escape:'html'%}%
                {%/if%}
            </span></div>
        </li>
        {%/foreach%}
    </ul>
    <h5 class="c-gap-top"><a target="_blank" href="{%$tplData.mainUrl|escape:'html'%}">{%$tplData.moreText|escape:'html'%}</a></h5>
</div>
{%/strip%}
<script>
A.setup(function () {
    var card = this;
    var tpl = 'ecr-wealth-small';
    var Anti=function(e){function n(n){var t=window.event||n;for(T=t.target||t.srcElement;T&&"A"!=T.tagName;)if(T=T.parentNode,T===e)return!1;E=(new Date).getTime(),f=9999,v=t.clientX,d=t.clientY,s=g?E-g:0,i()&&o()}function t(){l=(new Date).getTime(),f=l-E,i()&&o()}function r(e){var n=window.event||e;L+=1,w||(w=n.clientX),m||(m=n.clientY),g=(new Date).getTime()}function i(){if(c=0,!T.href)return!1;if(h=/\?url\=([^\.]+)\./.exec(T.href)){for(var e=0;L*A%99+9>e;++e)c+=h[1].charCodeAt(f*e%h[1].length);return!0}return!1
}function o(){var e="&ck="+[c,L,f,v,d,w,m,s].join(".");if(T.href){var n=T.href;-1==n.indexOf("&ck=")?T.href+=e:T.href=n.replace(/&ck=[\w.]*/,e)}}function a(n,t){for(var r,i=0;r=n[i];i++)window.attachEvent?e.attachEvent("on"+r,t[i]):window.addEventListener?e.addEventListener(r,t[i],!1):e["on"+r]=t[i],k[r]=t[i]}function u(n){for(var t,r=0;t=n[r];r++)window.detachEvent?e.detachEvent("on"+t,k[t]):window.addEventListener?e.removeEventListener(t,k[t],!1):e["on"+t]=function(){}}var c,f,v,d,w,m,s,h,E,g,l,T,p="EC_ZHIXIN",A=0,L=0;
f=v=d=w=m=s=h=E=g=l=T=0;var k={};return{getAntiTag:function(){return p},setTimesign:function(e){A=e},bind:function(){a(["mouseover","mousedown","mouseup"],[r,n,t])},unbind:function(){u(["mouseover","mousedown","mouseup"])}}};

    var cardAnti = new Anti(card.qq('ecr-wealth-small'));
    cardAnti.bind();
    cardAnti.setTimesign("{%$tplData.signTime|escape:'javascript'%}");

});
</script>

{%/block%}