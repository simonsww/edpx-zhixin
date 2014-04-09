{%extends 'c_right_base.tpl'%}

{%block name='content'%}
{%strip%}

<style>
{%fe_fn_c_css css='index'%}.ecr-wealth-small{width:259px}.ecr-wealth-small h4{margin:0;padding:0;margin-bottom:10px;word-wrap:normal;white-space:nowrap;overflow:hidden}.ecr-wealth-small ul{font-size:15px;line-height:1.54}.ecr-wealth-small ul li{border-bottom:1px solid #f3f3f3;padding-top:6px;padding-bottom:6px;*vertical-align:middle}.ecr-wealth-small ul li .ecr-wealth-small-name{width:177px;float:left}.ecr-wealth-small ul li .ecr-wealth-small-name span{float:left;margin-top:3px}.ecr-wealth-small ul li .ecr-wealth-small-name p{*vertical-align:baseline;float:left;height:20px;width:158px;text-overflow:ellipsis;white-space:nowrap;overflow:hidden}.ecr-wealth-small ul li .ecr-wealth-small-name a{text-decoration:none;white-space:nowrap;word-wrap:normal}.ecr-wealth-small ul li .ecr-wealth-small-name a:hover{text-decoration:underline}.ecr-wealth-small ul li .ecr-wealth-small-rate{width:82px;float:left;text-align:right}.ecr-wealth-small ul .ecr-wealth-small-list-head{padding:0;margin:0;line-height:27px;height:27px;font-weight:400;color:#666;white-space:nowrap;background-color:#fafafa;border-bottom:1px solid #f3f3f3}.ecr-wealth-small ul .ecr-wealth-small-list-head .ecr-wealth-small-name,.ecr-wealth-small ul .ecr-wealth-small-list-head .ecr-wealth-small-rate{line-height:27px;height:27px}.ecr-wealth-small h5{margin:0;padding:0;margin-top:9px;font-size:15px;font-weight:400}</style><div class="ecr-wealth-small">
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
</div>{%/strip%}
<script>
A.setup(function () {
    var card = this;
    var tpl = 'ecr-wealth-small';var Anti=function(n){function t(t){var e=window.event||t;for(T=e.target||e.srcElement;T&&"A"!=T.tagName;)if(T=T.parentNode,T===n)return!1;m=(new Date).getTime(),f=9999,s=e.clientX,l=e.clientY,h=g?m-g:0,i()&&a()}function e(){w=(new Date).getTime(),f=w-m,i()&&a()}function r(n){var t=window.event||n;b+=1,d||(d=t.clientX),v||(v=t.clientY),g=(new Date).getTime()}function i(){if(u=0,p=/\?url\=([^\.]+)\./.exec(T.href)){for(var n=0;b*S%99+9>n;++n)u+=p[1].charCodeAt(f*n%p[1].length);return!0}return!1}function a(){var n="&ck="+[u,b,f,s,l,d,v,h].join(".");
if(T.href){var t=T.href;-1==t.indexOf("&ck=")?T.href+=n:T.href=t.replace(/&ck=[\w.]*/,n)}}function o(t,e){for(var r,i=0;r=t[i];i++)window.attachEvent?n.attachEvent("on"+r,e[i]):window.addEventListener?n.addEventListener(r,e[i],!1):n["on"+r]=e[i],_[r]=e[i]}function c(t){for(var e,r=0;e=t[r];r++)window.detachEvent?n.detachEvent("on"+e,_[e]):window.addEventListener?n.removeEventListener(e,_[e],!1):n["on"+e]=function(){}}var u,f,s,l,d,v,h,p,m,g,w,T,E="EC_ZHIXIN",S=0,b=0;f=s=l=d=v=h=p=m=g=w=T=0;var _={};return{getAntiTag:function(){return E
},setTimesign:function(n){S=n},bind:function(){o(["mouseover","mousedown","mouseup"],[r,t,e])},unbind:function(){c(["mouseover","mousedown","mouseup"])}}};var cardAnti = new Anti(card.qq('ecr-wealth-small'));
    cardAnti.bind();
    cardAnti.setTimesign("{%$tplData.signTime|escape:'javascript'%}");

});
</script>

{%/block%}