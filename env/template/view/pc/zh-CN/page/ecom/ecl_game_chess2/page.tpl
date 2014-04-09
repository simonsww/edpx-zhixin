{%extends 'c_base.tpl'%}

{%block name="title"%}{%/block%}
{%block name="foot"%}{%/block%}

{%block name='content'%}

    <style type="text/css" data-merge>
        .ecl-game-chess2 a[hidefocus]:focus{outline:0}.ecl-game-chess2 .game-c-clear{clear:both}.ecl-game-chess2 .game-c-hide{display:none!important}.ecl-game-chess2 .game-c-hidden{visibility:hidden!important}.ecl-game-chess2 h3,.ecl-game-chess2 h4{margin-top:0}.ecl-game-chess2 .c-border{width:516px;padding:10px}.ecl-game-chess2 .game-main{position:relative;height:100px}.ecl-game-chess2 .game-main img{float:left;margin-right:10px;width:121px;height:100px}.ecl-game-chess2 .game-main .game-title{color:#666}.ecl-game-chess2 .game-main .game-desc{word-wrap:break-word;word-break:break-all;white-space:normal}
.ecl-game-chess2 .game-main .game-skill{_width:385px;word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis}.ecl-game-chess2 .game-main .game-skill .game-title{margin-right:-6px}.ecl-game-chess2 .game-main .game-skill .game-links{margin:0 6px}.ecl-game-chess2 .game-main .game-additional{position:absolute;left:131px;bottom:-2px;width:385px;word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;height:32px;line-height:31px}
.ecl-game-chess2 .game-main .game-additional .game-start{float:left;background:url(http://www.baidu.com/cache/biz/ecom/game/ecl-game-start-button.png) -3px -3px no-repeat;width:100px;height:32px;text-indent:-10000px;margin-right:6px}.ecl-game-chess2 .game-main .game-additional .game-start:hover{background-position:-4px -47px}.ecl-game-chess2 .game-main .game-additional .game-start:active{background-position:-4px -92px}.ecl-game-chess2 .game-main .game-additional .game-links{*float:left;margin:0 6px}.ecl-game-chess2 .game-platform-title{margin:10px 0;_width:516px;height:27px;line-height:28px;word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;background:#fafafa;border-bottom:1px solid #e1e1e1}
.ecl-game-chess2 ul{margin:0 -10px -10px 0;_zoom:1;overflow:hidden}.ecl-game-chess2 ul li{float:left;*display:inline;width:175px;height:78px;*height:88px;margin-bottom:10px;*margin-bottom:0;overflow:hidden}.ecl-game-chess2 ul li img{float:left;width:78px;height:78px;margin-right:10px}.ecl-game-chess2 ul li .game-title{margin-top:-2px;margin-top:0\9;margin-left:88px;width:82px;overflow:hidden;word-wrap:normal;word-break:keep-all;white-space:nowrap;*zoom:1}.ecl-game-chess2 ul li p{word-wrap:break-word;word-break:break-all;white-space:normal;margin-right:10px}
    </style>

    {%strip%}
<div class="ecl-game-chess2">
    <h4 class="t c-gap-bottom-small">
        <a href="{%$tplData.url|escape:'html'%}" target="_blank">{%$tplData.title%}</a>
    </h4>
    <div class="c-border">
        <div class="game-main">
            <a target="_blank" href="{%$tplData.url|escape:'html'%}">
                <img src="{%$tplData.main.img|escape:'html'%}" alt="游戏图片" />
            </a>
            <p class="game-desc">
                <span class="game-title">游戏简介：</span>
                {%$tplData.main.desc|limitlen:94|escape:'html'%}
            </p>
            <div class="game-skill">
                <span class="game-title">玩法技巧：</span>
                {%foreach $tplData.main.skill as $item%}
                <a class="game-links" href="{%$item.url|escape:'html'%}" target="_blank">{%$item.title|escape:'html'%}</a>
                {%/foreach%}
            </div>
            <div class="game-additional">
                <a class="game-start" target="_blank" hidefocus="on" href="{%$tplData.url|escape:'html'%}">开始游戏</a>
                {%foreach $tplData.main.additional as $item%}
                <a class="game-links" href="{%$item.url|escape:'html'%}" target="_blank">{%$item.title|escape:'html'%}</a>
                {%/foreach%}
            </div>
        </div>
        <p class="game-platform-title">{%$tplData.platformTitle%}</p>
        <ul>
            {%foreach $tplData.platform as $item%}
            <li>
                <a target="_blank" href="{%$item.link|escape:'html'%}">
                    <img src="{%$item.img|escape:'html'%}" alt="{%$item.title|escape:'html'%}">
                </a>
                <div class="game-title">
                    <a target="_blank" href="{%$item.link|escape:'html'%}">{%$item.title|escape:'html'%}</a>
                </div>
                <p>{%$item.desc|limitlen:30|escape:'html'%}</p>
            </li>
            {%/foreach%}
        </ul>
    </div>
    <p class="c-showurl c-gap-top-small">{%$tplData.showurl|escape:'html'%}</p>
</div>
{%/strip%}
    
{%/block%}