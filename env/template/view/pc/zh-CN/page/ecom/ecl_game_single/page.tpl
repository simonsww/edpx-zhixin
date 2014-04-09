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
        .ecl-game-single{width:540px}.ecl-game-single a{color:#00C;text-decoration:underline;vertical-align:baseline}.ecl-game-single a[hidefocus]:focus{outline:0}.ecl-game-single h3,.ecl-game-single h4,.ecl-game-single h5,.ecl-game-single h6{margin:0;padding:0;font-weight:normal}.ecl-game-single .game-c-clear{clear:both}.ecl-game-single .game-c-hide{display:none!important}.ecl-game-single .game-c-hidden{visibility:hidden!important}.ecl-game-single .ecl-game-c-title,.ecl-game-single .ecl-game-c-showurl{width:538px;word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis}
.ecl-game-single .ecl-game-c-title a{font-size:16px}.ecl-game-single .ecl-game-c-showurl{font-size:13px;color:#008000}.ecl-game-single .ecl-game-c-body{width:516px;padding:10px;border:1px solid #e3e3e3;border-bottom-color:#e0e0e0;border-right-color:#ececec;-khtml-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-webkit-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-moz-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-o-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-icab-box-shadow:1px 2px 1px rgba(0,0,0,0.072);background-color:#FFF\9;background-color:transparent\9\0;*background-color:#FFF;filter:progid:DXImageTransform.Microsoft.Shadow(Strength=2,Direction=135,Color=#e2e2e2) \9;margin-bottom:0;*margin-bottom:-2px;margin-right:0;*margin-right:-2px;-ms-box-shadow:1px 2px 1px rgba(0,0,0,0.072);box-shadow:1px 2px 1px rgba(0,0,0,0.072);border-collapse:separate}
.ecl-game-single{font-size:12px}.ecl-game-single a{font-size:13px}.ecl-game-single .game-state-hidden{visibility:hidden}.ecl-game-single .game-sprites{background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/game/gdown.png") top left no-repeat}.ecl-game-single .ecl-game-c-title{padding-bottom:6px}.ecl-game-single .ecl-game-c-showurl{margin:5px 0 0 4px;*margin-top:3px}.ecl-game-single .ecl-game-c-body{height:159px}.ecl-game-single .tabs-nav{color:#666;height:28px;overflow:hidden;position:relative;margin-bottom:10px}.ecl-game-single .tabs-nav ul{height:27px;border-bottom:1px solid #d9d9d9;_overflow:hidden;background-color:#fafafa;padding-right:30px}
.ecl-game-single .tabs-nav li{float:left;*float:none;*display:inline;*zoom:1}.ecl-game-single .tabs-nav .sep{float:left;height:16px;_font-size:0;width:0;padding:0;margin-top:6px;border-style:solid;border-width:0 1px 0;border-color:transparent #fff transparent #dedede}.ecl-game-single .tabs-nav .hr{position:absolute;top:-2px;left:-1px;width:100%;padding-left:2px;height:2px;background:#388bff;_font-size:0;display:none}.ecl-game-single .tabs-nav .text{float:left;position:relative;height:25px;line-height:24px;padding:0 15px;_padding:0 16px;border-style:solid;border-width:2px 1px 0 1px;*padding-bottom:1px;border-color:transparent;_border-color:#fafafa #fafafa #d9d9d9;_border-right:0;_border-left:0;list-style:none;cursor:pointer;white-space:nowrap}
.ecl-game-single .tabs-nav li.first .sep{display:none}.ecl-game-single .tabs-nav li.selected .hr{display:block;_display:none}.ecl-game-single .tabs-nav li.selected .text{_border-width:2px 1px 0 1px;_padding:0 15px;background:red;padding-bottom:1px;border-color:#388bff #e4e4e4 #fff #dedede;background-color:#fff;color:#000;cursor:default}.ecl-game-single .tabs-nav .more{position:absolute;top:3px;right:0}.ecl-game-single .content-wrap .tabs-content{position:relative}.ecl-game-single .content-wrap img{position:absolute;top:0;left:0;width:121px;height:121px}
.ecl-game-single .content-wrap .detail{position:absolute;left:132px;top:0;*top:-2px}.ecl-game-single .content-wrap .detail span.item{float:left;word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;color:#333;height:20px;line-height:1;line-height:14px\9;margin-top:1px\9}.ecl-game-single .content-wrap .detail span.item.left{width:160px;padding-right:10px}.ecl-game-single .content-wrap .detail span.item.right{width:214px}.ecl-game-single .content-wrap .detail span.item.intro{width:386px;height:60px;line-height:18px;margin-top:-3px;word-wrap:break-word;word-break:break-all;white-space:normal}
.ecl-game-single .content-wrap .detail span.item.intro a{margin-left:5px}.ecl-game-single .content-wrap .detail span.title{letter-spacing:1px;color:#666}.ecl-game-single .content-wrap .download{position:absolute;top:91px;left:132px;width:100px;height:32px;text-indent:-10000px;background-position:-7px -4px}.ecl-game-single .content-wrap .download:hover{background-position:-8px -48px}.ecl-game-single .content-wrap .download:active{background-position:-8px -93px}.ecl-game-single .content-wrap .additions{position:absolute;top:91px;left:230px;*left:235px;height:30px;padding-left:5px;width:280px;*width:275px;word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis}
.ecl-game-single .content-wrap .additions a{line-height:30px;*line-height:29px;margin:0 5px}
    </style>

    {%strip%}
<div class="c-container ecl-game-single">
    {%if $tplData.list[0].titleurl%}
    <h4 class="ecl-game-c-title">
        <a target="_blank" href="{%$tplData.list[0].titleurl|escape:'html'%}">{%$tplData.list[0].title%}</a>
    </h4>
    {%/if%}
    <div class="ecl-game-c-body">
        <div class="tabs-nav">
            <ul data-click="{fm:'beha'}">
                {%* ps.其实目前首屏必定选中首个tab *%}
                {%foreach $tplData.list as $item%}
                <li class="OP_LOG_BTN
                    {%if !$item@index%} first{%/if%}
                    {%if $item.active%} selected{%/if%}
                ">
                    <span class="sep
                        {%if $item.active%} game-state-hidden{%/if%}
                        {%if $item@index > 0 && $tplData.list[$item@index - 1].active %} game-state-hidden{%/if%}
                    "></span>
                    <span class="text">
                        {%$item.gamename|escape:'html'%}
                        {%* 修复border-top-1px偏差，可去掉 *%}
                        {%* 不直接使用hr标签是为了回避IE7的奇怪bug *%}
                        <span class="hr"></span>
                    </span>
                </li>
                {%/foreach%}
            </ul>
            {%if $tplData.list[0].moreurl%}
                <a target="_blank" class="more" href="{%$tplData.list[0].moreurl|escape:'html'%}">更多</a>
            {%else%}
                <span class="more"></span>
            {%/if%}
        </div>
        <div class="content-wrap">
            {%foreach $tplData.list as $item%}
            <div class="tabs-content {%if !$item.active%}game-c-hide{%/if%}">
                <a target="_blank" class="pic" href={%$item.titleurl|escape:'html'%}>
                    <img alt="{%$item.gamename|escape:'html'%}" src="{%$item.gamepic|escape:'html'%}"/>
                </a>
                <div class="detail">
                    {%if isset($item.version) && !($item.version === '')%}
                    <span class="item left" {%gameTitleAttr str=$item.version len=21%}>
                        <span class="title">版本：</span>
                        {%$item.version|limitlen:21|escape:'html'%}
                    </span>
                    {%/if%}
                    {%if isset($item.size) && !($item.size === '')%}
                    <span class="item right" {%gameTitleAttr str=$item.size len=29%}>
                        <span class="title">大小：</span>
                        {%$item.size|limitlen:29|escape:'html'%}
                    </span>
                    {%/if%}
                    {%if isset($item.lang) && !($item.lang === '')%}
                    <span class="item left" {%gameTitleAttr str=$item.lang len=21%}>
                        <span class="title">语言：</span>
                        {%$item.lang|limitlen:21|escape:'html'%}
                    </span>
                    {%/if%}
                    {%if isset($item.os) && !($item.os === '')%}
                    <span class="item right" {%gameTitleAttr str=$item.os len=29%}>
                        <span class="title">系统：</span>
                        {%$item.os|limitlen:29|escape:'html'%}
                    </span>
                    {%/if%}
                    {%if isset($item.intro) && !($item.intro === '')%}
                    <span class="item intro" {%*gameTitleAttr str=$item.intro len=98*%}>
                        <span class="title">简介：</span>
                        {%$item.intro|limitlen:98|escape:'html'%}
                        {%if $item.baike_url%}
                        <a target="_blank" href="{%$item.baike_url|escape:'html'%}" {%*title="查看百度百科"*%}>查看百度百科&gt;&gt;</a>
                        {%/if%}
                    </span>{%/if%}
                </div>
                <a target="_blank" class="download game-sprites" href="{%$item.downloadurl|escape:'html'%}" hidefocus="on">前往下载</a>
                <div class="additions">
                    {%if $item.tieba_url%}
                    <a target="_blank" href="{%$item.tieba_url|escape:'html'%}">前往贴吧</a>
                    {%/if%}
                    {%foreach $item.additions as $uitem%}
                    <a target="_blank" href="{%$uitem.url|escape:'html'%}">{%$uitem.name|escape:'html'%}</a>
                    {%/foreach%}
                </div>
            </div>
            {%/foreach%}
        </div>
    </div>
    <p class="ecl-game-c-showurl">{%$tplData.list[0].showurl|escape:'html'%}</p>
</div>
{%/strip%}

    <script data-merge>
        A.init(function () {
            !function(e){function n(e){return function(n){return $.fn[e].apply($(n),Array.prototype.slice.call(arguments,1)),arguments.callee}}var t=n("addClass"),a=n("removeClass"),i=e.find(".tabs-nav li"),l=i.find(".sep"),r=e.find(".tabs-content");e.find(".tabs-nav ul").on("click","li:not(.selected) .text",function(e){var n="selected",c="game-c-hide",s="game-state-hidden",d=i.filter("."+n),o=i.index(d);a(d,n)(l[o],s)(l[o+1],s),t(r[o],c);var f=$(e.target).parent(),u=i.index(f);t(f,n)(l[u],s)(l[u+1],s),a(r[u],c)})}($(this.container).children(".ecl-game-single"));

            // this tpl does not need this.dispose
        });
    </script>
    
{%/block%}