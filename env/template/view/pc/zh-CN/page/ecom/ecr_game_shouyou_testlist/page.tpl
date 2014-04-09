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
        .ecr-game-shouyou-testlist a{color:#00C;text-decoration:underline;vertical-align:baseline}.ecr-game-shouyou-testlist a[hidefocus]:focus{outline:0}.ecr-game-shouyou-testlist h3,.ecr-game-shouyou-testlist h4,.ecr-game-shouyou-testlist h5,.ecr-game-shouyou-testlist h6{margin:0;padding:0;font-weight:normal}.ecr-game-shouyou-testlist .game-c-clear{clear:both}.ecr-game-shouyou-testlist .game-c-hide{display:none!important}.ecr-game-shouyou-testlist .game-c-hidden{visibility:hidden!important}.ecr-game-shouyou-testlist .ecr-game-c-title h4{font-weight:bold;color:#333;font-size:14px}
.ecr-game-shouyou-testlist a{text-decoration:none}.ecr-game-shouyou-testlist a:hover{text-decoration:underline}.ecr-game-shouyou-testlist .ecr-game-c-title{margin-bottom:6px;text-indent:-1px;*overflow:hidden;margin-bottom:4px\9;text-indent:0\9;*margin-bottom:5px;_line-height:30px;_margin-bottom:0}.ecr-game-shouyou-testlist .ecr-game-c-title h4,.ecr-game-shouyou-testlist .ecr-game-c-title .game-promotion{display:inline-block;*display:inline;*zoom:1;*float:left}.ecr-game-shouyou-testlist .ecr-game-c-title .game-promotion{_line-height:26px}
.ecr-game-shouyou-testlist .ecr-game-c-title .game-promotion a{color:#666;font-size:13px;margin-left:6px;text-decoration:underline}.ecr-game-shouyou-testlist .ecr-game-c-title .game-all{float:right;line-height:21px \9;_line-height:26px;text-decoration:none}.ecr-game-shouyou-testlist .ecr-game-c-title .game-all:hover{text-decoration:none}.ecr-game-shouyou-testlist .ecr-game-c-title .game-all span{text-decoration:underline}.ecr-game-shouyou-testlist .ecr-game-c-body{_clear:both}.ecr-game-shouyou-testlist .ecr-game-c-body a.game-active{color:#C00;text-align:center}
.ecr-game-shouyou-testlist .ecr-game-c-body span{display:inline-block;*display:inline;*zoom:1;word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;margin:0 5px;text-align:center}.ecr-game-shouyou-testlist .ecr-game-c-body .game-c1{text-align:left;margin:0 10px 0 0;padding-left:3px;width:90px}.ecr-game-shouyou-testlist .ecr-game-c-body .game-c2{width:53px}.ecr-game-shouyou-testlist .ecr-game-c-body .game-c3{width:39px}.ecr-game-shouyou-testlist .ecr-game-c-body .game-c4{width:80px}
.ecr-game-shouyou-testlist .ecr-game-c-body .game-c5{width:38px;margin-right:0}.ecr-game-shouyou-testlist .ecr-game-c-body .game-title{height:25px;line-height:26px;background:#fafafa}.ecr-game-shouyou-testlist .ecr-game-c-body .game-title span{color:#666}.ecr-game-shouyou-testlist .ecr-game-c-body .game-list{height:28px;line-height:29px;border-bottom:1px solid #f6f6f6}.ecr-game-shouyou-testlist .ecr-game-c-body .game-list span{color:#333}.ecr-game-shouyou-testlist .ecr-game-c-body .game-title,.ecr-game-shouyou-testlist .ecr-game-c-body .game-list{*line-height:28px;_overflow:hidden}
.ecr-game-shouyou-testlist .game-more{display:inline-block;*display:inline;*zoom:1;margin-top:9px;_line-height:1;text-indent:-1px;margin-left:0\9;*margin-top:8px;*margin-left:-1px;*text-indent:0;_margin-top:12px}.container_s .ecr-game-shouyou-testlist .game-c4{width:39px;margin-right:0}.container_s .ecr-game-shouyou-testlist .game-c5{display:none}body:not(:-moz-handler-blocked) .ecr-game-shouyou-testlist .ecr-game-c-title{margin-bottom:5px;text-indent:0}body:not(:-moz-handler-blocked) .ecr-game-shouyou-testlist .ecr-game-c-title .game-all{line-height:21px}
body:not(:-moz-handler-blocked) .ecr-game-shouyou-testlist .ecr-game-c-body .game-title{line-height:28px}body:not(:-moz-handler-blocked) .ecr-game-shouyou-testlist .game-more{text-indent:0}
    </style>

    {%strip%}
<div class="cr-content ecr-game-shouyou-testlist">
    <div class="ecr-game-c-title">
        <h4>{%$tplData.title|escape:'html'%}</h4>
        <span class="game-promotion">
            <!--<i>-</i>-->
            <a target="_blank" href="http://yingxiao.baidu.com/product/site/aiwan.html">推广</a>
        </span>
        {%if $tplData.more%}
        <a class="game-all" href="{%$tplData.more.url|escape:'html'%}" target="_blank">
            <span>{%$tplData.more.name|escape:'html'%}</span>&gt;&gt;
        </a>
        {%/if%}
    </div>
    <div class="ecr-game-c-body">
        <div class="game-title">
            <span class="game-c1">游戏名称</span>
            <span class="game-c2">日期</span>
            <span class="game-c3">状态</span>
            <span class="game-c4">领号</span>
            <span class="game-c5">下载</span>
        </div>
        {%foreach $tplData.list as $item%}
        <div class="game-list">
            <span class="game-c1">
                {%if $item.nameurl%}
                <a target="_blank" href="{%$item.nameurl|escape:'html'%}" title="{%$item.name|escape:'html'%}" {%gameAntiAttr url=$item.nameurl%}>{%$item.name|escape:'html'%}</a>
                {%else%}
                {%$item.name|escape:'html'%}
                {%/if%}
            </span>
            <span class="game-c2">{%$item.date|escape:'html'%}</span>
            <span class="game-c3">{%$item.state|escape:'html'%}</span>
            <span class="game-c4">
                {%if $item.receive && $item.receiveurl%}
                <a target="_blank" href="{%$item.receiveurl|escape:'html'%}" {%gameAntiAttr url=$item.receiveurl%}>{%$item.receive|escape:'html'%}</a>
                {%else%}
                -
                {%/if%}
            </span>
            <span class="game-c5">
                {%if $item.downloadurl%}
                <a target="_blank" href="{%$item.downloadurl|escape:'html'%}" {%gameAntiAttr url=$item.downloadurl%}>下载</a>
                {%else%}
                -
                {%/if%}
            </span>
        </div>
        {%/foreach%}
    </div>
    {%if $tplData.TODO%}
    <a class="game-more {%gameAntiClass url=$tplData.TODO.url%}" target="_blank" href="{%$tplData.TODO.url|escape:'html'%}">{%$tplData.TODO.title|escape:'html'%} &gt;&gt;</a>
    {%/if%}
</div>
{%/strip%}

{%/block%}