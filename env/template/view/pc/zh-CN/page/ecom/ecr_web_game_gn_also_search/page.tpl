{%extends 'right_base.tpl'%}

{%block name='content'%}

<style type="text/css">
.ecr .ecr-text-dimgray{color:#666}.ecr a.always-underline{text-decoration:underline}.ecr clear{clear:both}.ecr-cards-panel{overflow:hidden}.container_s .ecr-cards-panel{width:270px;overflow:hidden}.container_l .ecr-cards-panel{width:440px}.ecr-cards-panel-body{padding-top:10px}.ecr-cards-panel-body-card{float:left;width:78px;margin-right:12px}.container_s .ecr-cards-panel-body-card-3,.container_s .ecr-cards-panel-body-card-4{display:none}.ecr-cards-panel-body-card-last{margin-right:0}.ecr-cards-panel-body-card-image{position:relative;right:-4px;display:block;width:68px;height:68px;border:1px solid #d2d2d2;margin-bottom:8px;overflow:hidden}
.ecr-cards-panel-body-card-image img{width:68px;height:68px}.ecr-cards-panel-body-card-name{width:78px;text-align:center;font-size:13px;overflow:hidden;white-space:nowrap;word-break:keep-all;text-overflow:ellipsis}.ecr-web-game-gn-also-search{font-size:12px}.container_s .ecr-web-game-gn-also-search{width:270px;overflow:hidden}.container_l .ecr-web-game-gn-also-search{width:440px}.ecr-web-game-gn-also-search .title{position:relative;font-size:14px;height:22px;line-height:22px}.ecr-web-game-gn-also-search .title h2{position:absolute;background:#fff;font-weight:bold;z-index:2;font-size:14px;margin:0;padding:0;padding-right:10px}
.ecr-web-game-gn-also-search .title .line{position:absolute;top:11px;width:100%;height:0;font-size:0;border-top:1px solid #eaeaea;z-index:1}
</style>

<div class="ecr-web-game-gn-also-search ecr-cards-panel ecr">
    <div class="title">
        <h2>{%$tplData.title%}</h2>
        <div class="line"></div>
    </div>

    <div class="ecr-cards-panel-body">
        {%foreach $tplData.list as $item%}
        <div class="ecr-cards-panel-body-card ecr-cards-panel-body-card-{%$item@index%} {%if $item@last%} ecr-cards-panel-body-card-last {%/if%}">
            <a class="ecr-cards-panel-body-card-image" target="_blank" href="{%build_search_url params="wd={%$item.url%}&f=2&rsv_dl=0_right_game_{%$extData.resourceid%}"%}">
                <img src="{%$item.image%}" width="68" height="68" />
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
