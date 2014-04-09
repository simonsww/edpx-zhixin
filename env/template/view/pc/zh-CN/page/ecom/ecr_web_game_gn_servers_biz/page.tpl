{%extends 'c_right_base.tpl'%}

{%block name='content'%}

    <style type="text/css" data-merge>
        .ecr-web-game-gn-servers-biz a{color:#00C;text-decoration:underline;vertical-align:baseline}.ecr-web-game-gn-servers-biz a[hidefocus]:focus{outline:0}.ecr-web-game-gn-servers-biz h3,.ecr-web-game-gn-servers-biz h4,.ecr-web-game-gn-servers-biz h5,.ecr-web-game-gn-servers-biz h6{margin:0;padding:0;font-weight:normal}.ecr-web-game-gn-servers-biz .game-c-clear{clear:both}.ecr-web-game-gn-servers-biz .game-c-hide{display:none!important}.ecr-web-game-gn-servers-biz .game-c-hidden{visibility:hidden!important}.ecr-web-game-gn-servers-biz .ecr-game-c-title h4{font-weight:bold;color:#333;font-size:14px}
.ecr-web-game-gn-servers-biz a{text-decoration:none}.ecr-web-game-gn-servers-biz a:hover{text-decoration:underline}.ecr-web-game-gn-servers-biz .ecr-game-c-title{margin-bottom:6px;text-indent:-1px}.ecr-web-game-gn-servers-biz .ecr-game-c-body a.game-active{color:#C00}.ecr-web-game-gn-servers-biz .ecr-game-c-body span{display:inline-block;*display:inline;*zoom:1;word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;margin-right:10px}.ecr-web-game-gn-servers-biz .ecr-game-c-body .game-c1{padding-left:3px;width:80px}
.ecr-web-game-gn-servers-biz .ecr-game-c-body .game-c2{width:102px}.ecr-web-game-gn-servers-biz .ecr-game-c-body .game-c3{width:79px}.ecr-web-game-gn-servers-biz .ecr-game-c-body .game-c4{width:57px;margin-right:0}.ecr-web-game-gn-servers-biz .ecr-game-c-body .game-title{height:25px;line-height:26px;background:#fafafa}.ecr-web-game-gn-servers-biz .ecr-game-c-body .game-title span{color:#666}.ecr-web-game-gn-servers-biz .ecr-game-c-body .game-list{height:28px;line-height:29px;border-bottom:1px solid #f6f6f6}
.ecr-web-game-gn-servers-biz .ecr-game-c-body .game-list span{color:#333}.ecr-web-game-gn-servers-biz .game-more{display:inline-block;*display:inline;*zoom:1;margin-top:9px;text-indent:-1px}.container_s .ecr-web-game-gn-servers-biz .game-c1{width:77px}.container_s .ecr-web-game-gn-servers-biz .game-c3{display:none}body:not(:-moz-handler-blocked) .ecr-web-game-gn-servers-biz .ecr-game-c-title{margin-bottom:5px;text-indent:0}body:not(:-moz-handler-blocked) .ecr-web-game-gn-servers-biz .ecr-game-c-body .game-title{line-height:28px}
body:not(:-moz-handler-blocked) .ecr-web-game-gn-servers-biz .game-more{text-indent:0}.ecr-web-game-gn-servers-biz .ecr-game-c-title{margin-bottom:4px\9;text-indent:0\9;*margin-bottom:5px;_line-height:30px;_margin-bottom:0}.ecr-web-game-gn-servers-biz .ecr-game-c-body .game-title,.ecr-web-game-gn-servers-biz .ecr-game-c-body .game-list{*line-height:28px;_overflow:hidden}.ecr-web-game-gn-servers-biz .game-more{margin-left:0\9;*margin-top:8px;*margin-left:-1px;*text-indent:0;_margin-top:12px}
    </style>

    {%function antiClass url=""%}
{%if false !== stripos($url, 'zhixin.php?url=')%} EC_ZHIXIN{%/if%}
{%/function%}

{%function antiAttr url=""%}
{%if false !== stripos($url, 'zhixin.php?url=')%} class="EC_ZHIXIN"{%/if%}
{%/function%}

{%strip%}
<div class="cr-content ecr-web-game-gn-servers-biz">
    <div class="ecr-game-c-title">
        <h4>{%$tplData.title|escape:'html'%}</h4>
    </div>
    <div class="ecr-game-c-body">
        <div class="game-title">
            <span class="game-c1">开服时间</span>
            <span class="game-c2">游戏名称</span>
            <span class="game-c3">运营厂商</span>
            <span class="game-c4">开始游戏</span>
        </div>
        {%foreach $tplData.list as $item%}
        <div class="game-list">
            <span class="game-c1" title="{%$item.time|escape:'html'%}">{%$item.time|escape:'html'%}</span>
            <span class="game-c2"><a class="{%if $item.active == '1'%}game-active{%/if%} {%antiClass url=$item.gameurl%}" target="_blank" href="{%$item.gameurl|escape:'html'%}" title="{%$item.gamename|escape:'html'%}">{%$item.gamename|escape:'html'%}</a></span>
            <span class="game-c3" title="{%$item.operatorname|escape:'html'%}">{%$item.operatorname|escape:'html'%}</span>
            <span class="game-c4"><a target="_blank" href="{%$item.starturl|escape:'html'%}" {%antiAttr url=$item.starturl%}>进入</a></span>
        </div>
        {%/foreach%}
    </div>
    {%if $tplData.all%}
    <a class="game-more {%antiClass url=$tplData.all%}" target="_blank" href="{%$tplData.all|escape:'html'%}">查看完整开服信息 &gt;&gt;</a>
    {%/if%}
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