{%extends 'c_right_base.tpl'%}

{%block name='content'%}

    

{%**
 * 文本若被ellipsis则添加title属性以提供鼠标悬停提示
 *
 * @param {string} str 完整的文本内容
 * @param {number} len 可显示字数（按半角等宽字符数计算）
 * @return {Object} html的title属性片段
 *%}
{%function gameTitleAttr str="" len=0%} {%strip%}
    {%if $str|limitlen:$len != $str%}
        title="{%$str|escape:'html'%}"
    {%/if%}
{%/strip%} {%/function%}


{%**
 * 对符合条件的URL添加反作弊class片段
 *
 * @param {string} url链接地址
 * @return {Object} class片段
 *%}
{%function gameAntiClass url=""%} {%strip%}
    {%if false !== stripos($url, 'zhixin.php?url=')%}
        EC_ZHIXIN
    {%/if%}
{%/strip%} {%/function%}


{%**
 * 对符合条件的URL添加反作弊class属性
 *
 * @param {string} url链接地址
 * @return {Object} class属性片段
 *%}
{%function gameAntiAttr url=""%} {%strip%}
    {%if false !== stripos($url, 'zhixin.php?url=')%}
        class="EC_ZHIXIN"
    {%/if%}
{%/strip%} {%/function%}



    <style type="text/css" data-merge>
        .ecr .ecr-text-dimgray{color:#666}.ecr a.always-underline{text-decoration:underline}.ecr clear{clear:both}.ecr-cards-panel{overflow:hidden}.container_s .ecr-cards-panel{width:270px;overflow:hidden}.container_l .ecr-cards-panel{width:440px}.ecr-cards-panel-body{padding-top:10px}.ecr-cards-panel-body-card{float:left;width:78px;margin-right:12px}.container_s .ecr-cards-panel-body-card-3,.container_s .ecr-cards-panel-body-card-4{display:none}.ecr-cards-panel-body-card-last{margin-right:0}.ecr-cards-panel-body-card-image{position:relative;right:-4px;display:block;width:68px;height:68px;border:1px solid #d2d2d2;margin-bottom:8px;overflow:hidden}
.ecr-cards-panel-body-card-image img{width:68px;height:68px}.ecr-cards-panel-body-card-name{width:78px;text-align:center;font-size:13px;overflow:hidden;white-space:nowrap;word-break:keep-all;word-wrap:normal;text-overflow:ellipsis;-o-text-overflow:ellipsis}.ecr-web-game-platform{font-size:12px}.container_s .ecr-web-game-platform{width:270px;overflow:hidden}.container_l .ecr-web-game-platform{width:440px}.ecr-web-game-platform .title{position:relative;font-size:14px;height:22px;line-height:22px}.ecr-web-game-platform .title h2{position:absolute;background:#fff;font-weight:bold;z-index:2;font-size:14px;margin:0;padding:0;padding-right:10px}
.ecr-web-game-platform .title .line{position:absolute;top:11px;width:100%;height:0;font-size:0;border-top:1px solid #eaeaea;z-index:1}.ecr-web-game-platform .title{margin-bottom:-1px \9;*margin-bottom:0;height:20px;*height:18px}.ecr-web-game-platform .title a.all{line-height:20px \9}.ecr-web-game-platform .title .game-promotion a{vertical-align:1px \9}.ecr-web-game-platform .title h2{position:static;float:left;padding-right:0}.ecr-web-game-platform .title .game-promotion{float:left;font-size:13px}.ecr-web-game-platform .title .game-promotion a{color:#666;*vertical-align:baseline}
.ecr-web-game-platform .title .game-promotion i{color:#666;font-family:\5B8B\4F53;padding:0 2px;padding-right:4px \9}.ecr-web-game-platform .title .all{position:absolute;top:0;right:0;height:22px;line-height:22px;background-color:#fff;z-index:2;font-size:13px;padding-left:2px;text-decoration:none}.ecr-web-game-platform .title .all span{text-decoration:underline}.ecr-web-game-platform .ecr-cards-panel-body-card{margin-right:17px;width:75px}.ecr-web-game-platform .ecr-cards-panel-body-card-image{border:0;right:0;width:75px;height:75px;margin-bottom:7px}
.ecr-web-game-platform .ecr-cards-panel-body-card-image img{width:75px;height:75px}.ecr-web-game-platform .ecr-cards-panel-body-card-name{width:75px;word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis}.ecr-web-game-platform .ecr-cards-panel-body-card-name a{*font-family:\5b8b\4f53;_zoom:1}.container_l .ecr-web-game-platform{width:351px!important}.container_l .ecr-web-game-platform .title{width:351px}.container_l .ecr-web-game-platform .ecr-cards-panel-body-card-3{margin-right:0}
.container_s .ecr-web-game-platform{width:259px!important}.container_s .ecr-web-game-platform .title{width:259px}.container_s .ecr-web-game-platform .ecr-cards-panel-body-card-2{margin-right:0}
    </style>

    {%strip%}
<div class="ecr-web-game-platform ecr-cards-panel ecr">
    <div class="title">
        <h2>{%$tplData.title%}</h2>
        <span class="game-promotion">
            <i>-</i>
            <a target="_blank" href="http://yingxiao.baidu.com/product/site/aiwan.html">推广</a>
        </span>
        <!--{%*<a class="all" href="url" target="_blank"><span>title</span>&gt;&gt;</a>*%}-->
    </div>
    <div class="ecr-cards-panel-body">
        {%if !empty($tplData.list) && count($tplData.list) > 4%}
            {%$tplData.list = array_slice($tplData.list, 0, 4)%}
        {%/if%}
        {%foreach $tplData.list as $item%}
        <div class="ecr-cards-panel-body-card ecr-cards-panel-body-card-{%$item@index%} {%if $item@last%}ecr-cards-panel-body-card-last{%/if%}">
            <a class="ecr-cards-panel-body-card-image {%gameAntiClass url=$item.url%}" target="_blank" href="{%$item.url|escape:'html'%}">
                <img src="{%$item.image|escape:'html'%}" alt="{%$item.text|escape:'html'%}" />
            </a>
            <div class="ecr-cards-panel-body-card-name">
                <a target="_blank" title="{%$item.text|escape:'html'%}" href="{%$item.url|escape:'html'%}" {%gameAntiAttr url=$item.url%}>{%$item.text|limitlen:12|escape:'html'%}</a>
            </div>
        </div>
        {%/foreach%}
        <div class="clear"></div>
    </div>
</div>
{%/strip%}

    {%*反作弊脚本*%}
    <script data-compress="off">
        A.setup('timesign', '{%$tplData.timesign|escape:"javascript"%}');
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