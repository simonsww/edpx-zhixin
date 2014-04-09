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
        .ecr-pc-game-gn-servers a{color:#00C;text-decoration:underline;vertical-align:baseline}.ecr-pc-game-gn-servers a[hidefocus]:focus{outline:0}.ecr-pc-game-gn-servers h3,.ecr-pc-game-gn-servers h4,.ecr-pc-game-gn-servers h5,.ecr-pc-game-gn-servers h6{margin:0;padding:0;font-weight:normal}.ecr-pc-game-gn-servers .game-c-clear{clear:both}.ecr-pc-game-gn-servers .game-c-hide{display:none!important}.ecr-pc-game-gn-servers .game-c-hidden{visibility:hidden!important}.ecr-pc-game-gn-servers .ecr-game-c-title h4{font-weight:bold;color:#333;font-size:14px}
.ecr-pc-game-gn-servers a{text-decoration:none}.ecr-pc-game-gn-servers a:hover{text-decoration:underline}.ecr-pc-game-gn-servers .ecr-game-c-title{margin-bottom:6px;text-indent:-1px}.ecr-pc-game-gn-servers .ecr-game-c-body a.game-active{color:#C00}.ecr-pc-game-gn-servers .ecr-game-c-body span{display:inline-block;*display:inline;*zoom:1;word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;margin-right:10px}.ecr-pc-game-gn-servers .ecr-game-c-body .game-c1{padding-left:3px;width:90px}
.ecr-pc-game-gn-servers .ecr-game-c-body .game-c2{width:53px}.ecr-pc-game-gn-servers .ecr-game-c-body .game-c3{width:39px}.ecr-pc-game-gn-servers .ecr-game-c-body .game-c4{width:85px}.ecr-pc-game-gn-servers .ecr-game-c-body .game-c5{width:38px;margin-right:0}.ecr-pc-game-gn-servers .ecr-game-c-body .game-title{height:25px;line-height:26px;background:#fafafa}.ecr-pc-game-gn-servers .ecr-game-c-body .game-title span{color:#666}.ecr-pc-game-gn-servers .ecr-game-c-body .game-list{height:28px;line-height:29px;border-bottom:1px solid #f6f6f6}
.ecr-pc-game-gn-servers .ecr-game-c-body .game-list span{color:#333}.ecr-pc-game-gn-servers .game-more{display:inline-block;*display:inline;*zoom:1;margin-top:9px;_line-height:1;text-indent:-1px}.container_s .ecr-pc-game-gn-servers .game-c4{width:44px;margin-right:0}.container_s .ecr-pc-game-gn-servers .game-c5{display:none}body:not(:-moz-handler-blocked) .ecr-pc-game-gn-servers .ecr-game-c-title{margin-bottom:5px;text-indent:0}body:not(:-moz-handler-blocked) .ecr-pc-game-gn-servers .ecr-game-c-body .game-title{line-height:28px}
body:not(:-moz-handler-blocked) .ecr-pc-game-gn-servers .game-more{text-indent:0}.ecr-pc-game-gn-servers .ecr-game-c-title{margin-bottom:4px\9;text-indent:0\9;*margin-bottom:5px;_line-height:30px;_margin-bottom:0}.ecr-pc-game-gn-servers .ecr-game-c-body .game-title,.ecr-pc-game-gn-servers .ecr-game-c-body .game-list{*line-height:28px;_overflow:hidden}.ecr-pc-game-gn-servers .game-more{margin-left:0\9;*margin-top:8px;*margin-left:-1px;*text-indent:0;_margin-top:12px}
    </style>

    {%strip%}
<div class="cr-content ecr-pc-game-gn-servers">
    <div class="ecr-game-c-title">
        <h4>{%$tplData.title|escape:'html'%}</h4>
    </div>
    <div class="ecr-game-c-body">
        <div class="game-title">
            <span class="game-c1">游戏名称</span>
            <span class="game-c2">日期</span>
            <span class="game-c3">状态</span>
            <span class="game-c4">新手卡</span>
            <span class="game-c5">下载</span>
        </div>
        {%foreach $tplData.list as $item%}
        <div class="game-list">
            <span class="game-c1"><a target="_blank" href="{%$item.nameurl|escape:'html'%}" title="{%$item.name|escape:'html'%}" {%gameAntiAttr url=$item.nameurl%}>{%$item.name|escape:'html'%}</a></span>
            <span class="game-c2">{%$item.date|escape:'html'%}</span>
            <span class="game-c3">{%$item.state|escape:'html'%}</span>
            <span class="game-c4"><a target="_blank" href="{%$item.receiveurl|escape:'html'%}" {%gameAntiAttr url=$item.receiveurl%}>{%$item.receive|escape:'html'%}</a></span>
            <span class="game-c5"><a target="_blank" href="{%$item.downloadurl|escape:'html'%}" {%gameAntiAttr url=$item.downloadurl%}>下载</a></span>
        </div>
        {%/foreach%}
    </div>
    {%if $tplData.more%}
    <a class="game-more {%gameAntiClass url=$tplData.more.url%}" target="_blank" href="{%$tplData.more.url|escape:'html'%}">{%$tplData.more.title|escape:'html'%} &gt;&gt;</a>
    {%/if%}
</div>
{%/strip%}

{%/block%}