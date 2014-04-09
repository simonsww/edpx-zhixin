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
        .ecr-game-shouyou-top a{color:#00C;text-decoration:underline;vertical-align:baseline}.ecr-game-shouyou-top a[hidefocus]:focus{outline:0}.ecr-game-shouyou-top h3,.ecr-game-shouyou-top h4,.ecr-game-shouyou-top h5,.ecr-game-shouyou-top h6{margin:0;padding:0;font-weight:normal}.ecr-game-shouyou-top .game-c-clear{clear:both}.ecr-game-shouyou-top .game-c-hide{display:none!important}.ecr-game-shouyou-top .game-c-hidden{visibility:hidden!important}.ecr-game-shouyou-top .ecr-game-c-title h4{font-weight:bold;color:#333;font-size:14px}
.ecr-game-shouyou-top a{text-decoration:none}.ecr-game-shouyou-top a:hover{text-decoration:underline}.ecr-game-shouyou-top .ecr-game-c-title{margin-bottom:6px;text-indent:-1px;*overflow:hidden;margin-bottom:4px\9;text-indent:0\9;*margin-bottom:5px;_line-height:30px;_margin-bottom:0}.ecr-game-shouyou-top .ecr-game-c-title h4{display:inline-block;*display:inline;*zoom:1;*float:left}.ecr-game-shouyou-top .ecr-game-c-body{_clear:both}.ecr-game-shouyou-top .ecr-game-c-body a.game-active{color:#C00;text-align:center}
.ecr-game-shouyou-top .ecr-game-c-body span{display:inline-block;*display:inline;*zoom:1;word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;margin-right:10px;text-align:center}.ecr-game-shouyou-top .ecr-game-c-body .game-c1{width:261px;text-align:left}.ecr-game-shouyou-top .ecr-game-c-body .game-c1 .game-c-index{display:inline-block;padding:1px 0;color:#fff;width:14px;line-height:1;font-size:12px;text-align:center;background-color:#8eb9f5;font-family:\5B8B\4F53;font-weight:normal;vertical-align:bottom;margin:0 5px 9px 0;margin-bottom:10px\9;*vertical-align:baseline;*margin-bottom:0}
.ecr-game-shouyou-top .ecr-game-c-body .game-c1 .game-c-index.game-c-index-hot,.ecr-game-shouyou-top .ecr-game-c-body .game-c1 .game-c-index.game-c-index-hot1{background-color:#f54545}.ecr-game-shouyou-top .ecr-game-c-body .game-c1 .game-c-index.game-c-index-hot2{background-color:#ff8547}.ecr-game-shouyou-top .ecr-game-c-body .game-c1 .game-c-index.game-c-index-hot3{background-color:#ffac38}.ecr-game-shouyou-top .ecr-game-c-body .game-c2{width:80px;margin-right:0;text-align:right}.ecr-game-shouyou-top .ecr-game-c-body .game-title{height:27px;line-height:28px;background:#fafafa;border-bottom:1px solid #f0f0f0}
.ecr-game-shouyou-top .ecr-game-c-body .game-title span{color:#666}.ecr-game-shouyou-top .ecr-game-c-body .game-list{height:30px;line-height:31px;border-bottom:1px solid #f6f6f6}.ecr-game-shouyou-top .ecr-game-c-body .game-list span{color:#333}.ecr-game-shouyou-top .ecr-game-c-body .game-title,.ecr-game-shouyou-top .ecr-game-c-body .game-list{line-height:32px \9;_overflow:hidden}.container_s .ecr-game-shouyou-top .game-c1{width:149px}body:not(:-moz-handler-blocked) .ecr-game-shouyou-top .ecr-game-c-title{margin-bottom:5px;text-indent:0}
body:not(:-moz-handler-blocked) .ecr-game-shouyou-top .ecr-game-c-body .game-title{line-height:30px}
    </style>

    {%strip%}
<div class="cr-content ecr-game-shouyou-top">
    <div class="ecr-game-c-title">
        <h4>{%$tplData.title|escape:'html'%}</h4>
        {%*
        <span class="game-promotion">
            <!--<i>-</i>-->
            <a target="_blank" href="http://yingxiao.baidu.com/product/site/aiwan.html">推广</a>
        </span>
        *%}
    </div>
    <div class="ecr-game-c-body">
        <div class="game-title">
            <span class="game-c1">排名</span>
            <span class="game-c2">游戏热度</span>
        </div>
        {%foreach $tplData.list as $item%}
        <div class="game-list">
            <span class="game-c1">
                {%if $item@index == 0%}
                    <span class="game-c-index game-c-index-hot">1</span>
                {%elseif $item@index == 1%}
                    <span class="game-c-index game-c-index-hot2">2</span>
                {%elseif $item@index == 2%}
                    <span class="game-c-index game-c-index-hot3">3</span>
                {%else%}
                    <span class="game-c-index">{%$item@index + 1%}</span>
                {%/if%}
                {%if $item.url%}
                    <a target="_blank" href="{%$item.url|escape:'html'%}" {%gameAntiAttr url=$item.url%}>{%$item.name|escape:'html'%}</a>
                {%elseif $item.name%}
                    {%$item.name|escape:'html'%}
                {%else%}
                    -
                {%/if%}
            </span>
            <span class="game-c2">
                {%if $item.name%}
                    {%$item.hot|escape:'html'%}
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