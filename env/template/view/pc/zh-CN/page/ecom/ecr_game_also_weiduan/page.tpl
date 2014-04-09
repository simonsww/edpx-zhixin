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
        .ecr .ecr-text-dimgray{color:#666}.ecr a.always-underline{text-decoration:underline}.ecr clear{clear:both}.ecr-cards-panel{overflow:hidden}.container_s .ecr-cards-panel{width:270px;overflow:hidden}.container_l .ecr-cards-panel{width:440px}.ecr-cards-panel-body{padding-top:10px}.ecr-cards-panel-body-card{float:left;width:78px;margin-right:12px}.container_s .ecr-cards-panel-body-card-3,.container_s .ecr-cards-panel-body-card-4{display:none}.ecr-cards-panel-body-card-last{margin-right:0}.ecr-cards-panel-body-card-image{position:relative;right:-4px;display:block;width:68px;height:68px;border:1px solid #d2d2d2;margin-bottom:8px;overflow:hidden}
.ecr-cards-panel-body-card-image img{width:68px;height:68px}.ecr-cards-panel-body-card-name{width:78px;text-align:center;font-size:13px;overflow:hidden;white-space:nowrap;word-break:keep-all;word-wrap:normal;text-overflow:ellipsis;-o-text-overflow:ellipsis}.ecr-game-also-weiduan{font-size:12px;word-wrap:normal;word-break:keep-all;white-space:nowrap;-o-text-overflow:ellipsis;text-overflow:ellipsis;margin-bottom:-10px}.container_s .ecr-game-also-weiduan{width:270px;overflow:hidden}.container_l .ecr-game-also-weiduan{width:440px}
.ecr-game-also-weiduan .title{position:relative;font-size:14px;height:22px;line-height:22px}.ecr-game-also-weiduan .title h2{position:absolute;background:#fff;font-weight:bold;z-index:2;font-size:14px;margin:0;padding:0;padding-right:10px}.ecr-game-also-weiduan .title .line{position:absolute;top:11px;width:100%;height:0;font-size:0;border-top:1px solid #eaeaea;z-index:1}.ecr-game-also-weiduan .title h2{color:#333;*padding-left:1px;*padding-bottom:1px}.ecr-game-also-weiduan .title .line{display:none}.ecr-game-also-weiduan .title .all{position:absolute;top:0;*top:-2px;right:0;height:22px;line-height:22px;background-color:#FFF;z-index:2;font-size:13px;padding-left:2px;text-decoration:none}
.ecr-game-also-weiduan .title .all span{text-decoration:underline}.ecr-game-also-weiduan .ecr-cards-panel-body{padding-top:8px;*padding-top:6px}.ecr-game-also-weiduan .ecr-cards-panel-body-card{margin-right:17px;width:75px}.ecr-game-also-weiduan .ecr-cards-panel-body-card-image{border:0;right:-1px;width:75px;height:100px;position:relative;text-decoration:none;margin-bottom:6px}.ecr-game-also-weiduan .ecr-cards-panel-body-card-image img{width:75px;height:100px;border:0;margin:0;padding:0;outline:0}.ecr-game-also-weiduan .ecr-cards-panel-body-card-image .score{position:absolute;left:0;bottom:0;width:100%;height:19px;line-height:19px;color:#FFF;text-align:center;cursor:pointer;background:rgba(0,0,0,0.65);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#A6000000,endColorstr=#A6000000) \9}
.ecr-game-also-weiduan .ecr-cards-panel-body-card-image:hover{text-decoration:none}.ecr-game-also-weiduan .ecr-cards-panel-body-card-4{display:none!important}.ecr-game-also-weiduan .ecr-cards-panel-body-card-name{padding-top:1px;_padding-bottom:1px;width:75px}.ecr-game-also-weiduan .ecr-cards-panel-body-card-name a{*font-family:\5b8b\4f53;_zoom:1}.ecr-game-also-weiduan .ecr-cards-panel-body-card-platform{color:#666;text-align:center;font-size:13px;line-height:20px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;*font-family:\5b8b\4f53;width:75px}
.container_l .ecr-game-also-weiduan{width:351px}.container_l .ecr-game-also-weiduan .title{width:351px}.container_l .ecr-game-also-weiduan .ecr-cards-panel-body-card-3{display:block;margin-right:0}.container_s .ecr-game-also-weiduan{width:259px}.container_s .ecr-game-also-weiduan .title{width:259px}.container_s .ecr-game-also-weiduan .ecr-cards-panel-body-card-2{margin-right:0}.container_s .ecr-game-also-weiduan .ecr-cards-panel-body-card-3{display:none}
    </style>

    <div class="ecr-game-also-weiduan ecr-cards-panel ecr">
    <div class="title">
        <h2>{%$tplData.title|escape:'html'%}</h2>
        {%if isset($tplData.all)%}
        <a class="all" href="{%$tplData.all.url|escape:'html'%}" target="_blank"><span>{%$tplData.all.title|escape:'html'%}</span>&gt;&gt;</a>
        {%/if%}
    </div>
    <div class="ecr-cards-panel-body">
        {%if !empty($tplData.list) && count($tplData.list) > 4%}
            {%$tplData.list = array_slice($tplData.list, 0, 4)%}
        {%/if%}
        {%foreach $tplData.list as $item%}
        <div class="ecr-cards-panel-body-card ecr-cards-panel-body-card-{%$item@index%} {%if $item@last%}ecr-cards-panel-body-card-last{%/if%}">
            <a target="_blank" href="{%$item.url%}" class="ecr-cards-panel-body-card-image {%gameAntiClass url=$item.url%}">
                <img src="{%$item.image%}" alt="{%$item.text|escape:'html'%}" />
                {%if isset($item.score)%}<span class="score">{%$item.score|escape:'html'%}&nbsp;分</span>{%/if%}
            </a>
            <div class="ecr-cards-panel-body-card-name">
                <a target="_blank" {%gameTitleAttr str=$item.text len=12%} href="{%$item.url%}" {%gameAntiAttr url=$item.url%}>{%$item.text|limitlen:12|escape:'html'%}</a>
            </div>
            {%if isset($item.platform)%}<div class="ecr-cards-panel-body-card-platform" {%gameTitleAttr str=$item.platform len=12%}>{%$item.platform|limitlen:12|escape:'html'%}</div>{%/if%}
        </div>
        {%/foreach%}
        <div class="clear"></div>
    </div>
</div>


{%/block%}