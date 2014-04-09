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
        .ecr-pc-game-recommend a{color:#00C;text-decoration:underline;vertical-align:baseline}.ecr-pc-game-recommend a[hidefocus]:focus{outline:0}.ecr-pc-game-recommend h3,.ecr-pc-game-recommend h4,.ecr-pc-game-recommend h5,.ecr-pc-game-recommend h6{margin:0;padding:0;font-weight:normal}.ecr-pc-game-recommend .game-c-clear{clear:both}.ecr-pc-game-recommend .game-c-hide{display:none!important}.ecr-pc-game-recommend .game-c-hidden{visibility:hidden!important}.ecr-pc-game-recommend .ecr-game-c-title h4{font-weight:bold;color:#333;font-size:14px}
.ecr-pc-game-recommend .ecr-game-c-title{margin-bottom:6px;overflow:hidden;_zoom:1}.ecr-pc-game-recommend .ecr-game-c-title h4{float:left}.ecr-pc-game-recommend .ecr-game-c-all{float:right;font-size:13px;text-decoration:none}.ecr-pc-game-recommend .ecr-game-c-all span{text-decoration:underline}.ecr-pc-game-recommend .ecr-game-c-body{_clear:both}.ecr-pc-game-recommend ul{*margin-bottom:-10px}.ecr-pc-game-recommend ul li{overflow:hidden;margin-bottom:10px}.ecr-pc-game-recommend .game-img{float:left;text-decoration:none}
.ecr-pc-game-recommend .game-img img{display:block;width:75px;height:75px}.ecr-pc-game-recommend .game-detail{float:left;position:relative;margin-left:10px;width:266px;height:75px;overflow:hidden}.ecr-pc-game-recommend .game-title,.ecr-pc-game-recommend .game-desc,.ecr-pc-game-recommend .game-additions{_width:266px}.ecr-pc-game-recommend .game-title,.ecr-pc-game-recommend .game-desc{word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis}.ecr-pc-game-recommend .game-title{font-size:14px;margin-top:-3px;margin-top:-2px \9}
.ecr-pc-game-recommend .game-desc{margin-top:1px}.ecr-pc-game-recommend .game-additions{position:absolute;overflow:hidden;word-wrap:break-word;word-break:break-all;white-space:normal;bottom:0;height:26px}.ecr-pc-game-recommend .game-additions a{float:left;line-height:27px;word-wrap:normal;word-break:keep-all;white-space:nowrap}.ecr-pc-game-recommend .game-additions .game-download{width:92px;height:26px;line-height:29px \9;text-align:center;color:#FFF;background:#388bff;text-decoration:none}.ecr-pc-game-recommend .game-additions .game-download:hover{text-decoration:underline}
.ecr-pc-game-recommend .game-additions .game-link{margin-left:5px;*font-family:\5B8B\4F53}.container_s .ecr-pc-game-recommend .game-detail{width:174px}.container_s .ecr-pc-game-recommend .game-title,.container_s .ecr-pc-game-recommend .game-desc,.container_s .ecr-pc-game-recommend .game-additions{_width:174px}
    </style>

    {%strip%}
<div class="cr-content ecr-pc-game-recommend">
    <div class="ecr-game-c-title">
        <h4>{%$tplData.title|escape:'html'%}</h4>
        <a class="ecr-game-c-all" href="{%$tplData.all.url|escape:'html'%}" target="_blank">
            <span>{%$tplData.all.title|escape:'html'%}</span>&gt;&gt;
        </a>
    </div>
    <div class="ecr-game-c-body">
        <ul>
            {%foreach $tplData.list as $item%}
            <li>
                <a class="game-img" target="_blank" href="{%$item.url|escape:'html'%}">
                    <img src="{%$item.img|escape:'html'%}" alt="{%$item.name|escape:'html'%}" />
                </a>
                <div class="game-detail">
                    <div class="game-title">
                        <a target="_blank" href="{%$item.url|escape:'html'%}">
                            {%$item.title|escape:'html'%}
                        </a>
                    </div>
                    <div class="game-desc">
                        <a target="_blank" href="{%$item.descurl|escape:'html'%}">
                            {%$item.desc|escape:'html'%}
                        </a>
                    </div>
                    <div class="game-additions">
                        <a class="game-download" target="_blank" href="{%$item.download|escape:'html'%}" >开始下载</a>
                        {%foreach $item.links as $link%}
                        <a class="game-link" target="_blank" href="{%$link.url|escape:'html'%}">
                            {%$link.text|escape:'html'%}
                        </a>
                        {%/foreach%}
                    </div>
                </div>
            </li>
            {%/foreach%}
        </ul>
    </div>
</div>
{%/strip%}

{%/block%}