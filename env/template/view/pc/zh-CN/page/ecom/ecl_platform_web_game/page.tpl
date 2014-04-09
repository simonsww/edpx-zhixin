{%extends 'c_base.tpl'%}

{%block name="title"%}{%/block%}
{%block name="foot"%}{%/block%}

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
        .ecl-platform-web-game h1,.ecl-platform-web-game h2,.ecl-platform-web-game h3,.ecl-platform-web-game h4,.ecl-platform-web-game h5,.ecl-platform-web-game h6{margin:0;padding:0;font-weight:normal}.ecl-platform-web-game th{font-weight:normal}.ecl-platform-web-game .title{_font-size:16px;overflow:hidden;text-overflow:ellipsis;width:636px}.ecl-platform-web-game .title a{white-space:nowrap;font-size:16px}.ecl-platform-web-game ul{zoom:1}.ecl-platform-web-game ul li{float:left;margin-right:4px}.ecl-platform-web-game ul li a{display:block;width:100px}
.ecl-platform-web-game ul li .game-img{height:140px;overflow:hidden}.ecl-platform-web-game ul li .game-name{text-align:center;line-height:24px;font-size:12px;text-decoration:none;word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;font-family:\5b8b\4f53 \9}.ecl-platform-web-game ul li .game-name span{*border-bottom:1px solid #FFF;*line-height:1;_zoom:1;_padding-top:8px;_margin-bottom:2px}.ecl-platform-web-game ul li .game-name:hover{cursor:pointer;*text-decoration:none!important}
.ecl-platform-web-game ul li .game-name:hover span{*border-bottom:1px solid #00C}.ecl-platform-web-game ul li .game-name:hover{text-decoration:underline}.ecl-platform-web-game ul li.item-last{margin-right:0}.ecl-platform-web-game ul:after{content:".";display:block;height:0;clear:both;visibility:hidden}.ecl-platform-web-game .item-container{width:516px;border:1px solid #e3e3e3;padding:9px 9px 0 9px;margin-top:8px;-moz-box-shadow:1px 2px 3px #e2e2e2;-webkit-box-shadow:1px 2px 3px #e2e2e2;-o-box-shadow:1px 2px 3px #e2e2e2;-ms-box-shadow:1px 2px 3px #e2e2e2;box-shadow:1px 2px 3px #e2e2e2;background:#FFF\9;*filter:progid:DXImageTransform.Microsoft.Shadow(Strength=3,Direction=135,Color="#E2E2E2")\9}
.ecl-platform-web-game .item-container em{text-decoration:none;*line-height:1}.ecl-platform-web-game .item-container em:hover{text-decoration:underline;*text-decoration:none}.ecl-platform-web-game .game-score{position:relative;height:20px;width:100px}.ecl-platform-web-game .game-score strong{position:absolute;right:6px;top:0;font-weight:normal;font-size:12px}.ecl-platform-web-game .game-star{width:62px;height:12px;overflow:hidden;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') no-repeat -20px -107px;position:absolute;left:8px;top:1px}
.ecl-platform-web-game .game-star em{position:absolute;height:12px;width:100%;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') no-repeat -20px -90px}.ecl-platform-web-game .show-url{margin-top:8px;color:#008000;font-size:13px}
    </style>

    <div class="ecl-platform-web-game">
    <h4 class="title"><a href="{%$tplData.titleurl%}" target="_blank">{%$tplData.title%}</a></h4>
    <div class="item-container">
        <ul>
            {%foreach $tplData.list as $item%}
            <li {%if $item@last%}class="item-last"{%/if%}>
                <a class="game-img {%gameAntiClass url=$item.url%}" href="{%$item.url%}" target="_blank">
                    <img src="{%$item.img%}" alt="游戏图片" />
                </a>
                <a class="game-name {%gameAntiClass url=$item.url%}" href="{%$item.url%}" target="_blank">
                    <span>{%$item.name%}</span>
                </a>
                <div class="game-score">
                    <div class="game-star"><em style="width:{%$item.score * 10%}%"></em></div>
                    <strong>{%$item.score%}</strong>
                </div>
            </li>
            {%/foreach%}
        </ul>
    </div>
    <div class="show-url">iwan.baidu.com</div>
</div>

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