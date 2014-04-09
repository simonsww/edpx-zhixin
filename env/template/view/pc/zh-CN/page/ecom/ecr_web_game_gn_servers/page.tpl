{%extends 'c_right_base.tpl'%}

{%block name='content'%}

    <style type="text/css" data-merge>
        .ecr-web-game-gn-servers a{color:#00C;text-decoration:underline;vertical-align:baseline}.ecr-web-game-gn-servers a[hidefocus]:focus{outline:0}.ecr-web-game-gn-servers h3,.ecr-web-game-gn-servers h4,.ecr-web-game-gn-servers h5,.ecr-web-game-gn-servers h6{margin:0;padding:0;font-weight:normal}.ecr-web-game-gn-servers .game-c-clear{clear:both}.ecr-web-game-gn-servers .game-c-hide{display:none!important}.ecr-web-game-gn-servers .game-c-hidden{visibility:hidden!important}.ecr-web-game-gn-servers .ecr-game-c-title h4{font-weight:bold;color:#333;font-size:14px}
.ecr-web-game-gn-servers a{text-decoration:none}.ecr-web-game-gn-servers a:hover{text-decoration:underline}.ecr-web-game-gn-servers .ecr-game-c-title{margin-bottom:6px;text-indent:-1px}.ecr-web-game-gn-servers .ecr-game-c-body a.game-active{color:#C00}.ecr-web-game-gn-servers .ecr-game-c-body span{display:inline-block;*display:inline;*zoom:1;word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;margin-right:10px}.ecr-web-game-gn-servers .ecr-game-c-body .game-c1{padding-left:3px;width:80px}
.ecr-web-game-gn-servers .ecr-game-c-body .game-c2{width:102px}.ecr-web-game-gn-servers .ecr-game-c-body .game-c3{width:79px}.ecr-web-game-gn-servers .ecr-game-c-body .game-c4{width:57px;margin-right:0}.ecr-web-game-gn-servers .ecr-game-c-body .game-title{height:25px;line-height:26px;background:#fafafa}.ecr-web-game-gn-servers .ecr-game-c-body .game-title span{color:#666}.ecr-web-game-gn-servers .ecr-game-c-body .game-list{height:28px;line-height:29px;border-bottom:1px solid #f6f6f6}.ecr-web-game-gn-servers .ecr-game-c-body .game-list span{color:#333}
.ecr-web-game-gn-servers .game-more{display:inline-block;*display:inline;*zoom:1;margin-top:9px;text-indent:-1px}.container_s .ecr-web-game-gn-servers .game-c1{width:77px}.container_s .ecr-web-game-gn-servers .game-c3{display:none}body:not(:-moz-handler-blocked) .ecr-web-game-gn-servers .ecr-game-c-title{margin-bottom:5px;text-indent:0}body:not(:-moz-handler-blocked) .ecr-web-game-gn-servers .ecr-game-c-body .game-title{line-height:28px}body:not(:-moz-handler-blocked) .ecr-web-game-gn-servers .game-more{text-indent:0}
.ecr-web-game-gn-servers .ecr-game-c-title{margin-bottom:4px\9;text-indent:0\9;*margin-bottom:5px;_line-height:30px;_margin-bottom:0}.ecr-web-game-gn-servers .ecr-game-c-body .game-title,.ecr-web-game-gn-servers .ecr-game-c-body .game-list{*line-height:28px;_overflow:hidden}.ecr-web-game-gn-servers .game-more{margin-left:0\9;*margin-top:8px;*margin-left:-1px;*text-indent:0;_margin-top:12px}
    </style>

    {%strip%}
<div class="cr-content ecr-web-game-gn-servers">
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
            <span class="game-c2"><a{%if $item.active == '1'%} class="game-active"{%/if%} target="_blank" href="{%$item.gameurl|escape:'html'%}" title="{%$item.gamename|escape:'html'%}">{%$item.gamename|escape:'html'%}</a></span>
            <span class="game-c3"><a target="_blank" href="{%$item.operatorurl|escape:'html'%}" title="{%$item.operatorname|escape:'html'%}">{%$item.operatorname|escape:'html'%}</a></span>
            <span class="game-c4"><a target="_blank" href="{%$item.starturl|escape:'html'%}">进入</a></span>
        </div>
        {%/foreach%}
    </div>
    {%if $tplData.all%}
    <a class="game-more" target="_blank" href="{%$tplData.all|escape:'html'%}">查看完整开服信息 &gt;&gt;</a>
    {%/if%}
</div>
{%/strip%}

{%/block%}