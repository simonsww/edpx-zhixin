{%extends 'c_base.tpl'%}

{%block name="title"%}{%/block%}
{%block name="foot"%}{%/block%}

{%block name='content'%}

    <style type="text/css" data-merge>
        .ecl-game-shouyou a[hidefocus]:focus{outline:0}.ecl-game-shouyou .game-c-clear{clear:both}.ecl-game-shouyou .game-c-hide{display:none!important}.ecl-game-shouyou .game-c-hidden{visibility:hidden!important}.ecl-game-shouyou h3,.ecl-game-shouyou h4{margin-top:0}.ecl-game-shouyou .c-border{width:516px;padding:10px}.ecl-game-shouyou .c-border{padding-bottom:0}.ecl-game-shouyou .game-main{position:relative;height:121px}.ecl-game-shouyou .game-main img{float:left;width:121px;height:121px}.ecl-game-shouyou .game-main .game-title{color:#666}
.ecl-game-shouyou .game-main .game-item{float:left;margin-left:10px;width:187.5px;word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis}.ecl-game-shouyou .game-main .game-desc{float:left;width:385px;margin-left:10px;word-wrap:break-word;word-break:break-all;white-space:normal}.ecl-game-shouyou .game-main .game-additional{position:absolute;left:131px;bottom:0;_bottom:-1px;width:385px;word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;height:26px;line-height:27px}
.ecl-game-shouyou .game-main .game-additional .game-start{float:left;background:url(http://www.baidu.com/cache/biz/ecom/game/ecl_game_shouyou_2014_4_1.jpg) 0 0 no-repeat;width:106px;height:26px;text-indent:-10000px;margin-right:6px}.ecl-game-shouyou .game-main .game-additional .game-links{*float:left;margin:0 6px}.ecl-game-shouyou .game-platform-title{margin:10px 0;_width:516px;height:27px;line-height:28px;word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;background:#fafafa;border-bottom:1px solid #e1e1e1}
.ecl-game-shouyou ul{margin:0 0 -10px -10px;*margin-bottom:0;_zoom:1;overflow:hidden}.ecl-game-shouyou ul li{float:left;*display:inline;width:165px;height:78px;*height:88px;margin:0 0 10px 10px;*margin-bottom:0;overflow:hidden}.ecl-game-shouyou ul li img{float:left;width:78px;height:78px;margin-right:10px}.ecl-game-shouyou ul li .game-title{margin-top:-2px;margin-top:0\9;margin-left:88px;word-wrap:normal;word-break:keep-all;white-space:nowrap;*zoom:1;_width:77px;_overflow:hidden}.ecl-game-shouyou ul li p{word-wrap:break-word;word-break:break-all;white-space:normal}
.ecl-game-shouyou .game-more{margin-top:10px;*margin-top:0;text-align:center;border-top:1px solid #DDD;height:32px;line-height:33px;_clear:both}.ecl-game-shouyou .game-more a{text-decoration:none}.ecl-game-shouyou .game-more a:hover{text-decoration:underline}
    </style>

    {%strip%}
<div class="ecl-game-shouyou">
    <h4 class="t c-gap-bottom-small">
        <a href="{%$tplData.titleurl|escape:'html'%}" target="_blank">{%$tplData.title%}</a>
    </h4>
    <div class="c-border">
        <div class="game-main">
            <a target="_blank" href="{%$tplData.main.detailurl|escape:'html'%}">
                <img src="{%$tplData.main.img|escape:'html'%}" alt="游戏图片" />
            </a>
            <p class="game-item">
                <span class="game-title">版本：</span>
                {%$tplData.main.version|escape:'html'%}
            </p>
            <p class="game-item">
                <span class="game-title">更新：</span>
                {%$tplData.main.updatetime|escape:'html'%}
            </p>
            <p class="game-item">
                <span class="game-title">大小：</span>
                {%$tplData.main.size|escape:'html'%}
            </p>
            <p class="game-item">
                <span class="game-title">系统：</span>
                {%$tplData.main.system|escape:'html'%}
            </p>
            <p class="game-desc">
                <span class="game-title">游戏简介：</span>
                {%$tplData.main.intro|limitlen:94|escape:'html'%}
            </p>
            <!--[if IE 6]>&nbsp;<![endif]-->
            <div class="game-additional">
                <a class="game-start" target="_blank" hidefocus="on" href="{%$tplData.main.downloadurl|escape:'html'%}">下载到电脑</a>
                {%foreach $tplData.main.additional as $item%}
                <a class="game-links" href="{%$item.url|escape:'html'%}" target="_blank">{%$item.title|escape:'html'%}</a>
                {%/foreach%}
            </div>
        </div>
        <p class="game-platform-title">{%$tplData.platform.title%}</p>
        <ul>
            {%foreach $tplData.platform.list as $item%}
            <li>
                <a target="_blank" href="{%$item.url|escape:'html'%}">
                    <img src="{%$item.img|escape:'html'%}" alt="{%$item.name|escape:'html'%}">
                </a>
                <div class="game-title">
                    <a target="_blank" href="{%$item.url|escape:'html'%}">{%$item.name|escape:'html'%}</a>
                </div>
                <p>{%$item.brief|limitlen:30|escape:'html'%}</p>
            </li>
            {%/foreach%}
        </ul>
        {%if $tplData.all%}
        <div class="game-more">
            <a target="_blank" href="{%$tplData.all.url|escape:'html'%}">{%$tplData.all.name|escape:'html'%} &gt;&gt;</a>
        </div>
        {%/if%}
    </div>
    <p class="c-showurl c-gap-top-small">{%$tplData.showurl|escape:'html'%}</p>
</div>
{%/strip%}
    
{%/block%}