{%extends 'c_right_base.tpl'%}

{%block name='content'%}

    <style type="text/css" data-merge>
        .ecr .ecr-text-dimgray{color:#666}.ecr a.always-underline{text-decoration:underline}.ecr clear{clear:both}.ecr-cards-panel{overflow:hidden}.container_s .ecr-cards-panel{width:270px;overflow:hidden}.container_l .ecr-cards-panel{width:440px}.ecr-cards-panel-body{padding-top:10px}.ecr-cards-panel-body-card{float:left;width:78px;margin-right:12px}.container_s .ecr-cards-panel-body-card-3,.container_s .ecr-cards-panel-body-card-4{display:none}.ecr-cards-panel-body-card-last{margin-right:0}.ecr-cards-panel-body-card-image{position:relative;right:-4px;display:block;width:68px;height:68px;border:1px solid #d2d2d2;margin-bottom:8px;overflow:hidden}
.ecr-cards-panel-body-card-image img{width:68px;height:68px}.ecr-cards-panel-body-card-name{width:78px;text-align:center;font-size:13px;overflow:hidden;white-space:nowrap;word-break:keep-all;word-wrap:normal;text-overflow:ellipsis;-o-text-overflow:ellipsis}.ecr-game-shouyou-platform{font-size:12px}.container_s .ecr-game-shouyou-platform{width:270px;overflow:hidden}.container_l .ecr-game-shouyou-platform{width:440px}.ecr-game-shouyou-platform .title{position:relative;font-size:14px;height:22px;line-height:22px}
.ecr-game-shouyou-platform .title h2{position:absolute;background:#fff;font-weight:bold;z-index:2;font-size:14px;margin:0;padding:0;padding-right:10px}.ecr-game-shouyou-platform .title .line{position:absolute;top:11px;width:100%;height:0;font-size:0;border-top:1px solid #eaeaea;z-index:1}.ecr-game-shouyou-platform .title{margin-bottom:-1px \9;*margin-bottom:0;height:20px;*height:18px}.ecr-game-shouyou-platform .title h2{position:static;float:left;padding-right:0}.ecr-game-shouyou-platform .title .game-promotion{float:left;font-size:13px;line-height:22px \9}
.ecr-game-shouyou-platform .title .game-promotion a{color:#666;margin-left:6px;vertical-align:1px \9;*vertical-align:baseline;*zoom:1}.ecr-game-shouyou-platform .title .game-promotion i{color:#666;font-family:\5B8B\4F53;padding:0 2px;padding-right:4px \9}.ecr-game-shouyou-platform .title .all{position:absolute;top:-1px;right:0;height:22px;line-height:24px;line-height:23px \9;*padding-top:0;background-color:#fff;z-index:2;font-size:13px;padding-left:2px;text-decoration:none}.ecr-game-shouyou-platform .title .all span{text-decoration:underline}
.ecr-game-shouyou-platform .ecr-cards-panel-body-card{margin-right:17px;width:75px}.ecr-game-shouyou-platform .ecr-cards-panel-body-card-image{border:0;right:0;width:75px;height:75px;margin-bottom:7px}.ecr-game-shouyou-platform .ecr-cards-panel-body-card-image img{width:75px;height:75px}.ecr-game-shouyou-platform .ecr-cards-panel-body-card-name{width:75px;word-wrap:break-word;word-break:break-all;white-space:normal}.ecr-game-shouyou-platform .ecr-cards-panel-body-card-name a{*font-family:\5b8b\4f53;_zoom:1}
.container_l .ecr-game-shouyou-platform{width:351px!important}.container_l .ecr-game-shouyou-platform .title{width:351px}.container_l .ecr-game-shouyou-platform .ecr-cards-panel-body-card-3{margin-right:0}.container_s .ecr-game-shouyou-platform{width:259px!important}.container_s .ecr-game-shouyou-platform .title{width:259px}.container_s .ecr-game-shouyou-platform .ecr-cards-panel-body-card-2{margin-right:0}
    </style>

    {%strip%}
{%* 警告！该卡片会在同一个页面展现多次，必须保证幂等性，所以诸如添加id之类的行为都是危险的。*%}
<div class="ecr-game-shouyou-platform ecr-cards-panel ecr">
    <div class="title">
        <h2>{%$tplData.title%}</h2>
        <span class="game-promotion">
            <!--<i>-</i>-->
            <a target="_blank" href="http://yingxiao.baidu.com/product/site/aiwan.html">推广</a>
        </span>
        {%if $tplData.more%}
        <a class="all" href="{%$tplData.more.url|escape:'html'%}" target="_blank">
            <span>{%$tplData.more.name|escape:'html'%}</span>&gt;&gt;
        </a>
        {%/if%}
    </div>
    <div class="ecr-cards-panel-body">
        {%if !empty($tplData.list) && count($tplData.list) > 4%}
            {%$tplData.list = array_slice($tplData.list, 0, 4)%}
        {%/if%}
        {%foreach $tplData.list as $item%}
        <div class="ecr-cards-panel-body-card ecr-cards-panel-body-card-{%$item@index%} {%if $item@last%}ecr-cards-panel-body-card-last{%/if%}">
            <a class="ecr-cards-panel-body-card-image" target="_blank" href="{%$item.url|escape:'html'%}">
                <img src="{%$item.image|escape:'html'%}" alt="{%$item.name|escape:'html'%}" />
            </a>
            <div class="ecr-cards-panel-body-card-name">
                <a target="_blank" href="{%$item.url|escape:'html'%}">{%$item.name|escape:'html'%}</a>
            </div>
        </div>
        {%/foreach%}
        <div class="clear"></div>
    </div>
</div>
{%/strip%}

    {%* 警告！该卡片会在同一个页面展现多次，必须保证幂等性，所以诸如添加id之类的行为都是危险的。*%}
    {%* js注意anti反作弊this.container限制 *%}

{%/block%}