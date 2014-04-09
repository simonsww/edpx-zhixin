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
        .ecl-game-chess{width:540px}.ecl-game-chess a{color:#00C;text-decoration:underline;vertical-align:baseline}.ecl-game-chess a[hidefocus]:focus{outline:0}.ecl-game-chess h3,.ecl-game-chess h4,.ecl-game-chess h5,.ecl-game-chess h6{margin:0;padding:0;font-weight:normal}.ecl-game-chess .game-c-clear{clear:both}.ecl-game-chess .game-c-hide{display:none!important}.ecl-game-chess .game-c-hidden{visibility:hidden!important}.ecl-game-chess .ecl-game-c-title,.ecl-game-chess .ecl-game-c-showurl{width:538px;word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis}
.ecl-game-chess .ecl-game-c-title a{font-size:16px}.ecl-game-chess .ecl-game-c-showurl{font-size:13px;color:#008000}.ecl-game-chess .ecl-game-c-body{width:516px;padding:10px;border:1px solid #e3e3e3;border-bottom-color:#e0e0e0;border-right-color:#ececec;-khtml-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-webkit-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-moz-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-o-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-icab-box-shadow:1px 2px 1px rgba(0,0,0,0.072);background-color:#FFF\9;background-color:transparent\9\0;*background-color:#FFF;filter:progid:DXImageTransform.Microsoft.Shadow(Strength=2,Direction=135,Color=#e2e2e2) \9;margin-bottom:0;*margin-bottom:-2px;margin-right:0;*margin-right:-2px;-ms-box-shadow:1px 2px 1px rgba(0,0,0,0.072);box-shadow:1px 2px 1px rgba(0,0,0,0.072);border-collapse:separate}
.ecl-game-chess .ecl-game-c-title{padding-bottom:6px}.ecl-game-chess .ecl-game-c-showurl{margin:5px 0 0 4px;*margin-top:3px}.ecl-game-chess .ecl-game-c-body{padding-bottom:0}.ecl-game-chess ul{*margin-bottom:-4px;_margin-bottom:-9px}.ecl-game-chess li{margin-bottom:10px;*margin:0}.ecl-game-chess li:first-child .game-detail{margin-top:18px \9;*margin-top:19px;line-height:16px \9;padding-top:4px \9;*padding:3px 11px 1px 11px}.ecl-game-chess .game-img{float:left;margin:0 10px 5px 0;*margin-bottom:0}.ecl-game-chess .game-img img{width:56px;height:56px}
.ecl-game-chess .game-content{float:left;width:370px;height:56px;line-height:1.62}.ecl-game-chess .game-content h5{word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;line-height:1.72;margin-top:-5px;_width:370px}.ecl-game-chess .game-content h5 a{font-size:14px}.ecl-game-chess .game-content p{word-wrap:normal;word-break:keep-all;white-space:nowrap;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;_width:370px}.ecl-game-chess .game-detail{float:right;margin:19px 2px 0 0;text-decoration:none;line-height:20px;line-height:18px \9;padding:0 11px;padding-top:2px \9;color:#FFF;background:#388bff;*white-space:nowrap}
.ecl-game-chess .game-detail:hover{text-decoration:underline}.ecl-game-chess hr{clear:both;background:#eee;color:#eee;height:1px;margin:5px 0 0 0;*margin:3px 0;_margin-top:-2px;padding:0;border:0}.ecl-game-chess hr.game-last{visibility:hidden;margin-bottom:-11px;margin-bottom:-12px \9}body:not(:-moz-handler-blocked) .ecl-game-chess .game-detail{line-height:19px;padding:1px 12px 0 12px}
    </style>

    {%strip%}
<div class="c-container ecl-game-chess">
    <h4 class="ecl-game-c-title">
        <a target="_blank" href="{%$tplData.url|escape:'html'%}">{%$tplData.title%}</a>
    </h4>
    <div class="ecl-game-c-body">
        <ul>
            {%foreach $tplData.list as $item%}
            <li>
                <a class="game-img" target="_blank" href="{%$item.url|escape:'html'%}">
                    <img src="{%$item.img|escape:'html'%}" alt="{%$item.name|escape:'html'%}" />
                </a>
                <div class="game-content">
                    <h5>
                        <a target="_blank" href="{%$item.url|escape:'html'%}">{%$item.title%}</a>
                    </h5>
                    <p>{%$item.slogan|escape:'html'%}</p>
                    <div>
                        <span>最新活动：</span>
                        <a class="game-new" target="_blank" href="{%$item.campaignurl|escape:'html'%}">{%$item.campaigntitle|escape:'html'%}</a>
                    </div>
                </div>
                <a class="game-detail" target="_blank" href="{%$item.url|escape:'html'%}">查看详情</a>
                <hr {%if $item@last%}class="game-last"{%/if%} />
            </li>
            {%/foreach%}
        </ul>
    </div>
    <p class="ecl-game-c-showurl">{%$tplData.showurl|escape:'html'%}</p>
</div>
{%/strip%}

{%/block%}