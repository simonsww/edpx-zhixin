{%extends 'c_right_base.tpl'%}

{%block name='content'%}

    <style type="text/css" data-merge>
        .ecr .ecr-text-dimgray{color:#666}.ecr a.always-underline{text-decoration:underline}.ecr clear{clear:both}.ecr-cards-panel{overflow:hidden}.container_s .ecr-cards-panel{width:270px;overflow:hidden}.container_l .ecr-cards-panel{width:440px}.ecr-cards-panel-body{padding-top:10px}.ecr-cards-panel-body-card{float:left;width:78px;margin-right:12px}.container_s .ecr-cards-panel-body-card-3,.container_s .ecr-cards-panel-body-card-4{display:none}.ecr-cards-panel-body-card-last{margin-right:0}.ecr-cards-panel-body-card-image{position:relative;right:-4px;display:block;width:68px;height:68px;border:1px solid #d2d2d2;margin-bottom:8px;overflow:hidden}
.ecr-cards-panel-body-card-image img{width:68px;height:68px}.ecr-cards-panel-body-card-name{width:78px;text-align:center;font-size:13px;overflow:hidden;white-space:nowrap;word-break:keep-all;word-wrap:normal;text-overflow:ellipsis;-o-text-overflow:ellipsis}.ecr-pc-game-gn-data-cards{font-size:12px}.container_s .ecr-pc-game-gn-data-cards{width:270px;overflow:hidden}.container_l .ecr-pc-game-gn-data-cards{width:440px}.ecr-pc-game-gn-data-cards .title{position:relative;font-size:14px;height:22px;line-height:22px}
.ecr-pc-game-gn-data-cards .title h2{position:absolute;background:#fff;font-weight:bold;z-index:2;font-size:14px;margin:0;padding:0;padding-right:10px}.ecr-pc-game-gn-data-cards .title .line{position:absolute;top:11px;width:100%;height:0;font-size:0;border-top:1px solid #eaeaea;z-index:1}.ecr-pc-game-gn-data-cards .all{position:absolute;top:0;*top:-2px;right:0;height:22px;line-height:22px;background-color:#fff;z-index:2;font-size:13px;padding-left:2px;text-decoration:none}.ecr-pc-game-gn-data-cards .all span{text-decoration:underline}
.ecr-pc-game-gn-data-cards .title{height:20px;*height:18px}.ecr-pc-game-gn-data-cards .ecr-cards-panel-body-card{margin-right:17px;width:75px}.ecr-pc-game-gn-data-cards .ecr-cards-panel-body-card-image{border:0;right:0;width:75px;height:75px;margin-bottom:7px}.ecr-pc-game-gn-data-cards .ecr-cards-panel-body-card-image img{width:75px;height:75px}.ecr-pc-game-gn-data-cards .ecr-cards-panel-body-card-name{width:75px}.ecr-pc-game-gn-data-cards .ecr-cards-panel-body-card-name a{*font-family:\5b8b\4f53;_zoom:1}.container_l .ecr-pc-game-gn-data-cards{width:351px!important}
.container_l .ecr-pc-game-gn-data-cards .title{width:351px}.container_l .ecr-pc-game-gn-data-cards .ecr-cards-panel-body-card-3{margin-right:0}.container_s .ecr-pc-game-gn-data-cards{width:259px!important}.container_s .ecr-pc-game-gn-data-cards .title{width:259px}.container_s .ecr-pc-game-gn-data-cards .ecr-cards-panel-body-card-2{margin-right:0}
    </style>

    <div class="ecr-pc-game-gn-data-cards ecr-cards-panel ecr">
    <div class="title">
        <h2>{%$tplData.title%}</h2>
        <a class="all" href="{%$tplData.all.url%}" target="_blank"><span>{%$tplData.all.title%}</span>&gt;&gt;</a>
    </div>

    <div class="ecr-cards-panel-body">
        {%if !empty($tplData.list) && count($tplData.list) > 4%}
            {%$tplData.list = array_slice($tplData.list, 0, 4)%}
        {%/if%}
        {%foreach $tplData.list as $item%}
        <div class="ecr-cards-panel-body-card ecr-cards-panel-body-card-{%$item@index%} {%if $item@last%} ecr-cards-panel-body-card-last {%/if%}">
            <a class="ecr-cards-panel-body-card-image" target="_blank" href="{%build_search_url params="wd={%$item.url%}&f=2&rsv_dl=0_right_game_{%$extData.resourceid%}"%}">
                <img src="{%$item.image%}" alt="{%$item.text|escape:'html'%}" />
            </a>
            <div class="ecr-cards-panel-body-card-name">
                <a target="_blank" title="{%$item.text|escape:'html'%}" href="{%build_search_url params="wd={%$item.url%}&f=2&rsv_dl=0_right_game_{%$extData.resourceid%}"%}">{%$item.text|limitlen:12|escape:'html'%}</a>
            </div>
        </div>
        {%/foreach%}
        <div class="clear"></div>
    </div>
</div>


{%/block%}