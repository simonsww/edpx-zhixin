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
        .ecl-game-start{position:relative;padding:5px 10px 0 0;font-size:12px;font-family:arial}.ecl-game-start h1,.ecl-game-start h2,.ecl-game-start h3,.ecl-game-start h4,.ecl-game-start h5,.ecl-game-start h6{margin:0;padding:0;font-weight:normal}.ecl-game-start th{font-weight:normal}.ecl-game-start .game-title{width:533px;height:23px;margin:0;padding:4px 0 0;line-height:1;font-size:16px;color:#00C;font-weight:normal;text-decoration:underline;overflow:hidden;white-space:nowrap;word-break:keep-all;word-wrap:normal;text-overflow:ellipsis;-o-text-overflow:ellipsis}
.ecl-game-start .game-title a:focus{outline:0}.ecl-game-start .game-showurl{color:#008000;margin:2px 0 0 0;text-indent:4px}.ecl-game-start .game-sprite{background:url("http://www.baidu.com/cache/biz/ecom/game/ecl-game-start-button.png") -3px -3px no-repeat}.ecl-game-start .game-title em{color:#C00;font-style:normal;text-decoration:underline}.ecl-game-start .game-clearfix:before,.ecl-game-start .game-clearfix:after{content:"";display:table}.ecl-game-start .game-clearfix:after{clear:both}.ecl-game-start .game-clearfix{zoom:1}
.ecl-game-start .game-detail{margin-top:2px;padding:12px 0 8px 11px;height:98px;width:533px;background:url("http://www.baidu.com/cache/biz/ecom/game/wback.jpg") top left no-repeat}.ecl-game-start .game-detail .game-pic{float:left;margin-right:10px}.ecl-game-start .game-detail .game-pic img{width:121px;height:91px}.ecl-game-start .game-detail .game-info{float:left;width:389px}.ecl-game-start .game-detail .game-info .game-sub-title{float:left;margin:0;padding:0;font-family:"Microsoft YaHei",\5b8b\4f53;font-size:18px;height:22px;line-height:20px;_margin:2px 0 -2px 0}
.ecl-game-start .game-detail .game-info .game-feature{margin:4px 0 0 5px;float:left;list-style-type:none}.ecl-game-start .game-detail .game-info .game-feature li{display:inline-block;*display:inline;zoom:1;padding:0 4px;height:14px;line-height:14px;*height:13px;*padding-top:1px;*margin:0 2px;color:#1cb7fd;border:1px solid #b3e1ff}.ecl-game-start .game-detail .game-info .game-description{color:#666;margin:3px 0 -3px 0;font-family:\5b8b\4f53;line-height:18px;font-size:13px;height:39px;overflow:hidden;white-space:normal;word-wrap:break-word;word-break:break-all}
.ecl-game-start .game-detail .game-info .game-download-button{display:block;float:left;height:32px;width:100px;margin:0 8px 0 0;text-indent:-10000px}.ecl-game-start .game-detail .game-info .game-download-button:hover{background-position:-4px -47px}.ecl-game-start .game-detail .game-info .game-download-button:active{background-position:-4px -92px}.ecl-game-start .game-detail .game-info .game-download-button:focus{background-position:-3px -3px;outline:0}.ecl-game-start .game-detail .game-info .game-extra{float:left;height:32px;padding-left:19px;line-height:32px;*padding-top:1px;color:#6fba2b;background-position:0 -110px}
.ecl-game-start .game-detail .game-info .game-links{float:left;height:32px;line-height:30px;_line-height:34px;color:#333;font-family:\5b8b\4f53;vertical-align:baseline;*zoom:1}.ecl-game-start .game-detail .game-info .game-links a{text-decoration:underline}.ecl-game-start .game-detail .game-info .game-links a:focus{outline:0}.ecl-game-start .game-detail .game-info .game-links .game-from,.ecl-game-start .game-detail .game-info .game-links .game-more{display:inline-block;*display:inline;*zoom:1;overflow:hidden;white-space:nowrap;word-break:keep-all;word-wrap:normal;text-overflow:ellipsis;-o-text-overflow:ellipsis}
.ecl-game-start .game-detail .game-info .game-links .game-from{width:106px}.ecl-game-start .game-detail .game-info .game-links .game-from .game-from-link{color:#00C}.ecl-game-start .game-detail .game-info .game-links .game-more{width:169px}.ecl-game-start .game-detail .game-info .game-links .game-more .game-more-link{margin-right:10px;color:#00C}
    </style>

    {%function createTitle str="" len=0%}
{%if $str|limitlen:$len != $str%} title="{%$str|escape:'html'%}" {%/if%}
{%/function%}

{%function antiClass url=""%}
{%if false !== stripos($url, 'zhixin.php?url=')%} EC_ZHIXIN{%/if%}
{%/function%}

{%function antiAttr url=""%}
{%if false !== stripos($url, 'zhixin.php?url=')%} class="EC_ZHIXIN"{%/if%}
{%/function%}

{%strip%}
<div class="ecl-game-start">
    {%if isset($tplData.titleurl) && isset($tplData.title)%}
    <h4 class="game-title">
        <a hidefocus="true" target="_blank" class="game-header-link {%antiClass url=$tplData.titleurl%}" href="{%$tplData.titleurl|escape:'html'%}">{%$tplData.title%}</a>
    </h4>
    {%/if%}
    <div class="game-detail game-clearfix">
        <div class="game-pic">
            <a href="{%$tplData.titleurl|escape:'html'%}" target="_blank" hidefocus="true" {%antiAttr url=$tplData.titleurl%}>
                <img src="{%$tplData.gamepic|escape:'html'%}" alt="{%$tplData.gamename|escape:'html'%}">
            </a>
        </div>
        <div class="game-info">
            <div class="game-clearfix">
                <h3 class="game-sub-title">{%$tplData.gamename|escape:'html'%}</h3>
            </div>
            <p class="game-description" {%createTitle str=$tplData.description len=114%}>{%$tplData.description|limitlen:114|escape:'html'%}</p>
            <div class="game-clearfix">
                <a class="game-download-button game-sprite {%antiClass url=$tplData.gameurl%}" target="_blank" hidefocus="true" href="{%$tplData.gameurl|escape:'html'%}">点击下载</a>
                <div class="game-links">
                    {%* FIXME 还是别用&nbsp;吧...抽空修复掉 *%}
                    {%if !empty($tplData.source)%}
                    <div class="game-from">
                        来自：&nbsp;
                        <a href="{%$tplData.sourceurl|escape:'html'%}" class="game-from-link {%antiClass url=$tplData.sourceurl%}" hidefocus="true" target="_blank" {%createTitle str=$tplData.source len=11%}>{%$tplData.source|limitlen:11|escape:'html'%}</a>
                    </div>
                    {%/if%}
                    &nbsp;
                    {%if isset($tplData.more) && count($tplData.more)>0%}
                    <div class="game-more">
                        更多平台：&nbsp;
                        {%foreach $tplData.more as $item%}
                            {%if $item@index < 2 %}
                            <a href="{%$item.url|escape:'html'%}" class="game-more-link {%antiClass url=$item.url%}" hidefocus="true" target="_blank" title="{%$item.name|escape:'html'%}">{%$item.name|escape:'html'%}</a>
                            {%/if%}
                        {%/foreach%}
                    </div>
                    {%/if%}
                </div>
            </div>
        </div>
    </div>
    <p class="game-showurl">{%$tplData.showurl|escape:'html'%}</p>
</div>
{%/strip%}

    {%*反作弊脚本*%}
    <script data-compress="off">
        A.setup('timesign', '{%$tplData.timesign%}');
    </script>
    <script data-merge>
        A.setup(function () {
            var d = document;
            var Anti=function(e){function n(e){var n=window.event||e;for(N=n.target||n.srcElement;N&&"A"!=N.tagName;)N=N.parentNode;g=(new Date).getTime(),v=9999,s=n.clientX,h=n.clientY,l=E?g-E:0,o()&&i()}function t(){p=(new Date).getTime(),v=p-g,o()&&i()}function r(e){var n=window.event||e;k+=1,m||(m=n.clientX),d||(d=n.clientY),E=(new Date).getTime()}function o(){if(u=0,w=/\?url\=([^\.]+)\./.exec(N.href)){for(var e=0;k*A%99+9>e;++e)u+=w[1].charCodeAt(v*e%w[1].length);return!0}return!1}function i(){var e="&ck="+[u,k,v,s,h,m,d,l].join(".");
if(N.href){var n=N.href;-1==n.indexOf("&ck=")?N.href+=e:N.href=n.replace(/&ck=[\w.]*/,e)}}function a(e,n,t){for(var r in n)n.hasOwnProperty(r)&&(y[++x]=t[r],e[T+r]=x,window.attachEvent?e.attachEvent("on"+n[r],t[r]):e.addEventListener(n[r],t[r],!1))}function f(e,n){for(var t in n)if(n.hasOwnProperty(t)){var r=e[T+t],o=y[r];o&&(window.detachEvent?e.detachEvent("on"+n[t],o):e.removeEventListener(n[t],o)),y[r]=null}}function c(e,n){for(var t,r=[],o=n.getElementsByTagName("A"),i=" "+e+" ",a=0;t=o[a];a++)t.className&&(" "+t.className+" ").indexOf(i)>=0&&r.push(t);
return r}var u,v,s,h,m,d,l,w,g,E,p,N,T="EC_ZHIXIN",A=0,O=0,k=0;v=s=h=m=d=l=w=g=E=p=N=0;var x=0,y={};return{getAntiTag:function(){return T},setTimesign:function(e){A=e},bind:function(){for(var o=c(T,e),i=0,f=o.length;f>i;i++)a(o[i],["mouseover","mousedown","mouseup"],[r,n,t]);o.length&&(O=1)},unbind:function(){if(O){for(var n=c(T,e),t=0,r=n.length;r>t;t++)f(n[t],["mouseover","mousedown","mouseup"]);O=0}}}};
            var a = new Anti(this.container);
            a.setTimesign(this.data.timesign);
            a.bind();
            this.dispose = function () {
                a.unbind();
            };
        });
    </script>

{%/block%}