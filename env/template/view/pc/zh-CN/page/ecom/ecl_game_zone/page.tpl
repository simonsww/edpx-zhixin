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



    {%$tplName = 'ecl-game-zone'%}

    <style type="text/css" data-merge>
        .ecl-game-zone{width:540px}.ecl-game-zone a{color:#00C;text-decoration:underline;vertical-align:baseline}.ecl-game-zone a[hidefocus]:focus{outline:0}.ecl-game-zone h3,.ecl-game-zone h4,.ecl-game-zone h5,.ecl-game-zone h6{margin:0;padding:0;font-weight:normal}.ecl-game-zone .game-c-clear{clear:both}.ecl-game-zone .game-c-hide{display:none!important}.ecl-game-zone .game-c-hidden{visibility:hidden!important}.ecl-game-zone .ecl-game-c-title,.ecl-game-zone .ecl-game-c-showurl{width:538px;word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis}
.ecl-game-zone .ecl-game-c-title a{font-size:16px}.ecl-game-zone .ecl-game-c-showurl{font-size:13px;color:#008000}.ecl-game-zone .ecl-game-c-body{width:516px;padding:10px;border:1px solid #e3e3e3;border-bottom-color:#e0e0e0;border-right-color:#ececec;-khtml-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-webkit-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-moz-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-o-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-icab-box-shadow:1px 2px 1px rgba(0,0,0,0.072);background-color:#FFF\9;background-color:transparent\9\0;*background-color:#FFF;filter:progid:DXImageTransform.Microsoft.Shadow(Strength=2,Direction=135,Color=#e2e2e2) \9;margin-bottom:0;*margin-bottom:-2px;margin-right:0;*margin-right:-2px;-ms-box-shadow:1px 2px 1px rgba(0,0,0,0.072);box-shadow:1px 2px 1px rgba(0,0,0,0.072);border-collapse:separate}
.ecl-game-zone .ecl-game-c-title{padding-bottom:6px}.ecl-game-zone .ecl-game-c-showurl{margin:5px 0 0 4px;*margin-top:3px}.ecl-game-zone .game-content{margin-bottom:20px}.ecl-game-zone .game-m-name{position:relative}.ecl-game-zone .game-m-name .game-img img{width:121px;height:100px;display:block}.ecl-game-zone .game-m-name .game-main{position:absolute;top:0;left:121px;width:395px;height:100px;overflow:hidden}.ecl-game-zone .game-m-name .game-item-wrap{margin-top:-2px;*overflow:hidden}.ecl-game-zone .game-m-name .game-item-wrap em{color:#666}
.ecl-game-zone .game-m-name .game-item-wrap .game-item{float:left;_float:none;_zoom:1;word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;width:182px;padding-left:10px}.ecl-game-zone .game-m-name .game-item-wrap .game-rank{color:#f39100}.ecl-game-zone .game-m-name .game-item-wrap .game-star i{display:inline-block;*display:inline;*zoom:1;height:10px;background:url(http://www.baidu.com/cache/biz/ecom/game/ecl_game_zone_140318.png) no-repeat -554px -137px;*vertical-align:middle;_vertical-align:baseline;_font-size:0;_background:url(http://www.baidu.com/cache/biz/ecom/game/ecl_game_zone_140318.png) no-repeat -618px -137px}
.ecl-game-zone .game-m-name .game-links-wrap{position:absolute;bottom:0;word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;line-height:1.1}.ecl-game-zone .game-m-name .game-links-wrap a{margin-left:10px;*zoom:1}.ecl-game-zone .game-m-gift{position:relative;overflow:visible}.ecl-game-zone .game-m-gift .game-img img{width:121px;height:100px;display:block}.ecl-game-zone .game-m-gift .game-main{position:absolute;top:0;left:121px;width:395px;height:100px}
.ecl-game-zone .game-m-gift p{margin-left:10px}.ecl-game-zone .game-m-gift .game-links-wrap{position:absolute;bottom:0;height:30px;_bottom:-2px;_height:32px}.ecl-game-zone .game-m-gift .game-links-wrap a{float:left;text-indent:-10000px;margin-left:8px;width:100px;height:32px;_position:relative;_top:0;_margin-left:10px;_width:98px;_height:30px}.ecl-game-zone .game-m-gift .game-links-wrap a:hover{_margin-left:8px;_width:100px;_height:32px}.ecl-game-zone .game-m-gift .game-links-wrap a:active{_margin-left:10px;_width:98px;_height:30px}
.ecl-game-zone .game-m-gift .game-links-wrap a.game-receive{background:url(http://www.baidu.com/cache/biz/ecom/game/ecl_game_zone_140318.png) no-repeat -5px -11px;_background:url(http://www.baidu.com/cache/biz/ecom/game/ecl_game_zone_140318.png) no-repeat -7px -11px}.ecl-game-zone .game-m-gift .game-links-wrap a.game-receive:hover{background-position:-5px -55px}.ecl-game-zone .game-m-gift .game-links-wrap a.game-receive:active{background-position:-5px -100px;_background-position:-7px -100px}.ecl-game-zone .game-m-gift .game-links-wrap a.game-download{background:url(http://www.baidu.com/cache/biz/ecom/game/ecl_game_zone_140318.png) no-repeat -117px -11px;_background:url(http://www.baidu.com/cache/biz/ecom/game/ecl_game_zone_140318.png) no-repeat -119px -11px}
.ecl-game-zone .game-m-gift .game-links-wrap a.game-download:hover{background-position:-117px -55px}.ecl-game-zone .game-m-gift .game-links-wrap a.game-download:active{background-position:-117px -100px;_background-position:-119px -100px}.ecl-game-zone .game-m-info{position:relative;overflow:visible}.ecl-game-zone .game-m-info .game-img img{width:78px;height:78px;display:block}.ecl-game-zone .game-m-info .game-main{position:absolute;top:-2px;left:88px;width:428px;height:78px}.ecl-game-zone .game-m-info em{float:left;line-height:22px\9;width:45px;font-weight:bold;color:#000}
.ecl-game-zone .game-m-info p{float:left;width:383px}.ecl-game-zone .game-m-tool{position:relative;overflow:visible}.ecl-game-zone .game-m-tool .game-img img{width:78px;height:78px;display:block}.ecl-game-zone .game-m-tool .game-main{position:absolute;top:0;left:78px;width:438px;height:78px}.ecl-game-zone .game-m-tool p{margin-left:10px}.ecl-game-zone .game-m-tool .game-links-wrap{position:absolute;bottom:0;height:30px;_bottom:-2px;_height:32px}.ecl-game-zone .game-m-tool .game-links-wrap a{float:left;text-indent:-10000px;margin-left:8px;width:100px;height:32px;_position:relative;_top:0;_margin-left:10px;_width:98px;_height:30px;background:url(http://www.baidu.com/cache/biz/ecom/game/ecl_game_zone_140318.png) no-repeat -117px -11px;_background:url(http://www.baidu.com/cache/biz/ecom/game/ecl_game_zone_140318.png) no-repeat -119px -11px}
.ecl-game-zone .game-m-tool .game-links-wrap a:hover{_margin-left:8px;_width:100px;_height:32px}.ecl-game-zone .game-m-tool .game-links-wrap a:active{_margin-left:10px;_width:98px;_height:30px}.ecl-game-zone .game-m-tool .game-links-wrap a:hover{background-position:-117px -55px}.ecl-game-zone .game-m-tool .game-links-wrap a:active{background-position:-117px -100px;_background-position:-119px -100px}.ecl-game-zone .game-m-video{position:relative}.ecl-game-zone .game-m-video .game-img img{width:254px;height:144px;display:block}
.ecl-game-zone .game-m-video .game-main{position:absolute;top:0;left:254px;width:262px;height:144px;overflow:hidden}.ecl-game-zone .game-m-video p{margin-left:10px}.ecl-game-zone .game-m-video .game-more{margin-left:10px}.ecl-game-zone .game-m-video .game-videos-wrap{position:absolute;bottom:0;height:59px;overflow:hidden}.ecl-game-zone .game-m-video .game-videos-wrap a{float:left;margin-left:10px}.ecl-game-zone .game-m-video .game-videos-wrap a img{width:77px;height:59px}.ecl-game-zone .game-m-live{position:relative;overflow:visible}
.ecl-game-zone .game-m-live .game-img img{width:121px;height:100px;display:block}.ecl-game-zone .game-m-live .game-main{position:absolute;top:0;left:121px;width:395px;height:100px}.ecl-game-zone .game-m-live p{margin-left:10px}.ecl-game-zone .game-m-live .game-links-wrap{position:absolute;bottom:0;height:30px;_bottom:-2px;_height:32px}.ecl-game-zone .game-m-live .game-links-wrap a{float:left;text-indent:-10000px;margin-left:8px;width:100px;height:32px;_position:relative;_top:0;_margin-left:10px;_width:98px;_height:30px;background:url(http://www.baidu.com/cache/biz/ecom/game/ecl_game_zone_140318.png) no-repeat -225px -11px;_background:url(http://www.baidu.com/cache/biz/ecom/game/ecl_game_zone_140318.png) no-repeat -227px -11px}
.ecl-game-zone .game-m-live .game-links-wrap a:hover{_margin-left:8px;_width:100px;_height:32px}.ecl-game-zone .game-m-live .game-links-wrap a:active{_margin-left:10px;_width:98px;_height:30px}.ecl-game-zone .game-m-live .game-links-wrap a:hover{background-position:-225px -55px}.ecl-game-zone .game-m-live .game-links-wrap a:active{background-position:-225px -100px;_background-position:-227px -100px}.ecl-game-zone .game-m-hero{position:relative;overflow:visible}.ecl-game-zone .game-m-hero .game-img img{width:101px;height:101px;display:block}
.ecl-game-zone .game-m-hero .game-main{position:absolute;top:0;left:101px;width:415px;height:101px}.ecl-game-zone .game-m-hero p{margin-left:10px}.ecl-game-zone .game-m-hero .game-links-wrap{position:absolute;bottom:0;height:30px;_bottom:-2px;_height:32px}.ecl-game-zone .game-m-hero .game-links-wrap a{float:left;text-indent:-10000px;margin-left:8px;width:100px;height:32px;_position:relative;_top:0;_margin-left:10px;_width:98px;_height:30px}.ecl-game-zone .game-m-hero .game-links-wrap a:hover{_margin-left:8px;_width:100px;_height:32px}
.ecl-game-zone .game-m-hero .game-links-wrap a:active{_margin-left:10px;_width:98px;_height:30px}.ecl-game-zone .game-m-hero .game-links-wrap a.game-topic{background:url(http://www.baidu.com/cache/biz/ecom/game/ecl_game_zone_140318.png) no-repeat -334px -11px;_background:url(http://www.baidu.com/cache/biz/ecom/game/ecl_game_zone_140318.png) no-repeat -336px -11px}.ecl-game-zone .game-m-hero .game-links-wrap a.game-topic:hover{background-position:-334px -55px}.ecl-game-zone .game-m-hero .game-links-wrap a.game-topic:active{background-position:-334px -100px;_background-position:-336px -100px}
.ecl-game-zone .game-m-hero .game-links-wrap a.game-video{background:url(http://www.baidu.com/cache/biz/ecom/game/ecl_game_zone_140318.png) no-repeat -441px -11px;_background:url(http://www.baidu.com/cache/biz/ecom/game/ecl_game_zone_140318.png) no-repeat -443px -11px}.ecl-game-zone .game-m-hero .game-links-wrap a.game-video:hover{background-position:-441px -55px}.ecl-game-zone .game-m-hero .game-links-wrap a.game-video:active{background-position:-441px -100px;_background-position:-443px -100px}.ecl-game-zone .game-tab-nav{color:#666;height:28px;overflow:hidden;position:relative}
.ecl-game-zone .game-tab-nav ul{height:27px;border-bottom:1px solid #d9d9d9;_overflow:hidden;background-color:#fafafa}.ecl-game-zone .game-tab-nav li{float:left;*float:none;*display:inline;*zoom:1}.ecl-game-zone .game-tab-nav .game-sep{float:left;height:16px;_font-size:0;width:0;padding:0;margin-top:6px;border-style:solid;border-width:0 1px 0;border-color:transparent #fff transparent #dedede}.ecl-game-zone .game-tab-nav .game-hr{position:absolute;top:-2px;left:-1px;width:100%;padding-left:2px;height:2px;background:#388bff;_font-size:0;display:none}
.ecl-game-zone .game-tab-nav .game-text{float:left;position:relative;height:25px;line-height:24px;line-height:27px\9;padding:0 15px;_padding:0 16px;border-style:solid;border-width:2px 1px 0 1px;*padding-bottom:1px;border-color:transparent;_border-color:#fafafa #fafafa #d9d9d9;_border-right:0;_border-left:0;list-style:none;cursor:pointer;white-space:nowrap}.ecl-game-zone .game-tab-nav li.game-first .game-sep{display:none}.ecl-game-zone .game-tab-nav li.game-selected .game-hr{display:block;_display:none}.ecl-game-zone .game-tab-nav li.game-selected .game-text{font-weight:bold;_border-width:2px 1px 0 1px;_padding:0 15px;background:red;padding-bottom:1px;border-color:#388bff #e4e4e4 #fff #dedede;background-color:#fff;color:#000;cursor:default}
.ecl-game-zone .game-tab-nav .game-more{position:absolute;top:3px;right:0}.ecl-game-zone .game-tab-content{margin-top:15px;_margin:18px 0 -2px 0;overflow:hidden}.ecl-game-zone .game-tab-content li{float:left;word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;width:248px;padding-right:10px;line-height:24px;_height:24px}.ecl-game-zone .game-tab-content i{display:inline-block;*display:inline;*zoom:1;width:8px;height:8px;margin-right:10px;background:#999;*margin-bottom:3px;_margin-bottom:0;_font-size:0}
.ecl-game-zone .game-btn{margin:10px -2px 0 -2px;overflow:hidden}.ecl-game-zone .game-btn a{float:left;word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;margin:4px 2px 0 2px;padding:0 4px;width:92px;height:22px;line-height:23px;text-align:center;background:#e3ecf5}.ecl-game-zone .game-btn a:hover{text-decoration:none}
    </style>

    {%strip%}
        <div class="c-container {%$tplName|escape:'html'%}">
            {%if $tplData.title && $tplData.url%}
            <h4 class="ecl-game-c-title">
                <a target="_blank" href="{%$tplData.url|escape:'html'%}">{%$tplData.title%}</a>
            </h4>
            {%/if%}
            <div class="ecl-game-c-body">
                <div class="game-content">
                    {%if $tplData.content.current == 'name'%}
    {%$data = $tplData.content.name%}
    <div class="game-m-name">
        <a href="{%$tplData.url|escape:'html'%}" target="_blank" class="game-img">
            <img src="{%$data.img|escape:'html'%}" alt="游戏图片" />
        </a>
        <div class="game-main">
            <div class="game-item-wrap">
            {%foreach $data.info as $item%}
                <span class="game-item">
                    <em>{%$item.title|escape:'html'%}：</em>
                    {%if $item.title == '网游排行'%}
                        <span class="game-rank">{%$item.desc|escape:'html'%}</span>
                    {%elseif $item.title == '星级'%}
                        <span class="game-star">
                            <i style="width: {%$item.desc / 5.0 * 60%}px;" title="{%$item.desc|escape:'html'%}"></i>
                        </span>
                    {%else%}
                        <span class="game-text">{%$item.desc|escape:'html'%}</span>
                    {%/if%}
                </span>
            {%/foreach%}
            </div>
            <div class="game-links-wrap">
            {%foreach $data.links as $item%}
                <a target="_blank" href="{%$item.url|escape:'html'%}">{%$item.text|escape:'html'%}</a>
            {%/foreach%}
            </div>
        </div>
    </div>
{%/if%}
                    {%if $tplData.content.current == 'gift'%}
    {%$data = $tplData.content.gift%}
    <div class="game-m-gift">
        <a href="{%$tplData.url|escape:'html'%}" target="_blank" class="game-img">
            <img src="{%$data.img|escape:'html'%}" alt="游戏图片" />
        </a>
        <div class="game-main">
            <p>
                {%$data.desc|limitlen:170|escape:'html'%}
            </p>
            <div class="game-links-wrap">
                {%if $data.receive%}
                    <a target="_blank" class="game-receive" href="{%$data.receive|escape:'html'%}" hidefocus="on">立即领取</a>
                {%/if%}
                {%if $data.download%}
                    <a target="_blank" class="game-download" href="{%$data.download|escape:'html'%}" hidefocus="on">官方下载</a>
                {%/if%}
            </div>
        </div>
    </div>
{%/if%}
                    {%if $tplData.content.current == 'info'%}
    {%$data = $tplData.content.info%}
    <div class="game-m-info">
        <a href="{%$tplData.url|escape:'html'%}" target="_blank" class="game-img">
            <img src="{%$data.img|escape:'html'%}" alt="游戏图片" />
        </a>
        <div class="game-main">
            {%if $data.strengths%}<em>优势：</em><p>{%$data.strengths|limitlen:110|escape:'html'%}</p>{%/if%}
            {%if $data.weaknesses%}<em>劣势：</em><p>{%$data.weaknesses|limitlen:110|escape:'html'%}</p>{%/if%}
        </div>
    </div>
{%/if%}
                    {%if $tplData.content.current == 'tool'%}
    {%$data = $tplData.content.tool%}
    <div class="game-m-tool">
        <a href="{%$tplData.url|escape:'html'%}" target="_blank" class="game-img">
            <img src="{%$data.img|escape:'html'%}" alt="游戏图片" />
        </a>
        <div class="game-main">
            <p>
                {%$data.desc|limitlen:120|escape:'html'%}
            </p>
            <div class="game-links-wrap">
                {%if $data.download%}
                    <a target="_blank" href="{%$data.download|escape:'html'%}" hidefocus="on">官方下载</a>
                {%/if%}
            </div>
        </div>
    </div>
{%/if%}
                    {%if $tplData.content.current == 'video'%}
    {%$data = $tplData.content.video%}
    <div class="game-m-video">
        <a href="{%$data.img.download|escape:'html'%}" target="_blank" class="game-img">
            <img src="{%$data.img.src|escape:'html'%}" alt="视频大图" />
        </a>
        <div class="game-main">
            <p>{%$data.desc|limitlen:116|escape:'html'%}</p>
            <div class="game-more"><a href="{%$data.more|escape:'html'%}" target="_blank">查看更多&gt;&gt;</a></div>
            <div class="game-videos-wrap">
                {%foreach $data.list as $item%}
                    <a target="_blank" href="{%$item.download|escape:'html'%}">
                        <img src="{%$item.url|escape:'html'%}" alt="视频小图" />
                    </a>
                {%/foreach%}
            </div>
        </div>
    </div>
{%/if%}
                    {%if $tplData.content.current == 'live'%}
    {%$data = $tplData.content.live%}
    <div class="game-m-live">
        <a href="{%$tplData.url|escape:'html'%}" target="_blank" class="game-img">
            <img src="{%$data.img|escape:'html'%}" alt="游戏图片" />
        </a>
        <div class="game-main">
            <p>
                {%$data.desc|limitlen:170|escape:'html'%}
            </p>
            <div class="game-links-wrap">
                {%if $data.video%}
                    <a target="_blank" href="{%$data.video|escape:'html'%}" hidefocus="on">观看直播</a>
                {%/if%}
            </div>
        </div>
    </div>
{%/if%}
                    {%if $tplData.content.current == 'hero'%}
    {%$data = $tplData.content.hero%}
    <div class="game-m-hero">
        <a href="{%$tplData.url|escape:'html'%}" target="_blank" class="game-img">
            <img src="{%$data.img|escape:'html'%}" alt="游戏图片" />
        </a>
        <div class="game-main">
            <p>
                {%$data.desc|limitlen:180|escape:'html'%}
            </p>
            <div class="game-links-wrap">
                {%if $data.topic%}
                    <a target="_blank" href="{%$data.topic|escape:'html'%}" hidefocus="on" class="game-topic">英雄专题</a>
                {%/if%}
                {%if $data.video%}
                    <a target="_blank" href="{%$data.video|escape:'html'%}" hidefocus="on" class="game-video">英雄视频</a>
                {%/if%}
            </div>
        </div>
    </div>
{%/if%}
                </div>
                <div class="game-tab">
                    <div class="game-tab-nav">
    <ul data-click="{fm:'beha'}">
        {%foreach $tplData.tab.list as $item%}
        <li class="OP_LOG_BTN
            {%if !$item@index%} game-first{%/if%}
            {%if $item@index == $tplData.tab.current%} game-selected{%/if%}
        ">
            <span class="game-sep
                {%if $item@index == $tplData.tab.current%} game-c-hidden{%/if%}
                {%if $item@index - 1 == $tplData.tab.current %} game-c-hidden{%/if%}
            "></span>
            <span class="game-text">
                {%$item.title|escape:'html'%}
                {%* 修复border-top-1px偏差，可去掉 *%}
                {%* 不直接使用hr标签是为了回避IE7的奇怪bug *%}
                <span class="game-hr"></span>
            </span>
        </li>
        {%/foreach%}
    </ul>
    <!--{%*
        <a target="_blank" class="game-more" href="{%$tplData.list[0].moreurl|escape:'html'%}">更多</a>
        <span class="game-more"></span>
    *%}-->
</div>
<div class="game-tab-content-wrap">
    {%foreach $tplData.tab.list as $list%}
    <div class="game-tab-content {%if $list@index != $tplData.tab.current%}game-c-hide{%/if%}">
        <ul>
            {%foreach $list.column as $item%}
            <li>
                <i></i>
                <a target="_blank" href="{%$item.url|escape:'html'%}">{%$item.title|escape:'html'%}</a>
            </li>
            {%/foreach%}
        </ul>
    </div>
    {%/foreach%}
</div>
<!--[if IE 6]><div class="game-c-clear"></div><![endif]-->

                </div>
                <div class="game-btn">
                    {%foreach $tplData.btn as $item%}
    <a href="{%$item.url|escape:'html'%}" target="_blank">{%$item.title|escape:'html'%}</a>
{%/foreach%}
                </div>
            </div>
            <p class="ecl-game-c-showurl">{%$tplData.showurl|escape:'html'%}</p>
        </div>
    {%/strip%}

    <script data-compress="off">
        A.setup('tplName', '{%$tplName|escape:"javascript"%}');
    </script>
    <script data-merge>
        A.init(function () {
            !function(e){function a(e){return function(a){return $.fn[e].apply($(a),Array.prototype.slice.call(arguments,1)),arguments.callee}}var n=a("addClass"),t=a("removeClass"),i=e.find(".game-tab-nav li"),r=i.find(".game-sep"),l=e.find(".game-tab-content");e.find(".game-tab-nav ul").on("click","li:not(.game-selected) .game-text",function(e){var a="game-selected",c="game-c-hide",d="game-c-hidden",m=i.filter("."+a),g=i.index(m);t(m,a)(r[g],d)(r[g+1],d),n(l[g],c);var s=$(e.target).parent(),o=i.index(s);n(s,a)(r[o],d)(r[o+1],d),t(l[o],c)
})}($(this.container).children("."+this.data.tplName));
            // this tpl does not need this.dispose
        });
    </script>
    
{%/block%}