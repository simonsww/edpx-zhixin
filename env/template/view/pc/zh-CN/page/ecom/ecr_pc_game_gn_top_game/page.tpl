{%extends 'c_right_base.tpl'%}

{%block name='content'%}

    <style type="text/css" data-merge>
        .ecr .ecr-text-dimgray{color:#666}.ecr a.always-underline{text-decoration:underline}.ecr clear{clear:both}.ecr-top-panel{overflow:hidden}.container_s .ecr-top-panel{width:270px;overflow:hidden}.container_l .ecr-top-panel{width:440px}.ecr-top-panel a{text-decoration:none}.ecr-top-panel a:hover{text-decoration:underline}.ecr-top-panel-body-row{position:relative;padding-left:27px;height:28px;line-height:28px;border-bottom:1px solid #f5f5f5;overflow:hidden;font-size:13px}.ecr-top-panel-body-row-source{position:absolute;top:0;right:0;width:60px;height:28px;overflow:hidden}
.ecr-top-panel-body-three-column .ecr-top-panel-body-row-source{right:100px}.ecr-top-panel-body-row-content{overflow:hidden;white-space:nowrap;word-break:keep-all;word-wrap:normal;text-overflow:ellipsis;-o-text-overflow:ellipsis}.container_s .ecr-top-panel-body-row-content{width:133px}.container_l .ecr-top-panel-body-row-content{width:303px}.container_s .ecr-top-panel-body-three-column .ecr-top-panel-body-row-content{width:33px}.container_l .ecr-top-panel-body-three-column .ecr-top-panel-body-row-content{width:203px}
.ecr-top-panel-body-row-index{position:absolute;left:2px;top:7px;height:13px;width:13px;overflow:hidden;line-height:100px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.5.gif')}.ecr-top-panel-body-row-index-10{background-position:0 -207px}.ecr-top-panel-body-row-index-9{background-position:0 -194px}.ecr-top-panel-body-row-index-8{background-position:0 -181px}.ecr-top-panel-body-row-index-7{background-position:0 -168px}.ecr-top-panel-body-row-index-6{background-position:0 -155px}.ecr-top-panel-body-row-index-5{background-position:0 -142px}
.ecr-top-panel-body-row-index-4{background-position:0 -129px}.ecr-top-panel-body-row-index-3{background-position:0 -116px}.ecr-top-panel-body-row-index-2{background-position:0 -103px}.ecr-top-panel-body-row-index-1{background-position:0 -90px}.ecr-top-panel-body-row-operate{position:absolute;top:0;right:0;height:28px}.ecr-top-panel-footer{white-space:nowrap;word-break:keep-all;word-wrap:normal;text-overflow:ellipsis;-o-text-overflow:ellipsis;padding-top:8px;overflow:hidden}.ecr-top-panel-footer-split{color:#bfbfbf}
.ecr-pc-game-gn-top-game{font-size:12px}.container_s .ecr-pc-game-gn-top-game{width:270px;overflow:hidden}.container_l .ecr-pc-game-gn-top-game{width:440px}.ecr-pc-game-gn-top-game .title{position:relative;font-size:14px;height:22px;line-height:22px}.ecr-pc-game-gn-top-game .title h2{position:absolute;background:#fff;font-weight:bold;z-index:2;font-size:14px;margin:0;padding:0;padding-right:10px}.ecr-pc-game-gn-top-game .title .line{position:absolute;top:11px;width:100%;height:0;font-size:0;border-top:1px solid #eaeaea;z-index:1}
.ecr-pc-game-gn-top-game .title{height:23px;*height:21px}.ecr-pc-game-gn-top-game .ecr-top-panel-header{padding-left:1px}.container_l .ecr-pc-game-gn-top-game{width:351px}.container_l .ecr-pc-game-gn-top-game .ecr-top-panel-body-row-content{width:270px}.container_s .ecr-pc-game-gn-top-game{width:259px}.container_s .ecr-pc-game-gn-top-game .ecr-top-panel-body-row-content{width:170px}
    </style>

    <div class="ecr-pc-game-gn-top-game ecr-top-panel ecr">
    <div class="title ecr-top-panel-header">
        <h2>{%$tplData.title%}</h2>
    </div>
    <div class="ecr-top-panel-body">
        {%foreach $tplData.list as $row%}
        <div class="ecr-top-panel-body-row">
            <span class="ecr-top-panel-body-row-index ecr-top-panel-body-row-index-{%$row@index + 1%}">{%$row@index + 1%}</span>
            <div class="ecr-top-panel-body-row-content">
                <a class="ecr-top-panel-body-row-link" href="{%build_search_url params="wd={%$row.url%}&f=2&rsv_dl=0_right_game_{%$extData.resourceid%}"%}" target="_blank" title="{%$row.text|escape:'html'%}">{%$row.text|escape:'html'%}</a>
            </div>
            <span class="ecr-top-panel-body-row-source">{%$row.type|escape:'html'%}</span>
        </div>
        {%/foreach%}
    </div>
</div>

{%/block%}