{%extends 'c_right_base.tpl'%}

{%block name='content'%}

    <style type="text/css" data-merge>
        .ecr .ecr-text-dimgray{color:#666}.ecr a.always-underline{text-decoration:underline}.ecr clear{clear:both}.ecr-cards-panel{overflow:hidden}.container_s .ecr-cards-panel{width:270px;overflow:hidden}.container_l .ecr-cards-panel{width:440px}.ecr-cards-panel-body{padding-top:10px}.ecr-cards-panel-body-card{float:left;width:78px;margin-right:12px}.container_s .ecr-cards-panel-body-card-3,.container_s .ecr-cards-panel-body-card-4{display:none}.ecr-cards-panel-body-card-last{margin-right:0}.ecr-cards-panel-body-card-image{position:relative;right:-4px;display:block;width:68px;height:68px;border:1px solid #d2d2d2;margin-bottom:8px;overflow:hidden}
.ecr-cards-panel-body-card-image img{width:68px;height:68px}.ecr-cards-panel-body-card-name{width:78px;text-align:center;font-size:13px;overflow:hidden;white-space:nowrap;word-break:keep-all;word-wrap:normal;text-overflow:ellipsis;-o-text-overflow:ellipsis}.ecr-pc-game-gn-also-search-biz{font-size:12px}.container_s .ecr-pc-game-gn-also-search-biz{width:270px;overflow:hidden}.container_l .ecr-pc-game-gn-also-search-biz{width:440px}.ecr-pc-game-gn-also-search-biz .title{position:relative;font-size:14px;height:22px;line-height:22px}
.ecr-pc-game-gn-also-search-biz .title h2{position:absolute;background:#fff;font-weight:bold;z-index:2;font-size:14px;margin:0;padding:0;padding-right:10px}.ecr-pc-game-gn-also-search-biz .title .line{position:absolute;top:11px;width:100%;height:0;font-size:0;border-top:1px solid #eaeaea;z-index:1}.ecr-pc-game-gn-also-search-biz .title{margin-bottom:-1px \9;*margin-bottom:0}.ecr-pc-game-gn-also-search-biz .title a.all{line-height:20px \9}.ecr-pc-game-gn-also-search-biz .title .game-promotion a{vertical-align:1px \9}
.ecr-pc-game-gn-also-search-biz .title h2{color:#333;*padding-left:1px;*padding-bottom:1px;position:static;float:left;padding-right:0}.ecr-pc-game-gn-also-search-biz .title .game-promotion{float:left;font-size:13px}.ecr-pc-game-gn-also-search-biz .title .game-promotion a{color:#666;*vertical-align:baseline}.ecr-pc-game-gn-also-search-biz .title .game-promotion i{color:#666;font-family:\5B8B\4F53;padding:0 2px;padding-right:4px \9}.ecr-pc-game-gn-also-search-biz .title .line{display:none}.ecr-pc-game-gn-also-search-biz .title .all{position:absolute;top:0;right:0;height:22px;line-height:22px;background-color:#FFF;z-index:2;font-size:13px;padding-left:2px;text-decoration:none}
.ecr-pc-game-gn-also-search-biz .title .all span{text-decoration:underline}.ecr-pc-game-gn-also-search-biz .ecr-cards-panel-body{padding-top:8px;*padding-top:6px}.ecr-pc-game-gn-also-search-biz .ecr-cards-panel-body-card{margin-right:17px;width:75px}.ecr-pc-game-gn-also-search-biz .ecr-cards-panel-body-card-image{border:0;right:-1px;width:75px;height:100px;position:relative;text-decoration:none;margin-bottom:6px}.ecr-pc-game-gn-also-search-biz .ecr-cards-panel-body-card-image img{width:75px;height:100px;border:0;margin:0;padding:0;outline:0}
.ecr-pc-game-gn-also-search-biz .ecr-cards-panel-body-card-image .score{position:absolute;left:0;bottom:0;width:100%;height:19px;line-height:19px;color:#FFF;text-align:center;cursor:pointer;background:rgba(0,0,0,0.65);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#A6000000,endColorstr=#A6000000) \9}.ecr-pc-game-gn-also-search-biz .ecr-cards-panel-body-card-image:hover{text-decoration:none}.ecr-pc-game-gn-also-search-biz .ecr-cards-panel-body-card-4{display:none!important}.ecr-pc-game-gn-also-search-biz .ecr-cards-panel-body-card-name{padding-top:1px;_padding-bottom:1px;width:75px}
.ecr-pc-game-gn-also-search-biz .ecr-cards-panel-body-card-name a{*font-family:\5b8b\4f53;_zoom:1}.ecr-pc-game-gn-also-search-biz .ecr-cards-panel-body-card-platform{color:#666;text-align:center;font-size:13px;line-height:20px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;*font-family:\5b8b\4f53;width:75px}.container_l .ecr-pc-game-gn-also-search-biz{width:351px}.container_l .ecr-pc-game-gn-also-search-biz .title{width:351px}.container_l .ecr-pc-game-gn-also-search-biz .ecr-cards-panel-body-card-3{display:block;margin-right:0}
.container_s .ecr-pc-game-gn-also-search-biz{width:259px}.container_s .ecr-pc-game-gn-also-search-biz .title{width:259px}.container_s .ecr-pc-game-gn-also-search-biz .ecr-cards-panel-body-card-2{margin-right:0}.container_s .ecr-pc-game-gn-also-search-biz .ecr-cards-panel-body-card-3{display:none}
    </style>

    {%function createTitle str="" len=0%}
{%if $str|limitlen:$len != $str%} title="{%$str|escape:'html'%}" {%/if%}
{%/function%}

{%function createLink%}
{%strip%}

    {%$str = $tplData.all.url%}

    {%* 新版url http://iwan.baidu.com/yeyou?*** *%}
    {%if false === stripos($str, 'index')%}
        {%if '/' !== substr($str, -1, 1)%}
            {%$str = $str|cat:'/'%}
        {%/if%}
        {%$str = $str|cat:$tplData.gametype|cat:'?'%}
    {%* 旧版url http://iwan.baidu.com/Index/Index?*** *%}
    {%else%}
        {%if '?' !== substr($str, -1, 1)%}
            {%$str = $str|cat:'?'%}
        {%/if%}
        {%if isset($tplData.gametype)%}
            {%$str = $str|cat:'gametype='|cat:$tplData.gametype|cat:'&'%}
        {%/if%}
    {%/if%}

    {%if isset($tplData.word)%}{%$str=$str|cat:'query='|cat:($tplData.word|urlencode)|cat:'&'%}{%/if%}
    {%if isset($tplData.ordertype)%}{%$str=$str|cat:'ordertype='|cat:$tplData.ordertype|cat:'&'%}{%/if%}
    {%if isset($tplData.type)%}{%$str=$str|cat:'type='|cat:$tplData.type|cat:'&'%}{%/if%}
    {%if isset($tplData.subject)%}{%$str=$str|cat:'subject='|cat:$tplData.subject|cat:'&'%}{%/if%}
    {%if isset($tplData.from)%}{%$str=$str|cat:'from='|cat:$tplData.from|cat:'&'%}{%/if%}
    {%if !isset($tplData.zt)%}{%$tplData.zt='ps'%}{%/if%}{%$str=$str|cat:'zt='|cat:$tplData.zt|cat:'&'%}
    {%if isset($extData.sessionID)%}{%$str=$str|cat:'qid='|cat:$extData.sessionID|cat:'&'%}{%/if%}
    {%if isset($extData.sid)%}{%$str=$str|cat:'sid='|cat:$extData.sid|cat:'&'%}{%/if%}

    {%$str|substr:0:-1%}

{%/strip%}
{%/function%}

{%strip%}
<div class="ecr-pc-game-gn-also-search-biz ecr-cards-panel ecr">
    <div class="title">
        <h2>{%$tplData.title|escape:'html'%}</h2>
        <span class="game-promotion">
            <i>-</i>
            <a target="_blank" href="http://yingxiao.baidu.com/product/site/aiwan.html">推广</a>
        </span>
        <!--<div class="line"></div>-->
        {%if isset($tplData.all)%}
        <a class="all" href="{%createLink%}" target="_blank"><span>{%$tplData.all.title|escape:'html'%}</span>&gt;&gt;</a>
        {%/if%}
    </div>

    <div class="ecr-cards-panel-body">
        {%foreach $tplData.list as $item%}
        <div class="ecr-cards-panel-body-card ecr-cards-panel-body-card-{%$item@index%} {%if $item@last%} ecr-cards-panel-body-card-last {%/if%}">
            <a target="_blank" href="{%$item.url%}"
            class="ecr-cards-panel-body-card-image {%if false!==stripos($item.url,'zhixin.php?url=')%}EC_ZHIXIN{%/if%}">
                <img src="{%$item.image%}" alt="{%$item.text|escape:'html'%}" />
                {%if isset($item.score)%}<span class="score">{%$item.score|escape:'html'%}&nbsp;分</span>{%/if%}
            </a>
            <div class="ecr-cards-panel-body-card-name">
                <a target="_blank" {%createTitle str=$item.text len=12%} href="{%$item.url%}"
                {%if false!==stripos($item.url,'zhixin.php?url=')%}class="EC_ZHIXIN"{%/if%}
                >{%$item.text|limitlen:12|escape:'html'%}</a>
            </div>
            {%if isset($item.platform)%}<div class="ecr-cards-panel-body-card-platform" {%createTitle str=$item.platform len=12%}>{%$item.platform|limitlen:12|escape:'html'%}</div>{%/if%}
        </div>
        {%/foreach%}
        <div class="clear"></div>
    </div>
</div>
{%/strip%}

    {%*反作弊脚本*%}
    <script data-compress="off">
        A.setup('timesign', '{%$tplData.timesign%}');
    </script>
    <script data-merge>
        A.setup(function () {
            var d = document;
            var Anti=function(e){function n(e){var n=window.event||e;for(T=n.target||n.srcElement;T&&"A"!=T.tagName;)T=T.parentNode;w=(new Date).getTime(),v=9999,m=n.clientX,s=n.clientY,h=E?w-E:0,i()&&o()}function t(){N=(new Date).getTime(),v=N-w,i()&&o()}function r(e){var n=window.event||e;x+=1,d||(d=n.clientX),l||(l=n.clientY),E=(new Date).getTime()}function i(){if(u=0,g=/\?url\=([^\.]+)\./.exec(T.href)){for(var e=0;x*A%99+9>e;++e)u+=g[1].charCodeAt(v*e%g[1].length);return!0}return!1}function o(){var e="&ck="+[u,x,v,m,s,d,l,h].join(".");
if(T.href){var n=T.href;-1==n.indexOf("&ck=")?T.href+=e:T.href=n.replace(/&ck=[\w.]*/,e)}}function a(e,n,t){for(var r in n)X[++D]=t[r],e[p+r]=D,window.attachEvent?e.attachEvent("on"+n[r],t[r]):e.addEventListener(n[r],t[r],!1)}function c(e,n){for(var t in n){var r=e[p+t],i=X[r];i&&(window.detachEvent?e.detachEvent("on"+n[t],i):e.removeEventListener(n[t],i)),X[r]=null}}function f(e,n){for(var t,r=[],i=n.getElementsByTagName("A"),o=" "+e+" ",a=0;t=i[a];a++)t.className&&(" "+t.className+" ").indexOf(o)>=0&&r.push(t);
return r}var u,v,m,s,d,l,h,g,w,E,N,T,p="EC_ZHIXIN",A=0,k=0,x=0;v=m=s=d=l=h=g=w=E=N=T=0;var D=0,X={};return{getAntiTag:function(){return p},setTimesign:function(e){A=e},bind:function(){for(var i=f(p,e),o=0,c=i.length;c>o;o++)a(i[o],["mouseover","mousedown","mouseup"],[r,n,t]);i.length&&(k=1)},unbind:function(){if(k){for(var n=f(p,e),t=0,r=n.length;r>t;t++)c(n[t],["mouseover","mousedown","mouseup"]);k=0}}}};
            var a = new Anti(this.container);
            a.setTimesign(this.data.timesign);
            a.bind();
            this.dispose = function () {
                a.unbind();
            };
        });
    </script>

{%/block%}